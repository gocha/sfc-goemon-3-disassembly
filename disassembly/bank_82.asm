org $828000

CODE_FL_828000:
  LDA.B $7E                                 ; $828000 |
  ASL A                                     ; $828002 |
  TAX                                       ; $828003 |
  JMP.W (PTR16_828007,X)                    ; $828004 |

PTR16_828007:
  dw CODE_828019                            ; $828007 |
  dw CODE_828029                            ; $828009 |
  dw CODE_82803F                            ; $82800B |
  dw CODE_8280DF                            ; $82800D |
  dw CODE_8280F6                            ; $82800F |
  dw CODE_82816F                            ; $828011 |
  dw CODE_JP_8281BD                         ; $828013 |
  dw CODE_828388                            ; $828015 |
  dw CODE_828399                            ; $828017 |

CODE_828019:
  JSL.L CODE_FL_8AAE00                      ; $828019 |
  BCC CODE_828028                           ; $82801D |
  LDA.W #$FFFF                              ; $82801F |
  STA.B $5C                                 ; $828022 |
  JML.L CODE_FL_80C873                      ; $828024 |

CODE_828028:
  RTL                                       ; $828028 |

CODE_828029:
  LDA.W $1F30                               ; $828029 |
  BNE CODE_82803E                           ; $82802C |
  JSL.L CODE_FL_80C1ED                      ; $82802E |
  JSL.L CODE_FL_80977D                      ; $828032 |
  JSL.L CODE_FL_808CB3                      ; $828036 |
  JML.L CODE_FL_80C873                      ; $82803A |

CODE_82803E:
  RTL                                       ; $82803E |

CODE_82803F:
  LDY.W #$9262                              ; $82803F |
  JSL.L CODE_FL_82D49F                      ; $828042 |
  JSL.L CODE_FL_82D4CF                      ; $828046 |
  JSL.L CODE_FL_848629                      ; $82804A |
  LDY.W #$810E                              ; $82804E |
  JSL.L CODE_FL_808D78                      ; $828051 |
  JSL.L CODE_FL_82B994                      ; $828055 |
  LDA.W #$00C0                              ; $828059 |
  STA.W $1FC6                               ; $82805C |
  LDA.W #$0080                              ; $82805F |
  STA.W $1FD0                               ; $828062 |
  STA.W $1FD2                               ; $828065 |
  STZ.W $0400                               ; $828068 |
  STZ.W $04C0                               ; $82806B |
  STZ.W $1C02                               ; $82806E |
  STZ.W $1C04                               ; $828071 |
  STZ.W $1C06                               ; $828074 |
  STZ.W $1C08                               ; $828077 |
  STZ.W $1C0A                               ; $82807A |
  STZ.W $1C0C                               ; $82807D |
  STZ.W $1C0E                               ; $828080 |
  STZ.W $1C10                               ; $828083 |
  STZ.W $1C12                               ; $828086 |
  STZ.W $1C14                               ; $828089 |
  JSL.L CODE_FL_808BC2                      ; $82808C |
  LDA.W #$00FF                              ; $828090 |
  STA.W $1FF8                               ; $828093 |
  STA.W $1FFA                               ; $828096 |
  STZ.B $A4                                 ; $828099 |
  LDA.W #$0DC0                              ; $82809B |
  STA.W $1C16                               ; $82809E |
  LDA.W #$0001                              ; $8280A1 |
  STA.W $1C6A                               ; $8280A4 |
  STA.W $1C24                               ; $8280A7 |
  JSL.L CODE_FL_82CC68                      ; $8280AA |
  LDA.B $DA                                 ; $8280AE |
  ASL A                                     ; $8280B0 |
  TAY                                       ; $8280B1 |
  LDA.W $8000,Y                             ; $8280B2 |
  TAY                                       ; $8280B5 |
  JSL.L set_music                           ; $8280B6 |
  LDX.W #DATA_8882D4                        ; $8280BA |
  JSL.L sound_transfer_blocks               ; $8280BD |
  LDX.W #DATA_8882F1                        ; $8280C1 |
  JSL.L sound_transfer_blocks               ; $8280C4 |
  LDA.W #$0006                              ; $8280C8 |
  JSL.L CODE_FL_80C74C                      ; $8280CB |
  LDA.B $DA                                 ; $8280CF |
  ASL A                                     ; $8280D1 |
  TAY                                       ; $8280D2 |
  LDA.W $8060,Y                             ; $8280D3 |
  TAY                                       ; $8280D6 |
  JSL.L CODE_FL_80C27C                      ; $8280D7 |
  JML.L CODE_FL_80C873                      ; $8280DB |

CODE_8280DF:
  LDA.B $DA                                 ; $8280DF |
  ASL A                                     ; $8280E1 |
  ADC.B $DA                                 ; $8280E2 |
  TAY                                       ; $8280E4 |
  LDA.W $8012,Y                             ; $8280E5 |
  STA.B $02                                 ; $8280E8 |
  LDA.W $8010,Y                             ; $8280EA |
  STA.B $00                                 ; $8280ED |
  JSL.L CODE_FL_80C873                      ; $8280EF |
  JML.W [$0000]                             ; $8280F3 |

CODE_8280F6:
  LDA.B $DA                                 ; $8280F6 |
  BEQ CODE_82810F                           ; $8280F8 |
  CMP.W #$0002                              ; $8280FA |
  BEQ CODE_82810F                           ; $8280FD |
  JSR.W CODE_FN_8288AB                      ; $8280FF |
  LDY.W #$8BC4                              ; $828102 |
  LDX.W #$1F60                              ; $828105 |
  LDA.W #$0008                              ; $828108 |
  JSL.L CODE_FL_80C2CC                      ; $82810B |

CODE_82810F:
  JSL.L CODE_FL_80C873                      ; $82810F |
  LDA.B $DA                                 ; $828113 |
  CMP.W #$0001                              ; $828115 |
  BEQ CODE_828137                           ; $828118 |
  CMP.W #$0003                              ; $82811A |
  BEQ CODE_828137                           ; $82811D |
  CMP.W #$0004                              ; $82811F |
  BEQ CODE_828137                           ; $828122 |

CODE_828124:
  LDA.W #$0300                              ; $828124 |
  STA.W $1C4A                               ; $828127 |
  LDA.W #$0500                              ; $82812A |
  STA.W $1C48                               ; $82812D |
  LDA.W #$0002                              ; $828130 |
  STA.B $CE                                 ; $828133 |
  BRA CODE_828151                           ; $828135 |

CODE_828137:
  LDA.L $7007B8                             ; $828137 |
  BEQ CODE_828124                           ; $82813B |
  LDA.L $7007BC                             ; $82813D |
  STA.W $1C4A                               ; $828141 |
  LDA.L $7007BA                             ; $828144 |
  STA.W $1C48                               ; $828148 |
  LDA.L $7007BE                             ; $82814B |
  STA.B $CE                                 ; $82814F |

CODE_828151:
  TDC                                       ; $828151 |
  STA.L $7EDAC0                             ; $828152 |
  STZ.W $1C00                               ; $828156 |
  JSR.W CODE_FN_82860A                      ; $828159 |
  LDA.B $DA                                 ; $82815C |
  ASL A                                     ; $82815E |
  ADC.B $DA                                 ; $82815F |
  TAY                                       ; $828161 |
  LDA.W $802A,Y                             ; $828162 |
  STA.B $02                                 ; $828165 |
  LDA.W $8028,Y                             ; $828167 |
  STA.B $00                                 ; $82816A |
  JML.W [$0000]                             ; $82816C |

CODE_82816F:
  STZ.B $76                                 ; $82816F |
  LDA.W #$0003                              ; $828171 |
  STA.B $5C                                 ; $828174 |
  LDY.W #$0100                              ; $828176 |
  JSL.L CODE_FL_809725                      ; $828179 |
  LDY.W #$C000                              ; $82817D |
  JSL.L CODE_FL_80972B                      ; $828180 |
  LDY.W #$8174                              ; $828184 |
  LDA.W #$0000                              ; $828187 |
  JSL.L CODE_FL_80C2C4                      ; $82818A |
  JSL.L CODE_FL_80C222                      ; $82818E |
  LDA.B $DA                                 ; $828192 |
  CMP.W #$0001                              ; $828194 |
  BEQ CODE_8281B9                           ; $828197 |
  CMP.W #$0003                              ; $828199 |
  BEQ CODE_8281B9                           ; $82819C |
  CMP.W #$0004                              ; $82819E |
  BEQ CODE_8281B9                           ; $8281A1 |
  CMP.W #$0005                              ; $8281A3 |
  BEQ CODE_8281B9                           ; $8281A6 |
  CMP.W #$0006                              ; $8281A8 |
  BEQ CODE_8281B9                           ; $8281AB |
  LDA.W #$0005                              ; $8281AD |
  STA.W $1C1C                               ; $8281B0 |
  LDA.W #$8000                              ; $8281B3 |
  STA.W $1C9E                               ; $8281B6 |

CODE_8281B9:
  JML.L CODE_FL_80C873                      ; $8281B9 |

CODE_JP_8281BD:
  STZ.B $76                                 ; $8281BD |
  JSL.L CODE_FL_8380F8                      ; $8281BF |
  LDA.W $1C94                               ; $8281C3 |
  ORA.W $1C68                               ; $8281C6 |
  BEQ CODE_8281CE                           ; $8281C9 |
  JMP.W CODE_JP_8282C2                      ; $8281CB |

CODE_8281CE:
  BIT.W $1C9E                               ; $8281CE |
  BMI CODE_8281F6                           ; $8281D1 |
  LDA.W $0718                               ; $8281D3 |
  BNE CODE_8281DD                           ; $8281D6 |
  LDA.W $0418                               ; $8281D8 |
  BNE CODE_8281ED                           ; $8281DB |

CODE_8281DD:
  LDA.W $0778                               ; $8281DD |
  BEQ CODE_8281E5                           ; $8281E0 |
  JMP.W CODE_JP_8282C2                      ; $8281E2 |

CODE_8281E5:
  LDA.W $04D8                               ; $8281E5 |
  BNE CODE_8281ED                           ; $8281E8 |
  JMP.W CODE_JP_8282C2                      ; $8281EA |

CODE_8281ED:
  LDA.W $1C9E                               ; $8281ED |
  ORA.W #$8000                              ; $8281F0 |
  STA.W $1C9E                               ; $8281F3 |

CODE_8281F6:
  JSL.L CODE_FL_828BD3                      ; $8281F6 |
  LDA.W $1C1C                               ; $8281FA |
  PHX                                       ; $8281FD |
  ASL A                                     ; $8281FE |
  TAX                                       ; $8281FF |
  LDA.L PTR16_82820A,X                      ; $828200 |
  PLX                                       ; $828204 |
  STA.B $00                                 ; $828205 |
  JMP.W ($0000)                             ; $828207 |

PTR16_82820A:
  dw CODE_828220                            ; $82820A |
  dw CODE_828223                            ; $82820C |
  dw CODE_82823E                            ; $82820E |
  dw CODE_828249                            ; $828210 |
  dw CODE_828258                            ; $828212 |
  dw CODE_828267                            ; $828214 |
  dw CODE_828267                            ; $828216 |
  dw CODE_82826D                            ; $828218 |
  dw CODE_82828A                            ; $82821A |
  dw CODE_828295                            ; $82821C |
  dw CODE_8282B9                            ; $82821E |

CODE_828220:
  INC.W $1C1C                               ; $828220 |

CODE_828223:
  LDA.W $1C0C                               ; $828223 |
  DEC A                                     ; $828226 |
  STA.W $1C0C                               ; $828227 |
  CMP.W #$FFB0                              ; $82822A |
  BPL CODE_82823B                           ; $82822D |
  JSR.W CODE_FN_8288AB                      ; $82822F |
  LDA.W #$0010                              ; $828232 |
  STA.W $1C1E                               ; $828235 |
  INC.W $1C1C                               ; $828238 |

CODE_82823B:
  JMP.W CODE_JP_82835D                      ; $82823B |

CODE_82823E:
  DEC.W $1C1E                               ; $82823E |
  BMI CODE_828246                           ; $828241 |
  JMP.W CODE_JP_82835D                      ; $828243 |

CODE_828246:
  INC.W $1C1C                               ; $828246 |

CODE_828249:
  INC.W $1C0C                               ; $828249 |
  LDA.W $1C14                               ; $82824C |
  ASL A                                     ; $82824F |
  CMP.W $1C0C                               ; $828250 |
  BNE CODE_82823B                           ; $828253 |
  INC.W $1C1C                               ; $828255 |

CODE_828258:
  LDA.W $1C9E                               ; $828258 |
  AND.W #$000F                              ; $82825B |
  STA.W $1C9E                               ; $82825E |
  STZ.W $1C1C                               ; $828261 |
  JMP.W CODE_JP_82835D                      ; $828264 |

CODE_828267:
  INC.W $1C1C                               ; $828267 |
  JMP.W CODE_JP_8282EC                      ; $82826A |

CODE_82826D:
  LDA.W #$FFB0                              ; $82826D |
  STA.W $1C0C                               ; $828270 |
  LDA.W $1F30                               ; $828273 |
  BEQ CODE_82827B                           ; $828276 |
  JMP.W CODE_JP_82835D                      ; $828278 |

CODE_82827B:
  JSR.W CODE_FN_8288AB                      ; $82827B |
  LDA.W #$0010                              ; $82827E |
  STA.W $1C1E                               ; $828281 |
  INC.W $1C1C                               ; $828284 |
  JMP.W CODE_JP_82835D                      ; $828287 |

CODE_82828A:
  DEC.W $1C1E                               ; $82828A |
  BMI CODE_828292                           ; $82828D |
  JMP.W CODE_JP_82835D                      ; $82828F |

CODE_828292:
  INC.W $1C1C                               ; $828292 |

CODE_828295:
  INC.W $1C0C                               ; $828295 |
  LDA.W $1C0C                               ; $828298 |
  CMP.W #$FFD0                              ; $82829B |
  BNE CODE_8282AA                           ; $82829E |
  LDY.W #$BA6A                              ; $8282A0 |
  LDX.W #$1F60                              ; $8282A3 |
  JSL.L CODE_FL_80C27F                      ; $8282A6 |

CODE_8282AA:
  LDA.W $1C14                               ; $8282AA |
  ASL A                                     ; $8282AD |
  CMP.W $1C0C                               ; $8282AE |
  BEQ CODE_8282B6                           ; $8282B1 |
  JMP.W CODE_JP_82835D                      ; $8282B3 |

CODE_8282B6:
  INC.W $1C1C                               ; $8282B6 |

CODE_8282B9:
  STZ.W $1C9E                               ; $8282B9 |
  STZ.W $1C1C                               ; $8282BC |
  JMP.W CODE_JP_82835D                      ; $8282BF |

CODE_JP_8282C2:
  LDA.W $1C24                               ; $8282C2 |
  BNE CODE_JP_8282EC                        ; $8282C5 |
  LDA.B $30                                 ; $8282C7 |
  BIT.W #$1000                              ; $8282C9 |
  BEQ CODE_8282D6                           ; $8282CC |
  LDX.W #$0700                              ; $8282CE |
  JSR.W CODE_FN_8285CE                      ; $8282D1 |
  BRA CODE_8282E3                           ; $8282D4 |

CODE_8282D6:
  LDA.B $32                                 ; $8282D6 |
  BIT.W #$1000                              ; $8282D8 |
  BEQ CODE_8282E3                           ; $8282DB |
  LDX.W #$0760                              ; $8282DD |
  JSR.W CODE_FN_8285CE                      ; $8282E0 |

CODE_8282E3:
  LDA.W $1C9E                               ; $8282E3 |
  BEQ CODE_JP_8282EC                        ; $8282E6 |
  JML.L CODE_FL_828BD3                      ; $8282E8 |

CODE_JP_8282EC:
  JSL.L CODE_FL_828BC2                      ; $8282EC |
  JSL.L CODE_FL_82895F                      ; $8282F0 |
  JSR.W CODE_FN_828686                      ; $8282F4 |
  JSL.L CODE_FL_828987                      ; $8282F7 |
  LDA.W $1C68                               ; $8282FB |
  BNE CODE_JP_82835D                        ; $8282FE |
  LDA.W $0DD8                               ; $828300 |
  BEQ CODE_828331                           ; $828303 |
  LDA.W $0DD0                               ; $828305 |
  BEQ CODE_82830C                           ; $828308 |
  BPL CODE_828331                           ; $82830A |

CODE_82830C:
  LDA.W #$0001                              ; $82830C |
  STA.W $1C6A                               ; $82830F |
  STZ.W $0DD0                               ; $828312 |
  LDA.W $1C94                               ; $828315 |
  BNE CODE_828320                           ; $828318 |
  LDA.W #$0006                              ; $82831A |
  STA.W $1C94                               ; $82831D |

CODE_828320:
  LDA.W $1C74                               ; $828320 |
  BNE CODE_JP_82835D                        ; $828323 |
  LDA.B $DA                                 ; $828325 |
  ASL A                                     ; $828327 |
  TAY                                       ; $828328 |
  LDA.W $8050,Y                             ; $828329 |
  STA.W $0DDA                               ; $82832C |
  BRA CODE_828354                           ; $82832F |

CODE_828331:
  LDA.W $1C48                               ; $828331 |
  BEQ CODE_828338                           ; $828334 |
  BPL CODE_JP_82835D                        ; $828336 |

CODE_828338:
  LDA.W #$0001                              ; $828338 |
  STA.W $1C6A                               ; $82833B |
  STZ.W $1C48                               ; $82833E |
  STZ.W $1C4A                               ; $828341 |
  LDA.W #$0001                              ; $828344 |
  STA.W $1C94                               ; $828347 |
  LDA.B $DA                                 ; $82834A |
  ASL A                                     ; $82834C |
  TAY                                       ; $82834D |
  LDA.W $8040,Y                             ; $82834E |
  STA.W $0DDA                               ; $828351 |

CODE_828354:
  LDA.W #$0001                              ; $828354 |
  STA.W $1C68                               ; $828357 |
  STA.W $1C24                               ; $82835A |

CODE_JP_82835D:
  JSR.W CODE_FN_82865C                      ; $82835D |
  JSR.W CODE_FN_8286D0                      ; $828360 |
  JSR.W CODE_FN_828784                      ; $828363 |
  LDA.L $7EDAC0                             ; $828366 |
  EOR.W #$0001                              ; $82836A |
  STA.L $7EDAC0                             ; $82836D |
  JSL.L CODE_FL_808F6E                      ; $828371 |
  LDA.W #$0090                              ; $828375 |
  CLC                                       ; $828378 |
  ADC.W $1C1A                               ; $828379 |
  TAY                                       ; $82837C |
  LDA.W #$0013                              ; $82837D |
  JSL.L CODE_FL_808FD5                      ; $828380 |
  JML.L CODE_FL_82BE73                      ; $828384 |

CODE_828388:
  LDA.L $001F60                             ; $828388 |
  BEQ CODE_828391                           ; $82838C |
  JMP.W CODE_JP_8281BD                      ; $82838E |

CODE_828391:
  JSL.L CODE_FL_80977D                      ; $828391 |
  JML.L CODE_FL_80C873                      ; $828395 |

CODE_828399:
  JSL.L CODE_FL_82D51F                      ; $828399 |
  LDA.W $1C68                               ; $82839D |
  CMP.W #$FFFF                              ; $8283A0 |
  BEQ CODE_8283FD                           ; $8283A3 |
  LDA.B $DA                                 ; $8283A5 |
  ASL A                                     ; $8283A7 |
  TAX                                       ; $8283A8 |
  JMP.W (PTR16_8283AC,X)                    ; $8283A9 |

PTR16_8283AC:
  dw CODE_8283BC                            ; $8283AC |
  dw CODE_8283C0                            ; $8283AE |
  dw CODE_8283C9                            ; $8283B0 |
  dw CODE_8283D2                            ; $8283B2 |
  dw CODE_8283DB                            ; $8283B4 |
  dw CODE_8283E8                            ; $8283B6 |
  dw CODE_8283E8                            ; $8283B8 |
  dw CODE_8283BC                            ; $8283BA |

CODE_8283BC:
  JML.L CODE_JL_849917                      ; $8283BC |

CODE_8283C0:
  LDA.W #$0001                              ; $8283C0 |
  STA.L $700790                             ; $8283C3 |
  BRA CODE_8283EF                           ; $8283C7 |

CODE_8283C9:
  LDA.W #$0001                              ; $8283C9 |
  STA.L $700792                             ; $8283CC |
  BRA CODE_8283EF                           ; $8283D0 |

CODE_8283D2:
  LDA.W #$0001                              ; $8283D2 |
  STA.L $700794                             ; $8283D5 |
  BRA CODE_8283EF                           ; $8283D9 |

CODE_8283DB:
  LDA.L $700796                             ; $8283DB |
  ORA.W #$0001                              ; $8283DF |
  STA.L $700796                             ; $8283E2 |
  BRA CODE_8283EF                           ; $8283E6 |

CODE_8283E8:
  LDA.W #$0001                              ; $8283E8 |
  STA.L $700798                             ; $8283EB |

CODE_8283EF:
  LDA.B $DA                                 ; $8283EF |
  ORA.W #$8000                              ; $8283F1 |
  STA.B $DA                                 ; $8283F4 |
  LDA.W #$000B                              ; $8283F6 |
  JML.L CODE_FL_8085F6                      ; $8283F9 |

CODE_8283FD:
  TDC                                       ; $8283FD |
  STA.L $7007B8                             ; $8283FE |
  LDA.B $DA                                 ; $828402 |
  ASL A                                     ; $828404 |
  TAX                                       ; $828405 |
  JMP.W (PTR16_828409,X)                    ; $828406 |

PTR16_828409:
  dw CODE_828419                            ; $828409 |
  dw CODE_82841D                            ; $82840B |
  dw CODE_82842F                            ; $82840D |
  dw CODE_828441                            ; $82840F |
  dw CODE_828453                            ; $828411 |
  dw CODE_82845E                            ; $828413 |
  dw CODE_828469                            ; $828415 |
  dw CODE_828419                            ; $828417 |

CODE_828419:
  JML.L CODE_JL_849917                      ; $828419 |

CODE_82841D:
  LDA.W #$0005                              ; $82841D |
  STA.L $700758                             ; $828420 |
  LDA.W #$0590                              ; $828424 |
  JSL.L CODE_FL_8CF9C3                      ; $828427 |
  JML.L CODE_JL_80EBE9                      ; $82842B |

CODE_82842F:
  LDA.W #$000E                              ; $82842F |
  STA.L $700758                             ; $828432 |
  LDA.W #$0592                              ; $828436 |
  JSL.L CODE_FL_8CF9C3                      ; $828439 |
  JML.L CODE_JL_80ED6C                      ; $82843D |

CODE_828441:
  LDA.W #$000C                              ; $828441 |
  STA.L $700758                             ; $828444 |
  LDA.W #$0594                              ; $828448 |
  JSL.L CODE_FL_8CF9C3                      ; $82844B |
  JML.L CODE_JL_80ED7C                      ; $82844F |

CODE_828453:
  LDA.W #$0596                              ; $828453 |
  JSL.L CODE_FL_8CF9C3                      ; $828456 |
  JML.L CODE_JL_80ED8C                      ; $82845A |

CODE_82845E:
  LDA.W #$0006                              ; $82845E |
  STA.B $90                                 ; $828461 |
  TDC                                       ; $828463 |
  JSL.L CODE_FL_80C876                      ; $828464 |
  RTL                                       ; $828468 |

CODE_828469:
  LDA.W #$0598                              ; $828469 |
  JSL.L CODE_FL_8CF9C3                      ; $82846C |
  JSL.L CODE_FL_848398                      ; $828470 |
  BCS CODE_82847A                           ; $828474 |
  JML.L CODE_JL_80EDA1                      ; $828476 |

CODE_82847A:
  JML.L CODE_JL_80EDB1                      ; $82847A |

CODE_FL_82847E:
  PHX                                       ; $82847E |
  LDY.W #$9274                              ; $82847F |
  JSL.L CODE_FL_82D49F                      ; $828482 |
  LDX.W #$DAC2                              ; $828486 |
  SEP #$20                                  ; $828489 |
  LDA.B #$09                                ; $82848B |
  STA.L $7E0003,X                           ; $82848D |
  STA.L $7E0005,X                           ; $828491 |
  STA.L $7E0023,X                           ; $828495 |
  STA.L $7E0025,X                           ; $828499 |
  REP #$20                                  ; $82849D |
  PLX                                       ; $82849F |
  LDA.W #$0012                              ; $8284A0 |
  STA.W $1FBE                               ; $8284A3 |
  RTL                                       ; $8284A6 |

  PHX                                       ; $8284A7 |
  LDY.W #$9262                              ; $8284A8 |
  JSL.L CODE_FL_82D49F                      ; $8284AB |
  LDX.W #$DAC2                              ; $8284AF |
  SEP #$20                                  ; $8284B2 |
  LDA.B #$0F                                ; $8284B4 |
  STA.L $7E0003,X                           ; $8284B6 |
  STA.L $7E0005,X                           ; $8284BA |
  STA.L $7E0023,X                           ; $8284BE |
  STA.L $7E0025,X                           ; $8284C2 |
  REP #$20                                  ; $8284C6 |
  PLX                                       ; $8284C8 |
  LDA.W #$0013                              ; $8284C9 |
  STA.W $1FBE                               ; $8284CC |
  RTL                                       ; $8284CF |

CODE_FL_8284D0:
  PHX                                       ; $8284D0 |
  LDX.W #DATA_888393                        ; $8284D1 |
  JSL.L sound_transfer_blocks               ; $8284D4 |
  LDY.W #$8C42                              ; $8284D8 |
  LDA.W #$000C                              ; $8284DB |
  JSL.L CODE_FL_80C2BA                      ; $8284DE |
  LDY.W $1C20                               ; $8284E2 |
  LDA.W $8090,Y                             ; $8284E5 |
  TAX                                       ; $8284E8 |
  JSL.L sound_transfer_blocks               ; $8284E9 |
  LDY.W $1C22                               ; $8284ED |
  LDA.W $8098,Y                             ; $8284F0 |
  TAX                                       ; $8284F3 |
  JSL.L sound_transfer_blocks               ; $8284F4 |
  PLX                                       ; $8284F8 |
  LDA.W #$0012                              ; $8284F9 |
  STA.W $1FBE                               ; $8284FC |
  RTL                                       ; $8284FF |

CODE_FL_828500:
  DEC.W $1CFE                               ; $828500 |
  BPL CODE_82852F                           ; $828503 |
  LDA.W $1CFC                               ; $828505 |
  STA.W $1CFE                               ; $828508 |
  PHB                                       ; $82850B |
  PEA.W $7E00                               ; $82850C |
  PLB                                       ; $82850F |
  PLB                                       ; $828510 |
  LDY.W #$001C                              ; $828511 |
  LDA.W $2CC0,Y                             ; $828514 |
  STA.B $00                                 ; $828517 |

CODE_828519:
  DEY                                       ; $828519 |
  DEY                                       ; $82851A |
  BEQ CODE_828525                           ; $82851B |
  LDA.W $2CC0,Y                             ; $82851D |
  STA.W $2CC2,Y                             ; $828520 |
  BRA CODE_828519                           ; $828523 |

CODE_828525:
  LDA.B $00                                 ; $828525 |
  STA.W $2CC2                               ; $828527 |
  PLB                                       ; $82852A |
  JML.L CODE_FL_80C2DC                      ; $82852B |

CODE_82852F:
  RTL                                       ; $82852F |

CODE_FL_828530:
  LDA.B $42                                 ; $828530 |
  AND.W #$000F                              ; $828532 |
  BNE CODE_82853F                           ; $828535 |
  LDA.W $1CFC                               ; $828537 |
  BEQ CODE_828541                           ; $82853A |
  DEC.W $1CFC                               ; $82853C |

CODE_82853F:
  CLC                                       ; $82853F |
  RTL                                       ; $828540 |

CODE_828541:
  SEC                                       ; $828541 |
  RTL                                       ; $828542 |

CODE_FL_828543:
  LDA.B $42                                 ; $828543 |
  AND.W #$000F                              ; $828545 |
  BNE CODE_828555                           ; $828548 |
  LDA.W $1CFC                               ; $82854A |
  CMP.W #$0004                              ; $82854D |
  BPL CODE_828557                           ; $828550 |
  INC.W $1CFC                               ; $828552 |

CODE_828555:
  CLC                                       ; $828555 |
  RTL                                       ; $828556 |

CODE_828557:
  SEC                                       ; $828557 |
  RTL                                       ; $828558 |

CODE_FL_828559:
  STZ.W $1CF8                               ; $828559 |
  TDC                                       ; $82855C |
  STA.L $7EDBC2                             ; $82855D |
  STZ.W $1CFA                               ; $828561 |
  LDY.W #$2000                              ; $828564 |
  JSL.L CODE_FL_809725                      ; $828567 |
  LDY.W #$0100                              ; $82856B |
  JSL.L CODE_FL_809762                      ; $82856E |

CODE_FL_828572:
  LDA.W #$0003                              ; $828572 |

CODE_FL_828575:
  STA.B $00                                 ; $828575 |
  PHX                                       ; $828577 |
  LDA.W $1CFA                               ; $828578 |
  INC.W $1CFA                               ; $82857B |
  AND.W #$003F                              ; $82857E |
  ASL A                                     ; $828581 |
  ASL A                                     ; $828582 |
  ASL A                                     ; $828583 |
  ASL A                                     ; $828584 |
  TAX                                       ; $828585 |
  STZ.B $02                                 ; $828586 |

CODE_JL_828588:
  LDA.L DATA8_978000,X                      ; $828588 |
  STA.B $04                                 ; $82858C |
  LDY.B $00                                 ; $82858E |
  JSL.L CODE_FL_808DF4                      ; $828590 |
  XBA                                       ; $828594 |
  AND.W #$00FF                              ; $828595 |
  ASL.B $04                                 ; $828598 |
  BCC CODE_8285A0                           ; $82859A |
  EOR.W #$FFFF                              ; $82859C |
  INC A                                     ; $82859F |

CODE_8285A0:
  LDY.B $02                                 ; $8285A0 |
  PHB                                       ; $8285A2 |
  PEA.W $7E00                               ; $8285A3 |
  PLB                                       ; $8285A6 |
  PLB                                       ; $8285A7 |
  STA.W LOOSE_OP_00DC02,Y                   ; $8285A8 |
  PLB                                       ; $8285AB |
  TXA                                       ; $8285AC |
  CLC                                       ; $8285AD |
  ADC.W #$0020                              ; $8285AE |
  AND.W #$03F0                              ; $8285B1 |
  TAX                                       ; $8285B4 |
  INY                                       ; $8285B5 |
  INY                                       ; $8285B6 |
  STY.B $02                                 ; $8285B7 |
  CPY.W #$0040                              ; $8285B9 |
  BNE CODE_JL_828588                        ; $8285BC |
  PLX                                       ; $8285BE |
  RTL                                       ; $8285BF |

  LDY.W #$2000                              ; $8285C0 |
  JSL.L CODE_FL_809762                      ; $8285C3 |
  LDY.W #$0100                              ; $8285C7 |
  JML.L CODE_FL_809725                      ; $8285CA |

CODE_FN_8285CE:
  LDA.W $1C9E                               ; $8285CE |
  BMI CODE_8285F7                           ; $8285D1 |
  BEQ CODE_8285E7                           ; $8285D3 |
  LDA.W $1C9E                               ; $8285D5 |
  AND.W #$FFFE                              ; $8285D8 |
  STA.W $1C9E                               ; $8285DB |
  LDA.W #$00E8                              ; $8285DE |
  JSL.L push_sound_queue                    ; $8285E1 |
  BRA CODE_8285F7                           ; $8285E5 |

CODE_8285E7:
  LDA.W $1C9E                               ; $8285E7 |
  ORA.W #$0001                              ; $8285EA |
  STA.W $1C9E                               ; $8285ED |
  LDA.W #$00E7                              ; $8285F0 |
  JSL.L push_sound_queue                    ; $8285F3 |

CODE_8285F7:
  RTS                                       ; $8285F7 |

CODE_FL_8285F8:
  PHX                                       ; $8285F8 |
  JSL.L CODE_FL_80893F                      ; $8285F9 |
  LDX.W #$1F60                              ; $8285FD |
  JSL.L CODE_FL_80C216                      ; $828600 |
  JSL.L CODE_FL_80C873                      ; $828604 |
  PLX                                       ; $828608 |
  RTL                                       ; $828609 |

CODE_FN_82860A:
  LDX.W #$DAC2                              ; $82860A |
  LDY.W #$8139                              ; $82860D |
  SEP #$20                                  ; $828610 |

CODE_828612:
  LDA.W $0000,Y                             ; $828612 |
  STA.L $7E0000,X                           ; $828615 |
  STA.L $7E0020,X                           ; $828619 |
  BEQ CODE_828623                           ; $82861D |
  INY                                       ; $82861F |
  INX                                       ; $828620 |
  BRA CODE_828612                           ; $828621 |

CODE_828623:
  LDX.W #$DB42                              ; $828623 |
  LDY.W #$8142                              ; $828626 |

CODE_828629:
  LDA.W $0000,Y                             ; $828629 |
  STA.L $7E0000,X                           ; $82862C |
  STA.L $7E0020,X                           ; $828630 |
  BEQ CODE_82863E                           ; $828634 |
  INY                                       ; $828636 |
  INX                                       ; $828637 |
  INX                                       ; $828638 |
  INX                                       ; $828639 |
  INX                                       ; $82863A |
  INX                                       ; $82863B |
  BRA CODE_828629                           ; $82863C |

CODE_82863E:
  LDX.W #$DB82                              ; $82863E |
  LDY.W #$8145                              ; $828641 |

CODE_828644:
  LDA.W $0000,Y                             ; $828644 |
  CMP.B #$FF                                ; $828647 |
  BEQ CODE_828657                           ; $828649 |
  STA.L $7E0000,X                           ; $82864B |
  STA.L $7E0020,X                           ; $82864F |
  INY                                       ; $828653 |
  INX                                       ; $828654 |
  BRA CODE_828644                           ; $828655 |

CODE_828657:
  REP #$20                                  ; $828657 |
  JMP.W CODE_FN_828784                      ; $828659 |

CODE_FN_82865C:
  LDA.W $1C26                               ; $82865C |
  BEQ CODE_82867A                           ; $82865F |
  LDY.W $1C26                               ; $828661 |
  LDA.W CODE_008178,Y                       ; $828664 |
  STA.W $1FAA                               ; $828667 |
  DEC.W $1C26                               ; $82866A |
  BNE CODE_828685                           ; $82866D |
  STZ.W $1FAA                               ; $82866F |
  STZ.W $1C28                               ; $828672 |
  STZ.W $1C26                               ; $828675 |
  BRA CODE_828685                           ; $828678 |

CODE_82867A:
  LDA.W $1C28                               ; $82867A |
  BEQ CODE_828685                           ; $82867D |
  LDA.W #$001F                              ; $82867F |
  STA.W $1C26                               ; $828682 |

CODE_828685:
  RTS                                       ; $828685 |

CODE_FN_828686:
  LDA.W $1C7A                               ; $828686 |
  BNE CODE_828699                           ; $828689 |
  LDA.W $1C7C                               ; $82868B |
  BEQ CODE_8286BD                           ; $82868E |
  STA.W $1C7E                               ; $828690 |
  LDA.W #$0010                              ; $828693 |
  STA.W $1C7A                               ; $828696 |

CODE_828699:
  DEC A                                     ; $828699 |
  ASL A                                     ; $82869A |
  TAY                                       ; $82869B |
  LDA.W $1C7E                               ; $82869C |
  BMI CODE_8286A6                           ; $82869F |
  LDA.W $80B0,Y                             ; $8286A1 |
  BRA CODE_8286A9                           ; $8286A4 |

CODE_8286A6:
  LDA.W $80D0,Y                             ; $8286A6 |

CODE_8286A9:
  STA.W $1C80                               ; $8286A9 |
  DEC.W $1C7A                               ; $8286AC |
  BNE CODE_8286BD                           ; $8286AF |
  STZ.W $1C7C                               ; $8286B1 |
  STZ.W $1C7A                               ; $8286B4 |
  STZ.W $1C7E                               ; $8286B7 |
  STZ.W $1C80                               ; $8286BA |

CODE_8286BD:
  LDY.B $DA                                 ; $8286BD |
  LDA.W $80A8,Y                             ; $8286BF |
  AND.W #$00FF                              ; $8286C2 |
  BEQ CODE_8286CF                           ; $8286C5 |
  CLC                                       ; $8286C7 |
  ADC.W $1C80                               ; $8286C8 |
  JSL.L CODE_FL_8AB11E                      ; $8286CB |

CODE_8286CF:
  RTS                                       ; $8286CF |

CODE_FN_8286D0:
  LDA.W $1C86                               ; $8286D0 |
  BNE CODE_8286E8                           ; $8286D3 |
  LDA.W $1C84                               ; $8286D5 |
  BEQ CODE_8286E7                           ; $8286D8 |
  STA.W $1C86                               ; $8286DA |
  TAY                                       ; $8286DD |
  LDA.W $80F0,Y                             ; $8286DE |
  AND.W #$00FF                              ; $8286E1 |
  STA.W $1C82                               ; $8286E4 |

CODE_8286E7:
  RTS                                       ; $8286E7 |

CODE_8286E8:
  LDA.W $1C86                               ; $8286E8 |
  ASL A                                     ; $8286EB |
  TAX                                       ; $8286EC |
  JMP.W (PTR16_8286F0,X)                    ; $8286ED |

PTR16_8286F0:
  dw CODE_82875A                            ; $8286F0 |
  dw CODE_8286FA                            ; $8286F2 |
  dw CODE_828706                            ; $8286F4 |
  dw CODE_828712                            ; $8286F6 |
  dw CODE_8286FA                            ; $8286F8 |

CODE_8286FA:
  LDA.W #$80F5                              ; $8286FA |
  STA.B $00                                 ; $8286FD |
  LDY.W #$80F9                              ; $8286FF |
  STY.B $02                                 ; $828702 |
  BRA CODE_82871C                           ; $828704 |

CODE_828706:
  LDA.W #$8109                              ; $828706 |
  STA.B $00                                 ; $828709 |
  LDY.W #$810D                              ; $82870B |
  STY.B $02                                 ; $82870E |
  BRA CODE_82871C                           ; $828710 |

CODE_828712:
  LDA.W #$811D                              ; $828712 |
  STA.B $00                                 ; $828715 |
  LDY.W #$8121                              ; $828717 |
  STY.B $02                                 ; $82871A |

CODE_82871C:
  LDA.W $1C82                               ; $82871C |
  LSR A                                     ; $82871F |
  AND.W #$0003                              ; $828720 |
  CLC                                       ; $828723 |
  ADC.B $00                                 ; $828724 |
  TAY                                       ; $828726 |
  LDA.W $0000,Y                             ; $828727 |
  AND.W #$00FF                              ; $82872A |
  STA.W $1C88                               ; $82872D |
  EOR.W #$FFFF                              ; $828730 |
  INC A                                     ; $828733 |
  STA.W $1C10                               ; $828734 |
  STA.W $1C14                               ; $828737 |
  ASL A                                     ; $82873A |
  STA.W $1C04                               ; $82873B |
  STA.W $1C0C                               ; $82873E |
  LDA.W $1C82                               ; $828741 |
  AND.W #$000E                              ; $828744 |
  CLC                                       ; $828747 |
  ADC.B $02                                 ; $828748 |
  TAY                                       ; $82874A |
  LDA.W $0000,Y                             ; $82874B |
  STA.W $1C0E                               ; $82874E |
  EOR.W #$FFFF                              ; $828751 |
  INC A                                     ; $828754 |
  STA.W $1C12                               ; $828755 |
  BRA CODE_82875A                           ; $828758 |

CODE_82875A:
  DEC.W $1C82                               ; $82875A |
  BNE CODE_828783                           ; $82875D |
  STZ.W $1C84                               ; $82875F |
  STZ.W $1C82                               ; $828762 |
  STZ.W $1C88                               ; $828765 |
  STZ.W $1C86                               ; $828768 |
  STZ.W $1C10                               ; $82876B |
  STZ.W $1C14                               ; $82876E |
  STZ.W $1C04                               ; $828771 |
  STZ.W $1C0C                               ; $828774 |
  STZ.W $1C0E                               ; $828777 |
  STZ.W $1C12                               ; $82877A |
  STZ.W $1C02                               ; $82877D |
  STZ.W $1C0A                               ; $828780 |

CODE_828783:
  RTS                                       ; $828783 |

CODE_FN_828784:
  LDA.W $1C00                               ; $828784 |
  LSR A                                     ; $828787 |
  STA.B $08                                 ; $828788 |
  STA.W $1C18                               ; $82878A |
  ADC.W #$0000                              ; $82878D |
  STA.B $0A                                 ; $828790 |
  STA.W $1C1A                               ; $828792 |
  LSR A                                     ; $828795 |
  ADC.B $0A                                 ; $828796 |
  STA.B $0C                                 ; $828798 |
  LDA.W CODE_008131                         ; $82879A |
  SEC                                       ; $82879D |
  SBC.B $08                                 ; $82879E |
  CLC                                       ; $8287A0 |
  ADC.W $1C88                               ; $8287A1 |
  STA.B $00                                 ; $8287A4 |
  LDA.W LOOSE_OP_008133                     ; $8287A6 |
  CLC                                       ; $8287A9 |
  ADC.W $1C00                               ; $8287AA |
  STA.B $02                                 ; $8287AD |
  SEC                                       ; $8287AF |
  SBC.W #$0060                              ; $8287B0 |
  BEQ CODE_8287BE                           ; $8287B3 |
  BMI CODE_8287BE                           ; $8287B5 |
  LDY.W #$0060                              ; $8287B7 |
  STY.B $02                                 ; $8287BA |
  BRA CODE_8287C3                           ; $8287BC |

CODE_8287BE:
  DEC.B $02                                 ; $8287BE |
  LDA.W #$0001                              ; $8287C0 |

CODE_8287C3:
  STA.B $04                                 ; $8287C3 |
  LDX.W #$DAC2                              ; $8287C5 |
  LDA.L $7EDAC0                             ; $8287C8 |
  BNE CODE_8287D1                           ; $8287CC |
  LDX.W #$DAE2                              ; $8287CE |

CODE_8287D1:
  SEP #$20                                  ; $8287D1 |
  LDA.B $00                                 ; $8287D3 |
  STA.L $7E0000,X                           ; $8287D5 |
  LDA.B $02                                 ; $8287D9 |
  STA.L $7E0002,X                           ; $8287DB |
  LDA.B $04                                 ; $8287DF |
  STA.L $7E0004,X                           ; $8287E1 |
  REP #$20                                  ; $8287E5 |
  LDX.W #$DB02                              ; $8287E7 |
  LDA.L $7EDAC0                             ; $8287EA |
  BNE CODE_8287F3                           ; $8287EE |
  LDX.W #$DB22                              ; $8287F0 |

CODE_8287F3:
  LDA.B $00                                 ; $8287F3 |
  STA.L $7E0000,X                           ; $8287F5 |
  LDA.W $1C02                               ; $8287F9 |
  STA.L $7E0001,X                           ; $8287FC |
  LDA.W $1C04                               ; $828800 |
  CLC                                       ; $828803 |
  ADC.B $0C                                 ; $828804 |
  STA.L $7E0003,X                           ; $828806 |
  LDA.B $02                                 ; $82880A |
  STA.L $7E0005,X                           ; $82880C |
  LDA.W $1C06                               ; $828810 |
  STA.L $7E0006,X                           ; $828813 |
  LDA.W $1C08                               ; $828817 |
  STA.L $7E0008,X                           ; $82881A |
  LDA.B $04                                 ; $82881E |
  STA.L $7E000A,X                           ; $828820 |
  LDA.W $1C06                               ; $828824 |
  STA.L $7E000B,X                           ; $828827 |
  LDA.W $1C08                               ; $82882B |
  STA.L $7E000D,X                           ; $82882E |
  LDA.W #$0001                              ; $828832 |
  STA.L $7E000F,X                           ; $828835 |
  LDA.W $1C0A                               ; $828839 |
  STA.L $7E0010,X                           ; $82883C |
  LDA.W $1C0C                               ; $828840 |
  SEC                                       ; $828843 |
  SBC.B $0C                                 ; $828844 |
  STA.L $7E0012,X                           ; $828846 |
  TDC                                       ; $82884A |
  STA.L $7E0014,X                           ; $82884B |
  LDX.W #$DB42                              ; $82884F |
  LDA.L $7EDAC0                             ; $828852 |
  BNE CODE_82885B                           ; $828856 |
  LDX.W #$DB62                              ; $828858 |

CODE_82885B:
  LDA.W $1C0E                               ; $82885B |
  STA.L $7E0001,X                           ; $82885E |
  LDA.W $1C10                               ; $828862 |
  CLC                                       ; $828865 |
  ADC.B $08                                 ; $828866 |
  STA.L $7E0003,X                           ; $828868 |
  LDA.W $1C12                               ; $82886C |
  STA.L $7E0006,X                           ; $82886F |
  LDA.W $1C14                               ; $828873 |
  SEC                                       ; $828876 |
  SBC.B $0A                                 ; $828877 |
  STA.L $7E0008,X                           ; $828879 |
  LDX.W #$DB82                              ; $82887D |
  LDA.L $7EDAC0                             ; $828880 |
  BNE CODE_828889                           ; $828884 |
  LDX.W #$DBA2                              ; $828886 |

CODE_828889:
  SEP #$20                                  ; $828889 |
  LDA.B $00                                 ; $82888B |
  STA.L $7E0000,X                           ; $82888D |
  LDA.B $02                                 ; $828891 |
  STA.L $7E0002,X                           ; $828893 |
  LDA.W $1FDE                               ; $828897 |
  STA.L $7E0003,X                           ; $82889A |
  STA.L $7E0005,X                           ; $82889E |
  LDA.B $04                                 ; $8288A2 |
  STA.L $7E0004,X                           ; $8288A4 |
  REP #$20                                  ; $8288A8 |
  RTS                                       ; $8288AA |

CODE_FN_8288AB:
  STZ.W $1C42                               ; $8288AB |
  LDA.W $0418                               ; $8288AE |
  BEQ CODE_8288D4                           ; $8288B1 |
  DEC A                                     ; $8288B3 |
  ASL A                                     ; $8288B4 |
  STA.W $1C20                               ; $8288B5 |
  LDX.W #$0700                              ; $8288B8 |
  JSL.L CODE_FL_82CC9F                      ; $8288BB |
  LDA.W #$C001                              ; $8288BF |
  STA.B $18,X                               ; $8288C2 |
  STZ.B $38,X                               ; $8288C4 |
  LDA.W #$0760                              ; $8288C6 |
  STA.B $40,X                               ; $8288C9 |
  LDA.W $1C42                               ; $8288CB |
  ORA.W #$8000                              ; $8288CE |
  STA.W $1C42                               ; $8288D1 |

CODE_8288D4:
  LDA.W $04D8                               ; $8288D4 |
  BEQ CODE_8288FF                           ; $8288D7 |
  DEC A                                     ; $8288D9 |
  ASL A                                     ; $8288DA |
  STA.W $1C22                               ; $8288DB |
  LDX.W #$0760                              ; $8288DE |
  JSL.L CODE_FL_82CC9F                      ; $8288E1 |
  LDA.W #$C001                              ; $8288E5 |
  STA.B $18,X                               ; $8288E8 |
  LDA.W #$0002                              ; $8288EA |
  STA.B $38,X                               ; $8288ED |
  LDA.W #$0700                              ; $8288EF |
  STA.B $40,X                               ; $8288F2 |
  LDA.W $1C42                               ; $8288F4 |
  ORA.W #$4000                              ; $8288F7 |
  STA.W $1C42                               ; $8288FA |
  BRA CODE_82890A                           ; $8288FD |

CODE_8288FF:
  LDA.W $1C20                               ; $8288FF |
  INC A                                     ; $828902 |
  INC A                                     ; $828903 |
  AND.W #$0006                              ; $828904 |
  STA.W $1C22                               ; $828907 |

CODE_82890A:
  LDY.W $1C20                               ; $82890A |
  LDA.B $7E                                 ; $82890D |
  CMP.W #$0006                              ; $82890F |
  BPL CODE_828919                           ; $828912 |
  LDA.W $8070,Y                             ; $828914 |
  BRA CODE_82891C                           ; $828917 |

CODE_828919:
  LDA.W $8080,Y                             ; $828919 |

CODE_82891C:
  TAX                                       ; $82891C |
  JSL.L sound_transfer_blocks               ; $82891D |
  LDY.W $1C20                               ; $828921 |
  LDA.W $80A0,Y                             ; $828924 |
  TAY                                       ; $828927 |
  LDA.W #$0004                              ; $828928 |
  JSL.L CODE_FL_80C2C9                      ; $82892B |
  TDC                                       ; $82892F |
  JSL.L CODE_FL_829A3D                      ; $828930 |
  LDY.W $1C22                               ; $828934 |
  LDA.B $7E                                 ; $828937 |
  CMP.W #$0006                              ; $828939 |
  BPL CODE_828943                           ; $82893C |
  LDA.W $8078,Y                             ; $82893E |
  BRA CODE_828946                           ; $828941 |

CODE_828943:
  LDA.W $8088,Y                             ; $828943 |

CODE_828946:
  TAX                                       ; $828946 |
  JSL.L sound_transfer_blocks               ; $828947 |
  LDY.W $1C22                               ; $82894B |
  LDA.W $80A0,Y                             ; $82894E |
  TAY                                       ; $828951 |
  LDA.W #$0006                              ; $828952 |
  JSL.L CODE_FL_80C2C4                      ; $828955 |
  TDC                                       ; $828959 |
  JSL.L CODE_FL_829A7B                      ; $82895A |
  RTS                                       ; $82895E |

CODE_FL_82895F:
  LDX.W #$0580                              ; $82895F |

CODE_828962:
  STX.B $FC                                 ; $828962 |
  LDA.B $18,X                               ; $828964 |
  BEQ CODE_828981                           ; $828966 |
  JSL.L CODE_FL_8289A3                      ; $828968 |
  LDA.B $18,X                               ; $82896C |
  BIT.W #$4000                              ; $82896E |
  BNE CODE_828976                           ; $828971 |
  JSR.W CODE_FN_8289ED                      ; $828973 |

CODE_828976:
  LDA.B $1C,X                               ; $828976 |
  AND.W #$00FF                              ; $828978 |
  BEQ CODE_828981                           ; $82897B |
  JSL.L CODE_FL_828AEC                      ; $82897D |

CODE_828981:
  LDA.B $16,X                               ; $828981 |
  TAX                                       ; $828983 |
  BNE CODE_828962                           ; $828984 |
  RTL                                       ; $828986 |

CODE_FL_828987:
  LDX.W #$13C0                              ; $828987 |

CODE_82898A:
  LDA.B $18,X                               ; $82898A |
  BEQ CODE_82899D                           ; $82898C |
  JSL.L CODE_FL_8289D9                      ; $82898E |
  LDA.B $1C,X                               ; $828992 |
  AND.W #$00FF                              ; $828994 |
  BEQ CODE_82899D                           ; $828997 |
  JSL.L CODE_FL_828AEC                      ; $828999 |

CODE_82899D:
  LDA.B $16,X                               ; $82899D |
  TAX                                       ; $82899F |
  BNE CODE_82898A                           ; $8289A0 |
  RTL                                       ; $8289A2 |

CODE_FL_8289A3:
  BMI CODE_8289C3                           ; $8289A3 |
  AND.W #$0FFF                              ; $8289A5 |
  STA.B $00                                 ; $8289A8 |
  ASL A                                     ; $8289AA |
  ADC.B $00                                 ; $8289AB |
  TAY                                       ; $8289AD |
  LDA.W CODE_00819A,Y                       ; $8289AE |
  STA.B $02                                 ; $8289B1 |
  LDA.W CODE_008198,Y                       ; $8289B3 |
  STA.B $00                                 ; $8289B6 |
  LDA.B $1A,X                               ; $8289B8 |
  ASL A                                     ; $8289BA |
  TAY                                       ; $8289BB |
  LDA.B [$00],Y                             ; $8289BC |
  STA.B $00                                 ; $8289BE |
  JML.W [$0000]                             ; $8289C0 |

CODE_8289C3:
  AND.W #$0FFF                              ; $8289C3 |
  STA.B $00                                 ; $8289C6 |
  ASL A                                     ; $8289C8 |
  ADC.B $00                                 ; $8289C9 |
  TAY                                       ; $8289CB |
  LDA.W CODE_00819A,Y                       ; $8289CC |
  STA.B $02                                 ; $8289CF |
  LDA.W CODE_008198,Y                       ; $8289D1 |
  STA.B $00                                 ; $8289D4 |
  JML.W [$0000]                             ; $8289D6 |

CODE_FL_8289D9:
  STA.B $00                                 ; $8289D9 |
  ASL A                                     ; $8289DB |
  ADC.B $00                                 ; $8289DC |
  TAY                                       ; $8289DE |
  LDA.W LOOSE_OP_00831A,Y                   ; $8289DF |
  STA.B $02                                 ; $8289E2 |
  LDA.W CODE_008318,Y                       ; $8289E4 |
  STA.B $00                                 ; $8289E7 |
  JML.W [$0000]                             ; $8289E9 |

  RTL                                       ; $8289EC |

CODE_FN_8289ED:
  BIT.W #$2000                              ; $8289ED |
  BEQ CODE_828A00                           ; $8289F0 |
  LDA.B $2D,X                               ; $8289F2 |
  STA.B $08                                 ; $8289F4 |
  LDA.B $31,X                               ; $8289F6 |
  STA.B $0A                                 ; $8289F8 |
  LDA.B $35,X                               ; $8289FA |
  STA.B $0C                                 ; $8289FC |
  BRA CODE_828A18                           ; $8289FE |

CODE_828A00:
  LDA.B $2D,X                               ; $828A00 |
  CLC                                       ; $828A02 |
  ADC.W $1C2B                               ; $828A03 |
  STA.B $08                                 ; $828A06 |
  LDA.B $31,X                               ; $828A08 |
  CLC                                       ; $828A0A |
  ADC.W $1C2F                               ; $828A0B |
  STA.B $0A                                 ; $828A0E |
  LDA.B $35,X                               ; $828A10 |
  CLC                                       ; $828A12 |
  ADC.W $1C33                               ; $828A13 |
  STA.B $0C                                 ; $828A16 |

CODE_828A18:
  LDA.B $35,X                               ; $828A18 |
  STA.B $14,X                               ; $828A1A |
  JSL.L CODE_FL_82D413                      ; $828A1C |
  LDA.B $10                                 ; $828A20 |
  STA.B $09,X                               ; $828A22 |
  LDA.B $12                                 ; $828A24 |
  STA.B $0D,X                               ; $828A26 |
  LDY.B $12,X                               ; $828A28 |
  BEQ CODE_828A9F                           ; $828A2A |
  LDA.B $35,X                               ; $828A2C |
  EOR.W #$FFFF                              ; $828A2E |
  INC A                                     ; $828A31 |

CODE_828A32:
  CMP.W #$8000                              ; $828A32 |
  ROR A                                     ; $828A35 |
  CMP.W #$8000                              ; $828A36 |
  ROR A                                     ; $828A39 |
  CMP.W #$8000                              ; $828A3A |
  ROR A                                     ; $828A3D |
  CMP.W #$8000                              ; $828A3E |
  ROR A                                     ; $828A41 |
  CMP.W #$8000                              ; $828A42 |
  ROR A                                     ; $828A45 |
  CLC                                       ; $828A46 |
  ADC.W #$00AC                              ; $828A47 |
  CMP.W #$00B4                              ; $828A4A |
  BCS CODE_828A90                           ; $828A4D |
  CMP.W #$0094                              ; $828A4F |
  BCC CODE_828A90                           ; $828A52 |
  CLC                                       ; $828A54 |
  ADC.W $1C1A                               ; $828A55 |
  SEC                                       ; $828A58 |
  SBC.W $1C14                               ; $828A59 |
  STA.W $000D,Y                             ; $828A5C |
  LDA.B $2D,X                               ; $828A5F |
  CMP.W #$8000                              ; $828A61 |
  ROR A                                     ; $828A64 |
  CMP.W #$8000                              ; $828A65 |
  ROR A                                     ; $828A68 |
  CMP.W #$8000                              ; $828A69 |
  ROR A                                     ; $828A6C |
  CMP.W #$8000                              ; $828A6D |
  ROR A                                     ; $828A70 |
  CMP.W #$8000                              ; $828A71 |
  ROR A                                     ; $828A74 |
  CLC                                       ; $828A75 |
  ADC.W #$0080                              ; $828A76 |
  CMP.W #$006B                              ; $828A79 |
  BCC CODE_828A90                           ; $828A7C |
  CMP.W #$0095                              ; $828A7E |
  BCS CODE_828A90                           ; $828A81 |
  SEC                                       ; $828A83 |
  SBC.W $1C12                               ; $828A84 |
  STA.W $0009,Y                             ; $828A87 |
  TDC                                       ; $828A8A |
  STA.W $0002,Y                             ; $828A8B |
  BRA CODE_828A9F                           ; $828A8E |

CODE_828A90:
  LDA.W #$0080                              ; $828A90 |
  STA.W $0002,Y                             ; $828A93 |
  LDA.W #$0180                              ; $828A96 |
  STA.W $0009,Y                             ; $828A99 |
  STA.W $000D,Y                             ; $828A9C |

CODE_828A9F:
  LDA.B $1C,X                               ; $828A9F |
  BMI CODE_828AC2                           ; $828AA1 |
  LDA.B $04,X                               ; $828AA3 |
  BMI CODE_828AC2                           ; $828AA5 |
  LDA.B $35,X                               ; $828AA7 |
  LDY.W $1C16                               ; $828AA9 |
  CMP.W $0035,Y                             ; $828AAC |
  LDY.W #$0080                              ; $828AAF |
  BCS CODE_828AB7                           ; $828AB2 |
  LDY.W #$0888                              ; $828AB4 |

CODE_828AB7:
  STY.B $00                                 ; $828AB7 |
  LDA.B $04,X                               ; $828AB9 |
  AND.W #$6767                              ; $828ABB |
  ORA.B $00                                 ; $828ABE |
  STA.B $04,X                               ; $828AC0 |

CODE_828AC2:
  RTS                                       ; $828AC2 |

CODE_FL_828AC3:
  STY.B $24,X                               ; $828AC3 |
  LDA.W #$0001                              ; $828AC5 |
  STA.B $1C,X                               ; $828AC8 |
  RTL                                       ; $828ACA |

CODE_FL_828ACB:
  STA.B $20,X                               ; $828ACB |
  STA.B $1E,X                               ; $828ACD |
  STY.B $24,X                               ; $828ACF |
  STZ.B $22,X                               ; $828AD1 |
  LDA.W #$0002                              ; $828AD3 |
  STA.B $1C,X                               ; $828AD6 |
  RTL                                       ; $828AD8 |

CODE_FL_828AD9:
  STA.B $20,X                               ; $828AD9 |
  STA.B $1E,X                               ; $828ADB |
  STY.B $24,X                               ; $828ADD |
  STY.B $22,X                               ; $828ADF |
  LDA.W $0000,Y                             ; $828AE1 |
  STA.B $00,X                               ; $828AE4 |
  LDA.W #$0003                              ; $828AE6 |
  STA.B $1C,X                               ; $828AE9 |
  RTL                                       ; $828AEB |

CODE_FL_828AEC:
  DEC A                                     ; $828AEC |
  BEQ CODE_828B1A                           ; $828AED |
  DEC A                                     ; $828AEF |
  BEQ CODE_828B25                           ; $828AF0 |
  DEC.B $1E,X                               ; $828AF2 |
  BPL CODE_828B16                           ; $828AF4 |
  LDA.B $20,X                               ; $828AF6 |
  STA.B $1E,X                               ; $828AF8 |
  LDY.B $24,X                               ; $828AFA |
  INY                                       ; $828AFC |
  INY                                       ; $828AFD |
  LDA.W $0000,Y                             ; $828AFE |
  CMP.W #$FFFF                              ; $828B01 |
  BEQ CODE_828B17                           ; $828B04 |
  CMP.W #$FFFE                              ; $828B06 |
  BNE CODE_828B12                           ; $828B09 |
  LDY.B $22,X                               ; $828B0B |
  STY.B $24,X                               ; $828B0D |
  LDA.W $0000,Y                             ; $828B0F |

CODE_828B12:
  STA.B $00,X                               ; $828B12 |
  STY.B $24,X                               ; $828B14 |

CODE_828B16:
  RTL                                       ; $828B16 |

CODE_828B17:
  STZ.B $1C,X                               ; $828B17 |
  RTL                                       ; $828B19 |

CODE_828B1A:
  LDY.B $24,X                               ; $828B1A |
  JSR.W CODE_FN_828B66                      ; $828B1C |
  LDA.W $0002,Y                             ; $828B1F |
  STA.B $00,X                               ; $828B22 |
  RTL                                       ; $828B24 |

CODE_828B25:
  DEC.B $1E,X                               ; $828B25 |
  BPL CODE_828B54                           ; $828B27 |
  LDA.B $20,X                               ; $828B29 |
  STA.B $1E,X                               ; $828B2B |
  INC.B $22,X                               ; $828B2D |
  INC.B $22,X                               ; $828B2F |
  LDY.B $24,X                               ; $828B31 |
  JSR.W CODE_FN_828B66                      ; $828B33 |
  LDA.W $0002,Y                             ; $828B36 |
  STA.B $00                                 ; $828B39 |
  CLC                                       ; $828B3B |
  ADC.B $22,X                               ; $828B3C |
  TAY                                       ; $828B3E |
  LDA.W $0000,Y                             ; $828B3F |
  BPL CODE_828B63                           ; $828B42 |
  CMP.W #$FFFF                              ; $828B44 |
  BEQ CODE_828B17                           ; $828B47 |
  CMP.W #$FFFE                              ; $828B49 |
  BNE CODE_828B63                           ; $828B4C |
  LDY.B $00                                 ; $828B4E |
  STZ.B $22,X                               ; $828B50 |
  BRA CODE_828B60                           ; $828B52 |

CODE_828B54:
  LDY.B $24,X                               ; $828B54 |
  JSR.W CODE_FN_828B66                      ; $828B56 |
  LDA.W $0002,Y                             ; $828B59 |
  CLC                                       ; $828B5C |
  ADC.B $22,X                               ; $828B5D |
  TAY                                       ; $828B5F |

CODE_828B60:
  LDA.W $0000,Y                             ; $828B60 |

CODE_828B63:
  STA.B $00,X                               ; $828B63 |
  RTL                                       ; $828B65 |

CODE_FN_828B66:
  LDA.B $35,X                               ; $828B66 |
  BRA CODE_828B6E                           ; $828B68 |

CODE_828B6A:
  INY                                       ; $828B6A |
  INY                                       ; $828B6B |
  INY                                       ; $828B6C |
  INY                                       ; $828B6D |

CODE_828B6E:
  CMP.W $0000,Y                             ; $828B6E |
  BCS CODE_828B6A                           ; $828B71 |
  RTS                                       ; $828B73 |

CODE_FL_828B74:
  LDA.B $35,X                               ; $828B74 |
  LDY.W #$83F6                              ; $828B76 |
  CMP.W #$0140                              ; $828B79 |
  BMI CODE_828BA0                           ; $828B7C |
  LDY.W #$83EC                              ; $828B7E |
  CMP.W #$0240                              ; $828B81 |
  BMI CODE_828BA0                           ; $828B84 |
  LDY.W #$83E4                              ; $828B86 |
  BRA CODE_828BA0                           ; $828B89 |

CODE_FL_828B8B:
  LDA.B $35,X                               ; $828B8B |
  LDY.W #$83F6                              ; $828B8D |
  CMP.W #$00C0                              ; $828B90 |
  BMI CODE_828BA0                           ; $828B93 |
  LDY.W #$83EC                              ; $828B95 |
  CMP.W #$0140                              ; $828B98 |
  BMI CODE_828BA0                           ; $828B9B |
  LDY.W #$83E4                              ; $828B9D |

CODE_828BA0:
  LDA.B $42                                 ; $828BA0 |
  AND.W #$0003                              ; $828BA2 |
  INC A                                     ; $828BA5 |
  INC A                                     ; $828BA6 |
  INC A                                     ; $828BA7 |
  JMP.W CODE_FL_828AD9                      ; $828BA8 |

CODE_FL_828BAB:
  LDA.B $35,X                               ; $828BAB |
  LDY.W #$840E                              ; $828BAD |
  CMP.W #$0070                              ; $828BB0 |
  BMI CODE_828BA0                           ; $828BB3 |
  LDY.W #$8408                              ; $828BB5 |
  CMP.W #$00E0                              ; $828BB8 |
  BMI CODE_828BA0                           ; $828BBB |
  LDY.W #$8402                              ; $828BBD |
  BRA CODE_828BA0                           ; $828BC0 |

CODE_FL_828BC2:
  LDA.W $1C6A                               ; $828BC2 |
  BNE CODE_828BD0                           ; $828BC5 |
  DEC.W $1CA2                               ; $828BC7 |
  BPL CODE_828BD0                           ; $828BCA |
  JSL.L CODE_FL_82C81E                      ; $828BCC |

CODE_828BD0:
  JSR.W CODE_FN_828C0D                      ; $828BD0 |

CODE_FL_828BD3:
  LDA.W $1C68                               ; $828BD3 |
  BNE CODE_828BF3                           ; $828BD6 |
  LDA.W $1C42                               ; $828BD8 |
  AND.W #$C000                              ; $828BDB |
  CMP.W #$C000                              ; $828BDE |
  BNE CODE_828BF3                           ; $828BE1 |
  LDA.B $36                                 ; $828BE3 |
  BIT.W #$2000                              ; $828BE5 |
  BEQ CODE_828BF3                           ; $828BE8 |
  LDA.W $1C42                               ; $828BEA |
  EOR.W #$0002                              ; $828BED |
  STA.W $1C42                               ; $828BF0 |

CODE_828BF3:
  JSR.W CODE_FN_82977A                      ; $828BF3 |
  JSR.W CODE_FN_8296EA                      ; $828BF6 |
  JSR.W CODE_FN_829743                      ; $828BF9 |
  JSR.W CODE_FN_8296D7                      ; $828BFC |
  LDA.W $1C3E                               ; $828BFF |
  BEQ CODE_828C0C                           ; $828C02 |
  DEC.W $1C3E                               ; $828C04 |
  BNE CODE_828C0C                           ; $828C07 |
  STZ.W $1C3C                               ; $828C09 |

CODE_828C0C:
  RTL                                       ; $828C0C |

CODE_FN_828C0D:
  LDA.W $1C94                               ; $828C0D |
  ASL A                                     ; $828C10 |
  TAX                                       ; $828C11 |
  JMP.W (PTR16_828C15,X)                    ; $828C12 |

PTR16_828C15:
  dw CODE_828C29                            ; $828C15 |
  dw CODE_828C2A                            ; $828C17 |
  dw CODE_828C51                            ; $828C19 |
  dw CODE_828C98                            ; $828C1B |
  dw CODE_828CEB                            ; $828C1D |
  dw CODE_828D11                            ; $828C1F |
  dw CODE_828D12                            ; $828C21 |
  dw CODE_828D2F                            ; $828C23 |
  dw CODE_828D47                            ; $828C25 |
  dw CODE_828D54                            ; $828C27 |

CODE_828C29:
  RTS                                       ; $828C29 |

CODE_828C2A:
  JSL.L CODE_FL_82D565                      ; $828C2A |
  STZ.W $1CA4                               ; $828C2E |
  LDA.W #$401E                              ; $828C31 |
  LDY.W #$0700                              ; $828C34 |
  JSL.L CODE_FL_82CD78                      ; $828C37 |
  LDA.W #$401E                              ; $828C3B |
  LDY.W #$0760                              ; $828C3E |
  JSL.L CODE_FL_82CD78                      ; $828C41 |
  LDA.W #$0008                              ; $828C45 |
  STA.W $1C5E                               ; $828C48 |
  STA.W $1C60                               ; $828C4B |
  INC.W $1C94                               ; $828C4E |

CODE_828C51:
  LDA.W $1C68                               ; $828C51 |
  BPL CODE_828C8D                           ; $828C54 |
  LDA.W #$0008                              ; $828C56 |
  STA.W $0738                               ; $828C59 |
  STA.W $0798                               ; $828C5C |
  LDA.W #$0004                              ; $828C5F |
  STA.W $073A                               ; $828C62 |
  STZ.W $079A                               ; $828C65 |
  LDA.W #$0004                              ; $828C68 |
  STA.W $073C                               ; $828C6B |
  STA.W $079C                               ; $828C6E |
  LDA.W #$0002                              ; $828C71 |
  STA.W $073E                               ; $828C74 |
  STZ.W $079E                               ; $828C77 |
  LDA.W #$0080                              ; $828C7A |
  LDY.B $DA                                 ; $828C7D |
  CPY.W #$0004                              ; $828C7F |
  BNE CODE_828C87                           ; $828C82 |
  LDA.W #$0020                              ; $828C84 |

CODE_828C87:
  STA.W $1C96                               ; $828C87 |
  INC.W $1C94                               ; $828C8A |

CODE_828C8D:
  LDA.W #$0001                              ; $828C8D |
  STA.W $1C84                               ; $828C90 |
  JSL.L CODE_FL_82D565                      ; $828C93 |
  RTS                                       ; $828C97 |

CODE_828C98:
  DEC.W $1C96                               ; $828C98 |
  BPL CODE_828C8D                           ; $828C9B |
  LDA.W #$0006                              ; $828C9D |
  STA.W $1C5E                               ; $828CA0 |
  STA.W $1C60                               ; $828CA3 |
  LDY.W #$0120                              ; $828CA6 |
  JSL.L CODE_FL_808993                      ; $828CA9 |
  JSL.L CODE_FL_82C1FE                      ; $828CAD |
  JSL.L CODE_FL_82CE6C                      ; $828CB1 |
  SEP #$20                                  ; $828CB5 |
  LDX.W #$DB82                              ; $828CB7 |
  LDA.B #$37                                ; $828CBA |
  STA.L $7E0001,X                           ; $828CBC |
  STA.L $7E0003,X                           ; $828CC0 |
  STA.L $7E0005,X                           ; $828CC4 |
  STA.L $7E0007,X                           ; $828CC8 |
  STA.L $7E0021,X                           ; $828CCC |
  STA.L $7E0023,X                           ; $828CD0 |
  STA.L $7E0025,X                           ; $828CD4 |
  STA.L $7E0027,X                           ; $828CD8 |
  STA.W $1FDE                               ; $828CDC |
  REP #$20                                  ; $828CDF |
  LDA.W #$0040                              ; $828CE1 |
  STA.W $1C96                               ; $828CE4 |
  INC.W $1C94                               ; $828CE7 |
  RTS                                       ; $828CEA |

CODE_828CEB:
  LDA.W $1DAA                               ; $828CEB |
  CMP.W #$0080                              ; $828CEE |
  BMI CODE_828CF6                           ; $828CF1 |
  STA.W $1CA4                               ; $828CF3 |

CODE_828CF6:
  LDA.W $1DE0                               ; $828CF6 |
  CMP.W #$0002                              ; $828CF9 |
  BNE CODE_828C8D                           ; $828CFC |
  DEC.W $1C96                               ; $828CFE |
  BPL CODE_828D10                           ; $828D01 |
  LDA.W #$FFFE                              ; $828D03 |
  STA.W $1C68                               ; $828D06 |
  JSL.L CODE_FL_8285F8                      ; $828D09 |
  INC.W $1C94                               ; $828D0D |

CODE_828D10:
  RTS                                       ; $828D10 |

CODE_828D11:
  RTS                                       ; $828D11 |

CODE_828D12:
  LDY.W #$0700                              ; $828D12 |
  LDA.W #$8021                              ; $828D15 |
  JSL.L CODE_FL_82CD78                      ; $828D18 |
  LDX.W #$0760                              ; $828D1C |
  JSL.L CODE_FL_82CC9F                      ; $828D1F |
  LDA.W #$0002                              ; $828D23 |
  STA.W $1C5E                               ; $828D26 |
  STA.W $1C60                               ; $828D29 |
  INC.W $1C94                               ; $828D2C |

CODE_828D2F:
  LDA.W $1C68                               ; $828D2F |
  CMP.W #$0002                              ; $828D32 |
  BNE CODE_828D46                           ; $828D35 |
  LDA.W #$0001                              ; $828D37 |
  STA.W $0738                               ; $828D3A |
  LDA.W #$0003                              ; $828D3D |
  STA.W $073C                               ; $828D40 |
  INC.W $1C94                               ; $828D43 |

CODE_828D46:
  RTS                                       ; $828D46 |

CODE_828D47:
  LDA.W $1C68                               ; $828D47 |
  BPL CODE_828D46                           ; $828D4A |
  JSL.L CODE_FL_8285F8                      ; $828D4C |
  INC.W $1C94                               ; $828D50 |
  RTS                                       ; $828D53 |

CODE_828D54:
  RTS                                       ; $828D54 |

  LDA.B $02,X                               ; $828D55 |
  LDY.W $1C6A                               ; $828D57 |
  BNE CODE_828D61                           ; $828D5A |
  AND.W #$FF7F                              ; $828D5C |
  BRA CODE_828D64                           ; $828D5F |

CODE_828D61:
  ORA.W #$0080                              ; $828D61 |

CODE_828D64:
  STA.B $02,X                               ; $828D64 |
  LDA.B $1A,X                               ; $828D66 |
  PHX                                       ; $828D68 |
  ASL A                                     ; $828D69 |
  TAX                                       ; $828D6A |
  LDA.L PTR16_828D75,X                      ; $828D6B |
  PLX                                       ; $828D6F |
  STA.B $00                                 ; $828D70 |
  JMP.W ($0000)                             ; $828D72 |

PTR16_828D75:
  dw CODE_828D7D                            ; $828D75 |
  dw CODE_828DA6                            ; $828D77 |
  dw CODE_828DD5                            ; $828D79 |
  dw CODE_828E3A                            ; $828D7B |

CODE_828D7D:
  LDA.W #$0080                              ; $828D7D |
  STA.B $09,X                               ; $828D80 |
  LDA.W #$0070                              ; $828D82 |
  STA.B $0D,X                               ; $828D85 |
  LDA.W #$1090                              ; $828D87 |
  STA.B $04,X                               ; $828D8A |
  LDA.W #$000F                              ; $828D8C |
  STA.B $14,X                               ; $828D8F |
  LDA.W $1C42                               ; $828D91 |
  TAY                                       ; $828D94 |
  AND.W #$C000                              ; $828D95 |
  CMP.W #$C000                              ; $828D98 |
  BEQ CODE_828DA3                           ; $828D9B |
  LDA.W #$0003                              ; $828D9D |
  STA.B $1A,X                               ; $828DA0 |
  RTL                                       ; $828DA2 |

CODE_828DA3:
  INC.B $1A,X                               ; $828DA3 |
  RTL                                       ; $828DA5 |

CODE_828DA6:
  LDA.W #$307A                              ; $828DA6 |
  STA.B $00,X                               ; $828DA9 |
  LDA.W $1C42                               ; $828DAB |
  AND.W #$0002                              ; $828DAE |
  CMP.B $38,X                               ; $828DB1 |
  BNE CODE_828DB7                           ; $828DB3 |
  INC.B $1A,X                               ; $828DB5 |

CODE_828DB7:
  LDY.B $38,X                               ; $828DB7 |
  JSR.W CODE_FN_828E91                      ; $828DB9 |
  JSR.W CODE_FN_828E79                      ; $828DBC |
  JSL.L CODE_FL_8294DE                      ; $828DBF |
  JSL.L CODE_FL_829660                      ; $828DC3 |
  JSL.L CODE_FL_8290B4                      ; $828DC7 |
  JSL.L CODE_FL_82905E                      ; $828DCB |
  LDA.W #$C080                              ; $828DCF |
  JMP.W CODE_JP_829164                      ; $828DD2 |

CODE_828DD5:
  LDA.W #$3082                              ; $828DD5 |
  STA.B $00,X                               ; $828DD8 |
  STZ.B $02,X                               ; $828DDA |
  LDA.W $1C42                               ; $828DDC |
  AND.W #$0002                              ; $828DDF |
  CMP.B $38,X                               ; $828DE2 |
  BEQ CODE_828DE8                           ; $828DE4 |
  DEC.B $1A,X                               ; $828DE6 |

CODE_828DE8:
  LDY.B $38,X                               ; $828DE8 |
  LDA.W $0029,Y                             ; $828DEA |
  AND.W #$000F                              ; $828DED |
  BEQ CODE_828DF7                           ; $828DF0 |
  JSR.W CODE_FN_828E91                      ; $828DF2 |
  BRA CODE_828E15                           ; $828DF5 |

CODE_828DF7:
  LDA.B $09,X                               ; $828DF7 |
  CMP.W #$0080                              ; $828DF9 |
  BEQ CODE_828E06                           ; $828DFC |
  BMI CODE_828E04                           ; $828DFE |
  DEC.B $09,X                               ; $828E00 |
  BRA CODE_828E06                           ; $828E02 |

CODE_828E04:
  INC.B $09,X                               ; $828E04 |

CODE_828E06:
  LDA.B $0D,X                               ; $828E06 |
  CMP.W #$0070                              ; $828E08 |
  BEQ CODE_828E15                           ; $828E0B |
  BMI CODE_828E13                           ; $828E0D |
  DEC.B $0D,X                               ; $828E0F |
  BRA CODE_828E15                           ; $828E11 |

CODE_828E13:
  INC.B $0D,X                               ; $828E13 |

CODE_828E15:
  JSL.L CODE_FL_829480                      ; $828E15 |
  JSL.L CODE_FL_8295B6                      ; $828E19 |
  JSL.L CODE_FL_82960E                      ; $828E1D |
  JSL.L CODE_FL_829561                      ; $828E21 |
  JSL.L CODE_FL_8290B4                      ; $828E25 |
  JSL.L CODE_FL_82905E                      ; $828E29 |
  LDA.W #$8000                              ; $828E2D |
  JSL.L CODE_FL_8290D0                      ; $828E30 |
  LDA.W #$4080                              ; $828E34 |
  JMP.W CODE_FL_829125                      ; $828E37 |

CODE_828E3A:
  LDA.W #$308A                              ; $828E3A |
  STA.B $00,X                               ; $828E3D |
  JSR.W CODE_FN_828E79                      ; $828E3F |
  JSR.W CODE_FN_828E91                      ; $828E42 |
  JSL.L CODE_FL_8294DE                      ; $828E45 |
  JSL.L CODE_FL_829480                      ; $828E49 |
  JSL.L CODE_FL_8295B6                      ; $828E4D |
  JSL.L CODE_FL_82960E                      ; $828E51 |
  JSL.L CODE_FL_829561                      ; $828E55 |
  JSL.L CODE_FL_829660                      ; $828E59 |
  JSL.L CODE_FL_8290B4                      ; $828E5D |
  JSL.L CODE_FL_82905E                      ; $828E61 |
  LDA.W #$8000                              ; $828E65 |
  JSL.L CODE_FL_8290D0                      ; $828E68 |
  LDA.W #$4000                              ; $828E6C |
  JSL.L CODE_FL_829125                      ; $828E6F |
  LDA.W #$0080                              ; $828E73 |
  JMP.W CODE_JP_829164                      ; $828E76 |

CODE_FN_828E79:
  LDA.W $1C6A                               ; $828E79 |
  BNE CODE_828E90                           ; $828E7C |
  LDA.W $1C40                               ; $828E7E |
  CMP.W #$0028                              ; $828E81 |
  BNE CODE_828E8E                           ; $828E84 |
  LDA.W #$0002                              ; $828E86 |
  JSL.L CODE_FL_82CE79                      ; $828E89 |
  RTS                                       ; $828E8D |

CODE_828E8E:
  STZ.B $02,X                               ; $828E8E |

CODE_828E90:
  RTS                                       ; $828E90 |

CODE_FN_828E91:
  LDA.W #$0038                              ; $828E91 |
  SEC                                       ; $828E94 |
  SBC.W $1C18                               ; $828E95 |
  STA.B $00                                 ; $828E98 |
  LDA.W #$0088                              ; $828E9A |
  CLC                                       ; $828E9D |
  ADC.W $1C1A                               ; $828E9E |
  STA.B $02                                 ; $828EA1 |
  LDA.W $0029,Y                             ; $828EA3 |
  AND.W #$000F                              ; $828EA6 |
  ASL A                                     ; $828EA9 |
  ASL A                                     ; $828EAA |
  TAY                                       ; $828EAB |
  LDA.W LOOSE_OP_0086FA,Y                   ; $828EAC |
  CLC                                       ; $828EAF |
  ADC.B $0D,X                               ; $828EB0 |
  CMP.B $00                                 ; $828EB2 |
  BPL CODE_828EB8                           ; $828EB4 |
  LDA.B $00                                 ; $828EB6 |

CODE_828EB8:
  CMP.B $02                                 ; $828EB8 |
  BCC CODE_828EBE                           ; $828EBA |
  LDA.B $02                                 ; $828EBC |

CODE_828EBE:
  STA.B $0D,X                               ; $828EBE |
  LDA.W LOOSE_OP_0086F8,Y                   ; $828EC0 |
  CLC                                       ; $828EC3 |
  ADC.B $09,X                               ; $828EC4 |
  CMP.W #$0010                              ; $828EC6 |
  BPL CODE_828ECE                           ; $828EC9 |
  LDA.W #$0010                              ; $828ECB |

CODE_828ECE:
  CMP.W #$00F0                              ; $828ECE |
  BCC CODE_828ED6                           ; $828ED1 |
  LDA.W #$00F0                              ; $828ED3 |

CODE_828ED6:
  STA.B $09,X                               ; $828ED6 |
  RTS                                       ; $828ED8 |

  dw CODE_828EDF                            ; $828ED9 |
  dw CODE_828F17                            ; $828EDB |
  dw CODE_828F25                            ; $828EDD |

CODE_828EDF:
  LDY.W #$83F6                              ; $828EDF |
  LDA.W #$0004                              ; $828EE2 |
  JSL.L CODE_FL_828AD9                      ; $828EE5 |
  LDA.W #$1090                              ; $828EE9 |
  STA.B $04,X                               ; $828EEC |
  LDA.W #$0005                              ; $828EEE |
  STA.B $14,X                               ; $828EF1 |
  JSR.W CODE_FN_828F47                      ; $828EF3 |
  LDA.W #$0020                              ; $828EF6 |
  STA.B $38,X                               ; $828EF9 |
  LDA.W #$0010                              ; $828EFB |
  STA.B $3C,X                               ; $828EFE |
  LDA.W #$0000                              ; $828F00 |
  LDY.W #$0000                              ; $828F03 |
  CPX.W #$0700                              ; $828F06 |
  BEQ CODE_828F11                           ; $828F09 |
  LDA.W #$0010                              ; $828F0B |
  LDY.W #$0008                              ; $828F0E |

CODE_828F11:
  STA.B $3A,X                               ; $828F11 |
  STY.B $3E,X                               ; $828F13 |
  INC.B $1A,X                               ; $828F15 |

CODE_828F17:
  LDA.B $1C,X                               ; $828F17 |
  BNE CODE_828F21                           ; $828F19 |
  STZ.B $00,X                               ; $828F1B |
  INC.B $1A,X                               ; $828F1D |
  STZ.B $1E,X                               ; $828F1F |

CODE_828F21:
  JSR.W CODE_FN_828F8E                      ; $828F21 |
  RTL                                       ; $828F24 |

CODE_828F25:
  DEC.B $1E,X                               ; $828F25 |
  BPL CODE_828F3D                           ; $828F27 |
  LDA.W #$0003                              ; $828F29 |
  STA.B $1E,X                               ; $828F2C |
  LDY.W #$0DC0                              ; $828F2E |
  STY.B $02                                 ; $828F31 |
  LDY.W #$0AC0                              ; $828F33 |
  LDA.W #$C01F                              ; $828F36 |
  JSL.L CODE_FL_82CD4C                      ; $828F39 |

CODE_828F3D:
  JSR.W CODE_FN_828F47                      ; $828F3D |
  JSR.W CODE_FN_828F6C                      ; $828F40 |
  JSR.W CODE_FN_828F8E                      ; $828F43 |
  RTL                                       ; $828F46 |

CODE_FN_828F47:
  CPX.W #$0700                              ; $828F47 |
  BEQ CODE_828F54                           ; $828F4A |
  LDA.W #$00A0                              ; $828F4C |
  LDY.W #$00B0                              ; $828F4F |
  BRA CODE_828F5A                           ; $828F52 |

CODE_828F54:
  LDA.W #$0058                              ; $828F54 |
  LDY.W #$00A0                              ; $828F57 |

CODE_828F5A:
  SEC                                       ; $828F5A |
  SBC.W $1C12                               ; $828F5B |
  STA.B $09,X                               ; $828F5E |
  TYA                                       ; $828F60 |
  CLC                                       ; $828F61 |
  ADC.W $1C1A                               ; $828F62 |
  SEC                                       ; $828F65 |
  SBC.W $1C14                               ; $828F66 |
  STA.B $0D,X                               ; $828F69 |
  RTS                                       ; $828F6B |

CODE_FN_828F6C:
  DEC.B $3A,X                               ; $828F6C |
  BPL CODE_828F8D                           ; $828F6E |
  LDA.B $86                                 ; $828F70 |
  AND.W #$000F                              ; $828F72 |
  CLC                                       ; $828F75 |
  ADC.B $38,X                               ; $828F76 |
  STA.B $3A,X                               ; $828F78 |
  LDA.W #$0003                              ; $828F7A |
  JSL.L CODE_FL_82CD5F                      ; $828F7D |
  LDA.W $1CA4                               ; $828F81 |
  BNE CODE_828F8D                           ; $828F84 |
  LDA.W #$001B                              ; $828F86 |
  JSL.L push_sound_queue                    ; $828F89 |

CODE_828F8D:
  RTS                                       ; $828F8D |

CODE_FN_828F8E:
  DEC.B $3E,X                               ; $828F8E |
  BPL CODE_828FC9                           ; $828F90 |
  LDA.B $86                                 ; $828F92 |
  AND.W #$000F                              ; $828F94 |
  CLC                                       ; $828F97 |
  ADC.B $3C,X                               ; $828F98 |
  STA.B $3E,X                               ; $828F9A |
  LDA.W #$C020                              ; $828F9C |
  JSL.L CODE_FL_82CD2F                      ; $828F9F |
  BCC CODE_828FC9                           ; $828FA3 |
  CPX.W #$0700                              ; $828FA5 |
  BEQ CODE_828FB5                           ; $828FA8 |
  LDA.W #$00C0                              ; $828FAA |
  STA.W $0009,Y                             ; $828FAD |
  LDA.W #$0018                              ; $828FB0 |
  BRA CODE_828FBE                           ; $828FB3 |

CODE_828FB5:
  LDA.W #$0030                              ; $828FB5 |
  STA.W $0009,Y                             ; $828FB8 |
  LDA.W #$0030                              ; $828FBB |

CODE_828FBE:
  SEC                                       ; $828FBE |
  SBC.W $1C18                               ; $828FBF |
  SEC                                       ; $828FC2 |
  SBC.W $1C10                               ; $828FC3 |
  STA.W $000D,Y                             ; $828FC6 |

CODE_828FC9:
  RTS                                       ; $828FC9 |

  LDA.B $1A,X                               ; $828FCA |
  BNE CODE_828FE4                           ; $828FCC |
  LDY.W #$848E                              ; $828FCE |
  LDA.W #$0001                              ; $828FD1 |
  JSL.L CODE_FL_828AD9                      ; $828FD4 |
  LDA.W #$1090                              ; $828FD8 |
  STA.B $04,X                               ; $828FDB |
  LDA.W #$0006                              ; $828FDD |
  STA.B $14,X                               ; $828FE0 |
  INC.B $1A,X                               ; $828FE2 |

CODE_828FE4:
  LDA.B $0D,X                               ; $828FE4 |
  SEC                                       ; $828FE6 |
  SBC.W #$000C                              ; $828FE7 |
  STA.B $0D,X                               ; $828FEA |
  LDA.B $1C,X                               ; $828FEC |
  BNE CODE_828FF3                           ; $828FEE |
  JMP.W CODE_FL_82CC9F                      ; $828FF0 |

CODE_828FF3:
  RTL                                       ; $828FF3 |

  LDA.B $1A,X                               ; $828FF4 |
  BNE CODE_829020                           ; $828FF6 |
  LDA.W #$1090                              ; $828FF8 |
  STA.B $04,X                               ; $828FFB |
  LDA.B $86                                 ; $828FFD |
  AND.W #$0006                              ; $828FFF |
  TAY                                       ; $829002 |
  LDA.W CODE_008838,Y                       ; $829003 |
  TAY                                       ; $829006 |
  LDA.W #$0004                              ; $829007 |
  JSL.L CODE_FL_828AD9                      ; $82900A |
  LDA.B $86                                 ; $82900E |
  AND.W #$00FF                              ; $829010 |
  STA.B $09,X                               ; $829013 |
  LDA.B $87                                 ; $829015 |
  AND.W #$00FF                              ; $829017 |
  STA.B $0D,X                               ; $82901A |
  STZ.B $14,X                               ; $82901C |
  INC.B $1A,X                               ; $82901E |

CODE_829020:
  LDA.B $1C,X                               ; $829020 |
  BNE CODE_829027                           ; $829022 |
  JMP.W CODE_FL_82CCD2                      ; $829024 |

CODE_829027:
  RTL                                       ; $829027 |

  LDA.B $1A,X                               ; $829028 |
  BNE CODE_82904E                           ; $82902A |
  LDA.W #$0040                              ; $82902C |
  STA.B $38,X                               ; $82902F |
  LDA.W #$1898                              ; $829031 |
  STA.B $04,X                               ; $829034 |
  LDY.W #$8418                              ; $829036 |
  LDA.W #$0004                              ; $829039 |
  JSL.L CODE_FL_828AD9                      ; $82903C |
  LDA.B $86                                 ; $829040 |
  AND.W #$001F                              ; $829042 |
  LDY.W #$0008                              ; $829045 |
  JSL.L CODE_FL_8AB4A6                      ; $829048 |
  INC.B $1A,X                               ; $82904C |

CODE_82904E:
  JSL.L CODE_FL_82CB09                      ; $82904E |
  JSL.L CODE_FL_82C842                      ; $829052 |
  DEC.B $38,X                               ; $829056 |
  BPL CODE_82905D                           ; $829058 |
  JMP.W CODE_FL_82CC9F                      ; $82905A |

CODE_82905D:
  RTL                                       ; $82905D |

CODE_FL_82905E:
  LDA.W $1C6A                               ; $82905E |
  BNE CODE_8290B3                           ; $829061 |
  LDA.W $07D8                               ; $829063 |
  BNE CODE_8290B3                           ; $829066 |
  LDY.B $38,X                               ; $829068 |
  LDA.W $0028,Y                             ; $82906A |
  BIT.W #$0030                              ; $82906D |
  BEQ CODE_82908A                           ; $829070 |
  CPX.W $1CE8                               ; $829072 |
  BNE CODE_829087                           ; $829075 |
  BIT.W #$0010                              ; $829077 |
  BEQ CODE_82907F                           ; $82907A |
  JMP.W CODE_JP_829433                      ; $82907C |

CODE_82907F:
  BIT.W #$0020                              ; $82907F |
  BEQ CODE_829087                           ; $829082 |
  JMP.W CODE_JP_829429                      ; $829084 |

CODE_829087:
  JMP.W CODE_JP_8293CD                      ; $829087 |

CODE_82908A:
  BIT.W #$0040                              ; $82908A |
  BEQ CODE_8290B3                           ; $82908D |
  LDA.W $0AD8                               ; $82908F |
  CMP.W #$000A                              ; $829092 |
  BEQ CODE_8290B3                           ; $829095 |
  LDA.W $1C72                               ; $829097 |
  BNE CODE_8290B3                           ; $82909A |
  LDA.B $CE                                 ; $82909C |
  BEQ CODE_8290B3                           ; $82909E |
  SED                                       ; $8290A0 |
  SEC                                       ; $8290A1 |
  SBC.W #$0001                              ; $8290A2 |
  STA.B $CE                                 ; $8290A5 |
  CLD                                       ; $8290A7 |
  CPX.W $1CE2                               ; $8290A8 |
  BNE CODE_8290B0                           ; $8290AB |
  JMP.W CODE_JP_829400                      ; $8290AD |

CODE_8290B0:
  JMP.W CODE_JP_829405                      ; $8290B0 |

CODE_8290B3:
  RTL                                       ; $8290B3 |

CODE_FL_8290B4:
  LDA.W $1C6A                               ; $8290B4 |
  BNE CODE_8290CF                           ; $8290B7 |
  LDA.W $07D8                               ; $8290B9 |
  BNE CODE_8290CF                           ; $8290BC |
  LDA.W $1C9C                               ; $8290BE |
  BIT.W #$0001                              ; $8290C1 |
  BEQ CODE_8290CF                           ; $8290C4 |
  AND.W #$FFFE                              ; $8290C6 |
  STA.W $1C9C                               ; $8290C9 |
  JMP.W CODE_JP_829405                      ; $8290CC |

CODE_8290CF:
  RTL                                       ; $8290CF |

CODE_FL_8290D0:
  STA.B $18                                 ; $8290D0 |
  LDA.W $1C6A                               ; $8290D2 |
  BNE CODE_829124                           ; $8290D5 |
  LDA.W $07D8                               ; $8290D7 |
  BNE CODE_829124                           ; $8290DA |
  LDA.W $1C44                               ; $8290DC |
  CMP.W #$00A0                              ; $8290DF |
  BEQ CODE_8290E8                           ; $8290E2 |
  INC A                                     ; $8290E4 |
  STA.W $1C44                               ; $8290E5 |

CODE_8290E8:
  LDY.B $38,X                               ; $8290E8 |
  LDA.W $0030,Y                             ; $8290EA |
  BIT.B $18                                 ; $8290ED |
  BEQ CODE_829124                           ; $8290EF |
  STZ.W $1C3C                               ; $8290F1 |
  LDA.W $1C44                               ; $8290F4 |
  CMP.W #$00A0                              ; $8290F7 |
  BNE CODE_82911B                           ; $8290FA |
  LDA.W $1CE6                               ; $8290FC |
  BEQ CODE_829107                           ; $8290FF |
  STZ.W $1C44                               ; $829101 |
  JMP.W CODE_FL_8293BF                      ; $829104 |

CODE_829107:
  LDA.W $1CE0                               ; $829107 |
  BEQ CODE_829112                           ; $82910A |
  STZ.W $1C44                               ; $82910C |
  JMP.W CODE_JP_82945B                      ; $82910F |

CODE_829112:
  STZ.W $1C44                               ; $829112 |
  LDA.W #$200E                              ; $829115 |
  JMP.W CODE_FL_829322                      ; $829118 |

CODE_82911B:
  STZ.W $1C44                               ; $82911B |
  LDA.W #$0003                              ; $82911E |
  JMP.W CODE_FL_829322                      ; $829121 |

CODE_829124:
  RTL                                       ; $829124 |

CODE_FL_829125:
  STA.B $18                                 ; $829125 |
  LDA.W $1C6A                               ; $829127 |
  BNE CODE_829163                           ; $82912A |
  LDA.W $07D8                               ; $82912C |
  BNE CODE_829163                           ; $82912F |
  LDY.B $38,X                               ; $829131 |
  LDA.W $0030,Y                             ; $829133 |
  BIT.B $18                                 ; $829136 |
  BEQ CODE_829163                           ; $829138 |
  LDA.W $1CE4                               ; $82913A |
  BEQ CODE_829142                           ; $82913D |
  JMP.W CODE_JP_829333                      ; $82913F |

CODE_829142:
  LDA.W #$0020                              ; $829142 |
  STA.W $1C3E                               ; $829145 |
  LDA.W $1C3C                               ; $829148 |
  AND.W #$0003                              ; $82914B |
  PHX                                       ; $82914E |
  ASL A                                     ; $82914F |
  TAX                                       ; $829150 |
  LDA.L PTR16_82915B,X                      ; $829151 |
  PLX                                       ; $829155 |
  STA.B $00                                 ; $829156 |
  JMP.W ($0000)                             ; $829158 |

PTR16_82915B:
  dw CODE_829341                            ; $82915B |
  dw CODE_829383                            ; $82915D |
  dw CODE_829368                            ; $82915F |
  dw CODE_8293A1                            ; $829161 |

CODE_829163:
  RTL                                       ; $829163 |

CODE_JP_829164:
  STA.B $18                                 ; $829164 |
  LDY.B $38,X                               ; $829166 |
  LDA.W $1C6A                               ; $829168 |
  BEQ CODE_829170                           ; $82916B |
  JMP.W CODE_JP_8291F2                      ; $82916D |

CODE_829170:
  LDA.L $0007D8                             ; $829170 |
  CMP.W #$2006                              ; $829174 |
  BEQ CODE_JP_8291F2                        ; $829177 |
  LDA.W $0030,Y                             ; $829179 |
  AND.B $18                                 ; $82917C |
  STA.B $00                                 ; $82917E |
  LDA.W $0028,Y                             ; $829180 |
  AND.B $18                                 ; $829183 |
  STA.B $02                                 ; $829185 |
  LDA.W $1C4A                               ; $829187 |
  BEQ CODE_JP_8291F2                        ; $82918A |
  CMP.W #$0008                              ; $82918C |
  BMI CODE_8291E2                           ; $82918F |
  LDA.B $02                                 ; $829191 |
  BEQ CODE_8291B2                           ; $829193 |
  LDA.W $1C46                               ; $829195 |
  INC A                                     ; $829198 |
  STA.W $1C46                               ; $829199 |
  CMP.W #$0003                              ; $82919C |
  BMI CODE_8291E2                           ; $82919F |
  STZ.W $1C46                               ; $8291A1 |
  LDA.W $1C40                               ; $8291A4 |
  CMP.W #$0028                              ; $8291A7 |
  BEQ CODE_8291E2                           ; $8291AA |
  INC A                                     ; $8291AC |
  STA.W $1C40                               ; $8291AD |
  BRA CODE_8291E2                           ; $8291B0 |

CODE_8291B2:
  LDA.W $1C40                               ; $8291B2 |
  STZ.W $1C40                               ; $8291B5 |
  CMP.W #$0005                              ; $8291B8 |
  BMI CODE_JP_8291F2                        ; $8291BB |
  CMP.W #$0028                              ; $8291BD |
  BMI CODE_8291EC                           ; $8291C0 |
  LDA.W $1CEA                               ; $8291C2 |
  BNE CODE_8291D2                           ; $8291C5 |

CODE_8291C7:
  LDA.W $1C4A                               ; $8291C7 |
  CMP.W #$0010                              ; $8291CA |
  BMI CODE_8291EC                           ; $8291CD |
  JMP.W CODE_JP_8292B7                      ; $8291CF |

CODE_8291D2:
  LDA.W $0AD8                               ; $8291D2 |
  BNE CODE_8291C7                           ; $8291D5 |
  LDA.W $1C4A                               ; $8291D7 |
  CMP.W #$0050                              ; $8291DA |
  BMI CODE_8291C7                           ; $8291DD |
  JMP.W CODE_JP_8291F3                      ; $8291DF |

CODE_8291E2:
  LDA.B $00                                 ; $8291E2 |
  BEQ CODE_JP_8291F2                        ; $8291E4 |
  BMI CODE_8291EC                           ; $8291E6 |
  CMP.B $02                                 ; $8291E8 |
  BNE CODE_JP_8291F2                        ; $8291EA |

CODE_8291EC:
  STZ.W $1C40                               ; $8291EC |
  JMP.W CODE_JP_82922C                      ; $8291EF |

CODE_JP_8291F2:
  RTL                                       ; $8291F2 |

CODE_JP_8291F3:
  LDY.W #$0AC0                              ; $8291F3 |
  LDA.W #$0023                              ; $8291F6 |
  STA.W $0018,Y                             ; $8291F9 |
  TDC                                       ; $8291FC |
  STA.W $002D,Y                             ; $8291FD |
  LDA.W #$0010                              ; $829200 |
  STA.W $0031,Y                             ; $829203 |
  LDA.W #$0020                              ; $829206 |
  STA.W $0035,Y                             ; $829209 |
  SED                                       ; $82920C |
  LDA.W $1C4A                               ; $82920D |
  SEC                                       ; $829210 |
  SBC.W #$0050                              ; $829211 |
  STA.W $1C4A                               ; $829214 |
  CLD                                       ; $829217 |
  RTL                                       ; $829218 |

CODE_FL_829219:
  STX.B $00                                 ; $829219 |
  LDX.W #$0AC0                              ; $82921B |

CODE_82921E:
  LDA.B $18,X                               ; $82921E |
  BEQ CODE_82924E                           ; $829220 |
  LDA.B $16,X                               ; $829222 |
  TAX                                       ; $829224 |
  CMP.W #$0DC0                              ; $829225 |
  BCC CODE_82921E                           ; $829228 |
  BRA CODE_82923D                           ; $82922A |

CODE_JP_82922C:
  STX.B $00                                 ; $82922C |
  LDX.W #$0AC0                              ; $82922E |

CODE_829231:
  LDA.B $18,X                               ; $829231 |
  BEQ CODE_829242                           ; $829233 |
  LDA.B $16,X                               ; $829235 |
  TAX                                       ; $829237 |
  CMP.W #$0DC0                              ; $829238 |
  BCC CODE_829231                           ; $82923B |

CODE_82923D:
  LDX.B $00                                 ; $82923D |
  INC.B $42,X                               ; $82923F |
  RTL                                       ; $829241 |

CODE_829242:
  SED                                       ; $829242 |
  LDA.W $1C4A                               ; $829243 |
  SEC                                       ; $829246 |
  SBC.W #$0001                              ; $829247 |
  STA.W $1C4A                               ; $82924A |
  CLD                                       ; $82924D |

CODE_82924E:
  LDA.W #$0024                              ; $82924E |
  JSL.L CODE_FL_8089BD                      ; $829251 |
  LDA.W #$0002                              ; $829255 |
  STA.B $18,X                               ; $829258 |
  LDY.B $00                                 ; $82925A |
  STY.B $38,X                               ; $82925C |
  LDA.W $0042,Y                             ; $82925E |
  ADC.W #$0004                              ; $829261 |
  STA.W $003A,Y                             ; $829264 |
  LDA.W $1C6C                               ; $829267 |
  EOR.W #$0004                              ; $82926A |
  STA.W $1C6C                               ; $82926D |
  TAY                                       ; $829270 |
  LDA.W LOOSE_OP_008738,Y                   ; $829271 |
  STA.B $2D,X                               ; $829274 |
  LDA.W #$0020                              ; $829276 |
  CLC                                       ; $829279 |
  ADC.W $1C1A                               ; $82927A |
  SEC                                       ; $82927D |
  SBC.W $1C14                               ; $82927E |
  LSR A                                     ; $829281 |
  LSR A                                     ; $829282 |
  LSR A                                     ; $829283 |
  STA.B $31,X                               ; $829284 |
  LDA.W #$0010                              ; $829286 |
  STA.B $35,X                               ; $829289 |
  LDA.W LOOSE_OP_00873A,Y                   ; $82928B |
  STA.B $04,X                               ; $82928E |
  LDA.W #$C018                              ; $829290 |
  STA.W $06B8                               ; $829293 |
  STZ.W $06BA                               ; $829296 |
  LDY.W #$00C0                              ; $829299 |
  LDA.W $1C6C                               ; $82929C |
  BNE CODE_8292A4                           ; $82929F |
  LDY.W #$0040                              ; $8292A1 |

CODE_8292A4:
  STY.W $06A9                               ; $8292A4 |
  LDA.W #$0090                              ; $8292A7 |
  CLC                                       ; $8292AA |
  ADC.W $1C1A                               ; $8292AB |
  SEC                                       ; $8292AE |
  SBC.W $1C14                               ; $8292AF |
  STA.W $06AD                               ; $8292B2 |
  BRA CODE_82923D                           ; $8292B5 |

CODE_JP_8292B7:
  STX.B $00                                 ; $8292B7 |
  LDX.W #$0AC0                              ; $8292B9 |

CODE_8292BC:
  LDA.B $18,X                               ; $8292BC |
  CMP.W #$0014                              ; $8292BE |
  BEQ CODE_8292CD                           ; $8292C1 |
  LDA.B $16,X                               ; $8292C3 |
  TAX                                       ; $8292C5 |
  CMP.W #$0DC0                              ; $8292C6 |
  BCC CODE_8292BC                           ; $8292C9 |
  BRA CODE_8292D0                           ; $8292CB |

CODE_8292CD:
  LDX.B $00                                 ; $8292CD |
  RTL                                       ; $8292CF |

CODE_8292D0:
  LDA.W #$0040                              ; $8292D0 |
  JSL.L CODE_FL_8089BD                      ; $8292D3 |
  SED                                       ; $8292D7 |
  LDA.W $1C4A                               ; $8292D8 |
  SEC                                       ; $8292DB |
  SBC.W #$0008                              ; $8292DC |
  STA.W $1C4A                               ; $8292DF |
  CLD                                       ; $8292E2 |
  LDX.W #$0AC0                              ; $8292E3 |
  LDY.W #$0000                              ; $8292E6 |

CODE_8292E9:
  LDA.B $18,X                               ; $8292E9 |
  CMP.W #$000A                              ; $8292EB |
  BEQ CODE_829311                           ; $8292EE |
  JSL.L CODE_FL_82CC9F                      ; $8292F0 |
  LDA.W #$0014                              ; $8292F4 |
  STA.B $18,X                               ; $8292F7 |
  LDA.B $00                                 ; $8292F9 |
  STA.B $38,X                               ; $8292FB |
  LDA.W CODE_008744,Y                       ; $8292FD |
  STA.B $2D,X                               ; $829300 |
  LDA.W LOOSE_OP_008746,Y                   ; $829302 |
  STA.B $31,X                               ; $829305 |
  LDA.W LOOSE_OP_008748,Y                   ; $829307 |
  STA.B $35,X                               ; $82930A |
  LDA.W LOOSE_OP_00874A,Y                   ; $82930C |
  STA.B $04,X                               ; $82930F |

CODE_829311:
  LDA.B $16,X                               ; $829311 |
  TAX                                       ; $829313 |
  TYA                                       ; $829314 |
  CLC                                       ; $829315 |
  ADC.W #$0008                              ; $829316 |
  TAY                                       ; $829319 |
  CPY.W #$0040                              ; $82931A |
  BMI CODE_8292E9                           ; $82931D |
  LDX.B $00                                 ; $82931F |
  RTL                                       ; $829321 |

CODE_FL_829322:
  LDY.W #$07C0                              ; $829322 |
  STA.W $0018,Y                             ; $829325 |
  LDA.W $1C44                               ; $829328 |
  STA.W $0042,Y                             ; $82932B |
  LDA.W #$0010                              ; $82932E |
  BRA CODE_82934D                           ; $829331 |

CODE_JP_829333:
  LDY.W #$07C0                              ; $829333 |
  LDA.W #$2019                              ; $829336 |
  STA.W $0018,Y                             ; $829339 |
  LDA.W #$FFF0                              ; $82933C |
  BRA CODE_82934D                           ; $82933F |

CODE_829341:
  LDY.W #$07C0                              ; $829341 |
  LDA.W #$2004                              ; $829344 |
  STA.W $0018,Y                             ; $829347 |
  LDA.W #$FFF0                              ; $82934A |

CODE_82934D:
  STA.W $002D,Y                             ; $82934D |
  STA.W $003C,Y                             ; $829350 |
  LDA.W #$0008                              ; $829353 |
  STA.W $0031,Y                             ; $829356 |
  STA.W $003E,Y                             ; $829359 |

CODE_82935C:
  LDA.W #$0010                              ; $82935C |
  STA.W $0035,Y                             ; $82935F |
  STA.W $0040,Y                             ; $829362 |
  STX.B $38,Y                               ; $829365 |
  RTL                                       ; $829367 |

CODE_829368:
  LDY.W #$07C0                              ; $829368 |
  LDA.W #$2004                              ; $82936B |
  STA.W $0018,Y                             ; $82936E |
  LDA.W #$FFF0                              ; $829371 |
  STA.W $002D,Y                             ; $829374 |
  STA.W $003C,Y                             ; $829377 |
  TDC                                       ; $82937A |
  STA.W $0031,Y                             ; $82937B |
  STA.W $003E,Y                             ; $82937E |
  BRA CODE_82935C                           ; $829381 |

CODE_829383:
  LDY.W #$07C0                              ; $829383 |
  LDA.W #$200C                              ; $829386 |
  STA.W $0018,Y                             ; $829389 |
  LDA.W #$FFE2                              ; $82938C |
  STA.W $003C,Y                             ; $82938F |
  LDA.W #$0000                              ; $829392 |
  STA.W $003E,Y                             ; $829395 |
  LDA.W #$0020                              ; $829398 |
  STA.W $0040,Y                             ; $82939B |
  STX.B $38,Y                               ; $82939E |
  RTL                                       ; $8293A0 |

CODE_8293A1:
  LDA.W #$200D                              ; $8293A1 |
  LDY.W #$07C0                              ; $8293A4 |
  STA.W $0018,Y                             ; $8293A7 |
  LDA.W #$FFE4                              ; $8293AA |

CODE_8293AD:
  STA.W $003C,Y                             ; $8293AD |
  LDA.W #$0008                              ; $8293B0 |
  STA.W $003E,Y                             ; $8293B3 |
  LDA.W #$0020                              ; $8293B6 |
  STA.W $0040,Y                             ; $8293B9 |
  STX.B $38,Y                               ; $8293BC |
  RTL                                       ; $8293BE |

CODE_FL_8293BF:
  LDA.W #$200F                              ; $8293BF |
  LDY.W #$07C0                              ; $8293C2 |
  STA.W $0018,Y                             ; $8293C5 |
  LDA.W #$001C                              ; $8293C8 |
  BRA CODE_8293AD                           ; $8293CB |

CODE_JP_8293CD:
  LDY.W #$0000                              ; $8293CD |
  LDA.B $2E                                 ; $8293D0 |
  BIT.W #$0010                              ; $8293D2 |
  BEQ CODE_8293DA                           ; $8293D5 |
  LDY.W #$0008                              ; $8293D7 |

CODE_8293DA:
  AND.W #$0030                              ; $8293DA |
  STA.W $07FE                               ; $8293DD |
  STY.W $07F8                               ; $8293E0 |
  TYA                                       ; $8293E3 |
  LSR A                                     ; $8293E4 |
  LSR A                                     ; $8293E5 |
  TAY                                       ; $8293E6 |
  LDA.W CODE_008740,Y                       ; $8293E7 |
  STA.W $07ED                               ; $8293EA |
  LDA.W #$0020                              ; $8293ED |
  STA.W $07F1                               ; $8293F0 |
  LDA.W #$0040                              ; $8293F3 |
  STA.W $07F5                               ; $8293F6 |
  LDA.W #$2006                              ; $8293F9 |
  STA.W $07D8                               ; $8293FC |
  RTL                                       ; $8293FF |

CODE_JP_829400:
  LDA.W #$0007                              ; $829400 |
  BRA CODE_829406                           ; $829403 |

CODE_JP_829405:
  TDC                                       ; $829405 |

CODE_829406:
  LDY.W #$07C0                              ; $829406 |
  STA.W $0042,Y                             ; $829409 |
  LDA.W #$A008                              ; $82940C |
  STA.W $0018,Y                             ; $82940F |
  TXA                                       ; $829412 |
  STA.W $0038,Y                             ; $829413 |
  LDA.W #$0020                              ; $829416 |
  STA.W $003C,Y                             ; $829419 |
  LDA.W #$0000                              ; $82941C |
  STA.W $003E,Y                             ; $82941F |
  LDA.W #$0010                              ; $829422 |
  STA.W $0040,Y                             ; $829425 |
  RTL                                       ; $829428 |

CODE_JP_829429:
  LDA.W #$0006                              ; $829429 |
  STA.B $00                                 ; $82942C |
  LDA.W #$FFE0                              ; $82942E |
  BRA CODE_829439                           ; $829431 |

CODE_JP_829433:
  TDC                                       ; $829433 |
  STA.B $00                                 ; $829434 |
  LDA.W #$0020                              ; $829436 |

CODE_829439:
  LDY.W #$07C0                              ; $829439 |
  STA.W $003C,Y                             ; $82943C |
  LDA.W #$0000                              ; $82943F |
  STA.W $003E,Y                             ; $829442 |
  LDA.W #$0010                              ; $829445 |
  STA.W $0040,Y                             ; $829448 |
  LDA.W #$2011                              ; $82944B |
  STA.W $0018,Y                             ; $82944E |
  TXA                                       ; $829451 |
  STA.W $0038,Y                             ; $829452 |
  LDA.B $00                                 ; $829455 |
  STA.W $0042,Y                             ; $829457 |
  RTL                                       ; $82945A |

CODE_JP_82945B:
  JSL.L CODE_FL_82A6A2                      ; $82945B |
  LDY.W #$07C0                              ; $82945F |
  LDA.W #$0008                              ; $829462 |
  JSL.L CODE_FL_82946D                      ; $829465 |
  LDY.W #$0940                              ; $829469 |
  TDC                                       ; $82946C |

CODE_FL_82946D:
  STA.W $0044,Y                             ; $82946D |
  STA.W $0048,Y                             ; $829470 |
  LSR A                                     ; $829473 |
  STA.W $003A,Y                             ; $829474 |
  LDA.W #$2007                              ; $829477 |
  STA.W $0018,Y                             ; $82947A |
  STX.B $38,Y                               ; $82947D |
  RTL                                       ; $82947F |

CODE_FL_829480:
  LDY.B $38,X                               ; $829480 |
  LDA.W $0030,Y                             ; $829482 |
  TAY                                       ; $829485 |
  LDA.W $1CD0                               ; $829486 |
  BNE CODE_829493                           ; $829489 |
  STZ.W $1CC0                               ; $82948B |
  STZ.W $1CE0                               ; $82948E |
  BRA CODE_8294AE                           ; $829491 |

CODE_829493:
  DEC.W $1CD0                               ; $829493 |
  LDA.W $1CC0                               ; $829496 |
  PHX                                       ; $829499 |
  ASL A                                     ; $82949A |
  TAX                                       ; $82949B |
  LDA.L PTR16_8294A6,X                      ; $82949C |
  PLX                                       ; $8294A0 |
  STA.B $00                                 ; $8294A1 |
  JMP.W ($0000)                             ; $8294A3 |

PTR16_8294A6:
  dw CODE_8294AE                            ; $8294A6 |
  dw CODE_8294C4                            ; $8294A8 |
  dw CODE_8294CE                            ; $8294AA |
  dw CODE_8294D8                            ; $8294AC |

CODE_8294AE:
  TYA                                       ; $8294AE |
  BEQ CODE_8294BF                           ; $8294AF |
  BIT.W #$0800                              ; $8294B1 |
  BEQ CODE_8294BF                           ; $8294B4 |

CODE_8294B6:
  INC.W $1CC0                               ; $8294B6 |
  LDA.W #$0012                              ; $8294B9 |
  STA.W $1CD0                               ; $8294BC |

CODE_8294BF:
  RTL                                       ; $8294BF |

CODE_8294C0:
  STZ.W $1CD0                               ; $8294C0 |
  RTL                                       ; $8294C3 |

CODE_8294C4:
  TYA                                       ; $8294C4 |
  BEQ CODE_8294BF                           ; $8294C5 |
  BIT.W #$0400                              ; $8294C7 |
  BNE CODE_8294B6                           ; $8294CA |
  BRA CODE_8294C0                           ; $8294CC |

CODE_8294CE:
  TYA                                       ; $8294CE |
  BEQ CODE_8294BF                           ; $8294CF |
  CMP.W #$0800                              ; $8294D1 |
  BEQ CODE_8294B6                           ; $8294D4 |
  BRA CODE_8294C0                           ; $8294D6 |

CODE_8294D8:
  LDA.W #$0001                              ; $8294D8 |
  STA.W $1CE0                               ; $8294DB |

CODE_FL_8294DE:
  LDA.W $1C48                               ; $8294DE |
  CMP.W #$0050                              ; $8294E1 |
  BMI CODE_8294E7                           ; $8294E4 |
  RTL                                       ; $8294E6 |

CODE_8294E7:
  LDY.B $38,X                               ; $8294E7 |
  LDA.W $0030,Y                             ; $8294E9 |
  TAY                                       ; $8294EC |
  LDA.W $1CD2                               ; $8294ED |
  BNE CODE_8294FA                           ; $8294F0 |
  STZ.W $1CC2                               ; $8294F2 |
  STZ.W $1CE2                               ; $8294F5 |
  BRA CODE_829535                           ; $8294F8 |

CODE_8294FA:
  DEC.W $1CD2                               ; $8294FA |
  LDA.W $1CC2                               ; $8294FD |
  PHX                                       ; $829500 |
  ASL A                                     ; $829501 |
  TAX                                       ; $829502 |
  LDA.L PTR16_82950D,X                      ; $829503 |
  PLX                                       ; $829507 |
  STA.B $00                                 ; $829508 |
  JMP.W ($0000)                             ; $82950A |

PTR16_82950D:
  dw CODE_829535                            ; $82950D |
  dw CODE_829535                            ; $82950F |
  dw CODE_82953F                            ; $829511 |
  dw CODE_82953F                            ; $829513 |
  dw CODE_829549                            ; $829515 |
  dw CODE_829553                            ; $829517 |
  dw CODE_829549                            ; $829519 |
  dw CODE_829553                            ; $82951B |
  dw CODE_82955D                            ; $82951D |

CODE_82951F:
  INC.W $1CC2                               ; $82951F |
  LDA.W #$0012                              ; $829522 |
  STA.W $1CD2                               ; $829525 |

CODE_829528:
  RTL                                       ; $829528 |

CODE_829529:
  STZ.W $1CD2                               ; $829529 |
  STZ.W $1CC2                               ; $82952C |
  BIT.W #$0800                              ; $82952F |
  BNE CODE_82951F                           ; $829532 |
  RTL                                       ; $829534 |

CODE_829535:
  TYA                                       ; $829535 |
  BEQ CODE_829528                           ; $829536 |
  BIT.W #$0800                              ; $829538 |
  BNE CODE_82951F                           ; $82953B |
  BRA CODE_829529                           ; $82953D |

CODE_82953F:
  TYA                                       ; $82953F |
  BEQ CODE_829528                           ; $829540 |
  BIT.W #$0400                              ; $829542 |
  BNE CODE_82951F                           ; $829545 |
  BRA CODE_829529                           ; $829547 |

CODE_829549:
  TYA                                       ; $829549 |
  BEQ CODE_829528                           ; $82954A |
  CMP.W #$0200                              ; $82954C |
  BEQ CODE_82951F                           ; $82954F |
  BRA CODE_829529                           ; $829551 |

CODE_829553:
  TYA                                       ; $829553 |
  BEQ CODE_829528                           ; $829554 |
  CMP.W #$0100                              ; $829556 |
  BEQ CODE_82951F                           ; $829559 |
  BRA CODE_829529                           ; $82955B |

CODE_82955D:
  STX.W $1CE2                               ; $82955D |
  RTL                                       ; $829560 |

CODE_FL_829561:
  LDY.B $38,X                               ; $829561 |
  LDA.W $0030,Y                             ; $829563 |
  TAY                                       ; $829566 |
  LDA.W $1CD4                               ; $829567 |
  BNE CODE_829574                           ; $82956A |
  STZ.W $1CC4                               ; $82956C |
  STZ.W $1CE4                               ; $82956F |
  BRA CODE_82958D                           ; $829572 |

CODE_829574:
  DEC.W $1CD4                               ; $829574 |
  LDA.W $1CC4                               ; $829577 |
  PHX                                       ; $82957A |
  ASL A                                     ; $82957B |
  TAX                                       ; $82957C |
  LDA.L PTR16_829587,X                      ; $82957D |
  PLX                                       ; $829581 |
  STA.B $00                                 ; $829582 |
  JMP.W ($0000)                             ; $829584 |

PTR16_829587:
  dw CODE_82958D                            ; $829587 |
  dw CODE_8295A3                            ; $829589 |
  dw CODE_8295AF                            ; $82958B |

CODE_82958D:
  TYA                                       ; $82958D |
  BEQ CODE_82959E                           ; $82958E |
  BIT.W #$0800                              ; $829590 |
  BEQ CODE_82959F                           ; $829593 |

CODE_FL_829595:
  INC.W $1CC4                               ; $829595 |
  LDA.W #$000A                              ; $829598 |
  STA.W $1CD4                               ; $82959B |

CODE_82959E:
  RTL                                       ; $82959E |

CODE_82959F:
  STZ.W $1CD4                               ; $82959F |
  RTL                                       ; $8295A2 |

CODE_8295A3:
  TYA                                       ; $8295A3 |
  BEQ CODE_82959E                           ; $8295A4 |
  BIT.W #$0800                              ; $8295A6 |
  BEQ CODE_82959F                           ; $8295A9 |
  JSL.L CODE_FL_829595                      ; $8295AB |

CODE_8295AF:
  LDA.W #$0001                              ; $8295AF |
  STA.W $1CE4                               ; $8295B2 |
  RTL                                       ; $8295B5 |

CODE_FL_8295B6:
  LDY.B $38,X                               ; $8295B6 |
  LDA.W $0028,Y                             ; $8295B8 |
  STA.B $02                                 ; $8295BB |
  LDA.W $0030,Y                             ; $8295BD |
  TAY                                       ; $8295C0 |
  LDA.W $1CD6                               ; $8295C1 |
  BNE CODE_8295CE                           ; $8295C4 |
  STZ.W $1CC6                               ; $8295C6 |
  STZ.W $1CE6                               ; $8295C9 |
  BRA CODE_8295E7                           ; $8295CC |

CODE_8295CE:
  DEC.W $1CD6                               ; $8295CE |
  LDA.W $1CC6                               ; $8295D1 |
  PHX                                       ; $8295D4 |
  ASL A                                     ; $8295D5 |
  TAX                                       ; $8295D6 |
  LDA.L PTR16_8295E1,X                      ; $8295D7 |
  PLX                                       ; $8295DB |
  STA.B $00                                 ; $8295DC |
  JMP.W ($0000)                             ; $8295DE |

PTR16_8295E1:
  dw CODE_8295E7                            ; $8295E1 |
  dw CODE_8295FC                            ; $8295E3 |
  dw CODE_829607                            ; $8295E5 |

CODE_8295E7:
  LDA.B $02                                 ; $8295E7 |
  BIT.W #$0400                              ; $8295E9 |
  BEQ CODE_8295F7                           ; $8295EC |

CODE_8295EE:
  INC.W $1CC6                               ; $8295EE |
  LDA.W #$000E                              ; $8295F1 |
  STA.W $1CD6                               ; $8295F4 |

CODE_8295F7:
  RTL                                       ; $8295F7 |

  STZ.W $1CD6                               ; $8295F8 |
  RTL                                       ; $8295FB |

CODE_8295FC:
  LDA.B $02                                 ; $8295FC |
  AND.W #$0A00                              ; $8295FE |
  CMP.W #$0A00                              ; $829601 |
  BEQ CODE_8295EE                           ; $829604 |
  RTL                                       ; $829606 |

CODE_829607:
  LDY.W #$0001                              ; $829607 |
  STY.W $1CE6                               ; $82960A |
  RTL                                       ; $82960D |

CODE_FL_82960E:
  LDY.B $38,X                               ; $82960E |
  LDA.W $0030,Y                             ; $829610 |
  TAY                                       ; $829613 |
  LDA.W $1CD8                               ; $829614 |
  BNE CODE_829621                           ; $829617 |
  STZ.W $1CC8                               ; $829619 |
  STZ.W $1CE8                               ; $82961C |
  BRA CODE_82963A                           ; $82961F |

CODE_829621:
  DEC.W $1CD8                               ; $829621 |
  LDA.W $1CC8                               ; $829624 |
  PHX                                       ; $829627 |
  ASL A                                     ; $829628 |
  TAX                                       ; $829629 |
  LDA.L PTR16_829634,X                      ; $82962A |
  PLX                                       ; $82962E |
  STA.B $00                                 ; $82962F |
  JMP.W ($0000)                             ; $829631 |

PTR16_829634:
  dw CODE_82963A                            ; $829634 |
  dw CODE_829650                            ; $829636 |
  dw CODE_82965C                            ; $829638 |

CODE_82963A:
  TYA                                       ; $82963A |
  BEQ CODE_82964B                           ; $82963B |
  BIT.W #$0400                              ; $82963D |
  BEQ CODE_82964B                           ; $829640 |

CODE_FL_829642:
  INC.W $1CC8                               ; $829642 |
  LDA.W #$0012                              ; $829645 |
  STA.W $1CD8                               ; $829648 |

CODE_82964B:
  RTL                                       ; $82964B |

CODE_82964C:
  STZ.W $1CD8                               ; $82964C |
  RTL                                       ; $82964F |

CODE_829650:
  TYA                                       ; $829650 |
  BEQ CODE_82964B                           ; $829651 |
  BIT.W #$0800                              ; $829653 |
  BEQ CODE_82964C                           ; $829656 |
  JSL.L CODE_FL_829642                      ; $829658 |

CODE_82965C:
  STX.W $1CE8                               ; $82965C |
  RTL                                       ; $82965F |

CODE_FL_829660:
  LDY.B $38,X                               ; $829660 |
  LDA.W $0030,Y                             ; $829662 |
  TAY                                       ; $829665 |
  LDA.W $1CDA                               ; $829666 |
  BNE CODE_829673                           ; $829669 |
  STZ.W $1CCA                               ; $82966B |
  STZ.W $1CEA                               ; $82966E |
  BRA CODE_829690                           ; $829671 |

CODE_829673:
  DEC.W $1CDA                               ; $829673 |
  LDA.W $1CCA                               ; $829676 |
  PHX                                       ; $829679 |
  ASL A                                     ; $82967A |
  TAX                                       ; $82967B |
  LDA.L PTR16_829686,X                      ; $82967C |
  PLX                                       ; $829680 |
  STA.B $00                                 ; $829681 |
  JMP.W ($0000)                             ; $829683 |

PTR16_829686:
  dw CODE_829690                            ; $829686 |
  dw CODE_8296A6                            ; $829688 |
  dw CODE_8296B0                            ; $82968A |
  dw CODE_8296C0                            ; $82968C |
  dw CODE_8296D3                            ; $82968E |

CODE_829690:
  TYA                                       ; $829690 |
  BEQ CODE_8296A1                           ; $829691 |
  BIT.W #$0100                              ; $829693 |
  BEQ CODE_8296A1                           ; $829696 |

CODE_FL_829698:
  INC.W $1CCA                               ; $829698 |
  LDA.W #$0012                              ; $82969B |
  STA.W $1CDA                               ; $82969E |

CODE_8296A1:
  RTL                                       ; $8296A1 |

CODE_8296A2:
  STZ.W $1CDA                               ; $8296A2 |
  RTL                                       ; $8296A5 |

CODE_8296A6:
  TYA                                       ; $8296A6 |
  BEQ CODE_8296A1                           ; $8296A7 |
  CMP.W #$0200                              ; $8296A9 |
  BNE CODE_8296A2                           ; $8296AC |
  BRA CODE_FL_829698                        ; $8296AE |

CODE_8296B0:
  LDY.B $38,X                               ; $8296B0 |
  LDA.W $0028,Y                             ; $8296B2 |
  BEQ CODE_8296A1                           ; $8296B5 |
  AND.W #$0600                              ; $8296B7 |
  CMP.W #$0400                              ; $8296BA |
  BEQ CODE_FL_829698                        ; $8296BD |
  RTL                                       ; $8296BF |

CODE_8296C0:
  LDY.B $38,X                               ; $8296C0 |
  LDA.W $0028,Y                             ; $8296C2 |
  BEQ CODE_8296A1                           ; $8296C5 |
  AND.W #$0F00                              ; $8296C7 |
  CMP.W #$0800                              ; $8296CA |
  BNE CODE_8296A1                           ; $8296CD |
  JSL.L CODE_FL_829698                      ; $8296CF |

CODE_8296D3:
  STX.W $1CEA                               ; $8296D3 |
  RTL                                       ; $8296D6 |

CODE_FN_8296D7:
  LDY.W #$8BE4                              ; $8296D7 |
  LDA.B $42                                 ; $8296DA |
  LSR A                                     ; $8296DC |
  BCC CODE_8296E2                           ; $8296DD |
  LDY.W #$8C04                              ; $8296DF |

CODE_8296E2:
  LDA.W #$000A                              ; $8296E2 |
  JSL.L CODE_FL_80C2C4                      ; $8296E5 |
  RTS                                       ; $8296E9 |

CODE_FN_8296EA:
  LDY.W #$0000                              ; $8296EA |
  LDA.W $1C40                               ; $8296ED |
  CMP.W #$0028                              ; $8296F0 |
  BEQ CODE_829727                           ; $8296F3 |
  STA.B $10                                 ; $8296F5 |

CODE_8296F7:
  LDA.B $10                                 ; $8296F7 |
  BMI CODE_829702                           ; $8296F9 |
  CMP.W #$0008                              ; $8296FB |
  BPL CODE_829705                           ; $8296FE |
  BRA CODE_829708                           ; $829700 |

CODE_829702:
  TDC                                       ; $829702 |
  BRA CODE_829708                           ; $829703 |

CODE_829705:
  LDA.W #$0008                              ; $829705 |

CODE_829708:
  ORA.W #$1470                              ; $829708 |
  STA.W $0000,Y                             ; $82970B |
  LDA.B $10                                 ; $82970E |
  SEC                                       ; $829710 |
  SBC.W #$0008                              ; $829711 |
  STA.B $10                                 ; $829714 |
  INY                                       ; $829716 |
  INY                                       ; $829717 |
  CPY.W #$000A                              ; $829718 |
  BMI CODE_8296F7                           ; $82971B |
  LDY.W #$44B5                              ; $82971D |
  BRA CODE_82973F                           ; $829720 |

CODE_829722:
  LDY.W #$44A6                              ; $829722 |
  BRA CODE_82972A                           ; $829725 |

CODE_829727:
  LDY.W #$44B5                              ; $829727 |

CODE_82972A:
  LDA.B $42                                 ; $82972A |
  LSR A                                     ; $82972C |
  LDA.W #$1478                              ; $82972D |
  BCC CODE_829735                           ; $829730 |
  LDA.W #$1078                              ; $829732 |

CODE_829735:
  STA.B $00                                 ; $829735 |
  STA.B $02                                 ; $829737 |
  STA.B $04                                 ; $829739 |
  STA.B $06                                 ; $82973B |
  STA.B $08                                 ; $82973D |

CODE_82973F:
  JSR.W CODE_FN_8299DE                      ; $82973F |
  RTS                                       ; $829742 |

CODE_FN_829743:
  LDY.W #$0008                              ; $829743 |
  LDA.W $1C44                               ; $829746 |
  LSR A                                     ; $829749 |
  LSR A                                     ; $82974A |
  CMP.W #$0028                              ; $82974B |
  BEQ CODE_829722                           ; $82974E |
  STA.B $10                                 ; $829750 |

CODE_829752:
  LDA.B $10                                 ; $829752 |
  BMI CODE_82975D                           ; $829754 |
  CMP.W #$0008                              ; $829756 |
  BPL CODE_829760                           ; $829759 |
  BRA CODE_829763                           ; $82975B |

CODE_82975D:
  TDC                                       ; $82975D |
  BRA CODE_829763                           ; $82975E |

CODE_829760:
  LDA.W #$0008                              ; $829760 |

CODE_829763:
  ORA.W #$5070                              ; $829763 |
  STA.W $0000,Y                             ; $829766 |
  LDA.B $10                                 ; $829769 |
  SEC                                       ; $82976B |
  SBC.W #$0008                              ; $82976C |
  STA.B $10                                 ; $82976F |
  DEY                                       ; $829771 |
  DEY                                       ; $829772 |
  BPL CODE_829752                           ; $829773 |
  LDY.W #$44A6                              ; $829775 |
  BRA CODE_82973F                           ; $829778 |

CODE_FN_82977A:
  LDA.B $42                                 ; $82977A |
  AND.W #$000F                              ; $82977C |
  ASL A                                     ; $82977F |
  TAX                                       ; $829780 |
  JMP.W (PTR16_829784,X)                    ; $829781 |

PTR16_829784:
  dw CODE_82980D                            ; $829784 |
  dw CODE_8297BF                            ; $829786 |
  dw CODE_829831                            ; $829788 |
  dw CODE_8297E6                            ; $82978A |
  dw CODE_829855                            ; $82978C |
  dw CODE_8297A5                            ; $82978E |
  dw CODE_829879                            ; $829790 |
  dw CODE_8297A4                            ; $829792 |
  dw CODE_82989C                            ; $829794 |
  dw CODE_8297BF                            ; $829796 |
  dw CODE_8298BA                            ; $829798 |
  dw CODE_8297E6                            ; $82979A |
  dw CODE_8298D8                            ; $82979C |
  dw CODE_8297B2                            ; $82979E |
  dw CODE_8298F6                            ; $8297A0 |
  dw CODE_8297A4                            ; $8297A2 |

CODE_8297A4:
  RTS                                       ; $8297A4 |

CODE_8297A5:
  LDA.W $1C5E                               ; $8297A5 |
  CMP.W $1C62                               ; $8297A8 |
  BEQ CODE_8297B1                           ; $8297AB |
  JSL.L CODE_FL_829A3D                      ; $8297AD |

CODE_8297B1:
  RTS                                       ; $8297B1 |

CODE_8297B2:
  LDA.W $1C60                               ; $8297B2 |
  CMP.W $1C64                               ; $8297B5 |
  BEQ CODE_8297BE                           ; $8297B8 |
  JSL.L CODE_FL_829A7B                      ; $8297BA |

CODE_8297BE:
  RTS                                       ; $8297BE |

CODE_8297BF:
  LDA.W $1C48                               ; $8297BF |
  CMP.W #$0050                              ; $8297C2 |
  BPL CODE_8297DA                           ; $8297C5 |
  LDA.W $1C5A                               ; $8297C7 |
  INC A                                     ; $8297CA |
  AND.W #$0003                              ; $8297CB |
  STA.W $1C5A                               ; $8297CE |
  TAY                                       ; $8297D1 |
  LDA.W LOOSE_OP_008800,Y                   ; $8297D2 |
  AND.W #$00FF                              ; $8297D5 |
  BRA CODE_8297E0                           ; $8297D8 |

CODE_8297DA:
  STZ.W $1C5A                               ; $8297DA |
  LDA.W #$0000                              ; $8297DD |

CODE_8297E0:
  LDY.W #$464B                              ; $8297E0 |
  JMP.W CODE_JP_829A05                      ; $8297E3 |

CODE_8297E6:
  LDA.W $1C4A                               ; $8297E6 |
  CMP.W #$0050                              ; $8297E9 |
  BPL CODE_829801                           ; $8297EC |
  LDA.W $1C5C                               ; $8297EE |
  INC A                                     ; $8297F1 |
  AND.W #$0003                              ; $8297F2 |
  STA.W $1C5C                               ; $8297F5 |
  TAY                                       ; $8297F8 |
  LDA.W CODE_008804,Y                       ; $8297F9 |
  AND.W #$00FF                              ; $8297FC |
  BRA CODE_829807                           ; $8297FF |

CODE_829801:
  STZ.W $1C5C                               ; $829801 |
  LDA.W #$0008                              ; $829804 |

CODE_829807:
  LDY.W #$4656                              ; $829807 |
  JMP.W CODE_JP_829A05                      ; $82980A |

CODE_82980D:
  LDA.W $1C48                               ; $82980D |
  LDY.W $1C50                               ; $829810 |
  LDX.W #$0003                              ; $829813 |
  JSR.W CODE_FN_82995E                      ; $829816 |
  BCC CODE_829830                           ; $829819 |
  STA.W $1C50                               ; $82981B |
  LDY.W #$468C                              ; $82981E |
  LDX.W #$0003                              ; $829821 |
  JSR.W CODE_FN_829914                      ; $829824 |
  LDA.W $1C58                               ; $829827 |
  ORA.W #$0001                              ; $82982A |
  STA.W $1C58                               ; $82982D |

CODE_829830:
  RTS                                       ; $829830 |

CODE_829831:
  LDA.W $1C4A                               ; $829831 |
  LDY.W $1C52                               ; $829834 |
  LDX.W #$0003                              ; $829837 |
  JSR.W CODE_FN_82995E                      ; $82983A |
  BCC CODE_829854                           ; $82983D |
  STA.W $1C52                               ; $82983F |
  LDY.W #$4675                              ; $829842 |
  LDX.W #$0003                              ; $829845 |
  JSR.W CODE_FN_829914                      ; $829848 |
  LDA.W $1C58                               ; $82984B |
  ORA.W #$0002                              ; $82984E |
  STA.W $1C58                               ; $829851 |

CODE_829854:
  RTS                                       ; $829854 |

CODE_829855:
  LDA.W $0DD0                               ; $829855 |
  LDY.W $1C56                               ; $829858 |
  LDX.W #$0004                              ; $82985B |
  JSR.W CODE_FN_82995E                      ; $82985E |
  BCC CODE_829878                           ; $829861 |
  STA.W $1C56                               ; $829863 |
  LDY.W #$4491                              ; $829866 |
  LDX.W #$0004                              ; $829869 |
  JSR.W CODE_FN_829914                      ; $82986C |
  LDA.W $1C58                               ; $82986F |
  ORA.W #$0004                              ; $829872 |
  STA.W $1C58                               ; $829875 |

CODE_829878:
  RTS                                       ; $829878 |

CODE_829879:
  LDA.B $CE                                 ; $829879 |
  LDY.W $1C54                               ; $82987B |
  LDX.W #$0002                              ; $82987E |
  JSR.W CODE_FN_82995E                      ; $829881 |
  BCC CODE_82989B                           ; $829884 |
  STA.W $1C54                               ; $829886 |
  LDX.W #$0002                              ; $829889 |
  LDY.W #$46D4                              ; $82988C |
  JSR.W CODE_FN_829914                      ; $82988F |
  LDA.W $1C58                               ; $829892 |
  ORA.W #$0008                              ; $829895 |
  STA.W $1C58                               ; $829898 |

CODE_82989B:
  RTS                                       ; $82989B |

CODE_82989C:
  LDA.W $1C58                               ; $82989C |
  BIT.W #$0001                              ; $82989F |
  BEQ CODE_8298B9                           ; $8298A2 |
  EOR.W #$0001                              ; $8298A4 |
  STA.W $1C58                               ; $8298A7 |
  LDA.W $1C50                               ; $8298AA |
  LDX.W #$0003                              ; $8298AD |
  JSR.W CODE_FN_829959                      ; $8298B0 |
  LDY.W #$468C                              ; $8298B3 |
  JSR.W CODE_FN_829914                      ; $8298B6 |

CODE_8298B9:
  RTS                                       ; $8298B9 |

CODE_8298BA:
  LDA.W $1C58                               ; $8298BA |
  BIT.W #$0002                              ; $8298BD |
  BEQ CODE_8298D7                           ; $8298C0 |
  EOR.W #$0002                              ; $8298C2 |
  STA.W $1C58                               ; $8298C5 |
  LDA.W $1C52                               ; $8298C8 |
  LDX.W #$0003                              ; $8298CB |
  JSR.W CODE_FN_829959                      ; $8298CE |
  LDY.W #$4675                              ; $8298D1 |
  JSR.W CODE_FN_829914                      ; $8298D4 |

CODE_8298D7:
  RTS                                       ; $8298D7 |

CODE_8298D8:
  LDA.W $1C58                               ; $8298D8 |
  BIT.W #$0004                              ; $8298DB |
  BEQ CODE_8298F5                           ; $8298DE |
  EOR.W #$0004                              ; $8298E0 |
  STA.W $1C58                               ; $8298E3 |
  LDA.W $1C56                               ; $8298E6 |
  LDX.W #$0004                              ; $8298E9 |
  JSR.W CODE_FN_829959                      ; $8298EC |
  LDY.W #$4491                              ; $8298EF |
  JSR.W CODE_FN_829914                      ; $8298F2 |

CODE_8298F5:
  RTS                                       ; $8298F5 |

CODE_8298F6:
  LDA.W $1C58                               ; $8298F6 |
  BIT.W #$0008                              ; $8298F9 |
  BEQ CODE_829913                           ; $8298FC |
  EOR.W #$0008                              ; $8298FE |
  STA.W $1C58                               ; $829901 |
  LDA.W $1C54                               ; $829904 |
  LDX.W #$0002                              ; $829907 |
  JSR.W CODE_FN_829959                      ; $82990A |
  LDY.W #$46D4                              ; $82990D |
  JSR.W CODE_FN_829914                      ; $829910 |

CODE_829913:
  RTS                                       ; $829913 |

CODE_FN_829914:
  STY.B $04                                 ; $829914 |
  STA.B $06                                 ; $829916 |
  AND.W #$000F                              ; $829918 |
  ASL A                                     ; $82991B |
  ASL A                                     ; $82991C |
  ASL A                                     ; $82991D |
  JSR.W CODE_FN_8299BB                      ; $82991E |
  DEC.B $08                                 ; $829921 |
  BEQ CODE_829958                           ; $829923 |
  LDY.B $04                                 ; $829925 |
  DEY                                       ; $829927 |
  LDA.B $06                                 ; $829928 |
  LSR A                                     ; $82992A |
  AND.W #$0078                              ; $82992B |
  JSR.W CODE_FN_8299BB                      ; $82992E |
  DEC.B $08                                 ; $829931 |
  BEQ CODE_829958                           ; $829933 |
  LDY.B $04                                 ; $829935 |
  DEY                                       ; $829937 |
  DEY                                       ; $829938 |
  LDA.B $06                                 ; $829939 |
  XBA                                       ; $82993B |
  AND.W #$000F                              ; $82993C |
  ASL A                                     ; $82993F |
  ASL A                                     ; $829940 |
  ASL A                                     ; $829941 |
  JSR.W CODE_FN_8299BB                      ; $829942 |
  DEC.B $08                                 ; $829945 |
  BEQ CODE_829958                           ; $829947 |
  LDY.B $04                                 ; $829949 |
  DEY                                       ; $82994B |
  DEY                                       ; $82994C |
  DEY                                       ; $82994D |
  LDA.B $06                                 ; $82994E |
  XBA                                       ; $829950 |
  LSR A                                     ; $829951 |
  AND.W #$0078                              ; $829952 |
  JSR.W CODE_FN_8299BB                      ; $829955 |

CODE_829958:
  RTS                                       ; $829958 |

CODE_FN_829959:
  STX.B $08                                 ; $829959 |
  STZ.B $00                                 ; $82995B |
  RTS                                       ; $82995D |

CODE_FN_82995E:
  STA.B $10                                 ; $82995E |
  STY.B $12                                 ; $829960 |
  CMP.B $12                                 ; $829962 |
  BEQ CODE_8299B9                           ; $829964 |
  LDY.W #$0004                              ; $829966 |
  BCC CODE_82996E                           ; $829969 |
  LDY.W #$FFFC                              ; $82996B |

CODE_82996E:
  STY.B $00                                 ; $82996E |
  DEX                                       ; $829970 |
  LDY.W #$0001                              ; $829971 |
  LDA.B $10                                 ; $829974 |
  AND.W #$00F0                              ; $829976 |
  STA.B $18                                 ; $829979 |
  LDA.B $12                                 ; $82997B |
  AND.W #$00F0                              ; $82997D |
  CMP.B $18                                 ; $829980 |
  BEQ CODE_829987                           ; $829982 |
  LDY.W #$0002                              ; $829984 |

CODE_829987:
  DEX                                       ; $829987 |
  BEQ CODE_8299B3                           ; $829988 |
  LDA.B $10                                 ; $82998A |
  AND.W #$0F00                              ; $82998C |
  STA.B $18                                 ; $82998F |
  LDA.B $12                                 ; $829991 |
  AND.W #$0F00                              ; $829993 |
  CMP.B $18                                 ; $829996 |
  BEQ CODE_82999D                           ; $829998 |
  LDY.W #$0003                              ; $82999A |

CODE_82999D:
  DEX                                       ; $82999D |
  BEQ CODE_8299B3                           ; $82999E |
  LDA.B $10                                 ; $8299A0 |
  AND.W #$F000                              ; $8299A2 |
  STA.B $18                                 ; $8299A5 |
  LDA.B $12                                 ; $8299A7 |
  AND.W #$F000                              ; $8299A9 |
  CMP.B $18                                 ; $8299AC |
  BEQ CODE_8299B3                           ; $8299AE |
  LDY.W #$0004                              ; $8299B0 |

CODE_8299B3:
  STY.B $08                                 ; $8299B3 |
  LDA.B $10                                 ; $8299B5 |
  SEC                                       ; $8299B7 |
  RTS                                       ; $8299B8 |

CODE_8299B9:
  CLC                                       ; $8299B9 |
  RTS                                       ; $8299BA |

CODE_FN_8299BB:
  STA.B $02                                 ; $8299BB |
  JSL.L CODE_FL_80961D                      ; $8299BD |
  LDA.B $02                                 ; $8299C1 |
  CLC                                       ; $8299C3 |
  ADC.B $00                                 ; $8299C4 |
  INC A                                     ; $8299C6 |
  INC A                                     ; $8299C7 |
  INC A                                     ; $8299C8 |
  INC A                                     ; $8299C9 |
  TAY                                       ; $8299CA |
  LDA.W CODE_008784,Y                       ; $8299CB |
  JSL.L CODE_FL_809658                      ; $8299CE |
  LDA.W CODE_008786,Y                       ; $8299D2 |
  JSL.L CODE_FL_809658                      ; $8299D5 |
  JSL.L CODE_FL_809663                      ; $8299D9 |
  RTS                                       ; $8299DD |

CODE_FN_8299DE:
  JSL.L CODE_FL_809622                      ; $8299DE |
  LDA.B $00                                 ; $8299E2 |
  JSL.L CODE_FL_809658                      ; $8299E4 |
  LDA.B $02                                 ; $8299E8 |
  JSL.L CODE_FL_809658                      ; $8299EA |
  LDA.B $04                                 ; $8299EE |
  JSL.L CODE_FL_809658                      ; $8299F0 |
  LDA.B $06                                 ; $8299F4 |
  JSL.L CODE_FL_809658                      ; $8299F6 |
  LDA.B $08                                 ; $8299FA |
  JSL.L CODE_FL_809658                      ; $8299FC |
  JSL.L CODE_FL_809663                      ; $829A00 |
  RTS                                       ; $829A04 |

CODE_JP_829A05:
  STY.B $02                                 ; $829A05 |
  STA.B $00                                 ; $829A07 |
  JSL.L CODE_FL_80961D                      ; $829A09 |
  LDY.B $00                                 ; $829A0D |
  LDA.W CODE_0087D8,Y                       ; $829A0F |
  JSL.L CODE_FL_809658                      ; $829A12 |
  LDA.W CODE_0087DA,Y                       ; $829A16 |
  JSL.L CODE_FL_809658                      ; $829A19 |
  JSL.L CODE_FL_809663                      ; $829A1D |
  LDY.B $02                                 ; $829A21 |
  INY                                       ; $829A23 |
  JSL.L CODE_FL_80961D                      ; $829A24 |
  LDY.B $00                                 ; $829A28 |
  LDA.W LOOSE_OP_0087DC,Y                   ; $829A2A |
  JSL.L CODE_FL_809658                      ; $829A2D |
  LDA.W CODE_0087DE,Y                       ; $829A31 |
  JSL.L CODE_FL_809658                      ; $829A34 |
  JSL.L CODE_FL_809663                      ; $829A38 |
  RTS                                       ; $829A3C |

CODE_FL_829A3D:
  STA.W $1C62                               ; $829A3D |
  LDA.W #$2800                              ; $829A40 |
  STA.B $10                                 ; $829A43 |
  TDC                                       ; $829A45 |
  STA.B $12                                 ; $829A46 |
  LDY.W $1C20                               ; $829A48 |
  LDA.W CODE_008808,Y                       ; $829A4B |
  CLC                                       ; $829A4E |
  ADC.W $1C62                               ; $829A4F |
  TAY                                       ; $829A52 |
  LDA.W $0000,Y                             ; $829A53 |
  TAY                                       ; $829A56 |
  LDA.W #$4201                              ; $829A57 |
  CPY.W #$DD89                              ; $829A5A |
  BEQ CODE_829A76                           ; $829A5D |
  CPY.W #$DD9D                              ; $829A5F |
  BEQ CODE_829A76                           ; $829A62 |
  CPY.W #$DDB1                              ; $829A64 |
  BEQ CODE_829A76                           ; $829A67 |
  CPY.W #$DDC5                              ; $829A69 |
  BEQ CODE_829A76                           ; $829A6C |
  CPY.W #$DDD9                              ; $829A6E |
  BEQ CODE_829A76                           ; $829A71 |
  LDA.W #$4202                              ; $829A73 |

CODE_829A76:
  JSL.L CODE_FL_A0F67A                      ; $829A76 |
  RTL                                       ; $829A7A |

CODE_FL_829A7B:
  STA.W $1C64                               ; $829A7B |
  LDA.W #$2C00                              ; $829A7E |
  STA.B $10                                 ; $829A81 |
  LDA.W #$0040                              ; $829A83 |
  STA.B $12                                 ; $829A86 |
  LDY.W $1C22                               ; $829A88 |
  LDA.W CODE_008808,Y                       ; $829A8B |
  CLC                                       ; $829A8E |
  ADC.W $1C64                               ; $829A8F |
  TAY                                       ; $829A92 |
  LDA.W $0000,Y                             ; $829A93 |
  TAY                                       ; $829A96 |
  LDA.W #$4213                              ; $829A97 |
  CPY.W #$DD89                              ; $829A9A |
  BEQ CODE_829AB6                           ; $829A9D |
  CPY.W #$DD9D                              ; $829A9F |
  BEQ CODE_829AB6                           ; $829AA2 |
  CPY.W #$DDB1                              ; $829AA4 |
  BEQ CODE_829AB6                           ; $829AA7 |
  CPY.W #$DDC5                              ; $829AA9 |
  BEQ CODE_829AB6                           ; $829AAC |
  CPY.W #$DDD9                              ; $829AAE |
  BEQ CODE_829AB6                           ; $829AB1 |
  LDA.W #$4216                              ; $829AB3 |

CODE_829AB6:
  JSL.L CODE_FL_A0F718                      ; $829AB6 |
  RTL                                       ; $829ABA |

  dw CODE_829AC1                            ; $829ABB |
  dw CODE_829AE1                            ; $829ABD |
  dw CODE_829B09                            ; $829ABF |

CODE_829AC1:
  LDY.W #$833C                              ; $829AC1 |
  JSL.L CODE_FL_828AC3                      ; $829AC4 |
  JSL.L CODE_FL_82CE4B                      ; $829AC8 |
  JSR.W CODE_FN_82A2D4                      ; $829ACC |
  JSL.L CODE_FL_82CAAE                      ; $829ACF |
  LDY.W #$8B8F                              ; $829AD3 |
  JSL.L CODE_FL_82B81C                      ; $829AD6 |
  LDA.W #$0011                              ; $829ADA |
  STA.B $5E,X                               ; $829ADD |
  INC.B $1A,X                               ; $829ADF |

CODE_829AE1:
  LDY.W #$0000                              ; $829AE1 |
  LDA.B $42                                 ; $829AE4 |
  LSR A                                     ; $829AE6 |
  BCC CODE_829AEC                           ; $829AE7 |
  LDY.W #$0042                              ; $829AE9 |

CODE_829AEC:
  STY.B $02,X                               ; $829AEC |
  JSL.L CODE_FL_82C8BC                      ; $829AEE |
  LDA.B $35,X                               ; $829AF2 |
  CMP.W #$02FF                              ; $829AF4 |
  BCS CODE_829B00                           ; $829AF7 |
  LDA.B $31,X                               ; $829AF9 |
  CMP.W #$0050                              ; $829AFB |
  BMI CODE_829B03                           ; $829AFE |

CODE_829B00:
  JMP.W CODE_FL_82CC9F                      ; $829B00 |

CODE_829B03:
  LDA.W #$0002                              ; $829B03 |
  JMP.W CODE_JP_82B835                      ; $829B06 |

CODE_829B09:
  JSL.L CODE_FL_82B8A7                      ; $829B09 |
  BIT.W #$0004                              ; $829B0D |
  BEQ CODE_829B19                           ; $829B10 |
  JSL.L CODE_FL_82B0E1                      ; $829B12 |
  JSR.W CODE_FN_829B2D                      ; $829B16 |

CODE_829B19:
  LDA.W #$000D                              ; $829B19 |
  JSL.L push_sound_queue                    ; $829B1C |
  LDA.W #$C015                              ; $829B20 |
  JSL.L CODE_FL_82CD96                      ; $829B23 |
  LDA.W #$0001                              ; $829B27 |
  STA.B $38,X                               ; $829B2A |
  RTL                                       ; $829B2C |

CODE_FN_829B2D:
  LDA.W #$0001                              ; $829B2D |
  STA.B $00                                 ; $829B30 |
  PHX                                       ; $829B32 |
  LDY.W #$0000                              ; $829B33 |
  LDX.W #$0AC0                              ; $829B36 |

CODE_829B39:
  LDA.B $18,X                               ; $829B39 |
  CMP.W #$0014                              ; $829B3B |
  BNE CODE_829B44                           ; $829B3E |
  LDA.B $00                                 ; $829B40 |
  STA.B $5C,X                               ; $829B42 |

CODE_829B44:
  LDA.B $16,X                               ; $829B44 |
  TAX                                       ; $829B46 |
  CMP.W #$0DC0                              ; $829B47 |
  BMI CODE_829B39                           ; $829B4A |
  PLX                                       ; $829B4C |
  RTS                                       ; $829B4D |

  dw CODE_829B54                            ; $829B4E |
  dw CODE_829B74                            ; $829B50 |
  dw CODE_829B96                            ; $829B52 |

CODE_829B54:
  LDY.W #$833C                              ; $829B54 |
  JSL.L CODE_FL_828AC3                      ; $829B57 |
  JSL.L CODE_FL_82CE4B                      ; $829B5B |
  JSR.W CODE_FN_82A2C1                      ; $829B5F |
  JSL.L CODE_FL_82CAAE                      ; $829B62 |
  LDY.W #$8B8F                              ; $829B66 |
  JSL.L CODE_FL_82B81C                      ; $829B69 |
  LDA.W #$0001                              ; $829B6D |
  STA.B $5E,X                               ; $829B70 |
  INC.B $1A,X                               ; $829B72 |

CODE_829B74:
  LDA.W #$000C                              ; $829B74 |
  JSL.L CODE_FL_82CB17                      ; $829B77 |
  JSL.L CODE_FL_82C8BC                      ; $829B7B |
  LDA.B $35,X                               ; $829B7F |
  CMP.W #$02FF                              ; $829B81 |
  BCS CODE_829B8D                           ; $829B84 |
  LDA.B $31,X                               ; $829B86 |
  CMP.W #$0050                              ; $829B88 |
  BMI CODE_829B90                           ; $829B8B |

CODE_829B8D:
  JMP.W CODE_FL_82CC9F                      ; $829B8D |

CODE_829B90:
  LDA.W #$0002                              ; $829B90 |
  JMP.W CODE_JP_82B835                      ; $829B93 |

CODE_829B96:
  LDA.B $5C,X                               ; $829B96 |
  AND.W #$00FF                              ; $829B98 |
  CMP.W #$0002                              ; $829B9B |
  BEQ CODE_829C07                           ; $829B9E |
  CMP.W #$0003                              ; $829BA0 |
  BEQ CODE_829BB7                           ; $829BA3 |
  CMP.W #$0004                              ; $829BA5 |
  BEQ CODE_829BB7                           ; $829BA8 |
  LDA.W #$000D                              ; $829BAA |
  JSL.L push_sound_queue                    ; $829BAD |
  LDA.W #$C015                              ; $829BB1 |
  JMP.W CODE_FL_82CD96                      ; $829BB4 |

CODE_829BB7:
  LDA.W #$009C                              ; $829BB7 |
  JSL.L CODE_FL_8089BD                      ; $829BBA |
  LDA.W #$801C                              ; $829BBE |
  JSL.L CODE_FL_82CD96                      ; $829BC1 |
  LDA.W #$9898                              ; $829BC5 |
  STA.B $04,X                               ; $829BC8 |
  LDA.W #$0001                              ; $829BCA |
  STA.B $3A,X                               ; $829BCD |
  LDA.W #$FF00                              ; $829BCF |
  STA.B $2A,X                               ; $829BD2 |
  LDA.B $2D,X                               ; $829BD4 |
  SEC                                       ; $829BD6 |
  SBC.W $0DED                               ; $829BD7 |
  CMP.W #$8000                              ; $829BDA |
  ROR A                                     ; $829BDD |
  CMP.W #$8000                              ; $829BDE |
  ROR A                                     ; $829BE1 |
  CMP.W #$FFF8                              ; $829BE2 |
  BPL CODE_829BEA                           ; $829BE5 |
  LDA.W #$FFF8                              ; $829BE7 |

CODE_829BEA:
  CMP.W #$0008                              ; $829BEA |
  BMI CODE_829BF2                           ; $829BED |
  LDA.W #$0008                              ; $829BEF |

CODE_829BF2:
  XBA                                       ; $829BF2 |
  STA.B $26,X                               ; $829BF3 |
  LDA.B $42                                 ; $829BF5 |
  AND.W #$000F                              ; $829BF7 |
  SEC                                       ; $829BFA |
  SBC.W #$000B                              ; $829BFB |
  XBA                                       ; $829BFE |
  CLC                                       ; $829BFF |
  ADC.B $28,X                               ; $829C00 |
  STA.B $28,X                               ; $829C02 |
  STZ.B $5E,X                               ; $829C04 |
  RTL                                       ; $829C06 |

CODE_829C07:
  JML.L CODE_FL_82CC9F                      ; $829C07 |

  LDA.W #$8031                              ; $829C0B |
  JSL.L CODE_FL_82CD2F                      ; $829C0E |
  BCC CODE_829BB7                           ; $829C12 |
  JSL.L CODE_FL_82CA9D                      ; $829C14 |
  LDA.B $28,X                               ; $829C18 |
  SEC                                       ; $829C1A |
  SBC.W #$0100                              ; $829C1B |
  STA.B $28,X                               ; $829C1E |
  JSL.L CODE_FL_82CE21                      ; $829C20 |
  JMP.W CODE_FL_82CC9F                      ; $829C24 |

  dw CODE_829C33                            ; $829C27 |
  dw CODE_829C46                            ; $829C29 |
  dw CODE_829C60                            ; $829C2B |
  dw CODE_JP_829C8B                         ; $829C2D |
  dw CODE_829C9D                            ; $829C2F |
  dw CODE_829CAA                            ; $829C31 |

CODE_829C33:
  LDA.W #$2020                              ; $829C33 |
  STA.B $04,X                               ; $829C36 |
  JSR.W CODE_FN_829CCE                      ; $829C38 |
  JSR.W CODE_FN_82A2D4                      ; $829C3B |
  JSR.W CODE_FN_82A357                      ; $829C3E |
  LDA.W #$0001                              ; $829C41 |
  STA.B $1A,X                               ; $829C44 |

CODE_829C46:
  JSL.L CODE_FL_82C8BC                      ; $829C46 |
  CMP.W #$0080                              ; $829C4A |
  BCC CODE_829C7E                           ; $829C4D |
  LDA.W #$0080                              ; $829C4F |
  STA.B $35,X                               ; $829C52 |
  LDA.W #$0008                              ; $829C54 |
  STA.B $3A,X                               ; $829C57 |
  LDA.W #$0002                              ; $829C59 |
  STA.B $1A,X                               ; $829C5C |
  BRA CODE_829C7E                           ; $829C5E |

CODE_829C60:
  DEC.B $3A,X                               ; $829C60 |
  BPL CODE_829C7E                           ; $829C62 |
  JSL.L CODE_FL_82CA81                      ; $829C64 |
  JSL.L CODE_FL_82CAA5                      ; $829C68 |
  LDA.W #$FF80                              ; $829C6C |
  STA.B $28,X                               ; $829C6F |
  STZ.B $5E,X                               ; $829C71 |
  INC.B $1A,X                               ; $829C73 |
  LDA.W #$0009                              ; $829C75 |
  JSL.L push_sound_queue                    ; $829C78 |
  BRA CODE_JP_829C8B                        ; $829C7C |

CODE_829C7E:
  JSR.W CODE_FN_82A187                      ; $829C7E |
  LDA.B $44,X                               ; $829C81 |
  BMI CODE_829C9C                           ; $829C83 |
  LDA.W #$0004                              ; $829C85 |
  JMP.W CODE_JP_82B835                      ; $829C88 |

CODE_JP_829C8B:
  JSL.L CODE_FL_82C8BC                      ; $829C8B |
  JSR.W CODE_FN_82A187                      ; $829C8F |
  LDA.B $35,X                               ; $829C92 |
  CMP.W #$0010                              ; $829C94 |
  BPL CODE_829C9C                           ; $829C97 |
  JMP.W CODE_FL_82CCEB                      ; $829C99 |

CODE_829C9C:
  RTL                                       ; $829C9C |

CODE_829C9D:
  LDA.W #$0004                              ; $829C9D |
  STA.B $44,X                               ; $829CA0 |
  JSL.L CODE_FL_829CE6                      ; $829CA2 |
  STZ.B $5C,X                               ; $829CA6 |
  INC.B $1A,X                               ; $829CA8 |

CODE_829CAA:
  JSL.L CODE_FL_82D1BF                      ; $829CAA |
  JSR.W CODE_FN_82A187                      ; $829CAE |
  DEC.B $3A,X                               ; $829CB1 |
  DEC.B $44,X                               ; $829CB3 |
  BPL CODE_829CCD                           ; $829CB5 |
  JSR.W CODE_FN_829CCE                      ; $829CB7 |
  LDA.B $35,X                               ; $829CBA |
  CMP.W #$0080                              ; $829CBC |
  BEQ CODE_829CC8                           ; $829CBF |
  LDA.W #$0001                              ; $829CC1 |
  STA.B $1A,X                               ; $829CC4 |
  BRA CODE_829CCD                           ; $829CC6 |

CODE_829CC8:
  LDA.W #$0002                              ; $829CC8 |
  STA.B $1A,X                               ; $829CCB |

CODE_829CCD:
  RTL                                       ; $829CCD |

CODE_FN_829CCE:
  LDA.B $42,X                               ; $829CCE |
  LDY.W #$0002                              ; $829CD0 |
  CMP.W #$0030                              ; $829CD3 |
  BMI CODE_829CE3                           ; $829CD6 |
  LDY.W #$0003                              ; $829CD8 |
  CMP.W #$0070                              ; $829CDB |
  BMI CODE_829CE3                           ; $829CDE |
  LDY.W #$0004                              ; $829CE0 |

CODE_829CE3:
  STY.B $5E,X                               ; $829CE3 |
  RTS                                       ; $829CE5 |

CODE_FL_829CE6:
  JSL.L CODE_FL_82B8A7                      ; $829CE6 |
  BIT.W #$0008                              ; $829CEA |
  BNE CODE_829D02                           ; $829CED |
  BIT.W #$0005                              ; $829CEF |
  BNE CODE_829D10                           ; $829CF2 |
  LDA.W #$000D                              ; $829CF4 |
  JSL.L push_sound_queue                    ; $829CF7 |
  LDY.W #$0000                              ; $829CFB |
  JML.L CODE_FL_82B099                      ; $829CFE |

CODE_829D02:
  LDA.W #$009C                              ; $829D02 |
  JSL.L CODE_FL_8089BD                      ; $829D05 |
  LDY.W #$0001                              ; $829D09 |
  JML.L CODE_JL_82B0D7                      ; $829D0C |

CODE_829D10:
  LDA.W #$0036                              ; $829D10 |
  JSL.L push_sound_queue                    ; $829D13 |
  LDY.W #$0000                              ; $829D17 |
  JML.L CODE_JL_82B0D7                      ; $829D1A |

  dw CODE_829D26                            ; $829D1E |
  dw CODE_829D3E                            ; $829D20 |
  dw CODE_829D64                            ; $829D22 |
  dw CODE_829D99                            ; $829D24 |

CODE_829D26:
  LDA.W #$2020                              ; $829D26 |
  STA.B $04,X                               ; $829D29 |
  JSR.W CODE_FN_82A2D4                      ; $829D2B |
  LDA.W #$0008                              ; $829D2E |
  STA.B $5E,X                               ; $829D31 |
  JSR.W CODE_FN_82A357                      ; $829D33 |
  LDA.W #$8000                              ; $829D36 |
  STA.W $1C7C                               ; $829D39 |
  INC.B $1A,X                               ; $829D3C |

CODE_829D3E:
  JSL.L CODE_FL_82C8BC                      ; $829D3E |
  LDA.B $35,X                               ; $829D42 |
  CMP.W #$0080                              ; $829D44 |
  BCC CODE_829D92                           ; $829D47 |
  LDA.W #$0080                              ; $829D49 |
  STA.B $35,X                               ; $829D4C |
  LDA.B $3A,X                               ; $829D4E |
  BNE CODE_829D57                           ; $829D50 |
  LDA.W #$0010                              ; $829D52 |
  STA.B $3A,X                               ; $829D55 |

CODE_829D57:
  JSL.L CODE_FL_82C32F                      ; $829D57 |
  LDY.W #$8B95                              ; $829D5B |
  JSL.L CODE_FL_82B81C                      ; $829D5E |
  INC.B $1A,X                               ; $829D62 |

CODE_829D64:
  JSL.L CODE_FL_82B91D                      ; $829D64 |
  BEQ CODE_829D70                           ; $829D68 |
  JSL.L CODE_FL_829CE6                      ; $829D6A |
  STZ.B $5C,X                               ; $829D6E |

CODE_829D70:
  LDA.W #$0001                              ; $829D70 |
  STA.W $1C7C                               ; $829D73 |
  DEC.B $3A,X                               ; $829D76 |
  BPL CODE_829D92                           ; $829D78 |
  JSL.L CODE_FL_82CA81                      ; $829D7A |
  JSL.L CODE_FL_82CAA5                      ; $829D7E |
  LDA.W #$FF80                              ; $829D82 |
  STA.B $28,X                               ; $829D85 |
  STZ.B $5E,X                               ; $829D87 |
  INC.B $1A,X                               ; $829D89 |
  LDA.W #$0009                              ; $829D8B |
  JSL.L push_sound_queue                    ; $829D8E |

CODE_829D92:
  JSR.W CODE_FN_829D9F                      ; $829D92 |
  JSR.W CODE_FN_82A187                      ; $829D95 |
  RTL                                       ; $829D98 |

CODE_829D99:
  JSR.W CODE_FN_829D9F                      ; $829D99 |
  JMP.W CODE_JP_829C8B                      ; $829D9C |

CODE_FN_829D9F:
  LDA.B $42                                 ; $829D9F |
  LSR A                                     ; $829DA1 |
  BCS CODE_829DAC                           ; $829DA2 |
  LDY.W #$0041                              ; $829DA4 |
  LDA.W #$0042                              ; $829DA7 |
  BRA CODE_829DB2                           ; $829DAA |

CODE_829DAC:
  LDY.W #$0043                              ; $829DAC |
  LDA.W #$0043                              ; $829DAF |

CODE_829DB2:
  STY.B $02,X                               ; $829DB2 |
  STA.W $0062,X                             ; $829DB4 |
  STA.W $00C2,X                             ; $829DB7 |
  STA.W $0122,X                             ; $829DBA |
  RTS                                       ; $829DBD |

  dw CODE_829DCC                            ; $829DBE |
  dw CODE_829DDB                            ; $829DC0 |
  dw CODE_829DF6                            ; $829DC2 |
  dw CODE_829E05                            ; $829DC4 |
  dw CODE_829E08                            ; $829DC6 |
  dw CODE_829E22                            ; $829DC8 |
  dw CODE_829E38                            ; $829DCA |

CODE_829DCC:
  STZ.B $04,X                               ; $829DCC |
  LDA.W #$0005                              ; $829DCE |
  STA.B $5E,X                               ; $829DD1 |
  JSR.W CODE_FN_82A2D4                      ; $829DD3 |
  JSR.W CODE_FN_82A357                      ; $829DD6 |
  INC.B $1A,X                               ; $829DD9 |

CODE_829DDB:
  JSL.L CODE_FL_82C8BC                      ; $829DDB |
  LDA.B $35,X                               ; $829DDF |
  CMP.W #$0080                              ; $829DE1 |
  BCC CODE_829DED                           ; $829DE4 |
  LDA.W #$0080                              ; $829DE6 |
  STA.B $35,X                               ; $829DE9 |
  INC.B $1A,X                               ; $829DEB |

CODE_829DED:
  JSR.W CODE_FN_82A187                      ; $829DED |
  LDA.W #$0004                              ; $829DF0 |
  JMP.W CODE_JP_82B835                      ; $829DF3 |

CODE_829DF6:
  JSL.L CODE_FL_82CA9D                      ; $829DF6 |
  STZ.B $5E,X                               ; $829DFA |
  LDA.W #$0009                              ; $829DFC |
  JSL.L push_sound_queue                    ; $829DFF |
  INC.B $1A,X                               ; $829E03 |

CODE_829E05:
  JMP.W CODE_JP_829C8B                      ; $829E05 |

CODE_829E08:
  STZ.B $5E,X                               ; $829E08 |
  JSL.L CODE_FL_829E47                      ; $829E0A |
  JSL.L CODE_FL_82CA9D                      ; $829E0E |
  ASL.B $26,X                               ; $829E12 |
  ASL.B $28,X                               ; $829E14 |
  ASL.B $2A,X                               ; $829E16 |
  LDA.W #$0003                              ; $829E18 |
  STA.B $1A,X                               ; $829E1B |
  STZ.B $5E,X                               ; $829E1D |
  STZ.B $5C,X                               ; $829E1F |
  RTL                                       ; $829E21 |

CODE_829E22:
  LDA.W #$F800                              ; $829E22 |
  STA.B $28,X                               ; $829E25 |
  LDA.W #$FE00                              ; $829E27 |
  STA.B $26,X                               ; $829E2A |
  LDA.W #$FC00                              ; $829E2C |
  STA.B $2A,X                               ; $829E2F |
  LDA.W #$0010                              ; $829E31 |
  STA.B $3A,X                               ; $829E34 |
  INC.B $1A,X                               ; $829E36 |

CODE_829E38:
  JSL.L CODE_FL_82C8BC                      ; $829E38 |
  JSR.W CODE_FN_82A187                      ; $829E3C |
  DEC.B $3A,X                               ; $829E3F |
  BPL CODE_829E46                           ; $829E41 |
  JMP.W CODE_FL_82CCEB                      ; $829E43 |

CODE_829E46:
  RTL                                       ; $829E46 |

CODE_FL_829E47:
  JSL.L CODE_FL_82B8A7                      ; $829E47 |
  BIT.W #$0001                              ; $829E4B |
  BNE CODE_829E9B                           ; $829E4E |
  BIT.W #$0008                              ; $829E50 |
  BNE CODE_829E6B                           ; $829E53 |
  BIT.W #$0004                              ; $829E55 |
  BNE CODE_829E7C                           ; $829E58 |
  STZ.W $1C3C                               ; $829E5A |
  LDA.W #$001B                              ; $829E5D |
  JSL.L push_sound_queue                    ; $829E60 |
  LDY.W #$0000                              ; $829E64 |
  JML.L CODE_JL_82B09E                      ; $829E67 |

CODE_829E6B:
  STZ.W $1C3C                               ; $829E6B |
  LDA.W #$009C                              ; $829E6E |
  JSL.L CODE_FL_8089BD                      ; $829E71 |
  LDY.W #$0001                              ; $829E75 |
  JML.L CODE_JL_82B0DC                      ; $829E78 |

CODE_829E7C:
  JSL.L CODE_FL_82B91D                      ; $829E7C |
  CPY.W #$0DC0                              ; $829E80 |
  BNE CODE_829E8A                           ; $829E83 |
  INC.W $1C3C                               ; $829E85 |
  BRA CODE_829E8D                           ; $829E88 |

CODE_829E8A:
  STZ.W $1C3C                               ; $829E8A |

CODE_829E8D:
  LDA.W #$0036                              ; $829E8D |
  JSL.L push_sound_queue                    ; $829E90 |
  LDY.W #$0000                              ; $829E94 |
  JML.L CODE_JL_82B0DC                      ; $829E97 |

CODE_829E9B:
  STZ.W $1C3C                               ; $829E9B |
  LDA.W #$009C                              ; $829E9E |
  JSL.L CODE_FL_8089BD                      ; $829EA1 |
  INC.B $1A,X                               ; $829EA5 |
  STZ.W $1C3C                               ; $829EA7 |
  LDY.W #$0001                              ; $829EAA |
  JSL.L CODE_FL_82B0E1                      ; $829EAD |
  PHP                                       ; $829EB1 |
  PLA                                       ; $829EB2 |
  PLA                                       ; $829EB3 |
  RTL                                       ; $829EB4 |

  dw CODE_829EC3                            ; $829EB5 |
  dw CODE_829ED3                            ; $829EB7 |
  dw CODE_829EFC                            ; $829EB9 |
  dw CODE_JP_829C8B                         ; $829EBB |
  dw CODE_829F33                            ; $829EBD |
  dw CODE_829E22                            ; $829EBF |
  dw CODE_829E38                            ; $829EC1 |

CODE_829EC3:
  STZ.B $04,X                               ; $829EC3 |
  LDA.W #$0002                              ; $829EC5 |
  STA.W $1C70                               ; $829EC8 |
  JSR.W CODE_FN_82A2D4                      ; $829ECB |
  JSR.W CODE_FN_82A357                      ; $829ECE |
  INC.B $1A,X                               ; $829ED1 |

CODE_829ED3:
  JSL.L CODE_FL_82C8BC                      ; $829ED3 |
  LDA.B $35,X                               ; $829ED7 |
  CMP.W #$0080                              ; $829ED9 |
  BCC CODE_829EF8                           ; $829EDC |
  JSL.L CODE_FL_82CA9D                      ; $829EDE |
  LDA.B $2D,X                               ; $829EE2 |
  STA.B $42,X                               ; $829EE4 |
  LDA.B $31,X                               ; $829EE6 |
  STA.B $44,X                               ; $829EE8 |
  STZ.B $48,X                               ; $829EEA |
  LDA.W #$0030                              ; $829EEC |
  STA.B $3A,X                               ; $829EEF |
  LDA.W #$0009                              ; $829EF1 |
  STA.B $5E,X                               ; $829EF4 |
  INC.B $1A,X                               ; $829EF6 |

CODE_829EF8:
  JSR.W CODE_FN_82A187                      ; $829EF8 |
  RTL                                       ; $829EFB |

CODE_829EFC:
  LDA.W #$0009                              ; $829EFC |
  STA.B $5E,X                               ; $829EFF |

CODE_829F01:
  LDA.W #$0020                              ; $829F01 |
  JSR.W CODE_FN_829F56                      ; $829F04 |
  LDA.W $1C78                               ; $829F07 |
  BNE CODE_829F1B                           ; $829F0A |
  DEC.B $3A,X                               ; $829F0C |
  BNE CODE_829F2D                           ; $829F0E |
  LDA.B $48,X                               ; $829F10 |
  BEQ CODE_829F1B                           ; $829F12 |
  LDY.W #$0000                              ; $829F14 |
  JSL.L CODE_FL_82B0E1                      ; $829F17 |

CODE_829F1B:
  STZ.B $3A,X                               ; $829F1B |
  STZ.B $5E,X                               ; $829F1D |
  STZ.W $1C70                               ; $829F1F |
  INC.B $1A,X                               ; $829F22 |
  LDA.B $42,X                               ; $829F24 |
  STA.B $2D,X                               ; $829F26 |
  LDA.B $44,X                               ; $829F28 |
  STA.B $31,X                               ; $829F2A |
  RTL                                       ; $829F2C |

CODE_829F2D:
  LDA.W #$0004                              ; $829F2D |
  JMP.W CODE_JP_82B835                      ; $829F30 |

CODE_829F33:
  DEC.B $1A,X                               ; $829F33 |
  DEC.B $1A,X                               ; $829F35 |
  LDY.W #$0001                              ; $829F37 |
  JSL.L CODE_FL_82B14B                      ; $829F3A |
  LDA.W #$000D                              ; $829F3E |
  JSL.L push_sound_queue                    ; $829F41 |
  JSL.L CODE_FL_82B91D                      ; $829F45 |
  CPY.W #$0DC0                              ; $829F49 |
  BNE CODE_829F50                           ; $829F4C |
  INC.B $48,X                               ; $829F4E |

CODE_829F50:
  STZ.B $5C,X                               ; $829F50 |
  STZ.B $5E,X                               ; $829F52 |
  BRA CODE_829F01                           ; $829F54 |

CODE_FN_829F56:
  CLC                                       ; $829F56 |
  ADC.B $46,X                               ; $829F57 |
  AND.W #$01FF                              ; $829F59 |
  STA.B $46,X                               ; $829F5C |
  LDY.W #$0020                              ; $829F5E |
  JSL.L CODE_FL_8AB51A                      ; $829F61 |
  LDA.B $42,X                               ; $829F65 |
  CLC                                       ; $829F67 |
  ADC.B $01                                 ; $829F68 |
  STA.B $2D,X                               ; $829F6A |
  LDA.B $44,X                               ; $829F6C |
  CLC                                       ; $829F6E |
  ADC.B $05                                 ; $829F6F |
  STA.B $31,X                               ; $829F71 |
  JSR.W CODE_FN_82A187                      ; $829F73 |
  LDA.W #$0001                              ; $829F76 |
  STA.W $1C7C                               ; $829F79 |
  RTS                                       ; $829F7C |

  dw CODE_829F8B                            ; $829F7D |
  dw CODE_829FB9                            ; $829F7F |
  dw CODE_829FF0                            ; $829F81 |
  dw CODE_82A00D                            ; $829F83 |
  dw CODE_82A02E                            ; $829F85 |
  dw CODE_829E22                            ; $829F87 |
  dw CODE_829E38                            ; $829F89 |

CODE_829F8B:
  LDA.W #$0006                              ; $829F8B |
  STA.B $5E,X                               ; $829F8E |
  LDA.W #$2020                              ; $829F90 |
  STA.B $04,X                               ; $829F93 |
  LDA.W #$1200                              ; $829F95 |
  STA.B $26,X                               ; $829F98 |
  LDA.W #$0B00                              ; $829F9A |
  STA.B $28,X                               ; $829F9D |
  LDA.W #$1000                              ; $829F9F |
  STA.B $2A,X                               ; $829FA2 |
  LDA.W #$FFD0                              ; $829FA4 |
  STA.B $2D,X                               ; $829FA7 |
  LDA.W #$FFD8                              ; $829FA9 |
  STA.B $31,X                               ; $829FAC |
  LDA.W #$0040                              ; $829FAE |
  STA.B $35,X                               ; $829FB1 |
  JSR.W CODE_FN_82A357                      ; $829FB3 |
  INC.B $1A,X                               ; $829FB6 |
  RTL                                       ; $829FB8 |

CODE_829FB9:
  LDA.B $35,X                               ; $829FB9 |
  CMP.W #$0070                              ; $829FBB |
  BMI CODE_829FDE                           ; $829FBE |
  LDA.B $42,X                               ; $829FC0 |
  BNE CODE_829FF0                           ; $829FC2 |
  LDA.B $2D,X                               ; $829FC4 |
  CMP.W #$0020                              ; $829FC6 |
  BMI CODE_829FCF                           ; $829FC9 |
  INC.B $1A,X                               ; $829FCB |
  BRA CODE_829FE4                           ; $829FCD |

CODE_829FCF:
  JSL.L CODE_FL_82C897                      ; $829FCF |
  LDA.B $35,X                               ; $829FD3 |
  CMP.W #$0080                              ; $829FD5 |
  BPL CODE_829FE4                           ; $829FD8 |
  INC.B $35,X                               ; $829FDA |
  BRA CODE_829FE4                           ; $829FDC |

CODE_829FDE:
  JSL.L CODE_FL_82C8C4                      ; $829FDE |
  INC.B $2D,X                               ; $829FE2 |

CODE_829FE4:
  LDY.W #$8840                              ; $829FE4 |
  JSR.W CODE_FN_82A23C                      ; $829FE7 |
  LDA.W #$0004                              ; $829FEA |
  JMP.W CODE_JP_82B835                      ; $829FED |

CODE_829FF0:
  LDA.W #$F700                              ; $829FF0 |
  STA.B $26,X                               ; $829FF3 |
  LDA.W #$0280                              ; $829FF5 |
  STA.B $28,X                               ; $829FF8 |
  LDA.W #$F600                              ; $829FFA |
  STA.B $2A,X                               ; $829FFD |
  STZ.B $5E,X                               ; $829FFF |
  LDA.W #$0009                              ; $82A001 |
  JSL.L push_sound_queue                    ; $82A004 |
  LDA.W #$0003                              ; $82A008 |
  STA.B $1A,X                               ; $82A00B |

CODE_82A00D:
  LDA.B $42,X                               ; $82A00D |
  BEQ CODE_82A019                           ; $82A00F |
  JSL.L CODE_FL_82C8BC                      ; $82A011 |
  JSL.L CODE_FL_82C8BC                      ; $82A015 |

CODE_82A019:
  JSL.L CODE_FL_82C8BC                      ; $82A019 |
  LDY.W #$8840                              ; $82A01D |
  JSR.W CODE_FN_82A23C                      ; $82A020 |
  LDA.B $35,X                               ; $82A023 |
  CMP.W #$0030                              ; $82A025 |
  BPL CODE_82A02D                           ; $82A028 |
  JMP.W CODE_FL_82CCEB                      ; $82A02A |

CODE_82A02D:
  RTL                                       ; $82A02D |

CODE_82A02E:
  JSL.L CODE_FL_829E47                      ; $82A02E |
  STZ.B $5E,X                               ; $82A032 |
  STZ.B $5C,X                               ; $82A034 |
  ASL.B $26,X                               ; $82A036 |
  ASL.B $28,X                               ; $82A038 |
  ASL.B $2A,X                               ; $82A03A |
  LDA.W #$0001                              ; $82A03C |
  STA.B $1A,X                               ; $82A03F |
  RTL                                       ; $82A041 |

  dw CODE_82A04E                            ; $82A042 |
  dw CODE_FL_82A07C                         ; $82A044 |
  dw CODE_82A0BD                            ; $82A046 |
  dw CODE_82A0D8                            ; $82A048 |
  dw CODE_829E22                            ; $82A04A |
  dw CODE_829E38                            ; $82A04C |

CODE_82A04E:
  LDA.W #$0007                              ; $82A04E |
  STA.B $5E,X                               ; $82A051 |
  LDA.W #$0400                              ; $82A053 |
  STA.B $26,X                               ; $82A056 |
  LDA.W #$FFE0                              ; $82A058 |
  STA.B $2D,X                               ; $82A05B |
  LDA.W #$8846                              ; $82A05D |
  STA.B $44,X                               ; $82A060 |

CODE_JP_82A062:
  LDA.W #$F000                              ; $82A062 |
  STA.B $28,X                               ; $82A065 |
  LDA.W #$0800                              ; $82A067 |
  STA.B $2A,X                               ; $82A06A |
  LDA.W #$0040                              ; $82A06C |
  STA.B $31,X                               ; $82A06F |
  LDA.W #$0040                              ; $82A071 |
  STA.B $35,X                               ; $82A074 |
  JSR.W CODE_FN_82A357                      ; $82A076 |
  INC.B $1A,X                               ; $82A079 |
  RTL                                       ; $82A07B |

CODE_FL_82A07C:
  LDA.B $35,X                               ; $82A07C |
  CMP.W #$0080                              ; $82A07E |
  BPL CODE_82A089                           ; $82A081 |
  JSL.L CODE_FL_82C8BC                      ; $82A083 |
  BRA CODE_82A08D                           ; $82A087 |

CODE_82A089:
  JSL.L CODE_FL_82C897                      ; $82A089 |

CODE_82A08D:
  LDY.B $44,X                               ; $82A08D |
  JSR.W CODE_FN_82A23C                      ; $82A08F |
  LDA.B $31,X                               ; $82A092 |
  CMP.W #$FFC0                              ; $82A094 |
  BPL CODE_82A0B7                           ; $82A097 |
  JSL.L CODE_FL_82CA81                      ; $82A099 |
  LDA.W #$0A00                              ; $82A09D |
  STA.B $28,X                               ; $82A0A0 |
  LDA.W #$F800                              ; $82A0A2 |
  STA.B $2A,X                               ; $82A0A5 |
  LDA.W #$0008                              ; $82A0A7 |
  STA.B $3A,X                               ; $82A0AA |
  STZ.B $5E,X                               ; $82A0AC |
  LDA.W #$0009                              ; $82A0AE |
  JSL.L push_sound_queue                    ; $82A0B1 |
  INC.B $1A,X                               ; $82A0B5 |

CODE_82A0B7:
  LDA.W #$0003                              ; $82A0B7 |
  JMP.W CODE_JP_82B835                      ; $82A0BA |

CODE_82A0BD:
  DEC.B $3A,X                               ; $82A0BD |
  BPL CODE_82A0D7                           ; $82A0BF |

CODE_FL_82A0C1:
  JSL.L CODE_FL_82C8BC                      ; $82A0C1 |
  LDY.B $44,X                               ; $82A0C5 |
  JSR.W CODE_FN_82A23C                      ; $82A0C7 |
  LDA.B $35,X                               ; $82A0CA |
  CMP.W #$0040                              ; $82A0CC |
  BPL CODE_82A0D7                           ; $82A0CF |
  STZ.W $1C3C                               ; $82A0D1 |
  JMP.W CODE_FL_82CCEB                      ; $82A0D4 |

CODE_82A0D7:
  RTL                                       ; $82A0D7 |

CODE_82A0D8:
  INC.B $42,X                               ; $82A0D8 |
  JSL.L CODE_FL_829E47                      ; $82A0DA |
  STZ.B $5E,X                               ; $82A0DE |
  STZ.B $5C,X                               ; $82A0E0 |
  LDA.W #$0001                              ; $82A0E2 |
  STA.B $1A,X                               ; $82A0E5 |
  RTL                                       ; $82A0E7 |

  dw CODE_82A0F0                            ; $82A0E8 |
  dw CODE_82A111                            ; $82A0EA |
  dw CODE_82A11F                            ; $82A0EC |
  dw CODE_82A14D                            ; $82A0EE |

CODE_82A0F0:
  LDA.W #$000A                              ; $82A0F0 |
  STA.B $5E,X                               ; $82A0F3 |
  LDA.W #$0040                              ; $82A0F5 |
  STA.B $42,X                               ; $82A0F8 |
  LDA.W #$2020                              ; $82A0FA |
  STA.B $04,X                               ; $82A0FD |
  LDA.W #$FC00                              ; $82A0FF |
  STA.B $26,X                               ; $82A102 |
  LDA.W #$0020                              ; $82A104 |
  STA.B $2D,X                               ; $82A107 |
  LDA.W #$884C                              ; $82A109 |
  STA.B $44,X                               ; $82A10C |
  JMP.W CODE_JP_82A062                      ; $82A10E |

CODE_82A111:
  LDA.W #$0001                              ; $82A111 |
  STA.W $1C7C                               ; $82A114 |
  JSL.L CODE_FL_82A07C                      ; $82A117 |
  JSR.W CODE_FN_829D9F                      ; $82A11B |
  RTL                                       ; $82A11E |

CODE_82A11F:
  LDA.W #$0001                              ; $82A11F |
  STA.W $1C7C                               ; $82A122 |
  DEC.B $42,X                               ; $82A125 |
  BPL CODE_82A131                           ; $82A127 |
  JSR.W CODE_FN_829D9F                      ; $82A129 |
  JSL.L CODE_FL_82A0C1                      ; $82A12C |
  RTL                                       ; $82A130 |

CODE_82A131:
  LDA.B $42                                 ; $82A131 |
  AND.W #$0004                              ; $82A133 |
  DEC A                                     ; $82A136 |
  DEC A                                     ; $82A137 |
  TAY                                       ; $82A138 |
  CLC                                       ; $82A139 |
  ADC.B $2D,X                               ; $82A13A |
  STA.B $2D,X                               ; $82A13C |
  TYA                                       ; $82A13E |
  CLC                                       ; $82A13F |
  ADC.B $31,X                               ; $82A140 |
  STA.B $31,X                               ; $82A142 |
  LDY.B $44,X                               ; $82A144 |
  JSR.W CODE_FN_82A23C                      ; $82A146 |
  JSR.W CODE_FN_829D9F                      ; $82A149 |
  RTL                                       ; $82A14C |

CODE_82A14D:
  JSL.L CODE_FL_82B8A7                      ; $82A14D |
  BIT.W #$000D                              ; $82A151 |
  BNE CODE_82A16F                           ; $82A154 |
  JSL.L CODE_FL_82B91D                      ; $82A156 |
  CPY.W #$0DC0                              ; $82A15A |
  BEQ CODE_82A16F                           ; $82A15D |
  LDY.W #$0002                              ; $82A15F |
  JSL.L CODE_FL_82B099                      ; $82A162 |
  LDA.W #$000D                              ; $82A166 |
  JSL.L push_sound_queue                    ; $82A169 |
  BRA CODE_82A17D                           ; $82A16D |

CODE_82A16F:
  LDY.W #$0002                              ; $82A16F |
  JSL.L CODE_FL_82B0E1                      ; $82A172 |
  LDA.W #$0044                              ; $82A176 |
  JSL.L CODE_FL_8089BD                      ; $82A179 |

CODE_82A17D:
  STZ.B $5E,X                               ; $82A17D |
  STZ.B $5C,X                               ; $82A17F |
  LDA.W #$0001                              ; $82A181 |
  STA.B $1A,X                               ; $82A184 |
  RTL                                       ; $82A186 |

CODE_FN_82A187:
  LDA.B $2D,X                               ; $82A187 |
  SEC                                       ; $82A189 |
  SBC.B $3C,X                               ; $82A18A |
  CMP.W #$8000                              ; $82A18C |
  ROR A                                     ; $82A18F |
  CMP.W #$8000                              ; $82A190 |
  ROR A                                     ; $82A193 |
  STA.B $06                                 ; $82A194 |
  CMP.W #$8000                              ; $82A196 |
  ROR A                                     ; $82A199 |
  CLC                                       ; $82A19A |
  ADC.B $06                                 ; $82A19B |
  STA.B $06                                 ; $82A19D |
  CLC                                       ; $82A19F |
  ADC.B $3C,X                               ; $82A1A0 |
  STA.W $008D,X                             ; $82A1A2 |
  LDA.B $06                                 ; $82A1A5 |
  CMP.W #$8000                              ; $82A1A7 |
  ROR A                                     ; $82A1AA |
  STA.B $06                                 ; $82A1AB |
  CLC                                       ; $82A1AD |
  ADC.B $3C,X                               ; $82A1AE |
  STA.W $00ED,X                             ; $82A1B0 |
  LDA.B $06                                 ; $82A1B3 |
  CMP.W #$8000                              ; $82A1B5 |
  ROR A                                     ; $82A1B8 |
  CLC                                       ; $82A1B9 |
  ADC.B $3C,X                               ; $82A1BA |
  STA.W $014D,X                             ; $82A1BC |
  LDA.B $31,X                               ; $82A1BF |
  SEC                                       ; $82A1C1 |
  SBC.B $3E,X                               ; $82A1C2 |
  CMP.W #$8000                              ; $82A1C4 |
  ROR A                                     ; $82A1C7 |
  CMP.W #$8000                              ; $82A1C8 |
  ROR A                                     ; $82A1CB |
  STA.B $06                                 ; $82A1CC |
  CMP.W #$8000                              ; $82A1CE |
  ROR A                                     ; $82A1D1 |
  CLC                                       ; $82A1D2 |
  ADC.B $06                                 ; $82A1D3 |
  STA.B $06                                 ; $82A1D5 |
  CLC                                       ; $82A1D7 |
  ADC.B $3E,X                               ; $82A1D8 |
  STA.W $0091,X                             ; $82A1DA |
  LDA.B $06                                 ; $82A1DD |
  CMP.W #$8000                              ; $82A1DF |
  ROR A                                     ; $82A1E2 |
  STA.B $06                                 ; $82A1E3 |
  CLC                                       ; $82A1E5 |
  ADC.B $3E,X                               ; $82A1E6 |
  STA.W $00F1,X                             ; $82A1E8 |
  LDA.B $06                                 ; $82A1EB |
  CMP.W #$8000                              ; $82A1ED |
  ROR A                                     ; $82A1F0 |
  CLC                                       ; $82A1F1 |
  ADC.B $3E,X                               ; $82A1F2 |
  STA.W $0151,X                             ; $82A1F4 |
  LDA.B $35,X                               ; $82A1F7 |
  CMP.W #$0080                              ; $82A1F9 |
  BEQ CODE_82A205                           ; $82A1FC |
  BMI CODE_82A205                           ; $82A1FE |
  LDA.W #$0080                              ; $82A200 |
  STA.B $35,X                               ; $82A203 |

CODE_82A205:
  SEC                                       ; $82A205 |
  SBC.B $40,X                               ; $82A206 |
  CMP.W #$8000                              ; $82A208 |
  ROR A                                     ; $82A20B |
  CMP.W #$8000                              ; $82A20C |
  ROR A                                     ; $82A20F |
  STA.B $06                                 ; $82A210 |
  CMP.W #$8000                              ; $82A212 |
  ROR A                                     ; $82A215 |
  CLC                                       ; $82A216 |
  ADC.B $06                                 ; $82A217 |
  STA.B $06                                 ; $82A219 |
  CLC                                       ; $82A21B |
  ADC.B $40,X                               ; $82A21C |
  STA.W $0095,X                             ; $82A21E |
  LDA.B $06                                 ; $82A221 |
  CMP.W #$8000                              ; $82A223 |
  ROR A                                     ; $82A226 |
  STA.B $06                                 ; $82A227 |
  CLC                                       ; $82A229 |
  ADC.B $40,X                               ; $82A22A |
  STA.W $00F5,X                             ; $82A22C |
  LDA.B $06                                 ; $82A22F |
  CMP.W #$8000                              ; $82A231 |
  ROR A                                     ; $82A234 |
  CLC                                       ; $82A235 |
  ADC.B $40,X                               ; $82A236 |
  STA.W $0155,X                             ; $82A238 |
  RTS                                       ; $82A23B |

CODE_FN_82A23C:
  LDA.B $2D,X                               ; $82A23C |
  CLC                                       ; $82A23E |
  ADC.W $0000,Y                             ; $82A23F |
  STA.W $008D,X                             ; $82A242 |
  SEC                                       ; $82A245 |
  SBC.B $3C,X                               ; $82A246 |
  CMP.W #$8000                              ; $82A248 |
  ROR A                                     ; $82A24B |
  CMP.W #$8000                              ; $82A24C |
  ROR A                                     ; $82A24F |
  STA.B $06                                 ; $82A250 |
  CLC                                       ; $82A252 |
  ADC.B $3C,X                               ; $82A253 |
  STA.W $00ED,X                             ; $82A255 |
  LDA.B $06                                 ; $82A258 |
  CMP.W #$8000                              ; $82A25A |
  ROR A                                     ; $82A25D |
  CMP.W #$8000                              ; $82A25E |
  ROR A                                     ; $82A261 |
  CLC                                       ; $82A262 |
  ADC.B $3C,X                               ; $82A263 |
  STA.W $014D,X                             ; $82A265 |
  LDA.B $31,X                               ; $82A268 |
  CLC                                       ; $82A26A |
  ADC.W $0002,Y                             ; $82A26B |
  STA.W $0091,X                             ; $82A26E |
  SEC                                       ; $82A271 |
  SBC.B $3E,X                               ; $82A272 |
  CMP.W #$8000                              ; $82A274 |
  ROR A                                     ; $82A277 |
  CMP.W #$8000                              ; $82A278 |
  ROR A                                     ; $82A27B |
  STA.B $06                                 ; $82A27C |
  CLC                                       ; $82A27E |
  ADC.B $3E,X                               ; $82A27F |
  STA.W $00F1,X                             ; $82A281 |
  LDA.B $06                                 ; $82A284 |
  CMP.W #$8000                              ; $82A286 |
  ROR A                                     ; $82A289 |
  CMP.W #$8000                              ; $82A28A |
  ROR A                                     ; $82A28D |
  CLC                                       ; $82A28E |
  ADC.B $3E,X                               ; $82A28F |
  STA.W $0151,X                             ; $82A291 |
  LDA.B $35,X                               ; $82A294 |
  CLC                                       ; $82A296 |
  ADC.W $0004,Y                             ; $82A297 |
  STA.W $0095,X                             ; $82A29A |
  SEC                                       ; $82A29D |
  SBC.B $40,X                               ; $82A29E |
  CMP.W #$8000                              ; $82A2A0 |
  ROR A                                     ; $82A2A3 |
  CMP.W #$8000                              ; $82A2A4 |
  ROR A                                     ; $82A2A7 |
  STA.B $06                                 ; $82A2A8 |
  CLC                                       ; $82A2AA |
  ADC.B $40,X                               ; $82A2AB |
  STA.W $00F5,X                             ; $82A2AD |
  LDA.B $06                                 ; $82A2B0 |
  CMP.W #$8000                              ; $82A2B2 |
  ROR A                                     ; $82A2B5 |
  CMP.W #$8000                              ; $82A2B6 |
  ROR A                                     ; $82A2B9 |
  CLC                                       ; $82A2BA |
  ADC.B $40,X                               ; $82A2BB |
  STA.W $0155,X                             ; $82A2BD |
  RTS                                       ; $82A2C0 |

CODE_FN_82A2C1:
  LDY.B $38,X                               ; $82A2C1 |
  LDA.W #$0800                              ; $82A2C3 |
  STA.B $2A,X                               ; $82A2C6 |
  JSR.W CODE_FN_82A323                      ; $82A2C8 |
  LDA.B $28,X                               ; $82A2CB |
  SEC                                       ; $82A2CD |
  SBC.W #$0100                              ; $82A2CE |
  STA.B $28,X                               ; $82A2D1 |
  RTS                                       ; $82A2D3 |

CODE_FN_82A2D4:
  LDY.B $38,X                               ; $82A2D4 |
  LDA.W #$1000                              ; $82A2D6 |
  STA.B $2A,X                               ; $82A2D9 |
  JSR.W CODE_FN_82A31E                      ; $82A2DB |
  LDA.B $28,X                               ; $82A2DE |
  SEC                                       ; $82A2E0 |
  SBC.W #$0100                              ; $82A2E1 |
  STA.B $28,X                               ; $82A2E4 |
  RTS                                       ; $82A2E6 |

CODE_FN_82A2E7:
  LDY.B $38,X                               ; $82A2E7 |
  LDA.W #$2000                              ; $82A2E9 |
  STA.B $2A,X                               ; $82A2EC |
  RTS                                       ; $82A2EE |

CODE_FN_82A2EF:
  LDA.W $0008,Y                             ; $82A2EF |
  SEC                                       ; $82A2F2 |
  SBC.W #$8000                              ; $82A2F3 |
  STA.B $26,X                               ; $82A2F6 |
  CMP.W #$8000                              ; $82A2F8 |
  ROR.B $26,X                               ; $82A2FB |
  LDA.W $000C,Y                             ; $82A2FD |
  SEC                                       ; $82A300 |
  SBC.W #$7000                              ; $82A301 |
  STA.B $28,X                               ; $82A304 |
  CMP.W #$8000                              ; $82A306 |
  ROR.B $28,X                               ; $82A309 |
  RTS                                       ; $82A30B |

CODE_FN_82A30C:
  JSR.W CODE_FN_82A2EF                      ; $82A30C |

CODE_82A30F:
  LDA.B $26,X                               ; $82A30F |
  CMP.W #$8000                              ; $82A311 |
  ROR.B $26,X                               ; $82A314 |
  LDA.B $28,X                               ; $82A316 |
  CMP.W #$8000                              ; $82A318 |
  ROR.B $28,X                               ; $82A31B |
  RTS                                       ; $82A31D |

CODE_FN_82A31E:
  JSR.W CODE_FN_82A30C                      ; $82A31E |
  BRA CODE_82A30F                           ; $82A321 |

CODE_FN_82A323:
  JSR.W CODE_FN_82A31E                      ; $82A323 |
  BRA CODE_82A30F                           ; $82A326 |

  dw CODE_82A32E                            ; $82A328 |
  dw CODE_82A351                            ; $82A32A |
  dw CODE_82A352                            ; $82A32C |

CODE_82A32E:
  LDA.W #$0000                              ; $82A32E |
  LDY.B $2D,X                               ; $82A331 |
  BPL CODE_82A338                           ; $82A333 |
  LDA.W #$2020                              ; $82A335 |

CODE_82A338:
  ORA.W #$0888                              ; $82A338 |
  STA.B $04,X                               ; $82A33B |
  LDA.W #$3022                              ; $82A33D |
  CPX.W #$08E0                              ; $82A340 |
  BEQ CODE_82A34A                           ; $82A343 |
  CPX.W #$0A60                              ; $82A345 |
  BNE CODE_82A34D                           ; $82A348 |

CODE_82A34A:
  LDA.W #$3034                              ; $82A34A |

CODE_82A34D:
  STA.B $00,X                               ; $82A34D |
  INC.B $1A,X                               ; $82A34F |

CODE_82A351:
  RTL                                       ; $82A351 |

CODE_82A352:
  JSL.L CODE_FL_82C8BC                      ; $82A352 |
  RTL                                       ; $82A356 |

CODE_FN_82A357:
  LDA.W #$3000                              ; $82A357 |
  STA.B $00,X                               ; $82A35A |
  LDA.W #$0001                              ; $82A35C |
  STA.W $1C7C                               ; $82A35F |
  LDY.W #$8B92                              ; $82A362 |
  JSL.L CODE_FL_82B81C                      ; $82A365 |
  LDA.W #$2005                              ; $82A369 |
  STA.W $0078,X                             ; $82A36C |
  STA.W $00D8,X                             ; $82A36F |
  STA.W $0138,X                             ; $82A372 |
  RTS                                       ; $82A375 |

  dw CODE_82A382                            ; $82A376 |
  dw CODE_82A39D                            ; $82A378 |
  dw CODE_82A3B7                            ; $82A37A |
  dw CODE_82A3E8                            ; $82A37C |
  dw CODE_82A3FA                            ; $82A37E |
  dw CODE_82A40B                            ; $82A380 |

CODE_82A382:
  TDC                                       ; $82A382 |
  LDY.B $38,X                               ; $82A383 |
  BNE CODE_82A38A                           ; $82A385 |
  LDA.W #$2020                              ; $82A387 |

CODE_82A38A:
  ORA.W #$0888                              ; $82A38A |
  STA.B $04,X                               ; $82A38D |
  JSR.W CODE_FN_82A357                      ; $82A38F |
  STZ.B $3A,X                               ; $82A392 |
  LDA.W #$FA00                              ; $82A394 |
  STA.B $28,X                               ; $82A397 |
  STZ.B $5E,X                               ; $82A399 |
  INC.B $1A,X                               ; $82A39B |

CODE_82A39D:
  JSL.L CODE_FL_82C89B                      ; $82A39D |
  JSR.W CODE_FN_82A42D                      ; $82A3A1 |
  LDA.B $31,X                               ; $82A3A4 |
  CMP.W #$FFF0                              ; $82A3A6 |
  BPL CODE_82A3B6                           ; $82A3A9 |
  LDA.B $38,X                               ; $82A3AB |
  LSR A                                     ; $82A3AD |
  LSR A                                     ; $82A3AE |
  LSR A                                     ; $82A3AF |
  INC A                                     ; $82A3B0 |
  STA.W $1C6E                               ; $82A3B1 |
  INC.B $1A,X                               ; $82A3B4 |

CODE_82A3B6:
  RTL                                       ; $82A3B6 |

CODE_82A3B7:
  LDA.B $3C,X                               ; $82A3B7 |
  BEQ CODE_82A3BD                           ; $82A3B9 |
  DEC.B $3C,X                               ; $82A3BB |

CODE_82A3BD:
  LDA.W $1C6E                               ; $82A3BD |
  BPL CODE_82A3C9                           ; $82A3C0 |
  LDA.W #$0004                              ; $82A3C2 |
  STA.B $1A,X                               ; $82A3C5 |
  BRA CODE_82A3E7                           ; $82A3C7 |

CODE_82A3C9:
  LDA.W $1C68                               ; $82A3C9 |
  BNE CODE_82A3D4                           ; $82A3CC |
  LDA.B $2E                                 ; $82A3CE |
  BIT.B $3E,X                               ; $82A3D0 |
  BNE CODE_82A3E7                           ; $82A3D2 |

CODE_82A3D4:
  LDY.W #$0300                              ; $82A3D4 |
  LDA.B $3C,X                               ; $82A3D7 |
  BEQ CODE_82A3DE                           ; $82A3D9 |
  LDY.W #$0A00                              ; $82A3DB |

CODE_82A3DE:
  STY.B $28,X                               ; $82A3DE |
  STZ.B $3C,X                               ; $82A3E0 |
  STZ.W $1C6E                               ; $82A3E2 |
  INC.B $1A,X                               ; $82A3E5 |

CODE_82A3E7:
  RTL                                       ; $82A3E7 |

CODE_82A3E8:
  JSL.L CODE_FL_82C89B                      ; $82A3E8 |
  JSR.W CODE_FN_82A42D                      ; $82A3EC |
  LDA.B $31,X                               ; $82A3EF |
  CMP.W #$0020                              ; $82A3F1 |
  BMI CODE_82A3F9                           ; $82A3F4 |
  JMP.W CODE_FL_82CCEB                      ; $82A3F6 |

CODE_82A3F9:
  RTL                                       ; $82A3F9 |

CODE_82A3FA:
  DEC.B $35,X                               ; $82A3FA |
  DEC.B $35,X                               ; $82A3FC |
  LDA.B $35,X                               ; $82A3FE |
  CMP.W #$0030                              ; $82A400 |
  BPL CODE_82A407                           ; $82A403 |
  INC.B $1A,X                               ; $82A405 |

CODE_82A407:
  JSR.W CODE_FN_82A42D                      ; $82A407 |
  RTL                                       ; $82A40A |

CODE_82A40B:
  INC.B $35,X                               ; $82A40B |
  INC.B $35,X                               ; $82A40D |
  LDA.B $35,X                               ; $82A40F |
  CMP.W #$0040                              ; $82A411 |
  BMI CODE_82A429                           ; $82A414 |
  LDA.W $1C6E                               ; $82A416 |
  AND.W #$7FFF                              ; $82A419 |
  STA.W $1C6E                               ; $82A41C |
  LDA.W #$0002                              ; $82A41F |
  STA.B $1A,X                               ; $82A422 |
  LDA.W #$0020                              ; $82A424 |
  STA.B $3C,X                               ; $82A427 |

CODE_82A429:
  JSR.W CODE_FN_82A42D                      ; $82A429 |
  RTL                                       ; $82A42C |

CODE_FN_82A42D:
  LDY.B $38,X                               ; $82A42D |
  LDA.B $2D,X                               ; $82A42F |
  CLC                                       ; $82A431 |
  ADC.W LOOSE_OP_008852,Y                   ; $82A432 |
  STA.W $008D,X                             ; $82A435 |
  CLC                                       ; $82A438 |
  ADC.W CODE_008854,Y                       ; $82A439 |
  STA.W $00ED,X                             ; $82A43C |
  CLC                                       ; $82A43F |
  ADC.W LOOSE_OP_008856,Y                   ; $82A440 |
  STA.W $014D,X                             ; $82A443 |
  LDA.B $31,X                               ; $82A446 |
  CLC                                       ; $82A448 |
  ADC.W #$0008                              ; $82A449 |
  STA.W $0091,X                             ; $82A44C |
  CLC                                       ; $82A44F |
  ADC.W #$000A                              ; $82A450 |
  STA.W $00F1,X                             ; $82A453 |
  CLC                                       ; $82A456 |
  ADC.W #$000C                              ; $82A457 |
  STA.W $0151,X                             ; $82A45A |
  LDA.B $35,X                               ; $82A45D |
  CLC                                       ; $82A45F |
  ADC.W #$0003                              ; $82A460 |
  STA.W $0095,X                             ; $82A463 |
  CLC                                       ; $82A466 |
  ADC.W #$0003                              ; $82A467 |
  STA.W $00F5,X                             ; $82A46A |
  CLC                                       ; $82A46D |
  ADC.W #$0003                              ; $82A46E |
  STA.W $0155,X                             ; $82A471 |
  RTS                                       ; $82A474 |

  dw CODE_82A47B                            ; $82A475 |
  dw CODE_82A4A1                            ; $82A477 |
  dw CODE_82A4EC                            ; $82A479 |

CODE_82A47B:
  DEC.B $3A,X                               ; $82A47B |
  BPL CODE_82A4E1                           ; $82A47D |
  STZ.B $04,X                               ; $82A47F |
  LDA.W #$0018                              ; $82A481 |
  STA.B $42,X                               ; $82A484 |
  LDA.W #$000B                              ; $82A486 |
  STA.B $5E,X                               ; $82A489 |
  LDA.B $44,X                               ; $82A48B |
  JSR.W CODE_FN_82A559                      ; $82A48D |
  JSR.W CODE_FN_82A2E7                      ; $82A490 |
  JSR.W CODE_FN_82A357                      ; $82A493 |
  LDA.W #$0001                              ; $82A496 |
  STA.W $1C70                               ; $82A499 |
  STZ.W $1CF0                               ; $82A49C |
  INC.B $1A,X                               ; $82A49F |

CODE_82A4A1:
  LDA.B $35,X                               ; $82A4A1 |
  CMP.W #$0080                              ; $82A4A3 |
  BCC CODE_82A4E1                           ; $82A4A6 |
  LDA.B $5C,X                               ; $82A4A8 |
  BEQ CODE_82A4D0                           ; $82A4AA |
  LDA.B $46,X                               ; $82A4AC |
  BNE CODE_82A4C0                           ; $82A4AE |
  LDY.W #$0002                              ; $82A4B0 |
  JSL.L CODE_FL_82B14B                      ; $82A4B3 |
  LDA.W #$0036                              ; $82A4B7 |
  JSL.L push_sound_queue                    ; $82A4BA |
  BRA CODE_82A4D7                           ; $82A4BE |

CODE_82A4C0:
  LDY.W #$0002                              ; $82A4C0 |
  JSL.L CODE_FL_82B0E1                      ; $82A4C3 |
  LDA.W #$000D                              ; $82A4C7 |
  JSL.L push_sound_queue                    ; $82A4CA |
  BRA CODE_82A4D7                           ; $82A4CE |

CODE_82A4D0:
  LDA.W #$0009                              ; $82A4D0 |
  JSL.L push_sound_queue                    ; $82A4D3 |

CODE_82A4D7:
  STZ.B $5E,X                               ; $82A4D7 |
  STZ.B $5C,X                               ; $82A4D9 |
  JSL.L CODE_FL_82CA9D                      ; $82A4DB |
  INC.B $1A,X                               ; $82A4DF |

CODE_82A4E1:
  JSL.L CODE_FL_82C8BC                      ; $82A4E1 |
  JSR.W CODE_FN_82A187                      ; $82A4E5 |
  JSR.W CODE_FN_829D9F                      ; $82A4E8 |
  RTL                                       ; $82A4EB |

CODE_82A4EC:
  DEC.B $46,X                               ; $82A4EC |
  BMI CODE_82A510                           ; $82A4EE |
  LDA.W #$0001                              ; $82A4F0 |
  STA.W $1C7C                               ; $82A4F3 |
  LDA.B $42                                 ; $82A4F6 |
  AND.W #$0004                              ; $82A4F8 |
  DEC A                                     ; $82A4FB |
  DEC A                                     ; $82A4FC |
  TAY                                       ; $82A4FD |
  CLC                                       ; $82A4FE |
  ADC.B $2D,X                               ; $82A4FF |
  STA.B $2D,X                               ; $82A501 |
  TYA                                       ; $82A503 |
  CLC                                       ; $82A504 |
  ADC.B $31,X                               ; $82A505 |
  STA.B $31,X                               ; $82A507 |
  JSR.W CODE_FN_82A187                      ; $82A509 |
  JSR.W CODE_FN_829D9F                      ; $82A50C |
  RTL                                       ; $82A50F |

CODE_82A510:
  JSL.L CODE_FL_82C8BC                      ; $82A510 |
  JSR.W CODE_FN_82A187                      ; $82A514 |
  LDA.B $35,X                               ; $82A517 |
  CMP.W #$0010                              ; $82A519 |
  BPL CODE_82A555                           ; $82A51C |
  LDA.W $1C68                               ; $82A51E |
  BNE CODE_82A527                           ; $82A521 |
  DEC.B $42,X                               ; $82A523 |
  BPL CODE_82A52A                           ; $82A525 |

CODE_82A527:
  JMP.W CODE_FL_82CCEB                      ; $82A527 |

CODE_82A52A:
  BNE CODE_82A53B                           ; $82A52A |
  LDA.B $48,X                               ; $82A52C |
  BEQ CODE_82A53B                           ; $82A52E |
  STZ.W $1C70                               ; $82A530 |
  LDY.W #$000C                              ; $82A533 |
  LDA.W #$0040                              ; $82A536 |
  BRA CODE_82A53F                           ; $82A539 |

CODE_82A53B:
  LDY.W #$000B                              ; $82A53B |
  TDC                                       ; $82A53E |

CODE_82A53F:
  STY.B $5E,X                               ; $82A53F |
  STA.B $46,X                               ; $82A541 |
  INC.B $44,X                               ; $82A543 |
  LDA.B $44,X                               ; $82A545 |
  JSR.W CODE_FN_82A559                      ; $82A547 |
  JSR.W CODE_FN_82A2E7                      ; $82A54A |
  LDA.W #$0001                              ; $82A54D |
  STA.W $1C7C                               ; $82A550 |
  DEC.B $1A,X                               ; $82A553 |

CODE_82A555:
  JSR.W CODE_FN_829D9F                      ; $82A555 |
  RTL                                       ; $82A558 |

CODE_FN_82A559:
  AND.W #$000F                              ; $82A559 |
  ASL A                                     ; $82A55C |
  ASL A                                     ; $82A55D |
  ASL A                                     ; $82A55E |
  TAY                                       ; $82A55F |
  LDA.W CODE_008862,Y                       ; $82A560 |
  STA.B $2D,X                               ; $82A563 |
  STA.B $3C,X                               ; $82A565 |
  LDA.W LOOSE_OP_008864,Y                   ; $82A567 |
  STA.B $31,X                               ; $82A56A |
  STA.B $3E,X                               ; $82A56C |
  LDA.W #$0008                              ; $82A56E |
  STA.B $35,X                               ; $82A571 |
  STA.B $40,X                               ; $82A573 |
  LDA.W LOOSE_OP_008866,Y                   ; $82A575 |
  STA.B $26,X                               ; $82A578 |
  LDA.B $42,X                               ; $82A57A |
  SEC                                       ; $82A57C |
  SBC.W #$0018                              ; $82A57D |
  ASL A                                     ; $82A580 |
  ASL A                                     ; $82A581 |
  ASL A                                     ; $82A582 |
  ASL A                                     ; $82A583 |
  ASL A                                     ; $82A584 |
  ASL A                                     ; $82A585 |
  ASL A                                     ; $82A586 |
  ADC.W CODE_008868,Y                       ; $82A587 |
  STA.B $28,X                               ; $82A58A |
  RTS                                       ; $82A58C |

  LDA.W $1C68                               ; $82A58D |
  BEQ CODE_82A595                           ; $82A590 |
  JMP.W CODE_JP_82A689                      ; $82A592 |

CODE_82A595:
  LDA.B $1A,X                               ; $82A595 |
  PHX                                       ; $82A597 |
  ASL A                                     ; $82A598 |
  TAX                                       ; $82A599 |
  LDA.L PTR16_82A5A4,X                      ; $82A59A |
  PLX                                       ; $82A59E |
  STA.B $00                                 ; $82A59F |
  JMP.W ($0000)                             ; $82A5A1 |

PTR16_82A5A4:
  dw CODE_82A5AE                            ; $82A5A4 |
  dw CODE_82A5FA                            ; $82A5A6 |
  dw CODE_82A60D                            ; $82A5A8 |
  dw CODE_82A654                            ; $82A5AA |
  dw CODE_82A67E                            ; $82A5AC |

CODE_82A5AE:
  LDA.W #$0020                              ; $82A5AE |
  STA.B $2D,X                               ; $82A5B1 |
  LDA.W #$FF80                              ; $82A5B3 |
  STA.B $31,X                               ; $82A5B6 |
  LDA.W #$0010                              ; $82A5B8 |
  STA.B $35,X                               ; $82A5BB |
  LDA.W #$FF00                              ; $82A5BD |
  STA.B $26,X                               ; $82A5C0 |
  LDA.W #$0800                              ; $82A5C2 |
  STA.B $28,X                               ; $82A5C5 |
  LDA.W #$0800                              ; $82A5C7 |
  STA.B $2A,X                               ; $82A5CA |
  LDA.W #$0888                              ; $82A5CC |
  STA.B $04,X                               ; $82A5CF |
  LDA.W #$0AC0                              ; $82A5D1 |
  STA.B $44,X                               ; $82A5D4 |

CODE_JP_82A5D6:
  LDA.W #$3052                              ; $82A5D6 |
  STA.B $00,X                               ; $82A5D9 |
  JSL.L CODE_FL_82A6A2                      ; $82A5DB |
  LDA.W #$2009                              ; $82A5DF |
  STA.W $0838                               ; $82A5E2 |
  STA.W $0898                               ; $82A5E5 |
  STA.W $08F8                               ; $82A5E8 |
  STA.W $0958                               ; $82A5EB |
  STA.W $09B8                               ; $82A5EE |
  STA.W $0A18                               ; $82A5F1 |
  INC.B $1A,X                               ; $82A5F4 |
  JSR.W CODE_FN_82A725                      ; $82A5F6 |
  RTL                                       ; $82A5F9 |

CODE_82A5FA:
  JSL.L CODE_FL_82C8BC                      ; $82A5FA |
  LDA.B $31,X                               ; $82A5FE |
  BMI CODE_82A609                           ; $82A600 |
  LDA.W #$0008                              ; $82A602 |
  STA.B $3A,X                               ; $82A605 |
  INC.B $1A,X                               ; $82A607 |

CODE_82A609:
  JSR.W CODE_FN_82A725                      ; $82A609 |
  RTL                                       ; $82A60C |

CODE_82A60D:
  DEC.B $3A,X                               ; $82A60D |
  BPL CODE_82A650                           ; $82A60F |
  LDY.B $44,X                               ; $82A611 |
  LDA.W #$000A                              ; $82A613 |
  JSL.L CODE_FL_82CD78                      ; $82A616 |
  LDA.B $42,X                               ; $82A61A |
  STA.W $0038,Y                             ; $82A61C |
  LDA.W $0016,Y                             ; $82A61F |
  STA.B $44,X                               ; $82A622 |
  LDY.W #$0A60                              ; $82A624 |
  LDA.W #$001A                              ; $82A627 |
  JSL.L CODE_FL_82CD78                      ; $82A62A |
  LDA.W $0031,Y                             ; $82A62E |
  SEC                                       ; $82A631 |
  SBC.W #$0008                              ; $82A632 |
  STA.W $0031,Y                             ; $82A635 |
  STX.B $38,Y                               ; $82A638 |
  LDA.W $0035,Y                             ; $82A63A |
  CLC                                       ; $82A63D |
  ADC.W #$0012                              ; $82A63E |
  STA.W $0035,Y                             ; $82A641 |
  LDA.W #$0400                              ; $82A644 |
  STA.B $28,X                               ; $82A647 |
  LDA.W #$0008                              ; $82A649 |
  STA.B $3A,X                               ; $82A64C |
  INC.B $1A,X                               ; $82A64E |

CODE_82A650:
  JSR.W CODE_FN_82A725                      ; $82A650 |
  RTL                                       ; $82A653 |

CODE_82A654:
  LDA.B $3A,X                               ; $82A654 |
  CMP.W #$0004                              ; $82A656 |
  BNE CODE_82A65F                           ; $82A659 |
  JSL.L CODE_FL_82CA8E                      ; $82A65B |

CODE_82A65F:
  DEC.B $3A,X                               ; $82A65F |
  BNE CODE_82A67B                           ; $82A661 |
  DEC.B $42,X                               ; $82A663 |
  BMI CODE_82A670                           ; $82A665 |
  LDA.W #$0008                              ; $82A667 |
  STA.B $3A,X                               ; $82A66A |
  DEC.B $1A,X                               ; $82A66C |
  BRA CODE_82A67B                           ; $82A66E |

CODE_82A670:
  LDA.W #$0010                              ; $82A670 |
  STA.B $3A,X                               ; $82A673 |
  JSL.L CODE_FL_82CA9D                      ; $82A675 |
  INC.B $1A,X                               ; $82A679 |

CODE_82A67B:
  JMP.W CODE_FL_82C89B                      ; $82A67B |

CODE_82A67E:
  DEC.B $3A,X                               ; $82A67E |
  BPL CODE_82A6C1                           ; $82A680 |
  LDA.B $35,X                               ; $82A682 |
  CMP.W #$0010                              ; $82A684 |
  BPL CODE_82A6BD                           ; $82A687 |

CODE_JP_82A689:
  JSL.L CODE_FL_82CC9F                      ; $82A689 |
  LDY.W #$0820                              ; $82A68D |
  JSL.L CODE_FL_82CC97                      ; $82A690 |
  LDY.W #$0880                              ; $82A694 |
  JSL.L CODE_FL_82CC97                      ; $82A697 |
  LDY.W #$08E0                              ; $82A69B |
  JSL.L CODE_FL_82CC97                      ; $82A69E |

CODE_FL_82A6A2:
  LDY.W #$0940                              ; $82A6A2 |
  JSL.L CODE_FL_82CC97                      ; $82A6A5 |
  LDY.W #$09A0                              ; $82A6A9 |
  JSL.L CODE_FL_82CC97                      ; $82A6AC |
  LDY.W #$0A00                              ; $82A6B0 |
  JSL.L CODE_FL_82CC97                      ; $82A6B3 |
  LDY.W #$0A60                              ; $82A6B7 |
  JMP.W CODE_FL_82CC97                      ; $82A6BA |

CODE_82A6BD:
  JSL.L CODE_FL_82C8BC                      ; $82A6BD |

CODE_82A6C1:
  JSR.W CODE_FN_82A725                      ; $82A6C1 |
  RTL                                       ; $82A6C4 |

  dw CODE_82A6CB                            ; $82A6C5 |
  dw CODE_82A6FE                            ; $82A6C7 |
  dw CODE_82A71A                            ; $82A6C9 |

CODE_82A6CB:
  LDY.B $42,X                               ; $82A6CB |
  LDA.W CODE_0088F2,Y                       ; $82A6CD |
  STA.B $2D,X                               ; $82A6D0 |
  LDA.W #$FF80                              ; $82A6D2 |
  STA.B $31,X                               ; $82A6D5 |
  LDA.W #$0010                              ; $82A6D7 |
  STA.B $35,X                               ; $82A6DA |
  LDA.W LOOSE_OP_0088F4,Y                   ; $82A6DC |
  STA.B $26,X                               ; $82A6DF |
  LDA.W #$1000                              ; $82A6E1 |
  STA.B $28,X                               ; $82A6E4 |
  LDA.W #$0800                              ; $82A6E6 |
  STA.B $2A,X                               ; $82A6E9 |
  LDA.W CODE_0088F6,Y                       ; $82A6EB |
  STA.B $04,X                               ; $82A6EE |
  JSL.L CODE_FL_82C585                      ; $82A6F0 |
  LDA.W #$001C                              ; $82A6F4 |
  JSL.L CODE_FL_8089BD                      ; $82A6F7 |
  JMP.W CODE_JP_82A5D6                      ; $82A6FB |

CODE_82A6FE:
  JSL.L CODE_FL_82C8BC                      ; $82A6FE |
  JSR.W CODE_FN_82A725                      ; $82A702 |
  LDA.B $0D,X                               ; $82A705 |
  CMP.W #$00B0                              ; $82A707 |
  BMI CODE_82A719                           ; $82A70A |
  LDA.W #$0060                              ; $82A70C |
  STA.W $1C6E                               ; $82A70F |
  LDA.W #$0020                              ; $82A712 |
  STA.B $3A,X                               ; $82A715 |
  INC.B $1A,X                               ; $82A717 |

CODE_82A719:
  RTL                                       ; $82A719 |

CODE_82A71A:
  DEC.B $3A,X                               ; $82A71A |
  BNE CODE_82A724                           ; $82A71C |
  STZ.W $1C6E                               ; $82A71E |
  JMP.W CODE_JP_82A689                      ; $82A721 |

CODE_82A724:
  RTL                                       ; $82A724 |

CODE_FN_82A725:
  LDA.B $2D,X                               ; $82A725 |
  SEC                                       ; $82A727 |
  SBC.B $3C,X                               ; $82A728 |
  CMP.W #$8000                              ; $82A72A |
  ROR A                                     ; $82A72D |
  CMP.W #$8000                              ; $82A72E |
  ROR A                                     ; $82A731 |
  CMP.W #$8000                              ; $82A732 |
  ROR A                                     ; $82A735 |
  STA.B $00                                 ; $82A736 |
  CLC                                       ; $82A738 |
  ADC.B $3C,X                               ; $82A739 |
  STA.W $026D,X                             ; $82A73B |
  CLC                                       ; $82A73E |
  ADC.B $00                                 ; $82A73F |
  STA.W $020D,X                             ; $82A741 |
  CLC                                       ; $82A744 |
  ADC.B $00                                 ; $82A745 |
  STA.W $01AD,X                             ; $82A747 |
  CLC                                       ; $82A74A |
  ADC.B $00                                 ; $82A74B |
  STA.W $014D,X                             ; $82A74D |
  CLC                                       ; $82A750 |
  ADC.B $00                                 ; $82A751 |
  STA.W $00ED,X                             ; $82A753 |
  CLC                                       ; $82A756 |
  ADC.B $00                                 ; $82A757 |
  STA.W $008D,X                             ; $82A759 |
  LDA.B $31,X                               ; $82A75C |
  SEC                                       ; $82A75E |
  SBC.B $3E,X                               ; $82A75F |
  CMP.W #$8000                              ; $82A761 |
  ROR A                                     ; $82A764 |
  CMP.W #$8000                              ; $82A765 |
  ROR A                                     ; $82A768 |
  CMP.W #$8000                              ; $82A769 |
  ROR A                                     ; $82A76C |
  STA.B $00                                 ; $82A76D |
  CLC                                       ; $82A76F |
  ADC.B $3E,X                               ; $82A770 |
  STA.W $0271,X                             ; $82A772 |
  CLC                                       ; $82A775 |
  ADC.B $00                                 ; $82A776 |
  STA.W $0211,X                             ; $82A778 |
  CLC                                       ; $82A77B |
  ADC.B $00                                 ; $82A77C |
  STA.W $01B1,X                             ; $82A77E |
  CLC                                       ; $82A781 |
  ADC.B $00                                 ; $82A782 |
  STA.W $0151,X                             ; $82A784 |
  CLC                                       ; $82A787 |
  ADC.B $00                                 ; $82A788 |
  STA.W $00F1,X                             ; $82A78A |
  CLC                                       ; $82A78D |
  ADC.B $00                                 ; $82A78E |
  STA.W $0091,X                             ; $82A790 |
  LDA.B $35,X                               ; $82A793 |
  SEC                                       ; $82A795 |
  SBC.B $40,X                               ; $82A796 |
  CMP.W #$8000                              ; $82A798 |
  ROR A                                     ; $82A79B |
  CMP.W #$8000                              ; $82A79C |
  ROR A                                     ; $82A79F |
  CMP.W #$8000                              ; $82A7A0 |
  ROR A                                     ; $82A7A3 |
  STA.B $00                                 ; $82A7A4 |
  CLC                                       ; $82A7A6 |
  ADC.B $40,X                               ; $82A7A7 |
  STA.W $0275,X                             ; $82A7A9 |
  CLC                                       ; $82A7AC |
  ADC.B $00                                 ; $82A7AD |
  STA.W $0215,X                             ; $82A7AF |
  CLC                                       ; $82A7B2 |
  ADC.B $00                                 ; $82A7B3 |
  STA.W $01B5,X                             ; $82A7B5 |
  CLC                                       ; $82A7B8 |
  ADC.B $00                                 ; $82A7B9 |
  STA.W $0155,X                             ; $82A7BB |
  CLC                                       ; $82A7BE |
  ADC.B $00                                 ; $82A7BF |
  STA.W $00F5,X                             ; $82A7C1 |
  CLC                                       ; $82A7C4 |
  ADC.B $00                                 ; $82A7C5 |
  STA.W $0095,X                             ; $82A7C7 |
  RTS                                       ; $82A7CA |

  dw CODE_82A7CF                            ; $82A7CB |
  dw CODE_82A803                            ; $82A7CD |

CODE_82A7CF:
  LDA.W #$0888                              ; $82A7CF |
  STA.B $04,X                               ; $82A7D2 |
  LDY.W #$305A                              ; $82A7D4 |
  CPX.W #$0820                              ; $82A7D7 |
  BEQ CODE_82A7FF                           ; $82A7DA |
  LDY.W #$3062                              ; $82A7DC |
  CPX.W #$0880                              ; $82A7DF |
  BEQ CODE_82A7FF                           ; $82A7E2 |
  LDY.W #$3062                              ; $82A7E4 |
  CPX.W #$08E0                              ; $82A7E7 |
  BEQ CODE_82A7FF                           ; $82A7EA |
  LDY.W #$306A                              ; $82A7EC |
  CPX.W #$0940                              ; $82A7EF |
  BEQ CODE_82A7FF                           ; $82A7F2 |
  LDY.W #$306A                              ; $82A7F4 |
  CPX.W #$09A0                              ; $82A7F7 |
  BEQ CODE_82A7FF                           ; $82A7FA |
  LDY.W #$3000                              ; $82A7FC |

CODE_82A7FF:
  STY.B $00,X                               ; $82A7FF |
  INC.B $1A,X                               ; $82A801 |

CODE_82A803:
  RTL                                       ; $82A803 |

  dw CODE_82A80C                            ; $82A804 |
  dw CODE_82A835                            ; $82A806 |
  dw CODE_82A84C                            ; $82A808 |
  dw CODE_82A88F                            ; $82A80A |

CODE_82A80C:
  LDA.W #$321A                              ; $82A80C |
  STA.B $00,X                               ; $82A80F |
  JSL.L CODE_FL_82CE4B                      ; $82A811 |
  LDA.W #$F800                              ; $82A815 |
  STA.B $28,X                               ; $82A818 |
  LDA.W #$0400                              ; $82A81A |
  STA.B $2A,X                               ; $82A81D |
  LDA.B $38,X                               ; $82A81F |
  ASL A                                     ; $82A821 |
  TAY                                       ; $82A822 |
  LDA.W CODE_0088E2,Y                       ; $82A823 |
  STA.B $26,X                               ; $82A826 |
  JSL.L CODE_FL_82CAAE                      ; $82A828 |
  LDA.W #$003C                              ; $82A82C |
  JSL.L push_sound_queue                    ; $82A82F |
  INC.B $1A,X                               ; $82A833 |

CODE_82A835:
  JSL.L CODE_FL_82C8BC                      ; $82A835 |
  LDA.B $0D,X                               ; $82A839 |
  BPL CODE_82A84B                           ; $82A83B |
  LDA.W #$0300                              ; $82A83D |
  STA.B $2A,X                               ; $82A840 |
  STZ.B $28,X                               ; $82A842 |
  LDA.W #$3224                              ; $82A844 |
  STA.B $00,X                               ; $82A847 |
  INC.B $1A,X                               ; $82A849 |

CODE_82A84B:
  RTL                                       ; $82A84B |

CODE_82A84C:
  JSL.L CODE_FL_82C8C0                      ; $82A84C |
  JSL.L CODE_FL_82CAD2                      ; $82A850 |
  BNE CODE_82A88E                           ; $82A854 |
  LDA.B $38,X                               ; $82A856 |
  BNE CODE_82A867                           ; $82A858 |
  LDA.W #$003B                              ; $82A85A |
  JSL.L push_sound_queue                    ; $82A85D |
  JSL.L CODE_FL_82C270                      ; $82A861 |
  BRA CODE_82A872                           ; $82A865 |

CODE_82A867:
  LDA.W #$000D                              ; $82A867 |
  JSL.L push_sound_queue                    ; $82A86A |
  JSL.L CODE_FL_82C27C                      ; $82A86E |

CODE_82A872:
  STX.W $1C72                               ; $82A872 |
  STZ.B $1C,X                               ; $82A875 |
  STZ.B $00,X                               ; $82A877 |
  LDA.W #$0010                              ; $82A879 |
  STA.B $5E,X                               ; $82A87C |
  LDA.W #$0200                              ; $82A87E |
  STA.B $54,X                               ; $82A881 |
  STA.B $56,X                               ; $82A883 |
  STA.B $58,X                               ; $82A885 |
  LDA.W #$0050                              ; $82A887 |
  STA.B $38,X                               ; $82A88A |
  INC.B $1A,X                               ; $82A88C |

CODE_82A88E:
  RTL                                       ; $82A88E |

CODE_82A88F:
  DEC.B $38,X                               ; $82A88F |
  BNE CODE_82A896                           ; $82A891 |
  JMP.W CODE_FL_82CC9F                      ; $82A893 |

CODE_82A896:
  RTL                                       ; $82A896 |

  dw CODE_82A89B                            ; $82A897 |
  dw CODE_82A91F                            ; $82A899 |

CODE_82A89B:
  LDA.W #$001C                              ; $82A89B |
  JSL.L CODE_FL_8089BD                      ; $82A89E |
  LDA.W #$0012                              ; $82A8A2 |
  STA.B $54,X                               ; $82A8A5 |
  TXA                                       ; $82A8A7 |
  CLC                                       ; $82A8A8 |
  ADC.W #$0060                              ; $82A8A9 |
  TAY                                       ; $82A8AC |
  JSL.L CODE_FL_82CC97                      ; $82A8AD |
  TXA                                       ; $82A8B1 |
  CLC                                       ; $82A8B2 |
  ADC.W #$00C0                              ; $82A8B3 |
  TAY                                       ; $82A8B6 |
  JSL.L CODE_FL_82CC97                      ; $82A8B7 |
  TXA                                       ; $82A8BB |
  CLC                                       ; $82A8BC |
  ADC.W #$0120                              ; $82A8BD |
  TAY                                       ; $82A8C0 |
  JSL.L CODE_FL_82CC97                      ; $82A8C1 |
  TXA                                       ; $82A8C5 |
  CLC                                       ; $82A8C6 |
  ADC.W #$0180                              ; $82A8C7 |
  TAY                                       ; $82A8CA |
  JSL.L CODE_FL_82CC97                      ; $82A8CB |
  LDA.W #$0024                              ; $82A8CF |
  STA.W $0078,X                             ; $82A8D2 |
  STA.W $00D8,X                             ; $82A8D5 |
  LDA.W #$0025                              ; $82A8D8 |
  STA.W $0138,X                             ; $82A8DB |
  STA.W $0198,X                             ; $82A8DE |
  LDA.B $2D,X                               ; $82A8E1 |
  SEC                                       ; $82A8E3 |
  SBC.B $54,X                               ; $82A8E4 |
  STA.W $008D,X                             ; $82A8E6 |
  STA.W $014D,X                             ; $82A8E9 |
  LDA.B $2D,X                               ; $82A8EC |
  CLC                                       ; $82A8EE |
  ADC.B $54,X                               ; $82A8EF |
  STA.W $00ED,X                             ; $82A8F1 |
  STA.W $01AD,X                             ; $82A8F4 |
  LDA.B $31,X                               ; $82A8F7 |
  STA.W $0091,X                             ; $82A8F9 |
  STA.W $00F1,X                             ; $82A8FC |
  STA.W $0151,X                             ; $82A8FF |
  STA.W $01B1,X                             ; $82A902 |
  LDA.B $35,X                               ; $82A905 |
  STA.W $0095,X                             ; $82A907 |
  STA.W $00F5,X                             ; $82A90A |
  STA.W $0155,X                             ; $82A90D |
  STA.W $01B5,X                             ; $82A910 |
  LDA.W #$0012                              ; $82A913 |
  STA.B $5E,X                               ; $82A916 |
  JSL.L CODE_FL_82C3BD                      ; $82A918 |
  INC.B $1A,X                               ; $82A91C |
  RTL                                       ; $82A91E |

CODE_82A91F:
  JSL.L CODE_FL_82B91D                      ; $82A91F |
  CPY.W #$0DC0                              ; $82A923 |
  BNE CODE_82A94A                           ; $82A926 |
  LDA.B $2D,X                               ; $82A928 |
  SEC                                       ; $82A92A |
  SBC.B $54,X                               ; $82A92B |
  STA.W $008D,X                             ; $82A92D |
  LDA.B $2D,X                               ; $82A930 |
  CLC                                       ; $82A932 |
  ADC.B $54,X                               ; $82A933 |
  STA.W $00ED,X                             ; $82A935 |
  LDA.B $31,X                               ; $82A938 |
  STA.W $0091,X                             ; $82A93A |
  STA.W $00F1,X                             ; $82A93D |
  LDA.B $35,X                               ; $82A940 |
  STA.W $0095,X                             ; $82A942 |
  STA.W $00F5,X                             ; $82A945 |
  STZ.B $5C,X                               ; $82A948 |

CODE_82A94A:
  LDA.W $0091,X                             ; $82A94A |
  SEC                                       ; $82A94D |
  SBC.W $0151,X                             ; $82A94E |
  CMP.W #$8000                              ; $82A951 |
  ROR A                                     ; $82A954 |
  STA.B $00                                 ; $82A955 |
  BPL CODE_82A95D                           ; $82A957 |
  EOR.W #$FFFF                              ; $82A959 |
  INC A                                     ; $82A95C |

CODE_82A95D:
  STA.B $56,X                               ; $82A95D |
  LDA.B $00                                 ; $82A95F |
  CLC                                       ; $82A961 |
  ADC.W $0151,X                             ; $82A962 |
  STA.B $31,X                               ; $82A965 |
  LDA.W $0095,X                             ; $82A967 |
  SEC                                       ; $82A96A |
  SBC.W $0155,X                             ; $82A96B |
  BPL CODE_82A974                           ; $82A96E |
  EOR.W #$FFFF                              ; $82A970 |
  INC A                                     ; $82A973 |

CODE_82A974:
  LSR A                                     ; $82A974 |
  STA.B $58,X                               ; $82A975 |
  CLC                                       ; $82A977 |
  ADC.W $0155,X                             ; $82A978 |
  STA.B $35,X                               ; $82A97B |
  CMP.W #$0300                              ; $82A97D |
  BNE CODE_82A986                           ; $82A980 |
  JML.L CODE_FL_82CD05                      ; $82A982 |

CODE_82A986:
  STZ.B $2D,X                               ; $82A986 |
  RTL                                       ; $82A988 |

  dw CODE_82A98F                            ; $82A989 |
  dw CODE_82A9A4                            ; $82A98B |
  dw CODE_82A9B5                            ; $82A98D |

CODE_82A98F:
  STZ.B $00                                 ; $82A98F |
  LDA.W #$FFC0                              ; $82A991 |
  STA.B $02                                 ; $82A994 |
  LDA.W #$0300                              ; $82A996 |
  STA.B $04                                 ; $82A999 |
  LDA.W #$0006                              ; $82A99B |
  JSL.L CODE_FL_82D136                      ; $82A99E |
  INC.B $1A,X                               ; $82A9A2 |

CODE_82A9A4:
  JSL.L CODE_FL_82C8BC                      ; $82A9A4 |
  CMP.W #$0300                              ; $82A9A8 |
  BMI CODE_82A9B4                           ; $82A9AB |
  LDA.W #$0300                              ; $82A9AD |
  STA.B $35,X                               ; $82A9B0 |
  INC.B $1A,X                               ; $82A9B2 |

CODE_82A9B4:
  RTL                                       ; $82A9B4 |

CODE_82A9B5:
  LDA.B $35,X                               ; $82A9B5 |
  CMP.W #$0300                              ; $82A9B7 |
  BEQ CODE_82A9C0                           ; $82A9BA |
  DEC.B $1A,X                               ; $82A9BC |
  BRA CODE_82A9A4                           ; $82A9BE |

CODE_82A9C0:
  RTL                                       ; $82A9C0 |

  dw CODE_82A9C7                            ; $82A9C1 |
  dw CODE_82A9E1                            ; $82A9C3 |
  dw CODE_82A9E8                            ; $82A9C5 |

CODE_82A9C7:
  STZ.B $00                                 ; $82A9C7 |
  LDA.W #$FFC0                              ; $82A9C9 |
  STA.B $02                                 ; $82A9CC |
  LDA.W #$0300                              ; $82A9CE |
  STA.B $04                                 ; $82A9D1 |
  LDA.W #$0006                              ; $82A9D3 |
  JSL.L CODE_FL_82D136                      ; $82A9D6 |
  LDA.W #$0020                              ; $82A9DA |
  STA.B $38,X                               ; $82A9DD |
  INC.B $1A,X                               ; $82A9DF |

CODE_82A9E1:
  DEC.B $38,X                               ; $82A9E1 |
  BPL CODE_82A9E7                           ; $82A9E3 |
  INC.B $1A,X                               ; $82A9E5 |

CODE_82A9E7:
  RTL                                       ; $82A9E7 |

CODE_82A9E8:
  JSL.L CODE_FL_82C8BC                      ; $82A9E8 |
  LDA.W EMPTY_00FF75,X                      ; $82A9EC |
  CMP.B $35,X                               ; $82A9EF |
  BPL CODE_82A9F5                           ; $82A9F1 |
  STA.B $35,X                               ; $82A9F3 |

CODE_82A9F5:
  RTL                                       ; $82A9F5 |

CODE_JL_82A9F6:
  LDA.W #$0020                              ; $82A9F6 |
  STA.W $1C90                               ; $82A9F9 |
  JSL.L CODE_FL_82B91D                      ; $82A9FC |
  PHX                                       ; $82AA00 |
  ASL A                                     ; $82AA01 |
  TAX                                       ; $82AA02 |
  LDA.L PTR16_82AA0D,X                      ; $82AA03 |
  PLX                                       ; $82AA07 |
  STA.B $00                                 ; $82AA08 |
  JMP.W ($0000)                             ; $82AA0A |

PTR16_82AA0D:
  dw CODE_82AA3F                            ; $82AA0D |
  dw CODE_82AB91                            ; $82AA0F |
  dw CODE_82AA6B                            ; $82AA11 |
  dw CODE_82AA85                            ; $82AA13 |
  dw CODE_82AA8A                            ; $82AA15 |
  dw CODE_82AA9E                            ; $82AA17 |
  dw CODE_82AAB8                            ; $82AA19 |
  dw CODE_82AAD8                            ; $82AA1B |
  dw CODE_82AA51                            ; $82AA1D |
  dw CODE_82ABA8                            ; $82AA1F |
  dw CODE_82AB0D                            ; $82AA21 |
  dw CODE_82AAEF                            ; $82AA23 |
  dw CODE_82AB0D                            ; $82AA25 |
  dw CODE_82ABFD                            ; $82AA27 |
  dw CODE_82AA37                            ; $82AA29 |
  dw CODE_82AA37                            ; $82AA2B |
  dw CODE_82AC43                            ; $82AA2D |
  dw CODE_82AA8F                            ; $82AA2F |
  dw CODE_82ACC6                            ; $82AA31 |
  dw CODE_82AA37                            ; $82AA33 |
  dw CODE_82AA37                            ; $82AA35 |

CODE_82AA37:
  JSL.L CODE_FL_82B931                      ; $82AA37 |
  JSR.W CODE_FN_82ACF6                      ; $82AA3B |
  RTL                                       ; $82AA3E |

CODE_82AA3F:
  DEC.B $38,X                               ; $82AA3F |
  BPL CODE_82AA4A                           ; $82AA41 |
  JSL.L CODE_FL_82B931                      ; $82AA43 |
  JSR.W CODE_FN_82ACF6                      ; $82AA47 |

CODE_82AA4A:
  JSL.L CODE_FL_82B45B                      ; $82AA4A |
  JMP.W CODE_FL_82CEC6                      ; $82AA4E |

CODE_82AA51:
  LDY.B $5A,X                               ; $82AA51 |
  BEQ CODE_82AA58                           ; $82AA53 |
  JMP.W CODE_FL_82AB23                      ; $82AA55 |

CODE_82AA58:
  LDA.W #$0A00                              ; $82AA58 |
  STA.B $2A,X                               ; $82AA5B |
  LDA.W #$F900                              ; $82AA5D |
  STA.B $28,X                               ; $82AA60 |
  JSL.L CODE_FL_82B931                      ; $82AA62 |
  INC.B $5A,X                               ; $82AA66 |
  JMP.W CODE_FL_82CEC6                      ; $82AA68 |

CODE_82AA6B:
  LDA.W #$0600                              ; $82AA6B |

CODE_82AA6E:
  LDY.B $5A,X                               ; $82AA6E |
  BEQ CODE_82AA75                           ; $82AA70 |
  JMP.W CODE_FL_82AB23                      ; $82AA72 |

CODE_82AA75:
  LDY.W #$FB00                              ; $82AA75 |

CODE_82AA78:
  STA.B $2A,X                               ; $82AA78 |
  STY.B $28,X                               ; $82AA7A |
  JSL.L CODE_FL_82B931                      ; $82AA7C |
  INC.B $5A,X                               ; $82AA80 |
  JMP.W CODE_FL_82CEC6                      ; $82AA82 |

CODE_82AA85:
  LDA.W #$0700                              ; $82AA85 |
  BRA CODE_82AA6E                           ; $82AA88 |

CODE_82AA8A:
  LDA.W #$0800                              ; $82AA8A |
  BRA CODE_82AA6E                           ; $82AA8D |

CODE_82AA8F:
  LDY.B $5A,X                               ; $82AA8F |
  BEQ CODE_82AA96                           ; $82AA91 |
  JMP.W CODE_JP_82AB69                      ; $82AA93 |

CODE_82AA96:
  LDA.W #$0300                              ; $82AA96 |
  LDY.W #$FD00                              ; $82AA99 |
  BRA CODE_82AA78                           ; $82AA9C |

CODE_82AA9E:
  LDY.B $5A,X                               ; $82AA9E |
  BEQ CODE_82AAA5                           ; $82AAA0 |
  JMP.W CODE_JP_82AB61                      ; $82AAA2 |

CODE_82AAA5:
  JSL.L CODE_FL_82B931                      ; $82AAA5 |
  LDA.W #$0100                              ; $82AAA9 |
  STA.B $2A,X                               ; $82AAAC |
  LDA.W #$FC00                              ; $82AAAE |
  STA.B $28,X                               ; $82AAB1 |

CODE_82AAB3:
  INC.B $5A,X                               ; $82AAB3 |
  JMP.W CODE_FL_82CEC6                      ; $82AAB5 |

CODE_82AAB8:
  LDA.B $5A,X                               ; $82AAB8 |
  DEC A                                     ; $82AABA |
  BNE CODE_82AAC0                           ; $82AABB |
  JMP.W CODE_JP_82AC28                      ; $82AABD |

CODE_82AAC0:
  DEC A                                     ; $82AAC0 |
  BNE CODE_82AAC6                           ; $82AAC1 |
  JMP.W CODE_JP_82AB61                      ; $82AAC3 |

CODE_82AAC6:
  LDA.W #$0600                              ; $82AAC6 |
  STA.B $26,X                               ; $82AAC9 |
  LDA.W #$FC00                              ; $82AACB |
  STA.B $28,X                               ; $82AACE |
  STZ.B $2A,X                               ; $82AAD0 |
  JSL.L CODE_FL_82B931                      ; $82AAD2 |
  BRA CODE_82AAB3                           ; $82AAD6 |

CODE_82AAD8:
  LDA.B $5A,X                               ; $82AAD8 |
  BEQ CODE_82AADF                           ; $82AADA |
  JMP.W CODE_JP_82AB61                      ; $82AADC |

CODE_82AADF:
  STZ.B $2A,X                               ; $82AADF |
  LDA.W #$F800                              ; $82AAE1 |
  STA.B $28,X                               ; $82AAE4 |
  JSL.L CODE_FL_82B931                      ; $82AAE6 |
  INC.B $5A,X                               ; $82AAEA |
  JMP.W CODE_FL_82CEC6                      ; $82AAEC |

CODE_82AAEF:
  JSR.W CODE_FN_82AD09                      ; $82AAEF |
  LDA.W $005E,Y                             ; $82AAF2 |
  BEQ CODE_82AB06                           ; $82AAF5 |
  LDA.W $002D,Y                             ; $82AAF7 |
  STA.B $2D,X                               ; $82AAFA |
  LDA.W $0031,Y                             ; $82AAFC |
  ASL A                                     ; $82AAFF |
  STA.B $31,X                               ; $82AB00 |
  JSL.L CODE_FL_82B931                      ; $82AB02 |

CODE_82AB06:
  JSL.L CODE_FL_82B45B                      ; $82AB06 |
  JMP.W CODE_FL_82CEC6                      ; $82AB0A |

CODE_82AB0D:
  LDA.B $5A,X                               ; $82AB0D |
  BNE CODE_FL_82AB23                        ; $82AB0F |
  STZ.B $5E,X                               ; $82AB11 |
  LDA.W #$F800                              ; $82AB13 |
  STA.B $28,X                               ; $82AB16 |
  LDA.W #$0400                              ; $82AB18 |
  STA.B $2A,X                               ; $82AB1B |
  JSL.L CODE_FL_82B931                      ; $82AB1D |
  INC.B $5A,X                               ; $82AB21 |

CODE_FL_82AB23:
  LDA.B $28,X                               ; $82AB23 |
  BMI CODE_82AB2E                           ; $82AB25 |
  LDA.W #$0010                              ; $82AB27 |
  JSL.L CODE_FL_82D03F                      ; $82AB2A |

CODE_82AB2E:
  JSL.L CODE_FL_82C8C4                      ; $82AB2E |
  JSL.L CODE_FL_82CAD2                      ; $82AB32 |
  BNE CODE_82AB5E                           ; $82AB36 |
  LDA.W #$0038                              ; $82AB38 |
  JSL.L push_sound_queue                    ; $82AB3B |
  LDA.B $28,X                               ; $82AB3F |
  SEC                                       ; $82AB41 |
  SBC.W #$0300                              ; $82AB42 |
  BMI CODE_82AB5B                           ; $82AB45 |
  AND.W #$0F00                              ; $82AB47 |
  BEQ CODE_82AB5B                           ; $82AB4A |
  LDA.W #$FD00                              ; $82AB4C |
  STA.B $28,X                               ; $82AB4F |
  STZ.B $2A,X                               ; $82AB51 |
  LDA.W #$0001                              ; $82AB53 |
  STA.W $1C7C                               ; $82AB56 |
  BRA CODE_82AB5E                           ; $82AB59 |

CODE_82AB5B:
  JSR.W CODE_FN_82ACF6                      ; $82AB5B |

CODE_82AB5E:
  JMP.W CODE_FL_82CEC6                      ; $82AB5E |

CODE_JP_82AB61:
  JSL.L CODE_FL_82AB23                      ; $82AB61 |
  JML.L CODE_FL_82B45B                      ; $82AB65 |

CODE_JP_82AB69:
  LDA.B $28,X                               ; $82AB69 |
  BMI CODE_82AB74                           ; $82AB6B |
  LDA.W #$0010                              ; $82AB6D |
  JSL.L CODE_FL_82D03F                      ; $82AB70 |

CODE_82AB74:
  JSL.L CODE_FL_82C8C4                      ; $82AB74 |
  JSL.L CODE_FL_82CAD2                      ; $82AB78 |
  BNE CODE_82AB8E                           ; $82AB7C |
  LDA.W #$0038                              ; $82AB7E |
  JSL.L push_sound_queue                    ; $82AB81 |
  STZ.B $26,X                               ; $82AB85 |
  STZ.B $28,X                               ; $82AB87 |
  STZ.B $2A,X                               ; $82AB89 |
  JSR.W CODE_FN_82ACF6                      ; $82AB8B |

CODE_82AB8E:
  JMP.W CODE_FL_82CEC6                      ; $82AB8E |

CODE_82AB91:
  LDY.B $5A,X                               ; $82AB91 |
  BNE CODE_FL_82AB23                        ; $82AB93 |
  LDA.W #$0100                              ; $82AB95 |
  STZ.B $2A,X                               ; $82AB98 |
  LDA.W #$FC00                              ; $82AB9A |
  STA.B $28,X                               ; $82AB9D |
  JSL.L CODE_FL_82B931                      ; $82AB9F |
  INC.B $5A,X                               ; $82ABA3 |
  JMP.W CODE_FL_82CEC6                      ; $82ABA5 |

CODE_82ABA8:
  LDA.B $5A,X                               ; $82ABA8 |
  DEC A                                     ; $82ABAA |
  BEQ CODE_82ABCE                           ; $82ABAB |
  DEC A                                     ; $82ABAD |
  BNE CODE_82ABB3                           ; $82ABAE |
  JMP.W CODE_FL_82AB23                      ; $82ABB0 |

CODE_82ABB3:
  LDY.W #$07C0                              ; $82ABB3 |
  LDA.W $0042,Y                             ; $82ABB6 |
  CMP.W #$8000                              ; $82ABB9 |
  ROR A                                     ; $82ABBC |
  STA.B $2D,X                               ; $82ABBD |
  LDA.W $0044,Y                             ; $82ABBF |
  CMP.W #$8000                              ; $82ABC2 |
  ROR A                                     ; $82ABC5 |
  CMP.W #$8000                              ; $82ABC6 |
  ROR A                                     ; $82ABC9 |
  STA.B $31,X                               ; $82ABCA |
  INC.B $5A,X                               ; $82ABCC |

CODE_82ABCE:
  LDY.W #$07C0                              ; $82ABCE |
  LDA.W $005E,Y                             ; $82ABD1 |
  BNE CODE_82ABE2                           ; $82ABD4 |
  LDA.W #$FA00                              ; $82ABD6 |
  STA.B $28,X                               ; $82ABD9 |
  LDA.W #$0300                              ; $82ABDB |
  STA.B $2A,X                               ; $82ABDE |
  INC.B $5A,X                               ; $82ABE0 |

CODE_82ABE2:
  LDA.B $42                                 ; $82ABE2 |
  LSR A                                     ; $82ABE4 |
  BCC CODE_82ABEB                           ; $82ABE5 |
  JSL.L CODE_FL_82B931                      ; $82ABE7 |

CODE_82ABEB:
  JSL.L CODE_FL_82D1BF                      ; $82ABEB |
  JSL.L CODE_FL_82D1CD                      ; $82ABEF |
  JSR.W CODE_FN_82AD09                      ; $82ABF3 |
  JSL.L CODE_FL_82B45B                      ; $82ABF6 |
  JMP.W CODE_FL_82CEC6                      ; $82ABFA |

CODE_82ABFD:
  LDA.B $5A,X                               ; $82ABFD |
  CMP.W #$0001                              ; $82ABFF |
  BEQ CODE_82AC24                           ; $82AC02 |
  CMP.W #$0002                              ; $82AC04 |
  BNE CODE_82AC0C                           ; $82AC07 |
  JMP.W CODE_FL_82AB23                      ; $82AC09 |

CODE_82AC0C:
  LDY.W #$07C0                              ; $82AC0C |
  LDA.W $0026,Y                             ; $82AC0F |
  STA.B $26,X                               ; $82AC12 |
  LDA.W #$F600                              ; $82AC14 |
  STA.B $28,X                               ; $82AC17 |
  LDA.W #$0400                              ; $82AC19 |
  STA.B $2A,X                               ; $82AC1C |
  JSL.L CODE_FL_82B931                      ; $82AC1E |
  INC.B $5A,X                               ; $82AC22 |

CODE_82AC24:
  JSL.L CODE_FL_82C87C                      ; $82AC24 |

CODE_JP_82AC28:
  LDA.W #$0C00                              ; $82AC28 |
  ADC.B $30,X                               ; $82AC2B |
  STA.B $30,X                               ; $82AC2D |
  BCC CODE_82AC33                           ; $82AC2F |
  INC.B $32,X                               ; $82AC31 |

CODE_82AC33:
  CMP.W #$0030                              ; $82AC33 |
  BMI CODE_82AC40                           ; $82AC36 |
  INC.B $5A,X                               ; $82AC38 |
  LDA.W #$0001                              ; $82AC3A |
  STA.W $1C7C                               ; $82AC3D |

CODE_82AC40:
  JMP.W CODE_FL_82CEC6                      ; $82AC40 |

CODE_82AC43:
  LDA.B $5A,X                               ; $82AC43 |
  PHX                                       ; $82AC45 |
  ASL A                                     ; $82AC46 |
  TAX                                       ; $82AC47 |
  LDA.L PTR16_82AC52,X                      ; $82AC48 |
  PLX                                       ; $82AC4C |
  STA.B $00                                 ; $82AC4D |
  JMP.W ($0000)                             ; $82AC4F |

PTR16_82AC52:
  dw CODE_82AC58                            ; $82AC52 |
  dw CODE_82AC64                            ; $82AC54 |
  dw CODE_82ACBF                            ; $82AC56 |

CODE_82AC58:
  LDA.W #$8021                              ; $82AC58 |
  LDY.W #$0FA0                              ; $82AC5B |
  JSL.L CODE_FL_82CD78                      ; $82AC5E |
  INC.B $5A,X                               ; $82AC62 |

CODE_82AC64:
  LDA.W #$0040                              ; $82AC64 |
  JSL.L CODE_FL_82D023                      ; $82AC67 |
  LDY.W #$0800                              ; $82AC6B |
  LDA.W $1DE6                               ; $82AC6E |
  BEQ CODE_82AC9A                           ; $82AC71 |
  JSL.L CODE_FL_82CB1D                      ; $82AC73 |
  LDY.W #$0800                              ; $82AC77 |
  LDA.W $1DE8                               ; $82AC7A |
  JSL.L CODE_FL_82CB4A                      ; $82AC7D |
  LDY.W #$0800                              ; $82AC81 |
  LDA.W $1DEA                               ; $82AC84 |
  JSL.L CODE_FL_82CB77                      ; $82AC87 |
  JSL.L CODE_FL_82B931                      ; $82AC8B |
  JSL.L CODE_FL_82D1BF                      ; $82AC8F |
  JSL.L CODE_FL_82D1CD                      ; $82AC93 |
  JMP.W CODE_FL_82CEC6                      ; $82AC97 |

CODE_82AC9A:
  STZ.W $1C72                               ; $82AC9A |
  LDA.W #$F500                              ; $82AC9D |
  STA.B $28,X                               ; $82ACA0 |
  STZ.B $2A,X                               ; $82ACA2 |
  LDY.W #$0FA0                              ; $82ACA4 |
  JSL.L CODE_FL_82CC97                      ; $82ACA7 |
  LDY.W #$0002                              ; $82ACAB |
  JSL.L CODE_FL_82B31F                      ; $82ACAE |
  STZ.W $1FD4                               ; $82ACB2 |
  LDA.W #$000D                              ; $82ACB5 |
  JSL.L push_sound_queue                    ; $82ACB8 |
  INC.B $5A,X                               ; $82ACBC |
  RTL                                       ; $82ACBE |

CODE_82ACBF:
  JSL.L CODE_FL_82D1BF                      ; $82ACBF |
  JMP.W CODE_FL_82AB23                      ; $82ACC3 |

CODE_82ACC6:
  LDY.B $5A,X                               ; $82ACC6 |
  BNE CODE_82ACD5                           ; $82ACC8 |
  LDA.W #$0100                              ; $82ACCA |
  STA.B $2A,X                               ; $82ACCD |
  JSL.L CODE_FL_82B931                      ; $82ACCF |
  INC.B $5A,X                               ; $82ACD3 |

CODE_82ACD5:
  LDY.W #$0002                              ; $82ACD5 |
  JSL.L CODE_FL_82B14B                      ; $82ACD8 |
  JSL.L CODE_FL_82D1BF                      ; $82ACDC |
  JSL.L CODE_FL_82C913                      ; $82ACE0 |
  BCS CODE_82ACF3                           ; $82ACE4 |
  STZ.B $5C,X                               ; $82ACE6 |
  JSL.L CODE_FL_82B45B                      ; $82ACE8 |
  LDA.B $5C,X                               ; $82ACEC |
  BNE CODE_82ACF3                           ; $82ACEE |
  JSR.W CODE_FN_82ACF6                      ; $82ACF0 |

CODE_82ACF3:
  JMP.W CODE_FL_82CEC6                      ; $82ACF3 |

CODE_FN_82ACF6:
  STZ.W $1C74                               ; $82ACF6 |
  LDA.W #$0006                              ; $82ACF9 |
  STA.B $5E,X                               ; $82ACFC |
  STZ.B $5C,X                               ; $82ACFE |
  LDA.B $50,X                               ; $82AD00 |
  STA.B $1A,X                               ; $82AD02 |
  STZ.B $38,X                               ; $82AD04 |
  STZ.B $3A,X                               ; $82AD06 |
  RTS                                       ; $82AD08 |

CODE_FN_82AD09:
  LDA.B $42                                 ; $82AD09 |
  AND.W #$0003                              ; $82AD0B |
  DEC A                                     ; $82AD0E |
  DEC A                                     ; $82AD0F |
  CLC                                       ; $82AD10 |
  ADC.W #$0088                              ; $82AD11 |
  STA.B $35,X                               ; $82AD14 |
  RTS                                       ; $82AD16 |

  dw CODE_82AD1D                            ; $82AD17 |
  dw CODE_82AD3F                            ; $82AD19 |
  dw CODE_82AD40                            ; $82AD1B |

CODE_82AD1D:
  LDA.B $00,X                               ; $82AD1D |
  BNE CODE_82AD32                           ; $82AD1F |
  LDY.W #$8664                              ; $82AD21 |
  LDA.B $90                                 ; $82AD24 |
  CMP.W #$0002                              ; $82AD26 |
  BEQ CODE_82AD2E                           ; $82AD29 |
  LDY.W #$8390                              ; $82AD2B |

CODE_82AD2E:
  JSL.L CODE_FL_828AC3                      ; $82AD2E |

CODE_82AD32:
  LDA.B $1C,X                               ; $82AD32 |
  ORA.W #$8000                              ; $82AD34 |
  STA.B $1C,X                               ; $82AD37 |
  JSL.L CODE_FL_82CE4B                      ; $82AD39 |
  INC.B $1A,X                               ; $82AD3D |

CODE_82AD3F:
  RTL                                       ; $82AD3F |

CODE_82AD40:
  LDA.W #$C015                              ; $82AD40 |
  JML.L CODE_FL_82CD96                      ; $82AD43 |

  STZ.B $5C,X                               ; $82AD47 |
  LDA.B $1A,X                               ; $82AD49 |
  BNE CODE_82AD58                           ; $82AD4B |
  STZ.B $00,X                               ; $82AD4D |
  LDY.W #$8BA1                              ; $82AD4F |
  JSL.L CODE_FL_82B81C                      ; $82AD52 |
  INC.B $1A,X                               ; $82AD56 |

CODE_82AD58:
  LDY.W #$0DC0                              ; $82AD58 |
  JSL.L CODE_FL_82CDF8                      ; $82AD5B |
  JMP.W CODE_FL_82B45B                      ; $82AD5F |

  JSL.L CODE_FL_82D338                      ; $82AD62 |
  LDA.B $1A,X                               ; $82AD66 |
  PHX                                       ; $82AD68 |
  ASL A                                     ; $82AD69 |
  TAX                                       ; $82AD6A |
  LDA.L PTR16_82AD75,X                      ; $82AD6B |
  PLX                                       ; $82AD6F |
  STA.B $00                                 ; $82AD70 |
  JMP.W ($0000)                             ; $82AD72 |

PTR16_82AD75:
  dw CODE_82AD7B                            ; $82AD75 |
  dw CODE_82AD8A                            ; $82AD77 |
  dw CODE_82AD91                            ; $82AD79 |

CODE_82AD7B:
  STZ.B $00,X                               ; $82AD7B |
  LDY.W #$8B9E                              ; $82AD7D |
  JSL.L CODE_FL_82B81C                      ; $82AD80 |
  JSR.W CODE_FN_82AD95                      ; $82AD84 |
  INC.B $1A,X                               ; $82AD87 |
  RTL                                       ; $82AD89 |

CODE_82AD8A:
  JSL.L CODE_FL_82B45B                      ; $82AD8A |
  INC.B $1A,X                               ; $82AD8E |
  RTL                                       ; $82AD90 |

CODE_82AD91:
  JML.L CODE_FL_82CC9F                      ; $82AD91 |

CODE_FN_82AD95:
  LDA.B $38,X                               ; $82AD95 |
  PHX                                       ; $82AD97 |
  ASL A                                     ; $82AD98 |
  TAX                                       ; $82AD99 |
  LDA.L PTR16_82ADA4,X                      ; $82AD9A |
  PLX                                       ; $82AD9E |
  STA.B $00                                 ; $82AD9F |
  JMP.W ($0000)                             ; $82ADA1 |

PTR16_82ADA4:
  dw CODE_82ADB8                            ; $82ADA4 |
  dw CODE_82ADBE                            ; $82ADA6 |
  dw CODE_82ADCB                            ; $82ADA8 |
  dw CODE_82ADE6                            ; $82ADAA |
  dw CODE_82ADF0                            ; $82ADAC |
  dw CODE_82AE06                            ; $82ADAE |
  dw CODE_82AE1B                            ; $82ADB0 |
  dw CODE_82AE40                            ; $82ADB2 |
  dw CODE_82AE46                            ; $82ADB4 |
  dw CODE_82AE4C                            ; $82ADB6 |

CODE_82ADB8:
  LDA.W #$0007                              ; $82ADB8 |
  STA.B $5E,X                               ; $82ADBB |
  RTS                                       ; $82ADBD |

CODE_82ADBE:
  LDA.B $2D,X                               ; $82ADBE |
  SEC                                       ; $82ADC0 |
  SBC.W #$0028                              ; $82ADC1 |
  STA.B $2D,X                               ; $82ADC4 |
  LDA.W #$8CCF                              ; $82ADC6 |
  BRA CODE_82ADD6                           ; $82ADC9 |

CODE_82ADCB:
  LDA.B $2D,X                               ; $82ADCB |
  CLC                                       ; $82ADCD |
  ADC.W #$0028                              ; $82ADCE |
  STA.B $2D,X                               ; $82ADD1 |
  LDA.W #$8DD0                              ; $82ADD3 |

CODE_82ADD6:
  STA.B $3A,X                               ; $82ADD6 |
  LDA.B $31,X                               ; $82ADD8 |
  SEC                                       ; $82ADDA |
  SBC.W #$0010                              ; $82ADDB |
  STA.B $31,X                               ; $82ADDE |
  LDA.W #$0008                              ; $82ADE0 |
  STA.B $5E,X                               ; $82ADE3 |
  RTS                                       ; $82ADE5 |

CODE_82ADE6:
  LDA.B $2D,X                               ; $82ADE6 |
  CLC                                       ; $82ADE8 |
  ADC.W #$0028                              ; $82ADE9 |
  STA.B $2D,X                               ; $82ADEC |
  BRA CODE_82ADF8                           ; $82ADEE |

CODE_82ADF0:
  LDA.B $2D,X                               ; $82ADF0 |
  SEC                                       ; $82ADF2 |
  SBC.W #$0028                              ; $82ADF3 |
  STA.B $2D,X                               ; $82ADF6 |

CODE_82ADF8:
  LDA.B $31,X                               ; $82ADF8 |
  SEC                                       ; $82ADFA |
  SBC.W #$0010                              ; $82ADFB |
  STA.B $31,X                               ; $82ADFE |
  LDA.W #$0009                              ; $82AE00 |
  STA.B $5E,X                               ; $82AE03 |
  RTS                                       ; $82AE05 |

CODE_82AE06:
  LDA.B $2D,X                               ; $82AE06 |
  SEC                                       ; $82AE08 |
  SBC.W #$0018                              ; $82AE09 |
  STA.B $2D,X                               ; $82AE0C |
  LDA.W #$0030                              ; $82AE0E |
  STA.B $3E,X                               ; $82AE11 |
  LDA.W #$9074                              ; $82AE13 |
  LDY.W #$9175                              ; $82AE16 |
  BRA CODE_82AE2E                           ; $82AE19 |

CODE_82AE1B:
  LDA.B $2D,X                               ; $82AE1B |
  CLC                                       ; $82AE1D |
  ADC.W #$0018                              ; $82AE1E |
  STA.B $2D,X                               ; $82AE21 |
  LDA.W #$0040                              ; $82AE23 |
  STA.B $3E,X                               ; $82AE26 |
  LDA.W #$8F4E                              ; $82AE28 |
  LDY.W #$904F                              ; $82AE2B |

CODE_82AE2E:
  STA.B $3A,X                               ; $82AE2E |
  STY.B $3C,X                               ; $82AE30 |
  LDA.B $31,X                               ; $82AE32 |
  SEC                                       ; $82AE34 |
  SBC.W #$0020                              ; $82AE35 |
  STA.B $31,X                               ; $82AE38 |
  LDA.W #$000D                              ; $82AE3A |
  STA.B $5E,X                               ; $82AE3D |
  RTS                                       ; $82AE3F |

CODE_82AE40:
  LDA.W #$000E                              ; $82AE40 |
  STA.B $5E,X                               ; $82AE43 |
  RTS                                       ; $82AE45 |

CODE_82AE46:
  LDA.W #$000F                              ; $82AE46 |
  STA.B $5E,X                               ; $82AE49 |
  RTS                                       ; $82AE4B |

CODE_82AE4C:
  STZ.B $2D,X                               ; $82AE4C |
  STZ.B $31,X                               ; $82AE4E |
  LDA.W #$0010                              ; $82AE50 |
  STA.B $35,X                               ; $82AE53 |
  LDA.W #$0010                              ; $82AE55 |
  STA.B $5E,X                               ; $82AE58 |
  RTS                                       ; $82AE5A |

  LDA.B $1A,X                               ; $82AE5B |
  BNE CODE_82AE79                           ; $82AE5D |
  LDA.W #$0014                              ; $82AE5F |
  JSL.L push_sound_queue                    ; $82AE62 |
  LDA.W #$0010                              ; $82AE66 |
  STA.B $14,X                               ; $82AE69 |
  LDA.W #$0888                              ; $82AE6B |
  STA.B $04,X                               ; $82AE6E |
  LDA.W #$309A                              ; $82AE70 |
  STA.B $00,X                               ; $82AE73 |
  STZ.B $28,X                               ; $82AE75 |
  INC.B $1A,X                               ; $82AE77 |

CODE_82AE79:
  LDA.W #$FFC0                              ; $82AE79 |
  JSL.L CODE_FL_82CB0C                      ; $82AE7C |
  BPL CODE_82AE8D                           ; $82AE80 |
  LDA.W #$0005                              ; $82AE82 |
  JSL.L CODE_FL_82CE94                      ; $82AE85 |
  JSL.L CODE_FL_82CC9F                      ; $82AE89 |

CODE_82AE8D:
  RTL                                       ; $82AE8D |

CODE_FL_82AE8E:
  LDA.W #$C016                              ; $82AE8E |
  STA.W $0598                               ; $82AE91 |
  LDA.B $04,X                               ; $82AE94 |
  STA.W $0584                               ; $82AE96 |
  STZ.W $059A                               ; $82AE99 |
  STZ.W $059C                               ; $82AE9C |
  STZ.W $0580                               ; $82AE9F |
  LDA.W $0009,Y                             ; $82AEA2 |
  SEC                                       ; $82AEA5 |
  SBC.B $09,X                               ; $82AEA6 |
  CMP.W #$8000                              ; $82AEA8 |
  ROR A                                     ; $82AEAB |
  CLC                                       ; $82AEAC |
  ADC.B $09,X                               ; $82AEAD |
  STA.W $0589                               ; $82AEAF |
  LDA.W $000D,Y                             ; $82AEB2 |
  SEC                                       ; $82AEB5 |
  SBC.B $0D,X                               ; $82AEB6 |
  CMP.W #$8000                              ; $82AEB8 |
  ROR A                                     ; $82AEBB |
  CLC                                       ; $82AEBC |
  ADC.B $0D,X                               ; $82AEBD |
  STA.W $058D                               ; $82AEBF |
  RTL                                       ; $82AEC2 |

  LDA.B $1A,X                               ; $82AEC3 |
  BNE CODE_JP_82AEFC                        ; $82AEC5 |
  LDA.W #$0012                              ; $82AEC7 |
  STA.B $14,X                               ; $82AECA |
  LDY.W #$8428                              ; $82AECC |
  LDA.W #$0003                              ; $82AECF |
  JSL.L CODE_FL_828AD9                      ; $82AED2 |
  LDA.W #$0888                              ; $82AED6 |
  STA.B $04,X                               ; $82AED9 |
  INC.B $1A,X                               ; $82AEDB |
  RTL                                       ; $82AEDD |

  LDA.B $1A,X                               ; $82AEDE |
  BNE CODE_JP_82AEFC                        ; $82AEE0 |
  LDA.W #$0020                              ; $82AEE2 |
  STA.B $14,X                               ; $82AEE5 |
  LDA.B $38,X                               ; $82AEE7 |
  BEQ CODE_82AEF1                           ; $82AEE9 |
  JSL.L CODE_FL_828B74                      ; $82AEEB |
  BRA CODE_82AEF5                           ; $82AEEF |

CODE_82AEF1:
  JSL.L CODE_FL_828B8B                      ; $82AEF1 |

CODE_82AEF5:
  LDA.W #$0888                              ; $82AEF5 |
  STA.B $04,X                               ; $82AEF8 |
  INC.B $1A,X                               ; $82AEFA |

CODE_JP_82AEFC:
  LDA.B $1C,X                               ; $82AEFC |
  BNE CODE_82AF04                           ; $82AEFE |
  JSL.L CODE_FL_82CC9F                      ; $82AF00 |

CODE_82AF04:
  RTL                                       ; $82AF04 |

CODE_FL_82AF05:
  LDA.W #$0008                              ; $82AF05 |
  STA.B $08                                 ; $82AF08 |
  LDY.W #$0F40                              ; $82AF0A |

CODE_82AF0D:
  LDA.W $0018,Y                             ; $82AF0D |
  BNE CODE_82AF42                           ; $82AF10 |
  LDA.W #$401B                              ; $82AF12 |
  STA.W $0018,Y                             ; $82AF15 |
  JSL.L CODE_FL_82CDCF                      ; $82AF18 |
  PHX                                       ; $82AF1C |
  LDA.B $08                                 ; $82AF1D |
  ASL A                                     ; $82AF1F |
  ASL A                                     ; $82AF20 |
  ASL A                                     ; $82AF21 |
  TAX                                       ; $82AF22 |
  LDA.W CODE_00899A,X                       ; $82AF23 |
  STA.W $0038,Y                             ; $82AF26 |
  LDA.W CODE_00899C,X                       ; $82AF29 |
  CLC                                       ; $82AF2C |
  ADC.W $0009,Y                             ; $82AF2D |
  STA.W $0009,Y                             ; $82AF30 |
  LDA.W LOOSE_OP_00899E,X                   ; $82AF33 |
  CLC                                       ; $82AF36 |
  ADC.W $000D,Y                             ; $82AF37 |
  STA.W $000D,Y                             ; $82AF3A |
  PLX                                       ; $82AF3D |
  DEC.B $08                                 ; $82AF3E |
  BEQ CODE_82AF48                           ; $82AF40 |

CODE_82AF42:
  LDA.W $0016,Y                             ; $82AF42 |
  TAY                                       ; $82AF45 |
  BNE CODE_82AF0D                           ; $82AF46 |

CODE_82AF48:
  RTL                                       ; $82AF48 |

CODE_FL_82AF49:
  LDA.W $1FC6                               ; $82AF49 |
  LSR A                                     ; $82AF4C |
  BCC CODE_82AF54                           ; $82AF4D |
  LDA.W $1FD4                               ; $82AF4F |
  BRA CODE_82AF5E                           ; $82AF52 |

CODE_82AF54:
  LDA.W $1FD4                               ; $82AF54 |
  CLC                                       ; $82AF57 |
  ADC.W #$0100                              ; $82AF58 |
  AND.W #$01FF                              ; $82AF5B |

CODE_82AF5E:
  STA.B $08                                 ; $82AF5E |
  LDY.W #$000C                              ; $82AF60 |
  JSL.L CODE_FL_8AB51A                      ; $82AF63 |
  LDA.B $00                                 ; $82AF67 |
  STA.B $10                                 ; $82AF69 |
  LDA.B $04                                 ; $82AF6B |
  STA.B $12                                 ; $82AF6D |
  LDA.B $08                                 ; $82AF6F |
  CLC                                       ; $82AF71 |
  ADC.W #$0080                              ; $82AF72 |
  AND.W #$01FF                              ; $82AF75 |
  LDY.W #$0010                              ; $82AF78 |
  JSL.L CODE_FL_8AB51A                      ; $82AF7B |
  LDA.B $01                                 ; $82AF7F |
  STA.B $14                                 ; $82AF81 |
  LDA.B $05                                 ; $82AF83 |
  STA.B $16                                 ; $82AF85 |
  JSR.W CODE_FN_82AFB2                      ; $82AF87 |
  BCC CODE_82AFB1                           ; $82AF8A |
  LDA.B $09,X                               ; $82AF8C |
  CLC                                       ; $82AF8E |
  ADC.B $14                                 ; $82AF8F |
  STA.W $0009,Y                             ; $82AF91 |
  LDA.B $0D,X                               ; $82AF94 |
  CLC                                       ; $82AF96 |
  ADC.B $16                                 ; $82AF97 |
  STA.W $000D,Y                             ; $82AF99 |
  JSR.W CODE_FN_82AFB2                      ; $82AF9C |
  BCC CODE_82AFB1                           ; $82AF9F |
  LDA.B $09,X                               ; $82AFA1 |
  SEC                                       ; $82AFA3 |
  SBC.B $14                                 ; $82AFA4 |
  STA.W $0009,Y                             ; $82AFA6 |
  LDA.B $0D,X                               ; $82AFA9 |
  SEC                                       ; $82AFAB |
  SBC.B $16                                 ; $82AFAC |
  STA.W $000D,Y                             ; $82AFAE |

CODE_82AFB1:
  RTL                                       ; $82AFB1 |

CODE_FN_82AFB2:
  LDA.W #$C022                              ; $82AFB2 |
  JSL.L CODE_FL_82CD2F                      ; $82AFB5 |
  BCC CODE_82AFCF                           ; $82AFB9 |
  LDA.B $12                                 ; $82AFBB |
  STA.W $0028,Y                             ; $82AFBD |
  LDA.B $10                                 ; $82AFC0 |
  STA.W $0026,Y                             ; $82AFC2 |
  BMI CODE_82AFCD                           ; $82AFC5 |
  LDA.W #$2020                              ; $82AFC7 |
  STA.W $0004,Y                             ; $82AFCA |

CODE_82AFCD:
  SEC                                       ; $82AFCD |
  RTS                                       ; $82AFCE |

CODE_82AFCF:
  CLC                                       ; $82AFCF |
  RTS                                       ; $82AFD0 |

  dw CODE_82AFD7                            ; $82AFD1 |
  dw CODE_82AFE5                            ; $82AFD3 |
  dw CODE_82AFF6                            ; $82AFD5 |

CODE_82AFD7:
  LDA.W #$0020                              ; $82AFD7 |
  STA.B $14,X                               ; $82AFDA |
  LDA.B $04,X                               ; $82AFDC |
  ORA.W #$0888                              ; $82AFDE |
  STA.B $04,X                               ; $82AFE1 |
  INC.B $1A,X                               ; $82AFE3 |

CODE_82AFE5:
  DEC.B $38,X                               ; $82AFE5 |
  BPL CODE_82AFF5                           ; $82AFE7 |
  LDA.W #$3072                              ; $82AFE9 |
  STA.B $00,X                               ; $82AFEC |
  LDA.W #$0010                              ; $82AFEE |
  STA.B $38,X                               ; $82AFF1 |
  INC.B $1A,X                               ; $82AFF3 |

CODE_82AFF5:
  RTL                                       ; $82AFF5 |

CODE_82AFF6:
  DEC.B $38,X                               ; $82AFF6 |
  BPL CODE_82AFFE                           ; $82AFF8 |
  JSL.L CODE_FL_82CC9F                      ; $82AFFA |

CODE_82AFFE:
  RTL                                       ; $82AFFE |

  LDA.B $1A,X                               ; $82AFFF |
  BNE CODE_82B022                           ; $82B001 |
  LDY.W #$84BC                              ; $82B003 |
  LDA.W #$0002                              ; $82B006 |
  JSL.L CODE_FL_828AD9                      ; $82B009 |
  LDA.B $04,X                               ; $82B00D |
  ORA.W #$0888                              ; $82B00F |
  STA.B $04,X                               ; $82B012 |
  LDA.W #$0043                              ; $82B014 |
  STA.B $02,X                               ; $82B017 |
  LDA.W #$0020                              ; $82B019 |
  STA.B $38,X                               ; $82B01C |
  STZ.B $3A,X                               ; $82B01E |
  INC.B $1A,X                               ; $82B020 |

CODE_82B022:
  DEC.B $3A,X                               ; $82B022 |
  BPL CODE_82B03D                           ; $82B024 |
  LDA.W #$0001                              ; $82B026 |
  STA.B $3A,X                               ; $82B029 |
  LDA.W #$0005                              ; $82B02B |
  JSL.L CODE_FL_82CD5F                      ; $82B02E |
  BCC CODE_82B03D                           ; $82B032 |
  JSL.L CODE_FL_82CE31                      ; $82B034 |
  LDA.B $04,X                               ; $82B038 |
  STA.W $0004,Y                             ; $82B03A |

CODE_82B03D:
  JSL.L CODE_FL_82C85D                      ; $82B03D |
  DEC.B $38,X                               ; $82B041 |
  BPL CODE_82B049                           ; $82B043 |
  JML.L CODE_FL_82CC9F                      ; $82B045 |

CODE_82B049:
  RTL                                       ; $82B049 |

  LDA.B $1A,X                               ; $82B04A |
  BNE CODE_82B07A                           ; $82B04C |
  LDY.W #$84BC                              ; $82B04E |
  LDA.W #$0004                              ; $82B051 |
  JSL.L CODE_FL_828AD9                      ; $82B054 |
  LDA.B $04,X                               ; $82B058 |
  ORA.W #$0888                              ; $82B05A |
  STA.B $04,X                               ; $82B05D |
  LDY.W #$0080                              ; $82B05F |
  LDA.B $86                                 ; $82B062 |
  LSR A                                     ; $82B064 |
  BCC CODE_82B06A                           ; $82B065 |
  LDY.W #$0000                              ; $82B067 |

CODE_82B06A:
  STY.B $02,X                               ; $82B06A |
  LDA.W #$0006                              ; $82B06C |
  STA.B $26,X                               ; $82B06F |
  LDA.B $86                                 ; $82B071 |
  AND.W #$0003                              ; $82B073 |
  STA.B $28,X                               ; $82B076 |
  INC.B $1A,X                               ; $82B078 |

CODE_82B07A:
  LDA.W #$0080                              ; $82B07A |
  CMP.B $02,X                               ; $82B07D |
  BNE CODE_82B08E                           ; $82B07F |
  LDA.B $28,X                               ; $82B081 |
  INC A                                     ; $82B083 |
  AND.W #$0003                              ; $82B084 |
  STA.B $28,X                               ; $82B087 |
  ASL A                                     ; $82B089 |
  TAY                                       ; $82B08A |
  LDA.W LOOSE_OP_008A2A,Y                   ; $82B08B |

CODE_82B08E:
  STA.B $02,X                               ; $82B08E |
  DEC.B $26,X                               ; $82B090 |
  BPL CODE_82B098                           ; $82B092 |
  JML.L CODE_FL_82CCD2                      ; $82B094 |

CODE_82B098:
  RTL                                       ; $82B098 |

CODE_FL_82B099:
  LDA.W #$0000                              ; $82B099 |
  BRA CODE_82B0A1                           ; $82B09C |

CODE_JL_82B09E:
  LDA.W #$0010                              ; $82B09E |

CODE_82B0A1:
  STA.B $0A                                 ; $82B0A1 |
  STY.B $08                                 ; $82B0A3 |
  TAY                                       ; $82B0A5 |
  PHX                                       ; $82B0A6 |
  LDX.W #$0940                              ; $82B0A7 |

CODE_82B0AA:
  LDA.W #$C00B                              ; $82B0AA |
  JSL.L CODE_FL_82CD96                      ; $82B0AD |
  LDA.W LOOSE_OP_0088FE,Y                   ; $82B0B1 |
  STA.B $26,X                               ; $82B0B4 |
  LDA.W CODE_008900,Y                       ; $82B0B6 |
  STA.B $28,X                               ; $82B0B9 |
  LDY.B $FC                                 ; $82B0BB |
  JSL.L CODE_FL_82CDF8                      ; $82B0BD |
  LDA.B $08                                 ; $82B0C1 |
  STA.B $3A,X                               ; $82B0C3 |
  LDY.B $0A                                 ; $82B0C5 |
  INY                                       ; $82B0C7 |
  INY                                       ; $82B0C8 |
  INY                                       ; $82B0C9 |
  INY                                       ; $82B0CA |
  STY.B $0A                                 ; $82B0CB |
  LDA.B $16,X                               ; $82B0CD |
  TAX                                       ; $82B0CF |
  CPX.W #$0AC0                              ; $82B0D0 |
  BMI CODE_82B0AA                           ; $82B0D3 |
  PLX                                       ; $82B0D5 |
  RTL                                       ; $82B0D6 |

CODE_JL_82B0D7:
  LDA.W #$8936                              ; $82B0D7 |
  BRA CODE_82B0E4                           ; $82B0DA |

CODE_JL_82B0DC:
  LDA.W #$891E                              ; $82B0DC |
  BRA CODE_82B0E4                           ; $82B0DF |

CODE_FL_82B0E1:
  LDA.W #$892A                              ; $82B0E1 |

CODE_82B0E4:
  STA.B $08                                 ; $82B0E4 |
  LDA.W #$0009                              ; $82B0E6 |
  STA.B $0A                                 ; $82B0E9 |
  STY.B $0C                                 ; $82B0EB |

CODE_82B0ED:
  LDA.W #$C00B                              ; $82B0ED |
  JSL.L CODE_FL_82CD2F                      ; $82B0F0 |
  BCC CODE_82B11F                           ; $82B0F4 |
  JSL.L CODE_FL_82CDCF                      ; $82B0F6 |
  LDA.B $0C                                 ; $82B0FA |
  STA.W $003A,Y                             ; $82B0FC |
  STX.B $3C,Y                               ; $82B0FF |
  LDA.B $0A                                 ; $82B101 |
  PHX                                       ; $82B103 |
  ASL A                                     ; $82B104 |
  ASL A                                     ; $82B105 |
  CLC                                       ; $82B106 |
  ADC.B $08                                 ; $82B107 |
  TAX                                       ; $82B109 |
  LDA.W $0000,X                             ; $82B10A |
  STA.W $0026,Y                             ; $82B10D |
  LDA.W $0002,X                             ; $82B110 |
  STA.W $0028,Y                             ; $82B113 |
  TDC                                       ; $82B116 |
  STA.W $002A,Y                             ; $82B117 |
  PLX                                       ; $82B11A |
  DEC.B $0A                                 ; $82B11B |
  BPL CODE_82B0ED                           ; $82B11D |

CODE_82B11F:
  RTL                                       ; $82B11F |

  STY.B $08                                 ; $82B120 |
  LDA.W #$801C                              ; $82B122 |
  JSL.L CODE_FL_82CD2F                      ; $82B125 |
  BCC CODE_82B17B                           ; $82B129 |
  LDA.B $86                                 ; $82B12B |
  AND.W #$007F                              ; $82B12D |
  SEC                                       ; $82B130 |
  SBC.W #$0040                              ; $82B131 |
  CLC                                       ; $82B134 |
  ADC.B $2D,X                               ; $82B135 |
  STA.W $002D,Y                             ; $82B137 |
  LDA.B $87                                 ; $82B13A |
  AND.W #$007F                              ; $82B13C |
  SEC                                       ; $82B13F |
  SBC.W #$0040                              ; $82B140 |
  CLC                                       ; $82B143 |
  ADC.B $31,X                               ; $82B144 |
  STA.W $0031,Y                             ; $82B146 |
  BRA CODE_82B156                           ; $82B149 |

CODE_FL_82B14B:
  STY.B $08                                 ; $82B14B |
  LDA.W #$801C                              ; $82B14D |
  JSL.L CODE_FL_82CD2F                      ; $82B150 |
  BCC CODE_82B17B                           ; $82B154 |

CODE_82B156:
  PHX                                       ; $82B156 |
  LDA.W $1C8A                               ; $82B157 |
  AND.W #$000F                              ; $82B15A |
  ASL A                                     ; $82B15D |
  ASL A                                     ; $82B15E |
  TAX                                       ; $82B15F |
  LDA.W LOOSE_OP_00895A,X                   ; $82B160 |
  STA.W $0026,Y                             ; $82B163 |
  LDA.W CODE_00895C,X                       ; $82B166 |
  STA.W $0028,Y                             ; $82B169 |
  TDC                                       ; $82B16C |
  STA.W $002A,Y                             ; $82B16D |
  PLX                                       ; $82B170 |
  LDA.B $08                                 ; $82B171 |
  STA.W $003A,Y                             ; $82B173 |
  STX.B $3C,Y                               ; $82B176 |
  INC.W $1C8A                               ; $82B178 |

CODE_82B17B:
  RTL                                       ; $82B17B |

  LDA.B $1A,X                               ; $82B17C |
  BNE CODE_82B1B9                           ; $82B17E |
  LDA.W #$0888                              ; $82B180 |
  STA.B $04,X                               ; $82B183 |

CODE_82B185:
  LDA.B $3A,X                               ; $82B185 |
  BEQ CODE_82B1AD                           ; $82B187 |
  DEC A                                     ; $82B189 |
  BEQ CODE_82B1A1                           ; $82B18A |
  DEC A                                     ; $82B18C |
  BEQ CODE_82B19B                           ; $82B18D |
  LDY.W #$848E                              ; $82B18F |
  LDA.W #$0004                              ; $82B192 |
  JSL.L CODE_FL_828AD9                      ; $82B195 |
  BRA CODE_82B1B1                           ; $82B199 |

CODE_82B19B:
  JSL.L CODE_FL_828B8B                      ; $82B19B |
  BRA CODE_82B1B1                           ; $82B19F |

CODE_82B1A1:
  LDY.W #$8418                              ; $82B1A1 |
  LDA.W #$0006                              ; $82B1A4 |
  JSL.L CODE_FL_828AD9                      ; $82B1A7 |
  BRA CODE_82B1B1                           ; $82B1AB |

CODE_82B1AD:
  JSL.L CODE_FL_828BAB                      ; $82B1AD |

CODE_82B1B1:
  LDA.W #$0018                              ; $82B1B1 |
  STA.B $38,X                               ; $82B1B4 |
  INC.B $1A,X                               ; $82B1B6 |
  RTL                                       ; $82B1B8 |

CODE_82B1B9:
  JSL.L CODE_FL_82C842                      ; $82B1B9 |
  JSL.L CODE_FL_82CB09                      ; $82B1BD |
  LDA.B $1C,X                               ; $82B1C1 |
  BEQ CODE_82B1D5                           ; $82B1C3 |
  DEC.B $38,X                               ; $82B1C5 |
  BMI CODE_82B1D5                           ; $82B1C7 |
  LDA.B $38,X                               ; $82B1C9 |
  CMP.W #$0008                              ; $82B1CB |
  BPL CODE_82B1D4                           ; $82B1CE |
  JSL.L CODE_FL_82CE8C                      ; $82B1D0 |

CODE_82B1D4:
  RTL                                       ; $82B1D4 |

CODE_82B1D5:
  JMP.W CODE_FL_82CC9F                      ; $82B1D5 |

  LDA.B $1A,X                               ; $82B1D8 |
  BNE CODE_82B1EB                           ; $82B1DA |
  LDY.B $3C,X                               ; $82B1DC |
  BEQ CODE_82B1E4                           ; $82B1DE |
  JSL.L CODE_FL_82CDF8                      ; $82B1E0 |

CODE_82B1E4:
  LDA.W #$8888                              ; $82B1E4 |
  STA.B $04,X                               ; $82B1E7 |
  BRA CODE_82B185                           ; $82B1E9 |

CODE_82B1EB:
  JSL.L CODE_FL_82C8C0                      ; $82B1EB |
  JSL.L CODE_FL_82CAC7                      ; $82B1EF |
  LDA.B $1C,X                               ; $82B1F3 |
  BEQ CODE_82B1D5                           ; $82B1F5 |
  LDY.B $31,X                               ; $82B1F7 |
  CMP.W #$0050                              ; $82B1F9 |
  BPL CODE_82B1D5                           ; $82B1FC |
  DEC.B $38,X                               ; $82B1FE |
  BMI CODE_82B1D5                           ; $82B200 |
  LDA.B $38,X                               ; $82B202 |
  CMP.W #$0008                              ; $82B204 |
  BPL CODE_82B20D                           ; $82B207 |
  JSL.L CODE_FL_82CE8C                      ; $82B209 |

CODE_82B20D:
  RTL                                       ; $82B20D |

  LDA.B $1A,X                               ; $82B20E |
  BNE CODE_82B219                           ; $82B210 |
  LDA.W #$0008                              ; $82B212 |
  STA.B $38,X                               ; $82B215 |
  INC.B $1A,X                               ; $82B217 |

CODE_82B219:
  LDA.B $40,X                               ; $82B219 |
  BNE CODE_82B221                           ; $82B21B |
  JSL.L CODE_FL_82D565                      ; $82B21D |

CODE_82B221:
  LDA.B $1C,X                               ; $82B221 |
  BNE CODE_82B229                           ; $82B223 |
  JSL.L CODE_FL_828B8B                      ; $82B225 |

CODE_82B229:
  LDY.W #$0DC0                              ; $82B229 |
  LDA.W $0035,Y                             ; $82B22C |
  DEC A                                     ; $82B22F |
  STA.B $35,X                               ; $82B230 |
  LDA.B $86                                 ; $82B232 |
  AND.W #$003F                              ; $82B234 |
  SEC                                       ; $82B237 |
  SBC.W #$0020                              ; $82B238 |
  CLC                                       ; $82B23B |
  ADC.W $002D,Y                             ; $82B23C |
  STA.B $2D,X                               ; $82B23F |
  LDA.B $87                                 ; $82B241 |
  AND.W #$003F                              ; $82B243 |
  SEC                                       ; $82B246 |
  SBC.W #$0020                              ; $82B247 |
  CLC                                       ; $82B24A |
  ADC.W $0031,Y                             ; $82B24B |
  ADC.B $3E,X                               ; $82B24E |
  STA.B $31,X                               ; $82B250 |
  DEC.B $3A,X                               ; $82B252 |
  BPL CODE_82B296                           ; $82B254 |
  LDA.B $38,X                               ; $82B256 |
  STA.B $3A,X                               ; $82B258 |
  LDA.W #$13C0                              ; $82B25A |
  STA.B $02                                 ; $82B25D |
  LDY.W #$0AC0                              ; $82B25F |
  LDA.W #$801C                              ; $82B262 |
  JSL.L CODE_FL_82CD4C                      ; $82B265 |
  BCC CODE_82B296                           ; $82B269 |
  LDA.B $3C,X                               ; $82B26B |
  BEQ CODE_82B272                           ; $82B26D |
  DEC A                                     ; $82B26F |
  BRA CODE_82B277                           ; $82B270 |

CODE_82B272:
  LDA.B $86                                 ; $82B272 |
  AND.W #$0003                              ; $82B274 |

CODE_82B277:
  STA.W $003A,Y                             ; $82B277 |
  STX.B $3C,Y                               ; $82B27A |
  PHX                                       ; $82B27C |
  TYX                                       ; $82B27D |
  LDA.B $42                                 ; $82B27E |
  AND.W #$000F                              ; $82B280 |
  CLC                                       ; $82B283 |
  ADC.W #$0020                              ; $82B284 |
  TAY                                       ; $82B287 |
  LDA.B $86                                 ; $82B288 |
  AND.W #$000F                              ; $82B28A |
  CLC                                       ; $82B28D |
  ADC.W #$0010                              ; $82B28E |
  JSL.L CODE_FL_8AB4A6                      ; $82B291 |
  PLX                                       ; $82B295 |

CODE_82B296:
  RTL                                       ; $82B296 |

  LDA.B $1A,X                               ; $82B297 |
  BNE CODE_82B2A4                           ; $82B299 |
  LDY.W #$8430                              ; $82B29B |
  JSL.L CODE_FL_828AC3                      ; $82B29E |
  INC.B $1A,X                               ; $82B2A2 |

CODE_82B2A4:
  LDY.W #$0DC0                              ; $82B2A4 |
  LDA.W $002D,Y                             ; $82B2A7 |
  STA.B $2D,X                               ; $82B2AA |
  LDA.W $0035,Y                             ; $82B2AC |
  INC A                                     ; $82B2AF |
  STA.B $35,X                               ; $82B2B0 |
  LDA.W #$0080                              ; $82B2B2 |
  STA.B $31,X                               ; $82B2B5 |
  RTL                                       ; $82B2B7 |

  LDA.B $1A,X                               ; $82B2B8 |
  BNE CODE_82B2CB                           ; $82B2BA |
  LDA.W #$318C                              ; $82B2BC |
  STA.B $00,X                               ; $82B2BF |
  STZ.B $02,X                               ; $82B2C1 |
  LDA.W #$0004                              ; $82B2C3 |
  STA.B $3A,X                               ; $82B2C6 |
  INC.B $1A,X                               ; $82B2C8 |
  RTL                                       ; $82B2CA |

CODE_82B2CB:
  DEC.B $3A,X                               ; $82B2CB |
  BPL CODE_82B2D3                           ; $82B2CD |
  JML.L CODE_FL_82CC9F                      ; $82B2CF |

CODE_82B2D3:
  JMP.W CODE_FL_82CE8C                      ; $82B2D3 |

  dw CODE_82B2DA                            ; $82B2D6 |
  dw CODE_82B2F3                            ; $82B2D8 |

CODE_82B2DA:
  LDY.W #$848E                              ; $82B2DA |
  LDA.W #$0003                              ; $82B2DD |
  JSL.L CODE_FL_828AD9                      ; $82B2E0 |
  LDA.B $35,X                               ; $82B2E4 |
  SEC                                       ; $82B2E6 |
  SBC.W #$0010                              ; $82B2E7 |
  STA.B $35,X                               ; $82B2EA |
  LDA.W #$FE00                              ; $82B2EC |
  STA.B $28,X                               ; $82B2EF |
  INC.B $1A,X                               ; $82B2F1 |

CODE_82B2F3:
  JSL.L CODE_FL_82C89B                      ; $82B2F3 |
  JMP.W CODE_JP_82AEFC                      ; $82B2F7 |

  LDA.B $1A,X                               ; $82B2FA |
  BNE CODE_82B31B                           ; $82B2FC |
  CPX.W #$13C0                              ; $82B2FE |
  BEQ CODE_82B30A                           ; $82B301 |
  LDA.W #$3098                              ; $82B303 |
  STA.B $00,X                               ; $82B306 |
  BRA CODE_82B314                           ; $82B308 |

CODE_82B30A:
  LDY.W #$8422                              ; $82B30A |
  LDA.W #$0010                              ; $82B30D |
  JSL.L CODE_FL_828AD9                      ; $82B310 |

CODE_82B314:
  LDA.W #$1898                              ; $82B314 |
  STA.B $04,X                               ; $82B317 |
  INC.B $1A,X                               ; $82B319 |

CODE_82B31B:
  RTL                                       ; $82B31B |

CODE_FL_82B31C:
  LDY.W #$0000                              ; $82B31C |

CODE_FL_82B31F:
  STY.B $1E                                 ; $82B31F |
  STZ.B $18                                 ; $82B321 |

CODE_82B323:
  LDA.W #$0006                              ; $82B323 |
  JSL.L CODE_FL_82CD5F                      ; $82B326 |
  BCC CODE_82B33A                           ; $82B32A |
  LDA.B $18                                 ; $82B32C |
  STA.W $002A,Y                             ; $82B32E |
  JSL.L CODE_FL_82CE31                      ; $82B331 |
  LDA.B $1E                                 ; $82B335 |
  STA.W $002E,Y                             ; $82B337 |

CODE_82B33A:
  INC.B $18                                 ; $82B33A |
  LDA.B $18                                 ; $82B33C |
  CMP.W #$0008                              ; $82B33E |
  BMI CODE_82B323                           ; $82B341 |
  RTL                                       ; $82B343 |

  LDA.B $1A,X                               ; $82B344 |
  BEQ CODE_82B34B                           ; $82B346 |
  JMP.W CODE_JP_82B3D9                      ; $82B348 |

CODE_82B34B:
  LDA.B $2A,X                               ; $82B34B |
  ASL A                                     ; $82B34D |
  ASL A                                     ; $82B34E |
  ASL A                                     ; $82B34F |
  TAY                                       ; $82B350 |
  LDA.B $2E,X                               ; $82B351 |
  BNE CODE_82B35A                           ; $82B353 |
  LDA.W LOOSE_OP_008A32,Y                   ; $82B355 |
  STA.B $2E,X                               ; $82B358 |

CODE_82B35A:
  LDA.B $04,X                               ; $82B35A |
  ORA.W LOOSE_OP_008A34,Y                   ; $82B35C |
  STA.B $04,X                               ; $82B35F |
  LDA.W CODE_008A36,Y                       ; $82B361 |
  STA.B $26,X                               ; $82B364 |
  LDA.W CODE_008A38,Y                       ; $82B366 |
  STA.B $28,X                               ; $82B369 |
  LDA.B $2C,X                               ; $82B36B |
  BNE CODE_82B374                           ; $82B36D |
  LDA.W #$0030                              ; $82B36F |
  STA.B $2C,X                               ; $82B372 |

CODE_82B374:
  INC.B $1A,X                               ; $82B374 |
  LDA.B $2E,X                               ; $82B376 |
  PHX                                       ; $82B378 |
  ASL A                                     ; $82B379 |
  TAX                                       ; $82B37A |
  LDA.L PTR16_82B385,X                      ; $82B37B |
  PLX                                       ; $82B37F |
  STA.B $00                                 ; $82B380 |
  JMP.W ($0000)                             ; $82B382 |

PTR16_82B385:
  dw CODE_82B397                            ; $82B385 |
  dw CODE_82B39F                            ; $82B387 |
  dw CODE_82B3A7                            ; $82B389 |
  dw CODE_82B3AF                            ; $82B38B |
  dw CODE_82B3B7                            ; $82B38D |
  dw CODE_82B3BF                            ; $82B38F |
  dw CODE_82B3C7                            ; $82B391 |
  dw CODE_82B3CF                            ; $82B393 |
  dw CODE_828A32                            ; $82B395 |

CODE_82B397:
  LDY.W #$83E4                              ; $82B397 |
  LDA.W #$0004                              ; $82B39A |
  BRA CODE_82B3D5                           ; $82B39D |

CODE_82B39F:
  LDY.W #$83EC                              ; $82B39F |
  LDA.W #$0005                              ; $82B3A2 |
  BRA CODE_82B3D5                           ; $82B3A5 |

CODE_82B3A7:
  LDY.W #$83F6                              ; $82B3A7 |
  LDA.W #$0005                              ; $82B3AA |
  BRA CODE_82B3D5                           ; $82B3AD |

CODE_82B3AF:
  LDY.W #$8418                              ; $82B3AF |
  LDA.W #$0005                              ; $82B3B2 |
  BRA CODE_82B3D5                           ; $82B3B5 |

CODE_82B3B7:
  LDY.W #$848E                              ; $82B3B7 |
  LDA.W #$0004                              ; $82B3BA |
  BRA CODE_82B3D5                           ; $82B3BD |

CODE_82B3BF:
  LDY.W #$8402                              ; $82B3BF |
  LDA.W #$0004                              ; $82B3C2 |
  BRA CODE_82B3D5                           ; $82B3C5 |

CODE_82B3C7:
  LDY.W #$8408                              ; $82B3C7 |
  LDA.W #$0004                              ; $82B3CA |
  BRA CODE_82B3D5                           ; $82B3CD |

CODE_82B3CF:
  LDY.W #$840E                              ; $82B3CF |
  LDA.W #$0004                              ; $82B3D2 |

CODE_82B3D5:
  JSL.L CODE_FL_828AD9                      ; $82B3D5 |

CODE_JP_82B3D9:
  DEC.B $2C,X                               ; $82B3D9 |
  BMI CODE_82B3E1                           ; $82B3DB |
  LDA.B $1C,X                               ; $82B3DD |
  BNE CODE_82B3E5                           ; $82B3DF |

CODE_82B3E1:
  JML.L CODE_FL_82CCD2                      ; $82B3E1 |

CODE_82B3E5:
  JSL.L CODE_FL_82C842                      ; $82B3E5 |
  JML.L CODE_FL_82CB09                      ; $82B3E9 |

  LDA.B $1A,X                               ; $82B3ED |
  BNE CODE_82B410                           ; $82B3EF |
  LDY.B $2A,X                               ; $82B3F1 |
  LDA.W CODE_008A72,Y                       ; $82B3F3 |
  STA.B $00,X                               ; $82B3F6 |
  LDA.W LOOSE_OP_008A74,Y                   ; $82B3F8 |
  STA.B $09,X                               ; $82B3FB |
  LDA.W LOOSE_OP_008A76,Y                   ; $82B3FD |
  STA.B $0D,X                               ; $82B400 |
  STA.B $2C,X                               ; $82B402 |
  LDA.W CODE_008A78,Y                       ; $82B404 |
  STA.B $26,X                               ; $82B407 |
  LDA.W #$8000                              ; $82B409 |
  STA.B $14,X                               ; $82B40C |
  INC.B $1A,X                               ; $82B40E |

CODE_82B410:
  LDA.B $2C,X                               ; $82B410 |
  CLC                                       ; $82B412 |
  ADC.W $1C80                               ; $82B413 |
  STA.B $0D,X                               ; $82B416 |
  LDA.B $26,X                               ; $82B418 |
  BEQ CODE_82B42E                           ; $82B41A |
  JSL.L CODE_FL_82C842                      ; $82B41C |
  CMP.W #$FFE0                              ; $82B420 |
  BPL CODE_82B42E                           ; $82B423 |
  LDA.B $2E,X                               ; $82B425 |
  BNE CODE_82B42E                           ; $82B427 |
  LDY.W #$0110                              ; $82B429 |
  STY.B $09,X                               ; $82B42C |

CODE_82B42E:
  RTL                                       ; $82B42E |

CODE_FL_82B42F:
  PHA                                       ; $82B42F |
  JSL.L CODE_FL_82B45B                      ; $82B430 |
  PLA                                       ; $82B434 |
  JMP.W CODE_FL_82B840                      ; $82B435 |

CODE_FL_82B438:
  PHA                                       ; $82B438 |
  JSL.L CODE_FL_82B45B                      ; $82B439 |
  LDA.B $5C,X                               ; $82B43D |
  AND.W #$00FF                              ; $82B43F |
  CMP.W #$000F                              ; $82B442 |
  BEQ CODE_82B44C                           ; $82B445 |
  CMP.W #$000E                              ; $82B447 |
  BNE CODE_82B44E                           ; $82B44A |

CODE_82B44C:
  STZ.B $5E,X                               ; $82B44C |

CODE_82B44E:
  PLA                                       ; $82B44E |
  JMP.W CODE_FL_82B840                      ; $82B44F |

CODE_FL_82B452:
  PHA                                       ; $82B452 |
  JSL.L CODE_FL_82B45B                      ; $82B453 |
  PLA                                       ; $82B457 |
  JMP.W CODE_JP_82B868                      ; $82B458 |

CODE_FL_82B45B:
  LDA.W $07D8                               ; $82B45B |
  BEQ CODE_82B470                           ; $82B45E |
  LDA.W $081E                               ; $82B460 |
  BEQ CODE_82B470                           ; $82B463 |
  LDY.W #$07C0                              ; $82B465 |
  JSR.W CODE_FN_82B770                      ; $82B468 |
  BCS CODE_82B470                           ; $82B46B |
  JMP.W CODE_JP_82B537                      ; $82B46D |

CODE_82B470:
  LDA.W $0958                               ; $82B470 |
  BEQ CODE_82B485                           ; $82B473 |
  LDA.W $099E                               ; $82B475 |
  BEQ CODE_82B485                           ; $82B478 |
  LDY.W #$0940                              ; $82B47A |
  JSR.W CODE_FN_82B770                      ; $82B47D |
  BCS CODE_82B485                           ; $82B480 |
  JMP.W CODE_JP_82B537                      ; $82B482 |

CODE_82B485:
  LDA.W $0AD8                               ; $82B485 |
  BEQ CODE_82B49A                           ; $82B488 |
  LDA.W $0B1E                               ; $82B48A |
  BEQ CODE_82B49A                           ; $82B48D |
  LDY.W #$0AC0                              ; $82B48F |
  JSR.W CODE_FN_82B770                      ; $82B492 |
  BCS CODE_82B49A                           ; $82B495 |
  JMP.W CODE_JP_82B56A                      ; $82B497 |

CODE_82B49A:
  LDA.W $0B38                               ; $82B49A |
  BEQ CODE_82B4AF                           ; $82B49D |
  LDA.W $0B7E                               ; $82B49F |
  BEQ CODE_82B4AF                           ; $82B4A2 |
  LDY.W #$0B20                              ; $82B4A4 |
  JSR.W CODE_FN_82B770                      ; $82B4A7 |
  BCS CODE_82B4AF                           ; $82B4AA |
  JMP.W CODE_JP_82B56A                      ; $82B4AC |

CODE_82B4AF:
  LDA.W $0B98                               ; $82B4AF |
  BEQ CODE_82B4C4                           ; $82B4B2 |
  LDA.W $0BDE                               ; $82B4B4 |
  BEQ CODE_82B4C4                           ; $82B4B7 |
  LDY.W #$0B80                              ; $82B4B9 |
  JSR.W CODE_FN_82B770                      ; $82B4BC |
  BCS CODE_82B4C4                           ; $82B4BF |
  JMP.W CODE_JP_82B56A                      ; $82B4C1 |

CODE_82B4C4:
  LDA.W $0BF8                               ; $82B4C4 |
  BEQ CODE_82B4D9                           ; $82B4C7 |
  LDA.W $0C3E                               ; $82B4C9 |
  BEQ CODE_82B4D9                           ; $82B4CC |
  LDY.W #$0BE0                              ; $82B4CE |
  JSR.W CODE_FN_82B770                      ; $82B4D1 |
  BCS CODE_82B4D9                           ; $82B4D4 |
  JMP.W CODE_JP_82B56A                      ; $82B4D6 |

CODE_82B4D9:
  LDA.W $0C58                               ; $82B4D9 |
  BEQ CODE_82B4EE                           ; $82B4DC |
  LDA.W $0C9E                               ; $82B4DE |
  BEQ CODE_82B4EE                           ; $82B4E1 |
  LDY.W #$0C40                              ; $82B4E3 |
  JSR.W CODE_FN_82B770                      ; $82B4E6 |
  BCS CODE_82B4EE                           ; $82B4E9 |
  JMP.W CODE_JP_82B56A                      ; $82B4EB |

CODE_82B4EE:
  LDA.W $0CB8                               ; $82B4EE |
  BEQ CODE_82B503                           ; $82B4F1 |
  LDA.W $0CFE                               ; $82B4F3 |
  BEQ CODE_82B503                           ; $82B4F6 |
  LDY.W #$0CA0                              ; $82B4F8 |
  JSR.W CODE_FN_82B770                      ; $82B4FB |
  BCS CODE_82B503                           ; $82B4FE |
  JMP.W CODE_JP_82B56A                      ; $82B500 |

CODE_82B503:
  LDA.W $0D18                               ; $82B503 |
  BEQ CODE_82B518                           ; $82B506 |
  LDA.W $0D5E                               ; $82B508 |
  BEQ CODE_82B518                           ; $82B50B |
  LDY.W #$0D00                              ; $82B50D |
  JSR.W CODE_FN_82B770                      ; $82B510 |
  BCS CODE_82B518                           ; $82B513 |
  JMP.W CODE_JP_82B56A                      ; $82B515 |

CODE_82B518:
  LDA.W $0D78                               ; $82B518 |
  BEQ CODE_82B52D                           ; $82B51B |
  LDA.W $0DBE                               ; $82B51D |
  BEQ CODE_82B52D                           ; $82B520 |
  LDY.W #$0D60                              ; $82B522 |
  JSR.W CODE_FN_82B770                      ; $82B525 |
  BCS CODE_82B52D                           ; $82B528 |
  JMP.W CODE_JP_82B56A                      ; $82B52A |

CODE_82B52D:
  JSR.W CODE_FN_82B7AB                      ; $82B52D |
  BCS CODE_82B535                           ; $82B530 |
  JMP.W CODE_JP_82B5B4                      ; $82B532 |

CODE_82B535:
  CLC                                       ; $82B535 |
  RTL                                       ; $82B536 |

CODE_JP_82B537:
  LDA.B $5E,X                               ; $82B537 |
  BEQ CODE_82B553                           ; $82B539 |
  STA.W $005C,Y                             ; $82B53B |
  TXA                                       ; $82B53E |
  LSR A                                     ; $82B53F |
  LSR A                                     ; $82B540 |
  LSR A                                     ; $82B541 |
  LSR A                                     ; $82B542 |
  LSR A                                     ; $82B543 |
  SEP #$20                                  ; $82B544 |
  STA.W $005D,Y                             ; $82B546 |
  REP #$20                                  ; $82B549 |
  TDC                                       ; $82B54B |
  STA.W $005A,Y                             ; $82B54C |
  JSL.L CODE_FL_82AE8E                      ; $82B54F |

CODE_82B553:
  LDA.W $005E,Y                             ; $82B553 |
  BEQ CODE_82B568                           ; $82B556 |
  STA.B $5C,X                               ; $82B558 |
  TYA                                       ; $82B55A |
  LSR A                                     ; $82B55B |
  LSR A                                     ; $82B55C |
  LSR A                                     ; $82B55D |
  LSR A                                     ; $82B55E |
  LSR A                                     ; $82B55F |
  SEP #$20                                  ; $82B560 |
  STA.B $5D,X                               ; $82B562 |
  REP #$20                                  ; $82B564 |
  STZ.B $5A,X                               ; $82B566 |

CODE_82B568:
  SEC                                       ; $82B568 |
  RTL                                       ; $82B569 |

CODE_JP_82B56A:
  LDA.B $5E,X                               ; $82B56A |
  BEQ CODE_82B582                           ; $82B56C |
  STA.W $005C,Y                             ; $82B56E |
  TXA                                       ; $82B571 |
  LSR A                                     ; $82B572 |
  LSR A                                     ; $82B573 |
  LSR A                                     ; $82B574 |
  LSR A                                     ; $82B575 |
  LSR A                                     ; $82B576 |
  SEP #$20                                  ; $82B577 |
  STA.W $005D,Y                             ; $82B579 |
  REP #$20                                  ; $82B57C |
  TDC                                       ; $82B57E |
  STA.W $005A,Y                             ; $82B57F |

CODE_82B582:
  LDA.W $005E,Y                             ; $82B582 |
  BEQ CODE_82B59C                           ; $82B585 |
  CPX.W #$0DC0                              ; $82B587 |
  BEQ CODE_82B59E                           ; $82B58A |

CODE_82B58C:
  STA.B $5C,X                               ; $82B58C |
  TYA                                       ; $82B58E |
  LSR A                                     ; $82B58F |
  LSR A                                     ; $82B590 |
  LSR A                                     ; $82B591 |
  LSR A                                     ; $82B592 |
  LSR A                                     ; $82B593 |
  SEP #$20                                  ; $82B594 |
  STA.B $5D,X                               ; $82B596 |
  REP #$20                                  ; $82B598 |
  STZ.B $5A,X                               ; $82B59A |

CODE_82B59C:
  SEC                                       ; $82B59C |
  RTL                                       ; $82B59D |

CODE_82B59E:
  CMP.W #$0001                              ; $82B59E |
  BNE CODE_82B58C                           ; $82B5A1 |
  LDY.W $1C8E                               ; $82B5A3 |
  STZ.W $1C8E                               ; $82B5A6 |
  INY                                       ; $82B5A9 |
  CPY.W #$0008                              ; $82B5AA |
  BEQ CODE_82B58C                           ; $82B5AD |
  STY.W $1C8E                               ; $82B5AF |
  CLC                                       ; $82B5B2 |
  RTL                                       ; $82B5B3 |

CODE_JP_82B5B4:
  LDA.B $5E,X                               ; $82B5B4 |
  BEQ CODE_82B619                           ; $82B5B6 |
  STA.W $1C78                               ; $82B5B8 |
  LDA.W $1C6E                               ; $82B5BB |
  AND.W #$00FF                              ; $82B5BE |
  BEQ CODE_82B607                           ; $82B5C1 |
  CMP.W #$0060                              ; $82B5C3 |
  BEQ CODE_82B5FC                           ; $82B5C6 |
  CMP.W #$0001                              ; $82B5C8 |
  BEQ CODE_82B5D6                           ; $82B5CB |
  LDA.B $09,X                               ; $82B5CD |
  CMP.W #$0070                              ; $82B5CF |
  BPL CODE_82B5DD                           ; $82B5D2 |
  BRA CODE_82B607                           ; $82B5D4 |

CODE_82B5D6:
  LDA.B $09,X                               ; $82B5D6 |
  CMP.W #$0090                              ; $82B5D8 |
  BPL CODE_82B607                           ; $82B5DB |

CODE_82B5DD:
  LDA.W #$0039                              ; $82B5DD |
  JSL.L push_sound_queue                    ; $82B5E0 |
  LDA.W $1C6E                               ; $82B5E4 |
  ORA.W #$8000                              ; $82B5E7 |
  STA.W $1C6E                               ; $82B5EA |
  LDY.W $1C78                               ; $82B5ED |
  LDA.W CODE_008B69,Y                       ; $82B5F0 |
  JSL.L CODE_FL_82B7ED                      ; $82B5F3 |
  LDA.W #$000E                              ; $82B5F7 |
  BRA CODE_82B619                           ; $82B5FA |

CODE_82B5FC:
  ORA.W #$8000                              ; $82B5FC |
  STA.W $1C6E                               ; $82B5FF |
  LDA.W #$000D                              ; $82B602 |
  BRA CODE_82B619                           ; $82B605 |

CODE_82B607:
  JSR.W CODE_FN_82B622                      ; $82B607 |
  LDY.W $1C78                               ; $82B60A |
  LDA.W LOOSE_OP_008B54,Y                   ; $82B60D |
  JSL.L CODE_FL_82B7ED                      ; $82B610 |
  LDA.W #$000F                              ; $82B614 |
  BRA CODE_82B61C                           ; $82B617 |

CODE_82B619:
  STZ.W $1C78                               ; $82B619 |

CODE_82B61C:
  STA.B $5C,X                               ; $82B61C |
  STZ.B $5A,X                               ; $82B61E |
  SEC                                       ; $82B620 |
  RTL                                       ; $82B621 |

CODE_FN_82B622:
  LDA.W $1C78                               ; $82B622 |
  PHX                                       ; $82B625 |
  ASL A                                     ; $82B626 |
  TAX                                       ; $82B627 |
  LDA.L PTR16_82B632,X                      ; $82B628 |
  PLX                                       ; $82B62C |
  STA.B $00                                 ; $82B62D |
  JMP.W ($0000)                             ; $82B62F |

PTR16_82B632:
  dw CODE_82B658                            ; $82B632 |
  dw CODE_82B658                            ; $82B634 |
  dw CODE_82B658                            ; $82B636 |
  dw CODE_JP_82B689                         ; $82B638 |
  dw CODE_82B658                            ; $82B63A |
  dw CODE_82B69F                            ; $82B63C |
  dw CODE_JP_82B689                         ; $82B63E |
  dw CODE_82B6E4                            ; $82B640 |
  dw CODE_82B712                            ; $82B642 |
  dw CODE_82B66F                            ; $82B644 |
  dw CODE_82B73D                            ; $82B646 |
  dw CODE_82B66F                            ; $82B648 |
  dw CODE_JP_82B689                         ; $82B64A |
  dw CODE_82B6B1                            ; $82B64C |
  dw CODE_82B740                            ; $82B64E |
  dw CODE_JP_82B689                         ; $82B650 |
  dw CODE_82B758                            ; $82B652 |
  dw CODE_82B658                            ; $82B654 |
  dw CODE_82B658                            ; $82B656 |

CODE_82B658:
  RTS                                       ; $82B658 |

  LDA.W #$0002                              ; $82B659 |
  STA.W $1C84                               ; $82B65C |
  JSL.L CODE_FL_82AF05                      ; $82B65F |
  JSL.L CODE_FL_82C82D                      ; $82B663 |
  LDA.W #$0030                              ; $82B667 |
  JSL.L CODE_FL_8089BD                      ; $82B66A |
  RTS                                       ; $82B66E |

CODE_82B66F:
  LDA.W #$0002                              ; $82B66F |
  STA.W $1C84                               ; $82B672 |
  JSL.L CODE_FL_82AF49                      ; $82B675 |
  JSL.L CODE_FL_82AF05                      ; $82B679 |
  JSL.L CODE_FL_82C832                      ; $82B67D |
  LDA.W #$0030                              ; $82B681 |
  JSL.L CODE_FL_8089BD                      ; $82B684 |
  RTS                                       ; $82B688 |

CODE_JP_82B689:
  LDA.W #$0001                              ; $82B689 |
  STA.W $1C84                               ; $82B68C |
  JSL.L CODE_FL_82AF05                      ; $82B68F |
  JSL.L CODE_FL_82C82D                      ; $82B693 |
  LDA.W #$0030                              ; $82B697 |
  JSL.L CODE_FL_8089BD                      ; $82B69A |
  RTS                                       ; $82B69E |

CODE_82B69F:
  LDA.W #$0003                              ; $82B69F |
  STA.W $1C84                               ; $82B6A2 |
  JSL.L CODE_FL_82C832                      ; $82B6A5 |
  LDA.W #$0030                              ; $82B6A9 |
  JSL.L CODE_FL_8089BD                      ; $82B6AC |
  RTS                                       ; $82B6B0 |

CODE_82B6B1:
  LDA.W #$0001                              ; $82B6B1 |
  STA.W $1C84                               ; $82B6B4 |
  LDA.B $3A,X                               ; $82B6B7 |
  STA.B $00                                 ; $82B6B9 |
  LDA.B $3C,X                               ; $82B6BB |
  STA.B $02                                 ; $82B6BD |
  LDA.B $3E,X                               ; $82B6BF |
  STA.B $04                                 ; $82B6C1 |
  LDA.B $0D,X                               ; $82B6C3 |
  SEC                                       ; $82B6C5 |
  SBC.W #$0030                              ; $82B6C6 |
  TAY                                       ; $82B6C9 |
  LDA.B $09,X                               ; $82B6CA |
  SEC                                       ; $82B6CC |
  SBC.W #$0040                              ; $82B6CD |
  JSL.L CODE_FL_82C629                      ; $82B6D0 |
  JSL.L CODE_FL_82AF05                      ; $82B6D4 |
  JSL.L CODE_FL_82C82D                      ; $82B6D8 |
  LDA.W #$0030                              ; $82B6DC |
  JSL.L CODE_FL_8089BD                      ; $82B6DF |
  RTS                                       ; $82B6E3 |

CODE_82B6E4:
  LDA.W #$0001                              ; $82B6E4 |
  STA.W $1C84                               ; $82B6E7 |
  LDA.B $0D,X                               ; $82B6EA |
  SEC                                       ; $82B6EC |
  SBC.W #$0030                              ; $82B6ED |
  TAY                                       ; $82B6F0 |
  LDA.B $09,X                               ; $82B6F1 |
  SEC                                       ; $82B6F3 |
  SBC.W #$0020                              ; $82B6F4 |
  JSL.L CODE_FL_82C656                      ; $82B6F7 |
  JSL.L CODE_FL_82AF05                      ; $82B6FB |
  LDA.W #$0084                              ; $82B6FF |
  JSL.L CODE_FL_8089BD                      ; $82B702 |
  LDA.W #$0030                              ; $82B706 |
  JSL.L CODE_FL_8089BD                      ; $82B709 |
  JSL.L CODE_FL_82C82D                      ; $82B70D |
  RTS                                       ; $82B711 |

CODE_82B712:
  LDA.W #$0002                              ; $82B712 |
  STA.W $1C84                               ; $82B715 |
  LDA.B $3A,X                               ; $82B718 |
  STA.B $00                                 ; $82B71A |
  LDA.B $0D,X                               ; $82B71C |
  SEC                                       ; $82B71E |
  SBC.W #$0038                              ; $82B71F |
  TAY                                       ; $82B722 |
  LDA.B $09,X                               ; $82B723 |
  SEC                                       ; $82B725 |
  SBC.W #$0040                              ; $82B726 |
  JSL.L CODE_FL_82C686                      ; $82B729 |
  JSL.L CODE_FL_82AF05                      ; $82B72D |
  LDA.W #$0030                              ; $82B731 |
  JSL.L CODE_FL_8089BD                      ; $82B734 |
  JSL.L CODE_FL_82C832                      ; $82B738 |
  RTS                                       ; $82B73C |

CODE_82B73D:
  JMP.W CODE_JP_82B689                      ; $82B73D |

CODE_82B740:
  LDA.W #$0001                              ; $82B740 |
  STA.W $1C28                               ; $82B743 |
  LDA.W #$0001                              ; $82B746 |
  STA.W $1C84                               ; $82B749 |
  LDA.W #$0030                              ; $82B74C |
  JSL.L CODE_FL_8089BD                      ; $82B74F |
  JSL.L CODE_FL_82C82D                      ; $82B753 |
  RTS                                       ; $82B757 |

CODE_82B758:
  LDA.W #$0001                              ; $82B758 |
  STA.W $1C28                               ; $82B75B |
  LDA.W #$0001                              ; $82B75E |
  STA.W $1C84                               ; $82B761 |
  LDA.W #$0030                              ; $82B764 |
  JSL.L CODE_FL_8089BD                      ; $82B767 |
  JSL.L CODE_FL_82C82D                      ; $82B76B |
  RTS                                       ; $82B76F |

CODE_FN_82B770:
  LDA.W $0054,Y                             ; $82B770 |
  CLC                                       ; $82B773 |
  ADC.B $54,X                               ; $82B774 |
  STA.B $00                                 ; $82B776 |
  ADC.B $2D,X                               ; $82B778 |
  SEC                                       ; $82B77A |
  SBC.W $002D,Y                             ; $82B77B |
  ASL.B $00                                 ; $82B77E |
  CMP.B $00                                 ; $82B780 |
  BCS CODE_82B7AA                           ; $82B782 |
  LDA.W $0056,Y                             ; $82B784 |
  CLC                                       ; $82B787 |
  ADC.B $56,X                               ; $82B788 |
  STA.B $00                                 ; $82B78A |
  ADC.B $31,X                               ; $82B78C |
  SEC                                       ; $82B78E |
  SBC.W $0031,Y                             ; $82B78F |
  ASL.B $00                                 ; $82B792 |
  CMP.B $00                                 ; $82B794 |
  BCS CODE_82B7AA                           ; $82B796 |
  LDA.W $0058,Y                             ; $82B798 |
  CLC                                       ; $82B79B |
  ADC.B $58,X                               ; $82B79C |
  STA.B $00                                 ; $82B79E |
  ADC.B $35,X                               ; $82B7A0 |
  SEC                                       ; $82B7A2 |
  SBC.W $0035,Y                             ; $82B7A3 |
  ASL.B $00                                 ; $82B7A6 |
  CMP.B $00                                 ; $82B7A8 |

CODE_82B7AA:
  RTS                                       ; $82B7AA |

CODE_FN_82B7AB:
  LDA.B $54,X                               ; $82B7AB |
  CLC                                       ; $82B7AD |
  ADC.W #$0020                              ; $82B7AE |
  STA.B $00                                 ; $82B7B1 |
  ADC.B $2D,X                               ; $82B7B3 |
  SEC                                       ; $82B7B5 |
  SBC.W $1C2A                               ; $82B7B6 |
  ASL.B $00                                 ; $82B7B9 |
  CMP.B $00                                 ; $82B7BB |
  BCS CODE_82B7EC                           ; $82B7BD |
  LDA.B $56,X                               ; $82B7BF |
  CLC                                       ; $82B7C1 |
  ADC.W #$0018                              ; $82B7C2 |
  STA.B $00                                 ; $82B7C5 |
  ADC.B $31,X                               ; $82B7C7 |
  SEC                                       ; $82B7C9 |
  SBC.W $1C2E                               ; $82B7CA |
  ASL.B $00                                 ; $82B7CD |
  CMP.B $00                                 ; $82B7CF |
  BCS CODE_82B7EC                           ; $82B7D1 |
  LDA.W $1C6E                               ; $82B7D3 |
  AND.W #$00FF                              ; $82B7D6 |
  CLC                                       ; $82B7D9 |
  ADC.B $58,X                               ; $82B7DA |
  CLC                                       ; $82B7DC |
  ADC.W #$001C                              ; $82B7DD |
  STA.B $00                                 ; $82B7E0 |
  ADC.B $35,X                               ; $82B7E2 |
  SEC                                       ; $82B7E4 |
  SBC.W $1C32                               ; $82B7E5 |
  ASL.B $00                                 ; $82B7E8 |
  CMP.B $00                                 ; $82B7EA |

CODE_82B7EC:
  RTS                                       ; $82B7EC |

CODE_FL_82B7ED:
  LDY.W $1994                               ; $82B7ED |
  BNE CODE_82B807                           ; $82B7F0 |
  AND.W #$00FF                              ; $82B7F2 |
  BEQ CODE_82B807                           ; $82B7F5 |
  STA.B $00                                 ; $82B7F7 |
  SED                                       ; $82B7F9 |
  LDA.W $1C48                               ; $82B7FA |
  SEC                                       ; $82B7FD |
  SBC.B $00                                 ; $82B7FE |
  CLD                                       ; $82B800 |
  BPL CODE_82B804                           ; $82B801 |
  TDC                                       ; $82B803 |

CODE_82B804:
  STA.W $1C48                               ; $82B804 |

CODE_82B807:
  RTL                                       ; $82B807 |

CODE_FL_82B808:
  AND.W #$00FF                              ; $82B808 |
  BEQ CODE_82B81B                           ; $82B80B |
  STA.B $00                                 ; $82B80D |
  SED                                       ; $82B80F |
  LDA.B $10,X                               ; $82B810 |
  SEC                                       ; $82B812 |
  SBC.B $00                                 ; $82B813 |
  CLD                                       ; $82B815 |
  BPL CODE_82B819                           ; $82B816 |
  TDC                                       ; $82B818 |

CODE_82B819:
  STA.B $10,X                               ; $82B819 |

CODE_82B81B:
  RTL                                       ; $82B81B |

CODE_FL_82B81C:
  LDA.W $0000,Y                             ; $82B81C |
  AND.W #$00FF                              ; $82B81F |
  STA.B $54,X                               ; $82B822 |
  LDA.W $0001,Y                             ; $82B824 |
  AND.W #$00FF                              ; $82B827 |
  STA.B $56,X                               ; $82B82A |
  LDA.W $0002,Y                             ; $82B82C |
  AND.W #$00FF                              ; $82B82F |
  STA.B $58,X                               ; $82B832 |
  RTL                                       ; $82B834 |

CODE_JP_82B835:
  LDY.B $5E,X                               ; $82B835 |
  BEQ CODE_82B83F                           ; $82B837 |
  LDY.B $5C,X                               ; $82B839 |
  BEQ CODE_82B83F                           ; $82B83B |
  STA.B $1A,X                               ; $82B83D |

CODE_82B83F:
  RTL                                       ; $82B83F |

CODE_FL_82B840:
  STA.B $10                                 ; $82B840 |
  LDY.B $5E,X                               ; $82B842 |
  BEQ CODE_82B856                           ; $82B844 |
  LDA.B $5C,X                               ; $82B846 |
  BEQ CODE_82B856                           ; $82B848 |
  LDA.W LOOSE_OP_008B7E,Y                   ; $82B84A |
  BIT.W #$0001                              ; $82B84D |
  BNE CODE_82B857                           ; $82B850 |

CODE_82B852:
  LDA.B $10                                 ; $82B852 |
  STA.B $1A,X                               ; $82B854 |

CODE_82B856:
  RTL                                       ; $82B856 |

CODE_82B857:
  LDA.B $5C,X                               ; $82B857 |
  AND.W #$00FF                              ; $82B859 |
  TAY                                       ; $82B85C |
  LDA.W LOOSE_OP_008B3D,Y                   ; $82B85D |
  BIT.W #$0001                              ; $82B860 |
  BNE CODE_82B852                           ; $82B863 |
  STZ.B $5C,X                               ; $82B865 |
  RTL                                       ; $82B867 |

CODE_JP_82B868:
  STA.B $10                                 ; $82B868 |
  LDA.B $5C,X                               ; $82B86A |
  BEQ CODE_82B890                           ; $82B86C |
  AND.W #$00FF                              ; $82B86E |
  TAY                                       ; $82B871 |
  LDA.W LOOSE_OP_008B3D,Y                   ; $82B872 |
  BIT.W #$0002                              ; $82B875 |
  BNE CODE_82B852                           ; $82B878 |
  LDA.W CODE_008B10,Y                       ; $82B87A |
  AND.W #$00FF                              ; $82B87D |
  JSL.L CODE_FL_82B808                      ; $82B880 |
  LDA.W LOOSE_OP_008B25,Y                   ; $82B884 |
  AND.W #$FF00                              ; $82B887 |
  STA.B $2A,X                               ; $82B88A |
  STZ.B $5C,X                               ; $82B88C |
  SEC                                       ; $82B88E |
  RTL                                       ; $82B88F |

CODE_82B890:
  CLC                                       ; $82B890 |
  RTL                                       ; $82B891 |

  LDA.B $5E,X                               ; $82B892 |
  BRA CODE_82B898                           ; $82B894 |

  LDA.B $5C,X                               ; $82B896 |

CODE_82B898:
  AND.W #$00FF                              ; $82B898 |
  TAY                                       ; $82B89B |
  LDA.W LOOSE_OP_008B3D,Y                   ; $82B89C |
  AND.W #$00FF                              ; $82B89F |
  RTL                                       ; $82B8A2 |

  LDA.B $5E,X                               ; $82B8A3 |
  BRA CODE_82B8A9                           ; $82B8A5 |

CODE_FL_82B8A7:
  LDA.B $5C,X                               ; $82B8A7 |

CODE_82B8A9:
  AND.W #$00FF                              ; $82B8A9 |
  TAY                                       ; $82B8AC |
  LDA.W LOOSE_OP_008B7E,Y                   ; $82B8AD |
  AND.W #$00FF                              ; $82B8B0 |
  RTL                                       ; $82B8B3 |

CODE_FL_82B8B4:
  INC.W $1C76                               ; $82B8B4 |
  LDA.W $1C76                               ; $82B8B7 |
  AND.W #$0007                              ; $82B8BA |
  BNE CODE_82B8CF                           ; $82B8BD |
  LDA.B $5C,X                               ; $82B8BF |
  AND.W #$00FF                              ; $82B8C1 |
  TAY                                       ; $82B8C4 |
  LDA.W LOOSE_OP_008B3D,Y                   ; $82B8C5 |
  BIT.W #$0002                              ; $82B8C8 |
  BNE CODE_82B8CF                           ; $82B8CB |
  SEC                                       ; $82B8CD |
  RTL                                       ; $82B8CE |

CODE_82B8CF:
  CLC                                       ; $82B8CF |
  RTL                                       ; $82B8D0 |

CODE_FL_82B8D1:
  LDA.B $31,X                               ; $82B8D1 |
  BNE CODE_82B8FC                           ; $82B8D3 |
  LDA.B $42                                 ; $82B8D5 |
  ADC.B $86                                 ; $82B8D7 |
  AND.W #$0003                              ; $82B8D9 |
  BNE CODE_82B8FC                           ; $82B8DC |
  LDA.W $0EDC                               ; $82B8DE |
  BEQ CODE_82B8FC                           ; $82B8E1 |
  LDA.B $DA                                 ; $82B8E3 |
  ASL A                                     ; $82B8E5 |
  TAY                                       ; $82B8E6 |
  LDA.W $1C70                               ; $82B8E7 |
  BNE CODE_82B8F3                           ; $82B8EA |
  LDA.B $86                                 ; $82B8EC |
  AND.W #$0003                              ; $82B8EE |
  BEQ CODE_82B8F4                           ; $82B8F1 |

CODE_82B8F3:
  INY                                       ; $82B8F3 |

CODE_82B8F4:
  LDA.W LOOSE_OP_008AEA,Y                   ; $82B8F4 |
  AND.W #$00FF                              ; $82B8F7 |
  STA.B $1A,X                               ; $82B8FA |

CODE_82B8FC:
  RTL                                       ; $82B8FC |

  LDA.B $42                                 ; $82B8FD |
  ADC.B $86                                 ; $82B8FF |
  AND.W #$0003                              ; $82B901 |
  BNE CODE_82B8FC                           ; $82B904 |
  LDA.W $1C70                               ; $82B906 |
  BNE CODE_82B8FC                           ; $82B909 |
  LDA.W $0EDC                               ; $82B90B |
  BEQ CODE_82B8FC                           ; $82B90E |
  LDA.B $DA                                 ; $82B910 |
  ASL A                                     ; $82B912 |
  TAY                                       ; $82B913 |
  LDA.W LOOSE_OP_008AEA,Y                   ; $82B914 |
  AND.W #$00FF                              ; $82B917 |
  STA.B $1A,X                               ; $82B91A |
  RTL                                       ; $82B91C |

CODE_FL_82B91D:
  LDA.B $5C,X                               ; $82B91D |
  STA.B $00                                 ; $82B91F |
  XBA                                       ; $82B921 |
  AND.W #$00FF                              ; $82B922 |
  ASL A                                     ; $82B925 |
  ASL A                                     ; $82B926 |
  ASL A                                     ; $82B927 |
  ASL A                                     ; $82B928 |
  ASL A                                     ; $82B929 |
  TAY                                       ; $82B92A |
  LDA.B $00                                 ; $82B92B |
  AND.W #$00FF                              ; $82B92D |
  RTL                                       ; $82B930 |

CODE_FL_82B931:
  LDA.B $5C,X                               ; $82B931 |
  AND.W #$00FF                              ; $82B933 |
  TAY                                       ; $82B936 |
  LDA.W CODE_008AFA,Y                       ; $82B937 |
  AND.W #$00FF                              ; $82B93A |
  JMP.W CODE_FL_82B808                      ; $82B93D |

CODE_FL_82B940:
  LDA.W $0598                               ; $82B940 |
  BEQ CODE_82B951                           ; $82B943 |
  LDY.W #$0580                              ; $82B945 |
  JSR.W CODE_FN_82B770                      ; $82B948 |
  BCS CODE_82B951                           ; $82B94B |
  JSL.L CODE_FL_82B985                      ; $82B94D |

CODE_82B951:
  LDA.W $05F8                               ; $82B951 |
  BEQ CODE_82B962                           ; $82B954 |
  LDY.W #$05E0                              ; $82B956 |
  JSR.W CODE_FN_82B770                      ; $82B959 |
  BCS CODE_82B962                           ; $82B95C |
  JSL.L CODE_FL_82B985                      ; $82B95E |

CODE_82B962:
  LDA.W $0658                               ; $82B962 |
  BEQ CODE_82B973                           ; $82B965 |
  LDY.W #$0640                              ; $82B967 |
  JSR.W CODE_FN_82B770                      ; $82B96A |
  BCS CODE_82B973                           ; $82B96D |
  JSL.L CODE_FL_82B985                      ; $82B96F |

CODE_82B973:
  LDA.W $06B8                               ; $82B973 |
  BEQ CODE_82B984                           ; $82B976 |
  LDY.W #$06A0                              ; $82B978 |
  JSR.W CODE_FN_82B770                      ; $82B97B |
  BCS CODE_82B984                           ; $82B97E |
  JSL.L CODE_FL_82B985                      ; $82B980 |

CODE_82B984:
  RTL                                       ; $82B984 |

CODE_FL_82B985:
  STX.B $5C,Y                               ; $82B985 |
  STY.B $5C,X                               ; $82B987 |
  RTL                                       ; $82B989 |

CODE_JL_82B98A:
  LDA.W #$000B                              ; $82B98A |
  LDY.B $5C,X                               ; $82B98D |
  BEQ CODE_82B993                           ; $82B98F |
  STA.B $1A,X                               ; $82B991 |

CODE_82B993:
  RTL                                       ; $82B993 |

CODE_FL_82B994:
  LDY.W #$1000                              ; $82B994 |
  JSL.L CODE_FL_809762                      ; $82B997 |
  LDY.W #$0800                              ; $82B99B |
  JSL.L CODE_FL_809762                      ; $82B99E |
  JSL.L CODE_FL_808D45                      ; $82B9A2 |
  JSL.L CODE_FL_808DBB                      ; $82B9A6 |
  STZ.W $1DE2                               ; $82B9AA |
  STZ.W $1DE0                               ; $82B9AD |
  STZ.W $1DE4                               ; $82B9B0 |
  STZ.W $1DE6                               ; $82B9B3 |
  STZ.W $1DE8                               ; $82B9B6 |
  STZ.W $1DEA                               ; $82B9B9 |
  STZ.W $1DEC                               ; $82B9BC |
  STZ.W $1DEE                               ; $82B9BF |
  RTL                                       ; $82B9C2 |

CODE_FL_82B9C3:
  STA.W $1DA4                               ; $82B9C3 |
  TDC                                       ; $82B9C6 |
  STA.L $7ED150                             ; $82B9C7 |
  LDY.W #$1000                              ; $82B9CB |
  JSL.L CODE_FL_809725                      ; $82B9CE |
  JML.L CODE_FL_82B9EC                      ; $82B9D2 |

CODE_FL_82B9D6:
  STA.W $1DC4                               ; $82B9D6 |
  LDA.W #$0000                              ; $82B9D9 |
  TDC                                       ; $82B9DC |
  STA.L $7ED4F2                             ; $82B9DD |
  LDY.W #$0800                              ; $82B9E1 |
  JSL.L CODE_FL_809725                      ; $82B9E4 |
  JML.L CODE_JL_82BA19                      ; $82B9E8 |

CODE_FL_82B9EC:
  LDX.W #$1DA0                              ; $82B9EC |
  LDA.L $7ED150                             ; $82B9EF |
  LSR A                                     ; $82B9F3 |
  LDY.W #$D152                              ; $82B9F4 |
  BCS CODE_82B9FC                           ; $82B9F7 |
  LDY.W #$D322                              ; $82B9F9 |

CODE_82B9FC:
  LDA.B $04,X                               ; $82B9FC |
  STA.B $10                                 ; $82B9FE |
  LDA.B $08,X                               ; $82BA00 |
  STA.B $00                                 ; $82BA02 |
  LDA.B $06,X                               ; $82BA04 |
  STA.B $02                                 ; $82BA06 |
  LDA.B $0A,X                               ; $82BA08 |
  JSR.W CODE_FN_82BA46                      ; $82BA0A |
  LDA.L $7ED150                             ; $82BA0D |
  EOR.W #$0001                              ; $82BA11 |
  STA.L $7ED150                             ; $82BA14 |
  RTL                                       ; $82BA18 |

CODE_JL_82BA19:
  LDX.W #$1DC0                              ; $82BA19 |
  LDA.L $7ED4F2                             ; $82BA1C |
  LSR A                                     ; $82BA20 |
  LDY.W #$D4F4                              ; $82BA21 |
  BCS CODE_82BA29                           ; $82BA24 |
  LDY.W #$D6C4                              ; $82BA26 |

CODE_82BA29:
  LDA.B $04,X                               ; $82BA29 |
  STA.B $10                                 ; $82BA2B |
  LDA.B $08,X                               ; $82BA2D |
  STA.B $00                                 ; $82BA2F |
  LDA.B $06,X                               ; $82BA31 |
  STA.B $02                                 ; $82BA33 |
  LDA.B $0A,X                               ; $82BA35 |
  JSR.W CODE_FN_82BA46                      ; $82BA37 |
  LDA.L $7ED4F2                             ; $82BA3A |
  EOR.W #$0001                              ; $82BA3E |
  STA.L $7ED4F2                             ; $82BA41 |
  RTL                                       ; $82BA45 |

CODE_FN_82BA46:
  STY.B $04                                 ; $82BA46 |
  LDY.W #$007E                              ; $82BA48 |
  STY.B $06                                 ; $82BA4B |
  STZ.B $0E                                 ; $82BA4D |
  STZ.B $12                                 ; $82BA4F |
  STZ.B $14                                 ; $82BA51 |
  STZ.B $16                                 ; $82BA53 |
  SEP #$20                                  ; $82BA55 |
  STA.B $08                                 ; $82BA57 |
  STA.W $4202                               ; $82BA59 |
  LDX.W #$0000                              ; $82BA5C |

CODE_JP_82BA5F:
  LDA.L DATA8_978100,X                      ; $82BA5F |
  STA.W $4203                               ; $82BA63 |
  XBA                                       ; $82BA66 |
  XBA                                       ; $82BA67 |
  REP #$20                                  ; $82BA68 |
  LDA.W $4217                               ; $82BA6A |
  AND.W #$00FF                              ; $82BA6D |
  STA.B $18                                 ; $82BA70 |
  LDA.B $00                                 ; $82BA72 |
  SEC                                       ; $82BA74 |
  SBC.B $18                                 ; $82BA75 |
  BMI CODE_82BA83                           ; $82BA77 |
  CMP.W #$0100                              ; $82BA79 |
  BMI CODE_82BA84                           ; $82BA7C |
  LDA.W #$00FF                              ; $82BA7E |
  BRA CODE_82BA84                           ; $82BA81 |

CODE_82BA83:
  TDC                                       ; $82BA83 |

CODE_82BA84:
  STA.B $0C                                 ; $82BA84 |
  LDA.B $00                                 ; $82BA86 |
  CLC                                       ; $82BA88 |
  ADC.B $18                                 ; $82BA89 |
  BMI CODE_82BA97                           ; $82BA8B |
  CMP.W #$0100                              ; $82BA8D |
  BMI CODE_82BA98                           ; $82BA90 |
  LDA.W #$00FF                              ; $82BA92 |
  BRA CODE_82BA98                           ; $82BA95 |

CODE_82BA97:
  TDC                                       ; $82BA97 |

CODE_82BA98:
  SEP #$20                                  ; $82BA98 |
  STA.B $0D                                 ; $82BA9A |
  LDA.L DATA8_978000,X                      ; $82BA9C |
  STA.W $4203                               ; $82BAA0 |
  XBA                                       ; $82BAA3 |
  LDA.B $10                                 ; $82BAA4 |
  BIT.B #$01                                ; $82BAA6 |
  BNE CODE_82BAB3                           ; $82BAA8 |
  BIT.B #$04                                ; $82BAAA |
  BNE CODE_82BAB9                           ; $82BAAC |
  LDA.W $4217                               ; $82BAAE |
  BRA CODE_82BABE                           ; $82BAB1 |

CODE_82BAB3:
  LDA.W $4217                               ; $82BAB3 |
  LSR A                                     ; $82BAB6 |
  BRA CODE_82BABE                           ; $82BAB7 |

CODE_82BAB9:
  LDA.W $4217                               ; $82BAB9 |
  LSR A                                     ; $82BABC |
  LSR A                                     ; $82BABD |

CODE_82BABE:
  SEC                                       ; $82BABE |
  SBC.B $14                                 ; $82BABF |
  BEQ CODE_82BAE1                           ; $82BAC1 |
  STA.B $16                                 ; $82BAC3 |
  REP #$20                                  ; $82BAC5 |

CODE_82BAC7:
  LDA.B $02                                 ; $82BAC7 |
  CLC                                       ; $82BAC9 |
  ADC.B $14                                 ; $82BACA |
  BMI CODE_82BAD9                           ; $82BACC |
  CMP.W #$00E0                              ; $82BACE |
  BCS CODE_82BAD9                           ; $82BAD1 |
  ASL A                                     ; $82BAD3 |
  TAY                                       ; $82BAD4 |
  LDA.B $0C                                 ; $82BAD5 |
  STA.B [$04],Y                             ; $82BAD7 |

CODE_82BAD9:
  INC.B $14                                 ; $82BAD9 |
  DEC.B $16                                 ; $82BADB |
  BNE CODE_82BAC7                           ; $82BADD |
  SEP #$20                                  ; $82BADF |

CODE_82BAE1:
  LDA.B $10                                 ; $82BAE1 |
  BIT.B #$02                                ; $82BAE3 |
  BNE CODE_82BAF0                           ; $82BAE5 |
  BIT.B #$08                                ; $82BAE7 |
  BNE CODE_82BAF6                           ; $82BAE9 |
  LDA.W $4217                               ; $82BAEB |
  BRA CODE_82BAFB                           ; $82BAEE |

CODE_82BAF0:
  LDA.W $4217                               ; $82BAF0 |
  LSR A                                     ; $82BAF3 |
  BRA CODE_82BAFB                           ; $82BAF4 |

CODE_82BAF6:
  LDA.W $4217                               ; $82BAF6 |
  LSR A                                     ; $82BAF9 |
  LSR A                                     ; $82BAFA |

CODE_82BAFB:
  SEC                                       ; $82BAFB |
  SBC.B $12                                 ; $82BAFC |
  BEQ CODE_82BB1E                           ; $82BAFE |
  STA.B $16                                 ; $82BB00 |
  REP #$20                                  ; $82BB02 |

CODE_82BB04:
  LDA.B $02                                 ; $82BB04 |
  SEC                                       ; $82BB06 |
  SBC.B $12                                 ; $82BB07 |
  BMI CODE_82BB16                           ; $82BB09 |
  CMP.W #$00E0                              ; $82BB0B |
  BCS CODE_82BB16                           ; $82BB0E |
  ASL A                                     ; $82BB10 |
  TAY                                       ; $82BB11 |
  LDA.B $0C                                 ; $82BB12 |
  STA.B [$04],Y                             ; $82BB14 |

CODE_82BB16:
  INC.B $12                                 ; $82BB16 |
  DEC.B $16                                 ; $82BB18 |
  BNE CODE_82BB04                           ; $82BB1A |
  SEP #$20                                  ; $82BB1C |

CODE_82BB1E:
  INX                                       ; $82BB1E |
  INX                                       ; $82BB1F |
  CPX.W #$0100                              ; $82BB20 |
  BCS CODE_82BB28                           ; $82BB23 |
  JMP.W CODE_JP_82BA5F                      ; $82BB25 |

CODE_82BB28:
  REP #$20                                  ; $82BB28 |
  LDA.B $02                                 ; $82BB2A |
  SEC                                       ; $82BB2C |
  SBC.B $12                                 ; $82BB2D |
  INC A                                     ; $82BB2F |
  BMI CODE_82BB43                           ; $82BB30 |
  BEQ CODE_82BB43                           ; $82BB32 |
  CMP.W #$00E0                              ; $82BB34 |
  BMI CODE_82BB3C                           ; $82BB37 |
  LDA.W #$00E0                              ; $82BB39 |

CODE_82BB3C:
  ASL A                                     ; $82BB3C |
  TAY                                       ; $82BB3D |
  LDX.B $04                                 ; $82BB3E |
  JSR.W CODE_FN_82BB70                      ; $82BB40 |

CODE_82BB43:
  LDA.W #$00E0                              ; $82BB43 |
  SEC                                       ; $82BB46 |
  SBC.B $02                                 ; $82BB47 |
  SEC                                       ; $82BB49 |
  SBC.B $14                                 ; $82BB4A |
  BMI CODE_82BB6F                           ; $82BB4C |
  BEQ CODE_82BB6F                           ; $82BB4E |
  CMP.W #$00E0                              ; $82BB50 |
  BMI CODE_82BB61                           ; $82BB53 |
  LDA.W #$00E0                              ; $82BB55 |
  ASL A                                     ; $82BB58 |
  TAY                                       ; $82BB59 |
  LDX.B $04                                 ; $82BB5A |
  JSR.W CODE_FN_82BB70                      ; $82BB5C |
  BRA CODE_82BB6F                           ; $82BB5F |

CODE_82BB61:
  ASL A                                     ; $82BB61 |
  TAY                                       ; $82BB62 |
  LDA.B $02                                 ; $82BB63 |
  CLC                                       ; $82BB65 |
  ADC.B $14                                 ; $82BB66 |
  ASL A                                     ; $82BB68 |
  ADC.B $04                                 ; $82BB69 |
  TAX                                       ; $82BB6B |
  JSR.W CODE_FN_82BB70                      ; $82BB6C |

CODE_82BB6F:
  RTS                                       ; $82BB6F |

CODE_FN_82BB70:
  CPY.W #$0000                              ; $82BB70 |
  BEQ CODE_82BB8C                           ; $82BB73 |
  BMI CODE_82BB8C                           ; $82BB75 |
  PHB                                       ; $82BB77 |
  LDA.W #$00FF                              ; $82BB78 |
  STA.L $7E0000,X                           ; $82BB7B |
  TYA                                       ; $82BB7F |
  DEC A                                     ; $82BB80 |
  DEC A                                     ; $82BB81 |
  DEC A                                     ; $82BB82 |
  BMI CODE_82BB8B                           ; $82BB83 |
  TXY                                       ; $82BB85 |
  INY                                       ; $82BB86 |
  INY                                       ; $82BB87 |
  MVN $7E,$7E                               ; $82BB88 |

CODE_82BB8B:
  PLB                                       ; $82BB8B |

CODE_82BB8C:
  RTS                                       ; $82BB8C |

CODE_FL_82BB8D:
  TDC                                       ; $82BB8D |
  STA.L $7ED150                             ; $82BB8E |
  LDY.W #$1000                              ; $82BB92 |
  JSL.L CODE_FL_809725                      ; $82BB95 |
  LDX.W #$D312                              ; $82BB99 |
  LDY.W #$0010                              ; $82BB9C |
  JSR.W CODE_FN_82BB70                      ; $82BB9F |
  LDX.W #$D4E2                              ; $82BBA2 |
  LDY.W #$0010                              ; $82BBA5 |
  JSR.W CODE_FN_82BB70                      ; $82BBA8 |
  RTL                                       ; $82BBAB |

CODE_FL_82BBAC:
  TDC                                       ; $82BBAC |
  STA.L $7ED4F2                             ; $82BBAD |
  LDY.W #$0800                              ; $82BBB1 |
  JSL.L CODE_FL_809725                      ; $82BBB4 |
  LDX.W #$D6B4                              ; $82BBB8 |
  LDY.W #$0010                              ; $82BBBB |
  JSR.W CODE_FN_82BB70                      ; $82BBBE |
  LDX.W #$D884                              ; $82BBC1 |
  LDY.W #$0010                              ; $82BBC4 |
  JSR.W CODE_FN_82BB70                      ; $82BBC7 |
  RTL                                       ; $82BBCA |

CODE_FL_82BBCB:
  LDA.L $7ED150                             ; $82BBCB |
  LSR A                                     ; $82BBCF |
  LDY.W #$D152                              ; $82BBD0 |
  BCS CODE_82BBD8                           ; $82BBD3 |
  LDY.W #$D322                              ; $82BBD5 |

CODE_82BBD8:
  PHY                                       ; $82BBD8 |
  TYX                                       ; $82BBD9 |
  LDY.W #$01D0                              ; $82BBDA |
  JSR.W CODE_FN_82BB70                      ; $82BBDD |
  PLY                                       ; $82BBE0 |
  LDX.W #$1DA0                              ; $82BBE1 |
  JSR.W CODE_FN_82BC1B                      ; $82BBE4 |
  LDA.L $7ED150                             ; $82BBE7 |
  EOR.W #$0001                              ; $82BBEB |
  STA.L $7ED150                             ; $82BBEE |
  RTL                                       ; $82BBF2 |

CODE_JL_82BBF3:
  LDA.L $7ED4F2                             ; $82BBF3 |
  LSR A                                     ; $82BBF7 |
  LDY.W #$D4F4                              ; $82BBF8 |
  BCS CODE_82BC00                           ; $82BBFB |
  LDY.W #$D6C4                              ; $82BBFD |

CODE_82BC00:
  PHY                                       ; $82BC00 |
  TYX                                       ; $82BC01 |
  LDY.W #$01D0                              ; $82BC02 |
  JSR.W CODE_FN_82BB70                      ; $82BC05 |
  PLY                                       ; $82BC08 |
  LDX.W #$1DC0                              ; $82BC09 |
  JSR.W CODE_FN_82BC1B                      ; $82BC0C |
  LDA.L $7ED4F2                             ; $82BC0F |
  EOR.W #$0001                              ; $82BC13 |
  STA.L $7ED4F2                             ; $82BC16 |
  RTL                                       ; $82BC1A |

CODE_FN_82BC1B:
  STY.B $16                                 ; $82BC1B |
  STZ.B $12                                 ; $82BC1D |
  STZ.B $14                                 ; $82BC1F |
  STZ.B $10                                 ; $82BC21 |
  LDA.B $1A,X                               ; $82BC23 |
  SEC                                       ; $82BC25 |
  SBC.B $12,X                               ; $82BC26 |
  STA.B $08                                 ; $82BC28 |
  LDA.B $10,X                               ; $82BC2A |
  STA.B $13                                 ; $82BC2C |
  LDA.B $18,X                               ; $82BC2E |
  SEC                                       ; $82BC30 |
  SBC.B $10,X                               ; $82BC31 |
  BPL CODE_82BC3B                           ; $82BC33 |
  EOR.W #$FFFF                              ; $82BC35 |
  INC A                                     ; $82BC38 |
  INC.B $10                                 ; $82BC39 |

CODE_82BC3B:
  TAY                                       ; $82BC3B |
  STZ.B $00                                 ; $82BC3C |
  LDA.B $08                                 ; $82BC3E |
  JSR.W CODE_FN_82BC71                      ; $82BC40 |
  LDA.B $12,X                               ; $82BC43 |
  PHX                                       ; $82BC45 |
  JSR.W CODE_FN_82BC8F                      ; $82BC46 |
  PLX                                       ; $82BC49 |
  STZ.B $12                                 ; $82BC4A |
  STZ.B $14                                 ; $82BC4C |
  STZ.B $10                                 ; $82BC4E |
  LDA.B $14,X                               ; $82BC50 |
  STA.B $13                                 ; $82BC52 |
  LDA.B $1C,X                               ; $82BC54 |
  SEC                                       ; $82BC56 |
  SBC.B $14,X                               ; $82BC57 |
  BPL CODE_82BC61                           ; $82BC59 |
  EOR.W #$FFFF                              ; $82BC5B |
  INC A                                     ; $82BC5E |
  INC.B $10                                 ; $82BC5F |

CODE_82BC61:
  TAY                                       ; $82BC61 |
  STZ.B $00                                 ; $82BC62 |
  LDA.B $08                                 ; $82BC64 |
  JSR.W CODE_FN_82BC71                      ; $82BC66 |
  LDA.B $12,X                               ; $82BC69 |
  INC.B $16                                 ; $82BC6B |
  JSR.W CODE_FN_82BC8F                      ; $82BC6D |
  RTS                                       ; $82BC70 |

CODE_FN_82BC71:
  JSL.L CODE_FL_808E97                      ; $82BC71 |
  LDA.B $10                                 ; $82BC75 |
  BEQ CODE_82BC8E                           ; $82BC77 |
  LDA.B $00                                 ; $82BC79 |
  EOR.W #$FFFF                              ; $82BC7B |
  CLC                                       ; $82BC7E |
  ADC.W #$0001                              ; $82BC7F |
  STA.B $00                                 ; $82BC82 |
  LDA.B $02                                 ; $82BC84 |
  EOR.W #$FFFF                              ; $82BC86 |
  ADC.W #$0000                              ; $82BC89 |
  STA.B $02                                 ; $82BC8C |

CODE_82BC8E:
  RTS                                       ; $82BC8E |

CODE_FN_82BC8F:
  ASL A                                     ; $82BC8F |
  CLC                                       ; $82BC90 |
  ADC.B $16                                 ; $82BC91 |
  TAX                                       ; $82BC93 |
  LDA.B $08                                 ; $82BC94 |
  STA.B $06                                 ; $82BC96 |

CODE_82BC98:
  LDA.B $13                                 ; $82BC98 |
  BPL CODE_82BC9F                           ; $82BC9A |
  LDA.W #$0000                              ; $82BC9C |

CODE_82BC9F:
  CMP.W #$0100                              ; $82BC9F |
  BMI CODE_82BCA7                           ; $82BCA2 |
  LDA.W #$00FF                              ; $82BCA4 |

CODE_82BCA7:
  SEP #$20                                  ; $82BCA7 |
  STA.L $7E0000,X                           ; $82BCA9 |
  REP #$20                                  ; $82BCAD |
  INX                                       ; $82BCAF |
  INX                                       ; $82BCB0 |
  CPX.W #$0216                              ; $82BCB1 |
  BCC CODE_82BCC7                           ; $82BCB4 |
  LDA.B $12                                 ; $82BCB6 |
  CLC                                       ; $82BCB8 |
  ADC.B $00                                 ; $82BCB9 |
  STA.B $12                                 ; $82BCBB |
  LDA.B $14                                 ; $82BCBD |
  ADC.B $02                                 ; $82BCBF |
  STA.B $14                                 ; $82BCC1 |
  DEC.B $06                                 ; $82BCC3 |
  BPL CODE_82BC98                           ; $82BCC5 |

CODE_82BCC7:
  RTS                                       ; $82BCC7 |

CODE_FL_82BCC8:
  LDA.L $7ED150                             ; $82BCC8 |
  LSR A                                     ; $82BCCC |
  LDY.W #$D152                              ; $82BCCD |
  BCS CODE_82BCD5                           ; $82BCD0 |
  LDY.W #$D322                              ; $82BCD2 |

CODE_82BCD5:
  PHY                                       ; $82BCD5 |
  TYX                                       ; $82BCD6 |
  LDY.W #$01D0                              ; $82BCD7 |
  JSR.W CODE_FN_82BB70                      ; $82BCDA |
  PLY                                       ; $82BCDD |
  LDX.W #$1DA0                              ; $82BCDE |
  JSR.W CODE_FN_82BCF0                      ; $82BCE1 |
  LDA.L $7ED150                             ; $82BCE4 |
  EOR.W #$0001                              ; $82BCE8 |
  STA.L $7ED150                             ; $82BCEB |
  RTL                                       ; $82BCEF |

CODE_FN_82BCF0:
  STY.B $08                                 ; $82BCF0 |
  LDA.B $06,X                               ; $82BCF2 |
  ASL A                                     ; $82BCF4 |
  STA.B $10                                 ; $82BCF5 |
  LDA.B $0A,X                               ; $82BCF7 |
  STA.B $0E                                 ; $82BCF9 |
  STZ.B $00                                 ; $82BCFB |
  STZ.B $02                                 ; $82BCFD |
  LDA.B $08,X                               ; $82BCFF |
  STA.B $01                                 ; $82BD01 |

CODE_82BD03:
  LDA.B $01                                 ; $82BD03 |
  SEC                                       ; $82BD05 |
  SBC.B $0C,X                               ; $82BD06 |
  BPL CODE_82BD0D                           ; $82BD08 |
  LDA.W #$0000                              ; $82BD0A |

CODE_82BD0D:
  CMP.W #$0100                              ; $82BD0D |
  BMI CODE_82BD15                           ; $82BD10 |
  LDA.W #$00FF                              ; $82BD12 |

CODE_82BD15:
  STA.B $0A                                 ; $82BD15 |
  LDA.B $01                                 ; $82BD17 |
  CLC                                       ; $82BD19 |
  ADC.B $0C,X                               ; $82BD1A |
  BPL CODE_82BD21                           ; $82BD1C |
  LDA.W #$0000                              ; $82BD1E |

CODE_82BD21:
  CMP.W #$0100                              ; $82BD21 |
  BMI CODE_82BD29                           ; $82BD24 |
  LDA.W #$00FF                              ; $82BD26 |

CODE_82BD29:
  STA.B $0B                                 ; $82BD29 |
  PHX                                       ; $82BD2B |
  LDA.B $08                                 ; $82BD2C |
  CLC                                       ; $82BD2E |
  ADC.B $10                                 ; $82BD2F |
  TAX                                       ; $82BD31 |
  LDA.B $0A                                 ; $82BD32 |
  STA.L $7E0000,X                           ; $82BD34 |
  INC.B $10                                 ; $82BD38 |
  INC.B $10                                 ; $82BD3A |
  PLX                                       ; $82BD3C |
  LDA.B $00                                 ; $82BD3D |
  CLC                                       ; $82BD3F |
  ADC.B $10,X                               ; $82BD40 |
  STA.B $00                                 ; $82BD42 |
  DEC.B $0E                                 ; $82BD44 |
  BPL CODE_82BD03                           ; $82BD46 |
  RTS                                       ; $82BD48 |

CODE_FL_82BD49:
  PHA                                       ; $82BD49 |
  LDA.L $7ED150                             ; $82BD4A |
  LSR A                                     ; $82BD4E |
  LDY.W #$D152                              ; $82BD4F |
  BCS CODE_82BD57                           ; $82BD52 |
  LDY.W #$D322                              ; $82BD54 |

CODE_82BD57:
  LDX.W #$1DA0                              ; $82BD57 |
  PLA                                       ; $82BD5A |
  JSR.W CODE_FN_82BDE5                      ; $82BD5B |
  LDA.L $7ED150                             ; $82BD5E |
  EOR.W #$0001                              ; $82BD62 |
  STA.L $7ED150                             ; $82BD65 |
  RTL                                       ; $82BD69 |

CODE_FL_82BD6A:
  PHA                                       ; $82BD6A |
  LDA.L $7ED4F2                             ; $82BD6B |
  LSR A                                     ; $82BD6F |
  LDY.W #$D4F4                              ; $82BD70 |
  BCS CODE_82BD78                           ; $82BD73 |
  LDY.W #$D6C4                              ; $82BD75 |

CODE_82BD78:
  LDX.W #$1DC0                              ; $82BD78 |
  PLA                                       ; $82BD7B |
  JSR.W CODE_FN_82BDE5                      ; $82BD7C |
  LDA.L $7ED4F2                             ; $82BD7F |
  EOR.W #$0001                              ; $82BD83 |
  STA.L $7ED4F2                             ; $82BD86 |
  RTL                                       ; $82BD8A |

CODE_FL_82BD8B:
  PHA                                       ; $82BD8B |
  LDA.L $7ED150                             ; $82BD8C |
  LSR A                                     ; $82BD90 |
  LDY.W #$D152                              ; $82BD91 |
  BCS CODE_82BD99                           ; $82BD94 |
  LDY.W #$D322                              ; $82BD96 |

CODE_82BD99:
  LDX.W #$1DA0                              ; $82BD99 |
  PLA                                       ; $82BD9C |
  JSR.W CODE_FN_82BDAC                      ; $82BD9D |
  LDA.L $7ED150                             ; $82BDA0 |
  EOR.W #$0001                              ; $82BDA4 |
  STA.L $7ED150                             ; $82BDA7 |
  RTL                                       ; $82BDAB |

CODE_FN_82BDAC:
  STA.B $00                                 ; $82BDAC |
  STX.B $06                                 ; $82BDAE |
  STY.B $02                                 ; $82BDB0 |
  TYA                                       ; $82BDB2 |
  CLC                                       ; $82BDB3 |
  ADC.W #$01D0                              ; $82BDB4 |
  STA.B $04                                 ; $82BDB7 |
  LDA.B $08,X                               ; $82BDB9 |
  STA.B $08                                 ; $82BDBB |
  LDA.B $06,X                               ; $82BDBD |
  STA.B $0A                                 ; $82BDBF |
  LDA.B $0C,X                               ; $82BDC1 |
  STA.B $0C                                 ; $82BDC3 |
  LDA.B $0A,X                               ; $82BDC5 |
  STA.B $0E                                 ; $82BDC7 |
  LDA.B $06,X                               ; $82BDC9 |
  STA.B $10                                 ; $82BDCB |
  LDX.B $02                                 ; $82BDCD |
  LDY.B $00                                 ; $82BDCF |

CODE_82BDD1:
  JSR.W CODE_FN_82BE37                      ; $82BDD1 |
  INX                                       ; $82BDD4 |
  INX                                       ; $82BDD5 |
  CPX.B $04                                 ; $82BDD6 |
  BNE CODE_82BDDD                           ; $82BDD8 |
  JMP.W CODE_JP_82BE2B                      ; $82BDDA |

CODE_82BDDD:
  DEC.B $10                                 ; $82BDDD |
  BPL CODE_82BDD1                           ; $82BDDF |
  STX.B $02                                 ; $82BDE1 |
  BRA CODE_82BE0F                           ; $82BDE3 |

CODE_FN_82BDE5:
  STA.B $00                                 ; $82BDE5 |
  STX.B $06                                 ; $82BDE7 |
  STY.B $02                                 ; $82BDE9 |
  TYA                                       ; $82BDEB |
  CLC                                       ; $82BDEC |
  ADC.W #$01D0                              ; $82BDED |
  STA.B $04                                 ; $82BDF0 |
  LDA.B $08,X                               ; $82BDF2 |
  STA.B $08                                 ; $82BDF4 |
  LDA.B $06,X                               ; $82BDF6 |
  STA.B $0A                                 ; $82BDF8 |
  LDA.B $0C,X                               ; $82BDFA |
  STA.B $0C                                 ; $82BDFC |
  LDA.B $0A,X                               ; $82BDFE |
  STA.B $0E                                 ; $82BE00 |
  LDA.B $06,X                               ; $82BE02 |
  TYX                                       ; $82BE04 |
  ASL A                                     ; $82BE05 |
  TAY                                       ; $82BE06 |
  CLC                                       ; $82BE07 |
  ADC.B $02                                 ; $82BE08 |
  STA.B $02                                 ; $82BE0A |
  JSR.W CODE_FN_82BB70                      ; $82BE0C |

CODE_82BE0F:
  LDX.B $02                                 ; $82BE0F |
  LDY.B $00                                 ; $82BE11 |

CODE_82BE13:
  LDA.W $0000,Y                             ; $82BE13 |
  AND.W #$00FF                              ; $82BE16 |
  CMP.W #$00FF                              ; $82BE19 |
  BEQ CODE_JP_82BE2B                        ; $82BE1C |
  JSR.W CODE_FN_82BE37                      ; $82BE1E |
  INX                                       ; $82BE21 |
  INX                                       ; $82BE22 |
  CPX.B $04                                 ; $82BE23 |
  BEQ CODE_JP_82BE2B                        ; $82BE25 |
  INY                                       ; $82BE27 |
  INY                                       ; $82BE28 |
  BRA CODE_82BE13                           ; $82BE29 |

CODE_JP_82BE2B:
  STX.B $02                                 ; $82BE2B |
  LDA.B $04                                 ; $82BE2D |
  SEC                                       ; $82BE2F |
  SBC.B $02                                 ; $82BE30 |
  TAY                                       ; $82BE32 |
  JSR.W CODE_FN_82BB70                      ; $82BE33 |
  RTS                                       ; $82BE36 |

CODE_FN_82BE37:
  LDA.W $0000,Y                             ; $82BE37 |
  AND.W #$00FF                              ; $82BE3A |
  CLC                                       ; $82BE3D |
  ADC.B $0C                                 ; $82BE3E |
  CLC                                       ; $82BE40 |
  ADC.B $08                                 ; $82BE41 |
  BMI CODE_82BE4F                           ; $82BE43 |
  CMP.W #$0100                              ; $82BE45 |
  BCC CODE_82BE50                           ; $82BE48 |
  LDA.W #$00FF                              ; $82BE4A |
  BRA CODE_82BE50                           ; $82BE4D |

CODE_82BE4F:
  TDC                                       ; $82BE4F |

CODE_82BE50:
  STA.L $7E0000,X                           ; $82BE50 |
  LDA.W $0001,Y                             ; $82BE54 |
  AND.W #$00FF                              ; $82BE57 |
  CLC                                       ; $82BE5A |
  ADC.B $0E                                 ; $82BE5B |
  CLC                                       ; $82BE5D |
  ADC.B $08                                 ; $82BE5E |
  BMI CODE_82BE72                           ; $82BE60 |
  CMP.W #$0100                              ; $82BE62 |
  BCC CODE_82BE6A                           ; $82BE65 |
  LDA.W #$00FF                              ; $82BE67 |

CODE_82BE6A:
  SEP #$20                                  ; $82BE6A |
  STA.L $7E0001,X                           ; $82BE6C |
  REP #$20                                  ; $82BE70 |

CODE_82BE72:
  RTS                                       ; $82BE72 |

CODE_FL_82BE73:
  PHX                                       ; $82BE73 |
  LDA.W $1DE2                               ; $82BE74 |
  BEQ CODE_82BE84                           ; $82BE77 |
  PHB                                       ; $82BE79 |
  PEA.W $8A8A                               ; $82BE7A |
  PLB                                       ; $82BE7D |
  PLB                                       ; $82BE7E |
  JSL.L CODE_FL_82BE86                      ; $82BE7F |
  PLB                                       ; $82BE83 |

CODE_82BE84:
  PLX                                       ; $82BE84 |
  RTL                                       ; $82BE85 |

CODE_FL_82BE86:
  ASL A                                     ; $82BE86 |
  TAY                                       ; $82BE87 |
  LDA.W LOOSE_OP_00919A,Y                   ; $82BE88 |
  STA.B $00                                 ; $82BE8B |
  JMP.W ($0000)                             ; $82BE8D |

CODE_FL_82BE90:
  PHX                                       ; $82BE90 |
  JSL.L CODE_FL_82B994                      ; $82BE91 |
  LDA.W #$7C00                              ; $82BE95 |
  JSL.L CODE_FL_808D48                      ; $82BE98 |
  LDY.W #$815B                              ; $82BE9C |
  JSL.L CODE_FL_808D7B                      ; $82BE9F |
  LDY.W #$81DB                              ; $82BEA3 |
  JSL.L CODE_FL_808DBE                      ; $82BEA6 |
  JSL.L CODE_FL_82C7D6                      ; $82BEAA |
  SEC                                       ; $82BEAE |
  SBC.W #$0020                              ; $82BEAF |
  STA.W $1DA6                               ; $82BEB2 |
  LDX.W #$1DA0                              ; $82BEB5 |
  LDA.W #$0002                              ; $82BEB8 |
  STA.B $0A,X                               ; $82BEBB |
  LDA.W #$0000                              ; $82BEBD |
  JSL.L CODE_FL_82B9C3                      ; $82BEC0 |
  PLX                                       ; $82BEC4 |
  RTL                                       ; $82BEC5 |

CODE_FL_82BEC6:
  STA.W $1DAA                               ; $82BEC6 |
  BNE CODE_82BECF                           ; $82BEC9 |
  JML.L CODE_FL_82B994                      ; $82BECB |

CODE_82BECF:
  PHX                                       ; $82BECF |
  JSL.L CODE_FL_82B9EC                      ; $82BED0 |
  PLX                                       ; $82BED4 |
  RTL                                       ; $82BED5 |

CODE_FL_82BED6:
  JSL.L CODE_FL_82B994                      ; $82BED6 |
  STX.W $1DE4                               ; $82BEDA |
  LDA.W #$000C                              ; $82BEDD |
  STA.W $1DE2                               ; $82BEE0 |
  STZ.W $1DE0                               ; $82BEE3 |
  RTL                                       ; $82BEE6 |

  JSL.L CODE_FL_82B994                      ; $82BEE7 |
  STX.W $1DE4                               ; $82BEEB |
  LDA.W #$000C                              ; $82BEEE |
  STA.W $1DE2                               ; $82BEF1 |
  LDA.W #$0002                              ; $82BEF4 |
  STA.W $1DE0                               ; $82BEF7 |
  RTL                                       ; $82BEFA |

CODE_82BEFB:
  LDA.W $1DE0                               ; $82BEFB |
  ASL A                                     ; $82BEFE |
  TAX                                       ; $82BEFF |
  JMP.W (PTR16_82BF03,X)                    ; $82BF00 |

PTR16_82BF03:
  dw CODE_82BF0D                            ; $82BF03 |
  dw CODE_82BF25                            ; $82BF05 |
  dw CODE_82BF35                            ; $82BF07 |
  dw CODE_82BF54                            ; $82BF09 |
  dw CODE_82BF25                            ; $82BF0B |

CODE_82BF0D:
  LDA.W #$7FFF                              ; $82BF0D |
  STA.W $1DE6                               ; $82BF10 |
  JSL.L CODE_FL_808D48                      ; $82BF13 |
  LDY.W #$8133                              ; $82BF17 |
  JSL.L CODE_FL_808D7B                      ; $82BF1A |
  JSL.L CODE_FL_808DBB                      ; $82BF1E |
  INC.W $1DE0                               ; $82BF22 |

CODE_82BF25:
  LDA.W $1DE6                               ; $82BF25 |
  JSR.W CODE_FN_82C7EC                      ; $82BF28 |
  STA.W $1DE6                               ; $82BF2B |
  BNE CODE_82BF34                           ; $82BF2E |
  JML.L CODE_FL_82B994                      ; $82BF30 |

CODE_82BF34:
  RTL                                       ; $82BF34 |

CODE_82BF35:
  LDA.W #$7FFF                              ; $82BF35 |
  STA.W $1DE6                               ; $82BF38 |
  JSL.L CODE_FL_808D48                      ; $82BF3B |
  JSL.L CODE_FL_808DBB                      ; $82BF3F |
  LDY.W #$8138                              ; $82BF43 |
  JSL.L CODE_FL_808D7B                      ; $82BF46 |
  LDA.W #$0037                              ; $82BF4A |
  JSL.L CODE_FL_82D2D7                      ; $82BF4D |
  INC.W $1DE0                               ; $82BF51 |

CODE_82BF54:
  RTL                                       ; $82BF54 |

CODE_FL_82BF55:
  JSL.L CODE_FL_82B994                      ; $82BF55 |
  STX.W $1DE4                               ; $82BF59 |
  LDA.W #$000D                              ; $82BF5C |
  STA.W $1DE2                               ; $82BF5F |
  STZ.W $1DE0                               ; $82BF62 |
  LDA.B $09,X                               ; $82BF65 |
  STA.W $1DA8                               ; $82BF67 |
  STA.W $1DC8                               ; $82BF6A |
  LDA.B $0D,X                               ; $82BF6D |
  STA.W $1DA6                               ; $82BF6F |
  STA.W $1DC6                               ; $82BF72 |
  RTL                                       ; $82BF75 |

CODE_82BF76:
  LDA.W $1DE0                               ; $82BF76 |
  PHX                                       ; $82BF79 |
  ASL A                                     ; $82BF7A |
  TAX                                       ; $82BF7B |
  LDA.L PTR16_82BF86,X                      ; $82BF7C |
  PLX                                       ; $82BF80 |
  STA.B $00                                 ; $82BF81 |
  JMP.W ($0000)                             ; $82BF83 |

PTR16_82BF86:
  dw CODE_82BF8C                            ; $82BF86 |
  dw CODE_82BFC2                            ; $82BF88 |
  dw CODE_82BFD8                            ; $82BF8A |

CODE_82BF8C:
  LDY.W #$8138                              ; $82BF8C |
  JSL.L CODE_FL_808D7B                      ; $82BF8F |
  LDA.W #$0037                              ; $82BF93 |
  JSL.L CODE_FL_82D2D7                      ; $82BF96 |
  LDY.W #$81DB                              ; $82BF9A |
  JSL.L CODE_FL_808DBE                      ; $82BF9D |
  LDX.W #$1DA0                              ; $82BFA1 |
  LDA.W #$0008                              ; $82BFA4 |
  STA.B $0A,X                               ; $82BFA7 |
  LDA.W #$0003                              ; $82BFA9 |
  JSL.L CODE_FL_82B9C3                      ; $82BFAC |
  LDX.W #$1DC0                              ; $82BFB0 |
  LDA.W #$0001                              ; $82BFB3 |
  STA.B $0A,X                               ; $82BFB6 |
  LDA.W #$0003                              ; $82BFB8 |
  JSL.L CODE_FL_82B9D6                      ; $82BFBB |
  INC.W $1DE0                               ; $82BFBF |

CODE_82BFC2:
  LDA.W $1DAA                               ; $82BFC2 |
  CMP.W #$00E0                              ; $82BFC5 |
  BMI CODE_82BFCD                           ; $82BFC8 |
  INC.W $1DE0                               ; $82BFCA |

CODE_82BFCD:
  CLC                                       ; $82BFCD |
  ADC.W #$0014                              ; $82BFCE |
  STA.W $1DAA                               ; $82BFD1 |
  JML.L CODE_FL_82B9EC                      ; $82BFD4 |

CODE_82BFD8:
  LDA.W $1DCA                               ; $82BFD8 |
  CMP.W #$00E0                              ; $82BFDB |
  BMI CODE_82BFE9                           ; $82BFDE |
  JSL.L CODE_FL_82B994                      ; $82BFE0 |
  TDC                                       ; $82BFE4 |
  JML.L CODE_FL_82D2D7                      ; $82BFE5 |

CODE_82BFE9:
  CLC                                       ; $82BFE9 |
  ADC.W #$0014                              ; $82BFEA |
  STA.W $1DCA                               ; $82BFED |
  JML.L CODE_JL_82BA19                      ; $82BFF0 |

CODE_FL_82BFF4:
  JSL.L CODE_FL_82B994                      ; $82BFF4 |
  STX.W $1DE4                               ; $82BFF8 |
  LDA.W #$000A                              ; $82BFFB |
  STA.W $1DE2                               ; $82BFFE |
  STZ.W $1DE0                               ; $82C001 |
  JMP.W CODE_FL_82C7D6                      ; $82C004 |

CODE_82C007:
  LDA.W $1DE0                               ; $82C007 |
  PHX                                       ; $82C00A |
  ASL A                                     ; $82C00B |
  TAX                                       ; $82C00C |
  LDA.L PTR16_82C017,X                      ; $82C00D |
  PLX                                       ; $82C011 |
  STA.B $00                                 ; $82C012 |
  JMP.W ($0000)                             ; $82C014 |

PTR16_82C017:
  dw CODE_82C01D                            ; $82C017 |
  dw CODE_82C05D                            ; $82C019 |
  dw CODE_82C091                            ; $82C01B |

CODE_82C01D:
  LDA.W #$7FFF                              ; $82C01D |
  STA.W $1DE6                               ; $82C020 |
  JSL.L CODE_FL_808D48                      ; $82C023 |
  LDY.W #$815B                              ; $82C027 |
  JSL.L CODE_FL_808D7B                      ; $82C02A |
  LDY.W #$81DB                              ; $82C02E |
  JSL.L CODE_FL_808DBE                      ; $82C031 |
  LDX.W #$1DA0                              ; $82C035 |
  LDA.W #$0002                              ; $82C038 |
  STA.B $0A,X                               ; $82C03B |
  LDA.W #$0000                              ; $82C03D |
  JSL.L CODE_FL_82B9C3                      ; $82C040 |
  INC.W $1DE0                               ; $82C044 |
  LDA.B $90                                 ; $82C047 |
  CMP.W #$0004                              ; $82C049 |
  BEQ CODE_82C05D                           ; $82C04C |
  LDA.W $1DA6                               ; $82C04E |
  SEC                                       ; $82C051 |
  SBC.W #$001C                              ; $82C052 |
  STA.W $1DA6                               ; $82C055 |
  INC.W $1DE0                               ; $82C058 |
  BRA CODE_82C091                           ; $82C05B |

CODE_82C05D:
  LDX.W #$1DA0                              ; $82C05D |
  LDA.B $0A,X                               ; $82C060 |
  CMP.W #$0038                              ; $82C062 |
  BMI CODE_82C087                           ; $82C065 |
  STZ.W $1C66                               ; $82C067 |

CODE_82C06A:
  LDA.B $42                                 ; $82C06A |
  AND.W #$0003                              ; $82C06C |
  BNE CODE_82C086                           ; $82C06F |
  INC.B $0A,X                               ; $82C071 |
  JSL.L CODE_FL_82B9EC                      ; $82C073 |
  LDA.W $1DE6                               ; $82C077 |
  JSR.W CODE_FN_82C7EC                      ; $82C07A |
  STA.W $1DE6                               ; $82C07D |
  BNE CODE_82C086                           ; $82C080 |
  JML.L CODE_FL_82B994                      ; $82C082 |

CODE_82C086:
  RTL                                       ; $82C086 |

CODE_82C087:
  CLC                                       ; $82C087 |
  ADC.W #$0002                              ; $82C088 |
  STA.B $0A,X                               ; $82C08B |
  JML.L CODE_FL_82B9EC                      ; $82C08D |

CODE_82C091:
  LDX.W #$1DA0                              ; $82C091 |
  LDA.B $0A,X                               ; $82C094 |
  CMP.W #$0014                              ; $82C096 |
  BMI CODE_82C087                           ; $82C099 |
  BRA CODE_82C06A                           ; $82C09B |

CODE_FL_82C09D:
  JSL.L CODE_FL_82B994                      ; $82C09D |
  STX.W $1DE4                               ; $82C0A1 |
  LDA.W #$0009                              ; $82C0A4 |
  STA.W $1DE2                               ; $82C0A7 |
  STZ.W $1DE0                               ; $82C0AA |
  LDA.W #$0080                              ; $82C0AD |
  STA.W $1DA8                               ; $82C0B0 |
  LDA.W #$0060                              ; $82C0B3 |
  STA.W $1DA6                               ; $82C0B6 |
  RTL                                       ; $82C0B9 |

CODE_82C0BA:
  LDA.W $1DE0                               ; $82C0BA |
  BNE CODE_82C0D9                           ; $82C0BD |
  LDY.W #$81F0                              ; $82C0BF |
  JSL.L CODE_FL_808DBE                      ; $82C0C2 |
  LDA.W #$0032                              ; $82C0C6 |
  STA.W $1FB4                               ; $82C0C9 |
  LDX.W #$1DA0                              ; $82C0CC |
  LDA.W #$0000                              ; $82C0CF |
  JSL.L CODE_FL_82B9C3                      ; $82C0D2 |
  INC.W $1DE0                               ; $82C0D6 |

CODE_82C0D9:
  JML.L CODE_FL_82B9EC                      ; $82C0D9 |

CODE_JL_82C0DD:
  JSL.L CODE_FL_82B994                      ; $82C0DD |
  STX.W $1DE4                               ; $82C0E1 |
  LDA.W #$0008                              ; $82C0E4 |
  STA.W $1DE2                               ; $82C0E7 |
  STZ.W $1DE0                               ; $82C0EA |
  JMP.W CODE_FL_82C7D6                      ; $82C0ED |

CODE_82C0F0:
  LDA.W $1DE0                               ; $82C0F0 |
  BNE CODE_82C11C                           ; $82C0F3 |
  LDA.W #$2108                              ; $82C0F5 |
  JSL.L CODE_FL_808D48                      ; $82C0F8 |
  LDY.W #$8156                              ; $82C0FC |
  JSL.L CODE_FL_808D7B                      ; $82C0FF |
  LDY.W #$81E9                              ; $82C103 |
  JSL.L CODE_FL_808DBE                      ; $82C106 |
  LDX.W #$1DA0                              ; $82C10A |
  LDA.W #$0020                              ; $82C10D |
  STA.B $0A,X                               ; $82C110 |
  LDA.W #$000C                              ; $82C112 |
  JSL.L CODE_FL_82B9C3                      ; $82C115 |
  INC.W $1DE0                               ; $82C119 |

CODE_82C11C:
  LDX.W $1DE4                               ; $82C11C |
  JSL.L CODE_FL_82C7D6                      ; $82C11F |
  LDA.W #$02A0                              ; $82C123 |
  SEC                                       ; $82C126 |
  SBC.B $35,X                               ; $82C127 |
  CMP.W #$0008                              ; $82C129 |
  BPL CODE_82C131                           ; $82C12C |
  LDA.W #$0008                              ; $82C12E |

CODE_82C131:
  LSR A                                     ; $82C131 |
  LSR A                                     ; $82C132 |
  STA.W $1DAA                               ; $82C133 |
  JML.L CODE_FL_82B9EC                      ; $82C136 |

CODE_FL_82C13A:
  JSL.L CODE_FL_82B994                      ; $82C13A |
  STX.W $1DE4                               ; $82C13E |
  LDA.W #$0007                              ; $82C141 |
  STA.W $1DE2                               ; $82C144 |
  STZ.W $1DE0                               ; $82C147 |
  LDA.B $09,X                               ; $82C14A |
  STA.W $1DA8                               ; $82C14C |
  STA.W $1DC8                               ; $82C14F |
  LDA.B $0D,X                               ; $82C152 |
  STA.W $1DA6                               ; $82C154 |
  STA.W $1DC6                               ; $82C157 |
  RTL                                       ; $82C15A |

CODE_82C15B:
  LDA.B $90                                 ; $82C15B |
  CMP.W #$0004                              ; $82C15D |
  BNE CODE_82C168                           ; $82C160 |
  LDA.W #$8000                              ; $82C162 |
  STA.W $1C7C                               ; $82C165 |

CODE_82C168:
  LDA.W $1DE0                               ; $82C168 |
  PHX                                       ; $82C16B |
  ASL A                                     ; $82C16C |
  TAX                                       ; $82C16D |
  LDA.L PTR16_82C178,X                      ; $82C16E |
  PLX                                       ; $82C172 |
  STA.B $00                                 ; $82C173 |
  JMP.W ($0000)                             ; $82C175 |

PTR16_82C178:
  dw CODE_82C182                            ; $82C178 |
  dw CODE_82C192                            ; $82C17A |
  dw CODE_82C19B                            ; $82C17C |
  dw CODE_82C1D1                            ; $82C17E |
  dw CODE_82C1E7                            ; $82C180 |

CODE_82C182:
  LDY.W #$0030                              ; $82C182 |
  JSL.L CODE_FL_808993                      ; $82C185 |
  LDA.W #$0002                              ; $82C189 |
  STA.W $1DE6                               ; $82C18C |
  INC.W $1DE0                               ; $82C18F |

CODE_82C192:
  DEC.W $1DE6                               ; $82C192 |
  BPL CODE_82C19A                           ; $82C195 |
  INC.W $1DE0                               ; $82C197 |

CODE_82C19A:
  RTL                                       ; $82C19A |

CODE_82C19B:
  LDA.W #$08BC                              ; $82C19B |
  JSL.L CODE_FL_808D48                      ; $82C19E |
  LDY.W #$8138                              ; $82C1A2 |
  JSL.L CODE_FL_808D7B                      ; $82C1A5 |
  LDY.W #$81DB                              ; $82C1A9 |
  JSL.L CODE_FL_808DBE                      ; $82C1AC |
  LDX.W #$1DA0                              ; $82C1B0 |
  LDA.W #$0008                              ; $82C1B3 |
  STA.B $0A,X                               ; $82C1B6 |
  LDA.W #$0003                              ; $82C1B8 |
  JSL.L CODE_FL_82B9C3                      ; $82C1BB |
  LDX.W #$1DC0                              ; $82C1BF |
  LDA.W #$0001                              ; $82C1C2 |
  STA.B $0A,X                               ; $82C1C5 |
  LDA.W #$0003                              ; $82C1C7 |
  JSL.L CODE_FL_82B9D6                      ; $82C1CA |
  INC.W $1DE0                               ; $82C1CE |

CODE_82C1D1:
  LDA.W $1DAA                               ; $82C1D1 |
  CMP.W #$00E0                              ; $82C1D4 |
  BMI CODE_82C1DC                           ; $82C1D7 |
  INC.W $1DE0                               ; $82C1D9 |

CODE_82C1DC:
  CLC                                       ; $82C1DC |
  ADC.W #$000C                              ; $82C1DD |
  STA.W $1DAA                               ; $82C1E0 |
  JML.L CODE_FL_82B9EC                      ; $82C1E3 |

CODE_82C1E7:
  LDA.W $1DCA                               ; $82C1E7 |
  CMP.W #$00E0                              ; $82C1EA |
  BMI CODE_82C1F3                           ; $82C1ED |
  JML.L CODE_FL_82B994                      ; $82C1EF |

CODE_82C1F3:
  CLC                                       ; $82C1F3 |
  ADC.W #$0014                              ; $82C1F4 |
  STA.W $1DCA                               ; $82C1F7 |
  JML.L CODE_JL_82BA19                      ; $82C1FA |

CODE_FL_82C1FE:
  JSL.L CODE_FL_82B994                      ; $82C1FE |
  STX.W $1DE4                               ; $82C202 |
  LDA.W #$0006                              ; $82C205 |
  STA.W $1DE2                               ; $82C208 |
  STZ.W $1DE0                               ; $82C20B |
  LDA.W #$0080                              ; $82C20E |
  STA.W $1DA8                               ; $82C211 |
  LDA.W #$00C0                              ; $82C214 |
  STA.W $1DA6                               ; $82C217 |
  RTL                                       ; $82C21A |

CODE_82C21B:
  LDA.W $1DE0                               ; $82C21B |
  BEQ CODE_82C225                           ; $82C21E |
  DEC A                                     ; $82C220 |
  BNE CODE_82C26F                           ; $82C221 |
  BRA CODE_82C24C                           ; $82C223 |

CODE_82C225:
  LDA.W #$7FFF                              ; $82C225 |
  JSL.L CODE_FL_808D48                      ; $82C228 |
  LDY.W #$8138                              ; $82C22C |
  JSL.L CODE_FL_808D7B                      ; $82C22F |
  LDY.W #$81E2                              ; $82C233 |
  JSL.L CODE_FL_808DBE                      ; $82C236 |
  LDX.W #$1DA0                              ; $82C23A |
  LDA.W #$0008                              ; $82C23D |
  STA.B $0A,X                               ; $82C240 |
  LDA.W #$0000                              ; $82C242 |
  JSL.L CODE_FL_82B9C3                      ; $82C245 |
  INC.W $1DE0                               ; $82C249 |

CODE_82C24C:
  LDA.B $90                                 ; $82C24C |
  CMP.W #$0003                              ; $82C24E |
  BEQ CODE_82C259                           ; $82C251 |
  LDA.W #$8000                              ; $82C253 |
  STA.W $1C7C                               ; $82C256 |

CODE_82C259:
  LDA.W $1DAA                               ; $82C259 |
  CMP.W #$00F0                              ; $82C25C |
  BMI CODE_82C264                           ; $82C25F |
  INC.W $1DE0                               ; $82C261 |

CODE_82C264:
  CLC                                       ; $82C264 |
  ADC.W #$0002                              ; $82C265 |
  STA.W $1DAA                               ; $82C268 |
  JML.L CODE_FL_82B9EC                      ; $82C26B |

CODE_82C26F:
  RTL                                       ; $82C26F |

CODE_FL_82C270:
  JSL.L CODE_FL_82B994                      ; $82C270 |
  LDA.W #$0004                              ; $82C274 |
  LDY.W #$0020                              ; $82C277 |
  BRA CODE_82C288                           ; $82C27A |

CODE_FL_82C27C:
  JSL.L CODE_FL_82B994                      ; $82C27C |
  LDA.W #$000C                              ; $82C280 |
  LDY.W #$0000                              ; $82C283 |
  BRA CODE_82C288                           ; $82C286 |

CODE_82C288:
  STA.W $1DEC                               ; $82C288 |
  STY.W $1DEE                               ; $82C28B |
  STX.W $1DE4                               ; $82C28E |
  LDA.W #$0001                              ; $82C291 |
  STA.W $1DE2                               ; $82C294 |
  JSL.L CODE_FL_82C7D6                      ; $82C297 |
  JSL.L CODE_FL_82C7E1                      ; $82C29B |
  LDA.W #$0078                              ; $82C29F |
  STA.W $1DA6                               ; $82C2A2 |
  STA.W $1DC6                               ; $82C2A5 |
  LDA.B $2D,X                               ; $82C2A8 |
  STA.W $1DE6                               ; $82C2AA |
  LDA.B $31,X                               ; $82C2AD |
  STA.W $1DE8                               ; $82C2AF |
  LDA.B $35,X                               ; $82C2B2 |
  STA.W $1DEA                               ; $82C2B4 |
  RTL                                       ; $82C2B7 |

CODE_82C2B8:
  LDA.W $1DE0                               ; $82C2B8 |
  BNE CODE_82C2F0                           ; $82C2BB |
  LDA.W #$7C42                              ; $82C2BD |
  JSL.L CODE_FL_808D48                      ; $82C2C0 |
  LDY.W #$8138                              ; $82C2C4 |
  JSL.L CODE_FL_808D7B                      ; $82C2C7 |
  LDY.W #$81DB                              ; $82C2CB |
  JSL.L CODE_FL_808DBE                      ; $82C2CE |
  LDX.W #$1DA0                              ; $82C2D2 |
  LDA.W #$0008                              ; $82C2D5 |
  STA.B $0A,X                               ; $82C2D8 |
  LDA.W #$0001                              ; $82C2DA |
  JSL.L CODE_FL_82B9C3                      ; $82C2DD |
  LDX.W #$1DC0                              ; $82C2E1 |
  STZ.B $0A,X                               ; $82C2E4 |
  LDA.W #$0001                              ; $82C2E6 |
  JSL.L CODE_FL_82B9D6                      ; $82C2E9 |
  INC.W $1DE0                               ; $82C2ED |

CODE_82C2F0:
  LDA.W #$8000                              ; $82C2F0 |
  STA.W $1C7C                               ; $82C2F3 |
  LDA.W $1DAA                               ; $82C2F6 |
  CMP.W #$00C0                              ; $82C2F9 |
  BPL CODE_82C309                           ; $82C2FC |
  CLC                                       ; $82C2FE |
  ADC.W $1DEC                               ; $82C2FF |
  STA.W $1DAA                               ; $82C302 |
  JML.L CODE_FL_82B9EC                      ; $82C305 |

CODE_82C309:
  DEC.W $1DEE                               ; $82C309 |
  BMI CODE_82C315                           ; $82C30C |
  INC.W $1DAA                               ; $82C30E |
  JML.L CODE_FL_82B9EC                      ; $82C311 |

CODE_82C315:
  LDA.W $1DCA                               ; $82C315 |
  CLC                                       ; $82C318 |
  ADC.W #$0010                              ; $82C319 |
  STA.W $1DCA                               ; $82C31C |
  CMP.W $1DAA                               ; $82C31F |
  BPL CODE_82C328                           ; $82C322 |
  JML.L CODE_JL_82BA19                      ; $82C324 |

CODE_82C328:
  STZ.W $1C72                               ; $82C328 |
  JML.L CODE_FL_82B994                      ; $82C32B |

CODE_FL_82C32F:
  LDA.W $1DE2                               ; $82C32F |
  CMP.W #$0001                              ; $82C332 |
  BNE CODE_82C338                           ; $82C335 |
  RTL                                       ; $82C337 |

CODE_82C338:
  JSL.L CODE_FL_82B994                      ; $82C338 |
  STX.W $1DE4                               ; $82C33C |
  LDA.W #$0002                              ; $82C33F |
  STA.W $1DE2                               ; $82C342 |
  STZ.W $1DE0                               ; $82C345 |
  JSL.L CODE_FL_82C7D6                      ; $82C348 |
  JMP.W CODE_FL_82C7E1                      ; $82C34C |

CODE_82C34F:
  LDA.W $1DE0                               ; $82C34F |
  BNE CODE_82C38A                           ; $82C352 |
  LDA.W #$011F                              ; $82C354 |
  JSL.L CODE_FL_808D48                      ; $82C357 |
  LDY.W #$8138                              ; $82C35B |
  JSL.L CODE_FL_808D7B                      ; $82C35E |
  LDY.W #$81DB                              ; $82C362 |
  JSL.L CODE_FL_808DBE                      ; $82C365 |
  LDX.W #$1DA0                              ; $82C369 |
  LDA.W #$0020                              ; $82C36C |
  STA.B $0A,X                               ; $82C36F |
  LDA.W #$0000                              ; $82C371 |
  JSL.L CODE_FL_82B9C3                      ; $82C374 |
  LDX.W #$1DC0                              ; $82C378 |
  LDA.W #$0018                              ; $82C37B |
  STA.B $0A,X                               ; $82C37E |
  LDA.W #$0000                              ; $82C380 |
  JSL.L CODE_FL_82B9D6                      ; $82C383 |
  INC.W $1DE0                               ; $82C387 |

CODE_82C38A:
  LDA.W $1DAA                               ; $82C38A |
  CMP.W #$0030                              ; $82C38D |
  BEQ CODE_82C3A6                           ; $82C390 |
  CLC                                       ; $82C392 |
  ADC.W #$0004                              ; $82C393 |
  STA.W $1DAA                               ; $82C396 |
  DEC.W $1DA8                               ; $82C399 |
  DEC.W $1DA8                               ; $82C39C |
  DEC.W $1DA6                               ; $82C39F |
  JML.L CODE_FL_82B9EC                      ; $82C3A2 |

CODE_82C3A6:
  LDA.W $1DCA                               ; $82C3A6 |
  CMP.W #$0040                              ; $82C3A9 |
  BEQ CODE_82C3B9                           ; $82C3AC |
  CLC                                       ; $82C3AE |
  ADC.W #$0004                              ; $82C3AF |
  STA.W $1DCA                               ; $82C3B2 |
  JML.L CODE_JL_82BA19                      ; $82C3B5 |

CODE_82C3B9:
  JML.L CODE_FL_82B994                      ; $82C3B9 |

CODE_FL_82C3BD:
  JSL.L CODE_FL_82B994                      ; $82C3BD |
  STX.W $1DE4                               ; $82C3C1 |
  LDA.W #$0003                              ; $82C3C4 |
  STA.W $1DE2                               ; $82C3C7 |
  STZ.W $1DE0                               ; $82C3CA |
  STZ.W $1DE6                               ; $82C3CD |
  RTL                                       ; $82C3D0 |

CODE_FL_82C3D1:
  JSL.L CODE_FL_82B994                      ; $82C3D1 |
  STX.W $1DE4                               ; $82C3D5 |
  LDA.W #$0003                              ; $82C3D8 |
  STA.W $1DE2                               ; $82C3DB |
  STZ.W $1DE0                               ; $82C3DE |
  LDA.W #$0002                              ; $82C3E1 |
  STA.W $1DE6                               ; $82C3E4 |
  RTL                                       ; $82C3E7 |

CODE_FL_82C3E8:
  PHA                                       ; $82C3E8 |
  PHY                                       ; $82C3E9 |
  JSL.L CODE_FL_82B994                      ; $82C3EA |
  PLY                                       ; $82C3EE |
  PLA                                       ; $82C3EF |
  STA.W $1DE4                               ; $82C3F0 |
  STY.W $1DE8                               ; $82C3F3 |
  LDA.W #$0003                              ; $82C3F6 |
  STA.W $1DE2                               ; $82C3F9 |
  STZ.W $1DE0                               ; $82C3FC |
  LDA.W #$0004                              ; $82C3FF |
  STA.W $1DE6                               ; $82C402 |
  RTL                                       ; $82C405 |

CODE_82C406:
  LDA.W $1DE0                               ; $82C406 |
  BNE CODE_82C44A                           ; $82C409 |
  LDY.W $1DE6                               ; $82C40B |
  LDA.W CODE_009256,Y                       ; $82C40E |
  JSL.L CODE_FL_808D48                      ; $82C411 |
  LDA.W $1DE6                               ; $82C415 |
  CMP.W #$0004                              ; $82C418 |
  BEQ CODE_82C431                           ; $82C41B |
  LDY.W #$8138                              ; $82C41D |
  JSL.L CODE_FL_808D7B                      ; $82C420 |
  LDY.W #$81DB                              ; $82C424 |
  JSL.L CODE_FL_808DBE                      ; $82C427 |
  JSL.L CODE_FL_82BB8D                      ; $82C42B |
  BRA CODE_82C447                           ; $82C42F |

CODE_82C431:
  LDY.W #$81A0                              ; $82C431 |
  JSL.L CODE_FL_808D7B                      ; $82C434 |
  LDY.W #$820C                              ; $82C438 |
  JSL.L CODE_FL_808DBE                      ; $82C43B |
  JSL.L CODE_FL_82BB8D                      ; $82C43F |
  JSL.L CODE_FL_82BBAC                      ; $82C443 |

CODE_82C447:
  INC.W $1DE0                               ; $82C447 |

CODE_82C44A:
  LDX.W $1DE4                               ; $82C44A |
  LDA.W $1DE6                               ; $82C44D |
  CMP.W #$0002                              ; $82C450 |
  BNE CODE_82C458                           ; $82C453 |
  JMP.W CODE_JP_82C4F2                      ; $82C455 |

CODE_82C458:
  CMP.W #$0004                              ; $82C458 |
  BNE CODE_82C460                           ; $82C45B |
  JMP.W CODE_JP_82C500                      ; $82C45D |

CODE_82C460:
  LDA.B $18,X                               ; $82C460 |
  CMP.W #$0012                              ; $82C462 |
  BEQ CODE_82C480                           ; $82C465 |
  CMP.W #$0023                              ; $82C467 |
  BEQ CODE_82C46F                           ; $82C46A |
  JMP.W CODE_JP_82C4EE                      ; $82C46C |

CODE_82C46F:
  LDA.B $42                                 ; $82C46F |
  LSR A                                     ; $82C471 |
  BCC CODE_82C47C                           ; $82C472 |
  LDA.W #$43F0                              ; $82C474 |
  BRA CODE_82C47C                           ; $82C477 |

  LDA.W #$7DEF                              ; $82C479 |

CODE_82C47C:
  JSL.L CODE_FL_808D48                      ; $82C47C |

CODE_82C480:
  LDA.W $006D,X                             ; $82C480 |
  CMP.W $012D,X                             ; $82C483 |
  BMI CODE_82C4BA                           ; $82C486 |
  LDA.W $0129,X                             ; $82C488 |
  STA.W $1DB0                               ; $82C48B |
  LDA.W $012D,X                             ; $82C48E |
  STA.W $1DB2                               ; $82C491 |
  LDA.W $0189,X                             ; $82C494 |
  STA.W $1DB4                               ; $82C497 |
  LDA.W $018D,X                             ; $82C49A |
  STA.W $1DB6                               ; $82C49D |
  LDA.W $0069,X                             ; $82C4A0 |
  STA.W $1DB8                               ; $82C4A3 |
  LDA.W $006D,X                             ; $82C4A6 |
  STA.W $1DBA                               ; $82C4A9 |
  LDA.W $00C9,X                             ; $82C4AC |
  STA.W $1DBC                               ; $82C4AF |
  LDA.W $00CD,X                             ; $82C4B2 |
  STA.W $1DBE                               ; $82C4B5 |
  BRA CODE_82C4EA                           ; $82C4B8 |

CODE_82C4BA:
  LDA.W $0069,X                             ; $82C4BA |
  STA.W $1DB0                               ; $82C4BD |
  LDA.W $006D,X                             ; $82C4C0 |
  STA.W $1DB2                               ; $82C4C3 |
  LDA.W $00C9,X                             ; $82C4C6 |
  STA.W $1DB4                               ; $82C4C9 |
  LDA.W $00CD,X                             ; $82C4CC |
  STA.W $1DB6                               ; $82C4CF |
  LDA.W $0129,X                             ; $82C4D2 |
  STA.W $1DB8                               ; $82C4D5 |
  LDA.W $012D,X                             ; $82C4D8 |
  STA.W $1DBA                               ; $82C4DB |
  LDA.W $0189,X                             ; $82C4DE |
  STA.W $1DBC                               ; $82C4E1 |
  LDA.W $018D,X                             ; $82C4E4 |
  STA.W $1DBE                               ; $82C4E7 |

CODE_82C4EA:
  JML.L CODE_FL_82BBCB                      ; $82C4EA |

CODE_JP_82C4EE:
  JML.L CODE_FL_82B994                      ; $82C4EE |

CODE_JP_82C4F2:
  LDA.B $18,X                               ; $82C4F2 |
  BEQ CODE_JP_82C4EE                        ; $82C4F4 |
  LDY.W #$1DA0                              ; $82C4F6 |
  JSR.W CODE_FN_82C51A                      ; $82C4F9 |
  JML.L CODE_FL_82BBCB                      ; $82C4FC |

CODE_JP_82C500:
  LDX.W $1DE4                               ; $82C500 |
  LDY.W #$1DA0                              ; $82C503 |
  JSR.W CODE_FN_82C51A                      ; $82C506 |
  JSL.L CODE_FL_82BBCB                      ; $82C509 |
  LDX.W $1DE8                               ; $82C50D |
  LDY.W #$1DC0                              ; $82C510 |
  JSR.W CODE_FN_82C51A                      ; $82C513 |
  JML.L CODE_JL_82BBF3                      ; $82C516 |

CODE_FN_82C51A:
  LDA.W $005D,X                             ; $82C51A |
  CMP.W $00FD,X                             ; $82C51D |
  BMI CODE_82C554                           ; $82C520 |
  LDA.W $00F9,X                             ; $82C522 |
  STA.W $0010,Y                             ; $82C525 |
  LDA.W $00FD,X                             ; $82C528 |
  STA.W $0012,Y                             ; $82C52B |
  LDA.W $0149,X                             ; $82C52E |
  STA.W $0014,Y                             ; $82C531 |
  LDA.W $014D,X                             ; $82C534 |
  STA.W $0016,Y                             ; $82C537 |
  LDA.W $0059,X                             ; $82C53A |
  STA.W $0018,Y                             ; $82C53D |
  LDA.W $005D,X                             ; $82C540 |
  STA.W $001A,Y                             ; $82C543 |
  LDA.W $00A9,X                             ; $82C546 |
  STA.W $001C,Y                             ; $82C549 |
  LDA.W $00AD,X                             ; $82C54C |
  STA.W $001E,Y                             ; $82C54F |
  BRA CODE_82C584                           ; $82C552 |

CODE_82C554:
  LDA.W $0059,X                             ; $82C554 |
  STA.W $0010,Y                             ; $82C557 |
  LDA.W $005D,X                             ; $82C55A |
  STA.W $0012,Y                             ; $82C55D |
  LDA.W $00A9,X                             ; $82C560 |
  STA.W $0014,Y                             ; $82C563 |
  LDA.W $00AD,X                             ; $82C566 |
  STA.W $0016,Y                             ; $82C569 |
  LDA.W $00F9,X                             ; $82C56C |
  STA.W $0018,Y                             ; $82C56F |
  LDA.W $00FD,X                             ; $82C572 |
  STA.W $001A,Y                             ; $82C575 |
  LDA.W $0149,X                             ; $82C578 |
  STA.W $001C,Y                             ; $82C57B |
  LDA.W $014D,X                             ; $82C57E |
  STA.W $001E,Y                             ; $82C581 |

CODE_82C584:
  RTS                                       ; $82C584 |

CODE_FL_82C585:
  JSL.L CODE_FL_82B994                      ; $82C585 |
  STX.W $1DE4                               ; $82C589 |
  LDA.W #$0004                              ; $82C58C |
  STA.W $1DE2                               ; $82C58F |
  STZ.W $1DE0                               ; $82C592 |
  LDA.W #$000C                              ; $82C595 |
  STA.W $1DAC                               ; $82C598 |
  LDA.W #$0010                              ; $82C59B |
  STA.W $1DAA                               ; $82C59E |
  LDA.W #$FFC0                              ; $82C5A1 |
  LDY.B $42,X                               ; $82C5A4 |
  BEQ CODE_82C5AB                           ; $82C5A6 |
  LDA.W #$0040                              ; $82C5A8 |

CODE_82C5AB:
  STA.W $1DB0                               ; $82C5AB |
  RTL                                       ; $82C5AE |

CODE_82C5AF:
  LDA.W $1DE0                               ; $82C5AF |
  ASL A                                     ; $82C5B2 |
  TAX                                       ; $82C5B3 |
  JMP.W (PTR16_82C5B7,X)                    ; $82C5B4 |

PTR16_82C5B7:
  dw CODE_82C5BF                            ; $82C5B7 |
  dw CODE_82C5CE                            ; $82C5B9 |
  dw CODE_82C5ED                            ; $82C5BB |
  dw CODE_82C603                            ; $82C5BD |

CODE_82C5BF:
  LDX.W $1DE4                               ; $82C5BF |
  LDA.B $0D,X                               ; $82C5C2 |
  BMI CODE_82C5CD                           ; $82C5C4 |
  JSL.L CODE_FL_82C7D6                      ; $82C5C6 |
  INC.W $1DE0                               ; $82C5CA |

CODE_82C5CD:
  RTL                                       ; $82C5CD |

CODE_82C5CE:
  LDA.W #$03E0                              ; $82C5CE |
  STA.W $1DB8                               ; $82C5D1 |
  JSL.L CODE_FL_808D48                      ; $82C5D4 |
  LDY.W #$8138                              ; $82C5D8 |
  JSL.L CODE_FL_808D7B                      ; $82C5DB |
  LDY.W #$81DB                              ; $82C5DF |
  JSL.L CODE_FL_808DBE                      ; $82C5E2 |
  JSL.L CODE_FL_82BB8D                      ; $82C5E6 |
  INC.W $1DE0                               ; $82C5EA |

CODE_82C5ED:
  LDX.W $1DE4                               ; $82C5ED |
  LDA.B $1A,X                               ; $82C5F0 |
  CMP.W #$0002                              ; $82C5F2 |
  BNE CODE_82C5FA                           ; $82C5F5 |
  INC.W $1DE0                               ; $82C5F7 |

CODE_82C5FA:
  LDA.B $0D,X                               ; $82C5FA |
  STA.W $1DAA                               ; $82C5FC |
  JML.L CODE_FL_82BCC8                      ; $82C5FF |

CODE_82C603:
  LDA.W $1DB8                               ; $82C603 |
  JSL.L CODE_FL_808D48                      ; $82C606 |
  LDA.W $1DAC                               ; $82C60A |
  CLC                                       ; $82C60D |
  ADC.W #$0008                              ; $82C60E |
  STA.W $1DAC                               ; $82C611 |
  JSL.L CODE_FL_82BCC8                      ; $82C614 |
  LDA.W $1DB8                               ; $82C618 |
  BEQ CODE_82C625                           ; $82C61B |
  SEC                                       ; $82C61D |
  SBC.W #$0020                              ; $82C61E |
  STA.W $1DB8                               ; $82C621 |
  RTL                                       ; $82C624 |

CODE_82C625:
  JML.L CODE_FL_82B994                      ; $82C625 |

CODE_FL_82C629:
  JSL.L CODE_FL_82C6DA                      ; $82C629 |
  LDA.B $00                                 ; $82C62D |
  STA.W $1DE6                               ; $82C62F |
  LDA.B $02                                 ; $82C632 |
  STA.W $1DE8                               ; $82C634 |
  LDA.B $04                                 ; $82C637 |
  STA.W $1DEE                               ; $82C639 |
  LDA.W #$8004                              ; $82C63C |
  STA.W $1DEA                               ; $82C63F |
  STA.W $1DEC                               ; $82C642 |
  LDA.W #$7FFF                              ; $82C645 |
  STA.W $1DB8                               ; $82C648 |
  JSL.L CODE_FL_808D48                      ; $82C64B |
  LDY.W #$814C                              ; $82C64F |
  JML.L CODE_FL_808D7B                      ; $82C652 |

CODE_FL_82C656:
  JSL.L CODE_FL_82C6DA                      ; $82C656 |
  LDA.W #$8BDD                              ; $82C65A |
  STA.W $1DE6                               ; $82C65D |
  LDA.W #$8C56                              ; $82C660 |
  STA.W $1DE8                               ; $82C663 |
  LDA.W #$0003                              ; $82C666 |
  STA.W $1DEA                               ; $82C669 |
  STA.W $1DEC                               ; $82C66C |
  LDA.W #$0010                              ; $82C66F |
  STA.W $1DEE                               ; $82C672 |
  LDA.W #$7FE0                              ; $82C675 |
  STA.W $1DB8                               ; $82C678 |
  JSL.L CODE_FL_808D48                      ; $82C67B |
  LDY.W #$8147                              ; $82C67F |
  JML.L CODE_FL_808D7B                      ; $82C682 |

CODE_FL_82C686:
  JSL.L CODE_FL_82C6DA                      ; $82C686 |
  LDA.B $00                                 ; $82C68A |
  STA.W $1DE6                               ; $82C68C |
  STZ.W $1DE8                               ; $82C68F |
  STZ.W $1DEA                               ; $82C692 |
  STZ.W $1DEC                               ; $82C695 |
  LDA.W #$0020                              ; $82C698 |
  STA.W $1DEE                               ; $82C69B |
  LDA.W #$001F                              ; $82C69E |
  STA.W $1DB8                               ; $82C6A1 |
  JSL.L CODE_FL_808D48                      ; $82C6A4 |
  LDY.W #$814C                              ; $82C6A8 |
  JML.L CODE_FL_808D7B                      ; $82C6AB |

CODE_FL_82C6AF:
  LDA.W #$0200                              ; $82C6AF |
  LDY.W #$0000                              ; $82C6B2 |
  JSL.L CODE_FL_82C6DA                      ; $82C6B5 |
  LDA.W #$000B                              ; $82C6B9 |
  STA.W $1DE2                               ; $82C6BC |
  LDA.W #$8ED1                              ; $82C6BF |
  STA.W $1DE6                               ; $82C6C2 |
  LDA.W #$7C00                              ; $82C6C5 |
  JSL.L CODE_FL_808D48                      ; $82C6C8 |
  LDY.W #$8151                              ; $82C6CC |
  JSL.L CODE_FL_808D7B                      ; $82C6CF |
  LDA.W #$0001                              ; $82C6D3 |
  STA.W $1FDE                               ; $82C6D6 |
  RTL                                       ; $82C6D9 |

CODE_FL_82C6DA:
  PHY                                       ; $82C6DA |
  PHA                                       ; $82C6DB |
  JSL.L CODE_FL_82B994                      ; $82C6DC |
  STX.W $1DE4                               ; $82C6E0 |
  LDA.W #$0005                              ; $82C6E3 |
  STA.W $1DE2                               ; $82C6E6 |
  STZ.W $1DE0                               ; $82C6E9 |
  STZ.W $1DAC                               ; $82C6EC |
  STZ.W $1DAA                               ; $82C6EF |
  STZ.W $1DCC                               ; $82C6F2 |
  STZ.W $1DCA                               ; $82C6F5 |
  PLA                                       ; $82C6F8 |
  STA.W $1DA8                               ; $82C6F9 |
  STA.W $1DC8                               ; $82C6FC |
  PLA                                       ; $82C6FF |
  STA.W $1DA6                               ; $82C700 |
  STA.W $1DC6                               ; $82C703 |
  RTL                                       ; $82C706 |

CODE_82C707:
  LDA.W $1C74                               ; $82C707 |
  BEQ CODE_82C710                           ; $82C70A |
  JML.L CODE_FL_82B994                      ; $82C70C |

CODE_82C710:
  LDA.W $1DE0                               ; $82C710 |
  BNE CODE_82C740                           ; $82C713 |
  LDY.W #$81E9                              ; $82C715 |
  JSL.L CODE_FL_808DBE                      ; $82C718 |
  LDA.W $1DE6                               ; $82C71C |
  BEQ CODE_82C72C                           ; $82C71F |
  JSL.L CODE_FL_82BB8D                      ; $82C721 |
  LDA.W $1DE6                               ; $82C725 |
  JSL.L CODE_FL_82BD49                      ; $82C728 |

CODE_82C72C:
  LDA.W $1DE8                               ; $82C72C |
  BEQ CODE_82C73C                           ; $82C72F |
  JSL.L CODE_FL_82BBAC                      ; $82C731 |
  LDA.W $1DE8                               ; $82C735 |
  JSL.L CODE_FL_82BD6A                      ; $82C738 |

CODE_82C73C:
  INC.W $1DE0                               ; $82C73C |
  RTL                                       ; $82C73F |

CODE_82C740:
  LDA.B $42                                 ; $82C740 |
  AND.W #$0007                              ; $82C742 |
  ASL A                                     ; $82C745 |
  CLC                                       ; $82C746 |
  ADC.W $1DEE                               ; $82C747 |
  TAY                                       ; $82C74A |
  LDA.W CODE_0091B6,Y                       ; $82C74B |
  CLC                                       ; $82C74E |
  ADC.W $1DA6                               ; $82C74F |
  STA.W $1DA6                               ; $82C752 |
  STA.W $1DC6                               ; $82C755 |
  LDA.W CODE_009206,Y                       ; $82C758 |
  CLC                                       ; $82C75B |
  ADC.W $1DA8                               ; $82C75C |
  STA.W $1DA8                               ; $82C75F |
  STA.W $1DC8                               ; $82C762 |
  LDA.W $1DE6                               ; $82C765 |
  BEQ CODE_82C76E                           ; $82C768 |
  JSL.L CODE_FL_82BD49                      ; $82C76A |

CODE_82C76E:
  LDA.W $1DE8                               ; $82C76E |
  BEQ CODE_82C777                           ; $82C771 |
  JSL.L CODE_FL_82BD6A                      ; $82C773 |

CODE_82C777:
  LDA.W $1DEC                               ; $82C777 |
  BMI CODE_82C794                           ; $82C77A |
  DEC.W $1DEA                               ; $82C77C |
  BPL CODE_82C793                           ; $82C77F |
  STA.W $1DEA                               ; $82C781 |
  LDA.W $1DB8                               ; $82C784 |
  JSR.W CODE_FN_82C7EC                      ; $82C787 |
  STA.W $1DB8                               ; $82C78A |
  BNE CODE_82C793                           ; $82C78D |
  JSL.L CODE_FL_82B994                      ; $82C78F |

CODE_82C793:
  RTL                                       ; $82C793 |

CODE_82C794:
  LDA.W $1DB8                               ; $82C794 |
  JSR.W CODE_FN_82C7EC                      ; $82C797 |
  JSR.W CODE_FN_82C7EC                      ; $82C79A |
  JSR.W CODE_FN_82C7EC                      ; $82C79D |
  JSR.W CODE_FN_82C7EC                      ; $82C7A0 |
  STA.W $1DB8                               ; $82C7A3 |
  BNE CODE_82C793                           ; $82C7A6 |
  JML.L CODE_FL_82B994                      ; $82C7A8 |

CODE_82C7AC:
  LDA.W $1DE0                               ; $82C7AC |
  BNE CODE_82C7CC                           ; $82C7AF |
  LDY.W #$81E9                              ; $82C7B1 |
  JSL.L CODE_FL_808DBE                      ; $82C7B4 |
  LDA.W $1DE6                               ; $82C7B8 |
  BEQ CODE_82C7C8                           ; $82C7BB |
  JSL.L CODE_FL_82BB8D                      ; $82C7BD |
  LDA.W $1DE6                               ; $82C7C1 |
  JSL.L CODE_FL_82BD8B                      ; $82C7C4 |

CODE_82C7C8:
  INC.W $1DE0                               ; $82C7C8 |
  RTL                                       ; $82C7CB |

CODE_82C7CC:
  LDA.W $1DE6                               ; $82C7CC |
  BEQ CODE_82C7D5                           ; $82C7CF |
  JSL.L CODE_FL_82BD8B                      ; $82C7D1 |

CODE_82C7D5:
  RTL                                       ; $82C7D5 |

CODE_FL_82C7D6:
  LDA.B $09,X                               ; $82C7D6 |
  STA.W $1DA8                               ; $82C7D8 |
  LDA.B $0D,X                               ; $82C7DB |
  STA.W $1DA6                               ; $82C7DD |
  RTL                                       ; $82C7E0 |

CODE_FL_82C7E1:
  LDA.B $09,X                               ; $82C7E1 |
  STA.W $1DC8                               ; $82C7E3 |
  LDA.B $0D,X                               ; $82C7E6 |
  STA.W $1DC6                               ; $82C7E8 |
  RTL                                       ; $82C7EB |

CODE_FN_82C7EC:
  JSL.L CODE_FL_808D48                      ; $82C7EC |
  LDA.W $1FE2                               ; $82C7F0 |
  AND.W #$001F                              ; $82C7F3 |
  BEQ CODE_82C7F9                           ; $82C7F6 |
  DEC A                                     ; $82C7F8 |

CODE_82C7F9:
  STA.B $00                                 ; $82C7F9 |
  LDA.W $1FE4                               ; $82C7FB |
  AND.W #$001F                              ; $82C7FE |
  BEQ CODE_82C804                           ; $82C801 |
  DEC A                                     ; $82C803 |

CODE_82C804:
  ASL A                                     ; $82C804 |
  ASL A                                     ; $82C805 |
  ASL A                                     ; $82C806 |
  ASL A                                     ; $82C807 |
  ASL A                                     ; $82C808 |
  ORA.B $00                                 ; $82C809 |
  STA.B $00                                 ; $82C80B |
  LDA.W $1FE6                               ; $82C80D |
  AND.W #$001F                              ; $82C810 |
  BEQ CODE_82C816                           ; $82C813 |
  DEC A                                     ; $82C815 |

CODE_82C816:
  XBA                                       ; $82C816 |
  ASL A                                     ; $82C817 |
  ASL A                                     ; $82C818 |
  ORA.B $00                                 ; $82C819 |
  STA.B $00                                 ; $82C81B |
  RTS                                       ; $82C81D |

CODE_FL_82C81E:
  LDA.W #$0000                              ; $82C81E |
  BRA CODE_82C835                           ; $82C821 |

  LDA.W #$0002                              ; $82C823 |
  BRA CODE_82C835                           ; $82C826 |

CODE_FL_82C828:
  LDA.W #$0004                              ; $82C828 |
  BRA CODE_82C835                           ; $82C82B |

CODE_FL_82C82D:
  LDA.W #$0006                              ; $82C82D |
  BRA CODE_82C835                           ; $82C830 |

CODE_FL_82C832:
  LDA.W #$0008                              ; $82C832 |

CODE_82C835:
  STA.W $1C5E                               ; $82C835 |
  STA.W $1C60                               ; $82C838 |
  LDA.W #$0040                              ; $82C83B |
  STA.W $1CA2                               ; $82C83E |
  RTL                                       ; $82C841 |

CODE_FL_82C842:
  CLC                                       ; $82C842 |
  LDA.B $26,X                               ; $82C843 |
  BPL CODE_82C852                           ; $82C845 |
  ADC.B $08,X                               ; $82C847 |
  STA.B $08,X                               ; $82C849 |
  BCS CODE_82C85A                           ; $82C84B |
  DEC.B $0A,X                               ; $82C84D |
  LDA.B $09,X                               ; $82C84F |
  RTL                                       ; $82C851 |

CODE_82C852:
  ADC.B $08,X                               ; $82C852 |
  STA.B $08,X                               ; $82C854 |
  BCC CODE_82C85A                           ; $82C856 |
  INC.B $0A,X                               ; $82C858 |

CODE_82C85A:
  LDA.B $09,X                               ; $82C85A |
  RTL                                       ; $82C85C |

CODE_FL_82C85D:
  JSL.L CODE_FL_82C842                      ; $82C85D |

CODE_FL_82C861:
  CLC                                       ; $82C861 |
  LDA.B $28,X                               ; $82C862 |
  BPL CODE_82C871                           ; $82C864 |
  ADC.B $0C,X                               ; $82C866 |
  STA.B $0C,X                               ; $82C868 |
  BCS CODE_82C879                           ; $82C86A |
  DEC.B $0E,X                               ; $82C86C |
  LDA.B $0D,X                               ; $82C86E |
  RTL                                       ; $82C870 |

CODE_82C871:
  ADC.B $0C,X                               ; $82C871 |
  STA.B $0C,X                               ; $82C873 |
  BCC CODE_82C879                           ; $82C875 |
  INC.B $0E,X                               ; $82C877 |

CODE_82C879:
  LDA.B $0D,X                               ; $82C879 |
  RTL                                       ; $82C87B |

CODE_FL_82C87C:
  CLC                                       ; $82C87C |
  LDA.B $26,X                               ; $82C87D |
  BPL CODE_82C88C                           ; $82C87F |
  ADC.B $2C,X                               ; $82C881 |
  STA.B $2C,X                               ; $82C883 |
  BCS CODE_82C894                           ; $82C885 |
  DEC.B $2E,X                               ; $82C887 |
  LDA.B $2D,X                               ; $82C889 |
  RTL                                       ; $82C88B |

CODE_82C88C:
  ADC.B $2C,X                               ; $82C88C |
  STA.B $2C,X                               ; $82C88E |
  BCC CODE_82C894                           ; $82C890 |
  INC.B $2E,X                               ; $82C892 |

CODE_82C894:
  LDA.B $2D,X                               ; $82C894 |
  RTL                                       ; $82C896 |

CODE_FL_82C897:
  JSL.L CODE_FL_82C87C                      ; $82C897 |

CODE_FL_82C89B:
  CLC                                       ; $82C89B |
  LDA.B $28,X                               ; $82C89C |
  BPL CODE_82C8AB                           ; $82C89E |
  ADC.B $30,X                               ; $82C8A0 |
  STA.B $30,X                               ; $82C8A2 |
  BCS CODE_82C8B3                           ; $82C8A4 |
  DEC.B $32,X                               ; $82C8A6 |
  LDA.B $31,X                               ; $82C8A8 |
  RTL                                       ; $82C8AA |

CODE_82C8AB:
  ADC.B $30,X                               ; $82C8AB |
  STA.B $30,X                               ; $82C8AD |
  BCC CODE_82C8B3                           ; $82C8AF |
  INC.B $32,X                               ; $82C8B1 |

CODE_82C8B3:
  LDA.B $31,X                               ; $82C8B3 |
  RTL                                       ; $82C8B5 |

  JSL.L CODE_FL_82C89B                      ; $82C8B6 |
  BRA CODE_FL_82C8C4                        ; $82C8BA |

CODE_FL_82C8BC:
  JSL.L CODE_FL_82C89B                      ; $82C8BC |

CODE_FL_82C8C0:
  JSL.L CODE_FL_82C87C                      ; $82C8C0 |

CODE_FL_82C8C4:
  CLC                                       ; $82C8C4 |
  LDA.B $2A,X                               ; $82C8C5 |
  BPL CODE_82C8D4                           ; $82C8C7 |
  ADC.B $34,X                               ; $82C8C9 |
  STA.B $34,X                               ; $82C8CB |
  BCS CODE_82C8DC                           ; $82C8CD |
  DEC.B $36,X                               ; $82C8CF |
  LDA.B $35,X                               ; $82C8D1 |
  RTL                                       ; $82C8D3 |

CODE_82C8D4:
  ADC.B $34,X                               ; $82C8D4 |
  STA.B $34,X                               ; $82C8D6 |
  BCC CODE_82C8DC                           ; $82C8D8 |
  INC.B $36,X                               ; $82C8DA |

CODE_82C8DC:
  LDA.B $35,X                               ; $82C8DC |
  RTL                                       ; $82C8DE |

CODE_FL_82C8DF:
  STA.B $00                                 ; $82C8DF |
  TYA                                       ; $82C8E1 |
  CMP.B $26,X                               ; $82C8E2 |
  BEQ CODE_82C8ED                           ; $82C8E4 |
  LDA.B $00                                 ; $82C8E6 |
  CLC                                       ; $82C8E8 |
  ADC.B $26,X                               ; $82C8E9 |
  STA.B $26,X                               ; $82C8EB |

CODE_82C8ED:
  JMP.W CODE_FL_82C87C                      ; $82C8ED |

CODE_FL_82C8F0:
  LDA.W #$0040                              ; $82C8F0 |

CODE_FL_82C8F3:
  STA.B $00                                 ; $82C8F3 |
  LDA.B $26,X                               ; $82C8F5 |
  BMI CODE_82C901                           ; $82C8F7 |
  SEC                                       ; $82C8F9 |
  SBC.B $00                                 ; $82C8FA |
  BPL CODE_82C907                           ; $82C8FC |
  TDC                                       ; $82C8FE |
  BRA CODE_82C907                           ; $82C8FF |

CODE_82C901:
  CLC                                       ; $82C901 |
  ADC.B $00                                 ; $82C902 |
  BMI CODE_82C907                           ; $82C904 |
  TDC                                       ; $82C906 |

CODE_82C907:
  STA.B $26,X                               ; $82C907 |
  BEQ CODE_82C911                           ; $82C909 |
  JSL.L CODE_FL_82C87C                      ; $82C90B |
  SEC                                       ; $82C90F |
  RTL                                       ; $82C910 |

CODE_82C911:
  CLC                                       ; $82C911 |
  RTL                                       ; $82C912 |

CODE_FL_82C913:
  LDA.W #$0040                              ; $82C913 |
  STA.B $00                                 ; $82C916 |
  LDA.B $2A,X                               ; $82C918 |
  BMI CODE_82C924                           ; $82C91A |
  SEC                                       ; $82C91C |
  SBC.B $00                                 ; $82C91D |
  BPL CODE_82C92A                           ; $82C91F |
  TDC                                       ; $82C921 |
  BRA CODE_82C92A                           ; $82C922 |

CODE_82C924:
  CLC                                       ; $82C924 |
  ADC.B $00                                 ; $82C925 |
  BMI CODE_82C92A                           ; $82C927 |
  TDC                                       ; $82C929 |

CODE_82C92A:
  STA.B $2A,X                               ; $82C92A |
  BEQ CODE_82C934                           ; $82C92C |
  JSL.L CODE_FL_82C8C4                      ; $82C92E |
  SEC                                       ; $82C932 |
  RTL                                       ; $82C933 |

CODE_82C934:
  CLC                                       ; $82C934 |
  RTL                                       ; $82C935 |

CODE_FL_82C936:
  LDA.B $86                                 ; $82C936 |
  LSR A                                     ; $82C938 |
  BCC CODE_82C941                           ; $82C939 |

CODE_82C93B:
  TYA                                       ; $82C93B |
  EOR.W #$FFFF                              ; $82C93C |
  INC A                                     ; $82C93F |
  TAY                                       ; $82C940 |

CODE_82C941:
  TYA                                       ; $82C941 |
  STA.B $26,X                               ; $82C942 |
  RTL                                       ; $82C944 |

CODE_FL_82C945:
  LDA.B $2D,X                               ; $82C945 |
  BMI CODE_82C93B                           ; $82C947 |
  BRA CODE_82C941                           ; $82C949 |

CODE_FL_82C94B:
  LDA.B $2D,X                               ; $82C94B |
  BMI CODE_82C941                           ; $82C94D |
  BRA CODE_82C93B                           ; $82C94F |

CODE_FL_82C951:
  STA.B $00                                 ; $82C951 |
  STY.B $02                                 ; $82C953 |
  BRA CODE_82C960                           ; $82C955 |

CODE_FL_82C957:
  STA.B $00                                 ; $82C957 |
  STY.B $02                                 ; $82C959 |
  LDA.W #$0040                              ; $82C95B |
  STA.B $06                                 ; $82C95E |

CODE_82C960:
  TYA                                       ; $82C960 |
  EOR.W #$FFFF                              ; $82C961 |
  INC A                                     ; $82C964 |
  STA.B $04                                 ; $82C965 |
  LDA.B $26,X                               ; $82C967 |
  LDY.B $2D,X                               ; $82C969 |
  CPY.B $00                                 ; $82C96B |
  BMI CODE_82C988                           ; $82C96D |
  CMP.B $02                                 ; $82C96F |
  BMI CODE_82C975                           ; $82C971 |
  LDA.B $02                                 ; $82C973 |

CODE_82C975:
  SEC                                       ; $82C975 |
  SBC.B $06                                 ; $82C976 |
  STA.B $26,X                               ; $82C978 |
  JSL.L CODE_FL_82C87C                      ; $82C97A |
  CMP.B $00                                 ; $82C97E |
  BPL CODE_82C99F                           ; $82C980 |
  LDA.B $04                                 ; $82C982 |
  STA.B $26,X                               ; $82C984 |
  BRA CODE_82C99F                           ; $82C986 |

CODE_82C988:
  CMP.B $04                                 ; $82C988 |
  BPL CODE_82C98E                           ; $82C98A |
  LDA.B $04                                 ; $82C98C |

CODE_82C98E:
  CLC                                       ; $82C98E |
  ADC.B $06                                 ; $82C98F |
  STA.B $26,X                               ; $82C991 |
  JSL.L CODE_FL_82C87C                      ; $82C993 |
  CMP.B $00                                 ; $82C997 |
  BMI CODE_82C99F                           ; $82C999 |
  LDA.B $02                                 ; $82C99B |
  STA.B $26,X                               ; $82C99D |

CODE_82C99F:
  RTL                                       ; $82C99F |

CODE_FL_82C9A0:
  STA.B $00                                 ; $82C9A0 |
  STY.B $02                                 ; $82C9A2 |
  BRA CODE_82C9AF                           ; $82C9A4 |

CODE_FL_82C9A6:
  STA.B $00                                 ; $82C9A6 |
  STY.B $02                                 ; $82C9A8 |
  LDA.W #$0040                              ; $82C9AA |
  STA.B $06                                 ; $82C9AD |

CODE_82C9AF:
  TYA                                       ; $82C9AF |
  EOR.W #$FFFF                              ; $82C9B0 |
  INC A                                     ; $82C9B3 |
  STA.B $04                                 ; $82C9B4 |
  LDA.B $28,X                               ; $82C9B6 |
  LDY.B $31,X                               ; $82C9B8 |
  CPY.B $00                                 ; $82C9BA |
  BMI CODE_82C9D7                           ; $82C9BC |
  CMP.B $02                                 ; $82C9BE |
  BMI CODE_82C9C4                           ; $82C9C0 |
  LDA.B $02                                 ; $82C9C2 |

CODE_82C9C4:
  SEC                                       ; $82C9C4 |
  SBC.B $06                                 ; $82C9C5 |
  STA.B $28,X                               ; $82C9C7 |
  JSL.L CODE_FL_82C89B                      ; $82C9C9 |
  CMP.B $00                                 ; $82C9CD |
  BPL CODE_82C9EE                           ; $82C9CF |
  LDA.B $04                                 ; $82C9D1 |
  STA.B $28,X                               ; $82C9D3 |
  BRA CODE_82C9EE                           ; $82C9D5 |

CODE_82C9D7:
  CMP.B $04                                 ; $82C9D7 |
  BPL CODE_82C9DD                           ; $82C9D9 |
  LDA.B $04                                 ; $82C9DB |

CODE_82C9DD:
  CLC                                       ; $82C9DD |
  ADC.B $06                                 ; $82C9DE |
  STA.B $28,X                               ; $82C9E0 |
  JSL.L CODE_FL_82C89B                      ; $82C9E2 |
  CMP.B $00                                 ; $82C9E6 |
  BMI CODE_82C9EE                           ; $82C9E8 |
  LDA.B $02                                 ; $82C9EA |
  STA.B $28,X                               ; $82C9EC |

CODE_82C9EE:
  RTL                                       ; $82C9EE |

CODE_FL_82C9EF:
  STA.B $00                                 ; $82C9EF |
  STY.B $02                                 ; $82C9F1 |
  LDA.W #$0040                              ; $82C9F3 |
  STA.B $06                                 ; $82C9F6 |
  TYA                                       ; $82C9F8 |
  EOR.W #$FFFF                              ; $82C9F9 |
  INC A                                     ; $82C9FC |
  STA.B $04                                 ; $82C9FD |
  LDA.B $2A,X                               ; $82C9FF |
  LDY.B $35,X                               ; $82CA01 |
  CPY.B $00                                 ; $82CA03 |
  BMI CODE_82CA20                           ; $82CA05 |
  CMP.B $02                                 ; $82CA07 |
  BMI CODE_82CA0D                           ; $82CA09 |
  LDA.B $02                                 ; $82CA0B |

CODE_82CA0D:
  SEC                                       ; $82CA0D |
  SBC.B $06                                 ; $82CA0E |
  STA.B $2A,X                               ; $82CA10 |
  JSL.L CODE_FL_82C8C4                      ; $82CA12 |
  CMP.B $00                                 ; $82CA16 |
  BPL CODE_82CA37                           ; $82CA18 |
  LDA.B $04                                 ; $82CA1A |
  STA.B $2A,X                               ; $82CA1C |
  BRA CODE_82CA37                           ; $82CA1E |

CODE_82CA20:
  CMP.B $04                                 ; $82CA20 |
  BPL CODE_82CA26                           ; $82CA22 |
  LDA.B $04                                 ; $82CA24 |

CODE_82CA26:
  CLC                                       ; $82CA26 |
  ADC.B $06                                 ; $82CA27 |
  STA.B $2A,X                               ; $82CA29 |
  JSL.L CODE_FL_82C8C4                      ; $82CA2B |
  CMP.B $00                                 ; $82CA2F |
  BMI CODE_82CA37                           ; $82CA31 |
  LDA.B $02                                 ; $82CA33 |
  STA.B $2A,X                               ; $82CA35 |

CODE_82CA37:
  RTL                                       ; $82CA37 |

CODE_FL_82CA38:
  STA.B $00                                 ; $82CA38 |
  STY.B $02                                 ; $82CA3A |
  LDA.W #$0040                              ; $82CA3C |
  STA.B $06                                 ; $82CA3F |
  TYA                                       ; $82CA41 |
  EOR.W #$FFFF                              ; $82CA42 |
  INC A                                     ; $82CA45 |
  STA.B $04                                 ; $82CA46 |
  LDA.B $28,X                               ; $82CA48 |
  LDY.B $0D,X                               ; $82CA4A |
  CPY.B $00                                 ; $82CA4C |
  BMI CODE_82CA69                           ; $82CA4E |
  CMP.B $02                                 ; $82CA50 |
  BMI CODE_82CA56                           ; $82CA52 |
  LDA.B $02                                 ; $82CA54 |

CODE_82CA56:
  SEC                                       ; $82CA56 |
  SBC.B $06                                 ; $82CA57 |
  STA.B $28,X                               ; $82CA59 |
  JSL.L CODE_FL_82C861                      ; $82CA5B |
  CMP.B $00                                 ; $82CA5F |
  BPL CODE_82C9EE                           ; $82CA61 |
  LDA.B $04                                 ; $82CA63 |
  STA.B $28,X                               ; $82CA65 |
  BRA CODE_82CA80                           ; $82CA67 |

CODE_82CA69:
  CMP.B $04                                 ; $82CA69 |
  BPL CODE_82CA6F                           ; $82CA6B |
  LDA.B $04                                 ; $82CA6D |

CODE_82CA6F:
  CLC                                       ; $82CA6F |
  ADC.B $06                                 ; $82CA70 |
  STA.B $28,X                               ; $82CA72 |
  JSL.L CODE_FL_82C861                      ; $82CA74 |
  CMP.B $00                                 ; $82CA78 |
  BMI CODE_82CA80                           ; $82CA7A |
  LDA.B $02                                 ; $82CA7C |
  STA.B $28,X                               ; $82CA7E |

CODE_82CA80:
  RTL                                       ; $82CA80 |

CODE_FL_82CA81:
  LDA.B $26,X                               ; $82CA81 |
  EOR.W #$FFFF                              ; $82CA83 |
  INC A                                     ; $82CA86 |
  STA.B $26,X                               ; $82CA87 |
  RTL                                       ; $82CA89 |

CODE_FL_82CA8A:
  JSL.L CODE_FL_82CA81                      ; $82CA8A |

CODE_FL_82CA8E:
  LDA.B $28,X                               ; $82CA8E |
  EOR.W #$FFFF                              ; $82CA90 |
  INC A                                     ; $82CA93 |
  STA.B $28,X                               ; $82CA94 |
  RTL                                       ; $82CA96 |

CODE_FL_82CA97:
  JSL.L CODE_FL_82CA81                      ; $82CA97 |
  BRA CODE_FL_82CAA5                        ; $82CA9B |

CODE_FL_82CA9D:
  JSL.L CODE_FL_82CA81                      ; $82CA9D |
  JSL.L CODE_FL_82CA8E                      ; $82CAA1 |

CODE_FL_82CAA5:
  LDA.B $2A,X                               ; $82CAA5 |
  EOR.W #$FFFF                              ; $82CAA7 |
  INC A                                     ; $82CAAA |
  STA.B $2A,X                               ; $82CAAB |
  RTL                                       ; $82CAAD |

CODE_FL_82CAAE:
  LDA.B $26,X                               ; $82CAAE |
  CLC                                       ; $82CAB0 |
  ADC.W $1C36                               ; $82CAB1 |
  STA.B $26,X                               ; $82CAB4 |
  LDA.B $28,X                               ; $82CAB6 |
  CLC                                       ; $82CAB8 |
  ADC.W $1C38                               ; $82CAB9 |
  STA.B $28,X                               ; $82CABC |
  LDA.B $2A,X                               ; $82CABE |
  CLC                                       ; $82CAC0 |
  ADC.W $1C3A                               ; $82CAC1 |
  STA.B $2A,X                               ; $82CAC4 |
  RTL                                       ; $82CAC6 |

CODE_FL_82CAC7:
  LDA.W #$0040                              ; $82CAC7 |

CODE_FL_82CACA:
  CLC                                       ; $82CACA |
  ADC.B $28,X                               ; $82CACB |
  STA.B $28,X                               ; $82CACD |
  JMP.W CODE_FL_82C89B                      ; $82CACF |

CODE_FL_82CAD2:
  LDY.W #$0040                              ; $82CAD2 |

CODE_FL_82CAD5:
  TDC                                       ; $82CAD5 |
  BRA CODE_FL_82CAE3                        ; $82CAD6 |

CODE_FL_82CAD8:
  LDY.W #$0040                              ; $82CAD8 |
  LDA.W #$0040                              ; $82CADB |
  BRA CODE_FL_82CAE3                        ; $82CADE |

CODE_FL_82CAE0:
  LDY.W #$0040                              ; $82CAE0 |

CODE_FL_82CAE3:
  STY.B $1A                                 ; $82CAE3 |
  STA.B $18                                 ; $82CAE5 |
  CMP.B $31,X                               ; $82CAE7 |
  BNE CODE_82CAEF                           ; $82CAE9 |
  LDA.B $28,X                               ; $82CAEB |
  BPL CODE_82CB03                           ; $82CAED |

CODE_82CAEF:
  LDA.B $1A                                 ; $82CAEF |
  JSL.L CODE_FL_82CACA                      ; $82CAF1 |
  LDA.B $28,X                               ; $82CAF5 |
  BMI CODE_82CB05                           ; $82CAF7 |
  LDA.B $31,X                               ; $82CAF9 |
  CMP.B $18                                 ; $82CAFB |
  BMI CODE_82CB05                           ; $82CAFD |
  LDA.B $18                                 ; $82CAFF |
  STA.B $31,X                               ; $82CB01 |

CODE_82CB03:
  TDC                                       ; $82CB03 |
  RTL                                       ; $82CB04 |

CODE_82CB05:
  LDA.W #$0001                              ; $82CB05 |
  RTL                                       ; $82CB08 |

CODE_FL_82CB09:
  LDA.W #$0040                              ; $82CB09 |

CODE_FL_82CB0C:
  CLC                                       ; $82CB0C |
  ADC.B $28,X                               ; $82CB0D |
  STA.B $28,X                               ; $82CB0F |
  JMP.W CODE_FL_82C861                      ; $82CB11 |

  LDA.W #$0040                              ; $82CB14 |

CODE_FL_82CB17:
  CLC                                       ; $82CB17 |
  ADC.B $28,X                               ; $82CB18 |
  STA.B $28,X                               ; $82CB1A |
  RTL                                       ; $82CB1C |

CODE_FL_82CB1D:
  STA.B $00                                 ; $82CB1D |
  CMP.B $2D,X                               ; $82CB1F |
  BEQ CODE_82CB44                           ; $82CB21 |
  BPL CODE_82CB36                           ; $82CB23 |
  TYA                                       ; $82CB25 |
  EOR.W #$FFFF                              ; $82CB26 |
  INC A                                     ; $82CB29 |
  STA.B $26,X                               ; $82CB2A |
  JSL.L CODE_FL_82C87C                      ; $82CB2C |
  CMP.B $00                                 ; $82CB30 |
  BPL CODE_82CB46                           ; $82CB32 |
  BRA CODE_82CB40                           ; $82CB34 |

CODE_82CB36:
  STY.B $26,X                               ; $82CB36 |
  JSL.L CODE_FL_82C87C                      ; $82CB38 |
  CMP.B $00                                 ; $82CB3C |
  BMI CODE_82CB46                           ; $82CB3E |

CODE_82CB40:
  LDA.B $00                                 ; $82CB40 |
  STA.B $2D,X                               ; $82CB42 |

CODE_82CB44:
  TDC                                       ; $82CB44 |
  RTL                                       ; $82CB45 |

CODE_82CB46:
  LDA.W #$0001                              ; $82CB46 |
  RTL                                       ; $82CB49 |

CODE_FL_82CB4A:
  STA.B $00                                 ; $82CB4A |
  CMP.B $31,X                               ; $82CB4C |
  BEQ CODE_82CB71                           ; $82CB4E |
  BPL CODE_82CB63                           ; $82CB50 |
  TYA                                       ; $82CB52 |
  EOR.W #$FFFF                              ; $82CB53 |
  INC A                                     ; $82CB56 |
  STA.B $28,X                               ; $82CB57 |
  JSL.L CODE_FL_82C89B                      ; $82CB59 |
  CMP.B $00                                 ; $82CB5D |
  BPL CODE_82CB73                           ; $82CB5F |
  BRA CODE_82CB6D                           ; $82CB61 |

CODE_82CB63:
  STY.B $28,X                               ; $82CB63 |
  JSL.L CODE_FL_82C89B                      ; $82CB65 |
  CMP.B $00                                 ; $82CB69 |
  BMI CODE_82CB73                           ; $82CB6B |

CODE_82CB6D:
  LDA.B $00                                 ; $82CB6D |
  STA.B $31,X                               ; $82CB6F |

CODE_82CB71:
  TDC                                       ; $82CB71 |
  RTL                                       ; $82CB72 |

CODE_82CB73:
  LDA.W #$0001                              ; $82CB73 |
  RTL                                       ; $82CB76 |

CODE_FL_82CB77:
  STA.B $00                                 ; $82CB77 |
  CMP.B $35,X                               ; $82CB79 |
  BEQ CODE_82CB9E                           ; $82CB7B |
  BPL CODE_82CB90                           ; $82CB7D |
  TYA                                       ; $82CB7F |
  EOR.W #$FFFF                              ; $82CB80 |
  INC A                                     ; $82CB83 |
  STA.B $2A,X                               ; $82CB84 |
  JSL.L CODE_FL_82C8C4                      ; $82CB86 |
  CMP.B $00                                 ; $82CB8A |
  BPL CODE_82CBA0                           ; $82CB8C |
  BRA CODE_82CB9A                           ; $82CB8E |

CODE_82CB90:
  STY.B $2A,X                               ; $82CB90 |
  JSL.L CODE_FL_82C8C4                      ; $82CB92 |
  CMP.B $00                                 ; $82CB96 |
  BMI CODE_82CBA0                           ; $82CB98 |

CODE_82CB9A:
  LDA.B $00                                 ; $82CB9A |
  STA.B $35,X                               ; $82CB9C |

CODE_82CB9E:
  TDC                                       ; $82CB9E |
  RTL                                       ; $82CB9F |

CODE_82CBA0:
  LDA.W #$0001                              ; $82CBA0 |
  RTL                                       ; $82CBA3 |

CODE_FL_82CBA4:
  STY.B $00                                 ; $82CBA4 |
  STA.B $02                                 ; $82CBA6 |
  JSL.L CODE_FL_82C87C                      ; $82CBA8 |
  LDA.B $26,X                               ; $82CBAC |
  BEQ CODE_82CBDC                           ; $82CBAE |
  BPL CODE_82CBB6                           ; $82CBB0 |
  EOR.W #$FFFF                              ; $82CBB2 |
  INC A                                     ; $82CBB5 |

CODE_82CBB6:
  STA.B $04                                 ; $82CBB6 |
  LDA.B $2D,X                               ; $82CBB8 |
  CMP.B $00                                 ; $82CBBA |
  BPL CODE_82CBC8                           ; $82CBBC |
  LDA.B $00                                 ; $82CBBE |
  STA.B $2D,X                               ; $82CBC0 |
  LDA.B $04                                 ; $82CBC2 |
  STA.B $26,X                               ; $82CBC4 |
  BRA CODE_82CBDE                           ; $82CBC6 |

CODE_82CBC8:
  CMP.B $02                                 ; $82CBC8 |
  BEQ CODE_82CBDC                           ; $82CBCA |
  BMI CODE_82CBDC                           ; $82CBCC |
  LDA.B $02                                 ; $82CBCE |
  STA.B $2D,X                               ; $82CBD0 |
  LDA.B $04                                 ; $82CBD2 |
  EOR.W #$FFFF                              ; $82CBD4 |
  INC A                                     ; $82CBD7 |
  STA.B $26,X                               ; $82CBD8 |
  BRA CODE_82CBDE                           ; $82CBDA |

CODE_82CBDC:
  TDC                                       ; $82CBDC |
  RTL                                       ; $82CBDD |

CODE_82CBDE:
  LDA.W #$0001                              ; $82CBDE |
  RTL                                       ; $82CBE1 |

CODE_FL_82CBE2:
  STY.B $00                                 ; $82CBE2 |
  STA.B $02                                 ; $82CBE4 |
  LDY.W #$0000                              ; $82CBE6 |
  JSL.L CODE_FL_82C87C                      ; $82CBE9 |
  CMP.B $00                                 ; $82CBED |
  BPL CODE_82CBF8                           ; $82CBEF |
  LDY.B $00                                 ; $82CBF1 |
  STY.B $2D,X                               ; $82CBF3 |
  LDY.W #$0001                              ; $82CBF5 |

CODE_82CBF8:
  CMP.B $02                                 ; $82CBF8 |
  BMI CODE_82CC03                           ; $82CBFA |
  LDY.B $02                                 ; $82CBFC |
  STY.B $2D,X                               ; $82CBFE |
  LDY.W #$8000                              ; $82CC00 |

CODE_82CC03:
  TYA                                       ; $82CC03 |
  RTL                                       ; $82CC04 |

CODE_FL_82CC05:
  STY.B $00                                 ; $82CC05 |
  STA.B $02                                 ; $82CC07 |
  STZ.B $06                                 ; $82CC09 |
  LDA.B $26,X                               ; $82CC0B |
  BEQ CODE_82CC37                           ; $82CC0D |
  BPL CODE_82CC15                           ; $82CC0F |
  EOR.W #$FFFF                              ; $82CC11 |
  INC A                                     ; $82CC14 |

CODE_82CC15:
  STA.B $04                                 ; $82CC15 |
  LDA.B $2D,X                               ; $82CC17 |
  CMP.B $00                                 ; $82CC19 |
  BPL CODE_82CC25                           ; $82CC1B |
  LDY.B $04                                 ; $82CC1D |
  STY.B $26,X                               ; $82CC1F |
  INC.B $06                                 ; $82CC21 |
  BRA CODE_82CC25                           ; $82CC23 |

CODE_82CC25:
  CMP.B $02                                 ; $82CC25 |
  BMI CODE_82CC33                           ; $82CC27 |
  LDA.B $04                                 ; $82CC29 |
  EOR.W #$FFFF                              ; $82CC2B |
  INC A                                     ; $82CC2E |
  STA.B $26,X                               ; $82CC2F |
  DEC.B $06                                 ; $82CC31 |

CODE_82CC33:
  JSL.L CODE_FL_82C87C                      ; $82CC33 |

CODE_82CC37:
  LDA.B $06                                 ; $82CC37 |
  RTL                                       ; $82CC39 |

CODE_FL_82CC3A:
  BPL CODE_82CC40                           ; $82CC3A |
  EOR.W #$FFFF                              ; $82CC3C |
  INC A                                     ; $82CC3F |

CODE_82CC40:
  STA.B $00                                 ; $82CC40 |
  JSL.L CODE_FL_82C87C                      ; $82CC42 |
  LDA.B $09,X                               ; $82CC46 |
  CMP.W #$0030                              ; $82CC48 |
  BPL CODE_82CC53                           ; $82CC4B |
  LDA.B $00                                 ; $82CC4D |
  STA.B $26,X                               ; $82CC4F |
  BRA CODE_82CC64                           ; $82CC51 |

CODE_82CC53:
  CMP.W #$00D0                              ; $82CC53 |
  BMI CODE_82CC62                           ; $82CC56 |
  LDA.B $00                                 ; $82CC58 |
  EOR.W #$FFFF                              ; $82CC5A |
  INC A                                     ; $82CC5D |
  STA.B $26,X                               ; $82CC5E |
  BRA CODE_82CC64                           ; $82CC60 |

CODE_82CC62:
  TDC                                       ; $82CC62 |
  RTL                                       ; $82CC63 |

CODE_82CC64:
  LDA.W #$0001                              ; $82CC64 |
  RTL                                       ; $82CC67 |

CODE_FL_82CC68:
  LDX.W #$0580                              ; $82CC68 |

CODE_82CC6B:
  JSL.L CODE_FL_82CCB1                      ; $82CC6B |
  TXA                                       ; $82CC6F |
  CLC                                       ; $82CC70 |
  ADC.W #$0060                              ; $82CC71 |
  CMP.W #$13C0                              ; $82CC74 |
  BEQ CODE_82CC7E                           ; $82CC77 |
  STA.B $16,X                               ; $82CC79 |
  TAX                                       ; $82CC7B |
  BRA CODE_82CC6B                           ; $82CC7C |

CODE_82CC7E:
  STZ.B $16,X                               ; $82CC7E |
  TAX                                       ; $82CC80 |

CODE_82CC81:
  JSL.L CODE_FL_82CCD2                      ; $82CC81 |
  TXA                                       ; $82CC85 |
  CLC                                       ; $82CC86 |
  ADC.W #$0030                              ; $82CC87 |
  CMP.W #$1660                              ; $82CC8A |
  BEQ CODE_82CC94                           ; $82CC8D |
  STA.B $16,X                               ; $82CC8F |
  TAX                                       ; $82CC91 |
  BRA CODE_82CC81                           ; $82CC92 |

CODE_82CC94:
  STZ.B $16,X                               ; $82CC94 |
  RTL                                       ; $82CC96 |

CODE_FL_82CC97:
  PHX                                       ; $82CC97 |
  TYX                                       ; $82CC98 |
  JSL.L CODE_FL_82CC9F                      ; $82CC99 |
  PLX                                       ; $82CC9D |
  RTL                                       ; $82CC9E |

CODE_FL_82CC9F:
  PHY                                       ; $82CC9F |
  PHX                                       ; $82CCA0 |
  LDA.B $12,X                               ; $82CCA1 |
  BEQ CODE_82CCAA                           ; $82CCA3 |
  TAX                                       ; $82CCA5 |
  JSL.L CODE_FL_82CCD2                      ; $82CCA6 |

CODE_82CCAA:
  PLX                                       ; $82CCAA |
  JSL.L CODE_FL_82CCB1                      ; $82CCAB |
  PLY                                       ; $82CCAF |
  RTL                                       ; $82CCB0 |

CODE_FL_82CCB1:
  LDA.B $16,X                               ; $82CCB1 |
  PHA                                       ; $82CCB3 |
  PHX                                       ; $82CCB4 |
  PHB                                       ; $82CCB5 |
  LDA.W #$0000                              ; $82CCB6 |
  STA.B $00,X                               ; $82CCB9 |
  LDA.W #$005D                              ; $82CCBB |
  INX                                       ; $82CCBE |
  TXY                                       ; $82CCBF |
  INY                                       ; $82CCC0 |
  MVN $00,$00                               ; $82CCC1 |
  PLB                                       ; $82CCC4 |
  PLX                                       ; $82CCC5 |
  PLA                                       ; $82CCC6 |
  STA.B $16,X                               ; $82CCC7 |
  RTL                                       ; $82CCC9 |

CODE_FL_82CCCA:
  PHX                                       ; $82CCCA |
  TYX                                       ; $82CCCB |
  JSL.L CODE_FL_82CCD2                      ; $82CCCC |
  PLX                                       ; $82CCD0 |
  RTL                                       ; $82CCD1 |

CODE_FL_82CCD2:
  LDA.B $16,X                               ; $82CCD2 |
  PHA                                       ; $82CCD4 |
  PHX                                       ; $82CCD5 |
  PHB                                       ; $82CCD6 |
  LDA.W #$0000                              ; $82CCD7 |
  STA.B $00,X                               ; $82CCDA |
  LDA.W #$002D                              ; $82CCDC |
  INX                                       ; $82CCDF |
  TXY                                       ; $82CCE0 |
  INY                                       ; $82CCE1 |
  MVN $00,$00                               ; $82CCE2 |
  PLB                                       ; $82CCE5 |
  PLX                                       ; $82CCE6 |
  PLA                                       ; $82CCE7 |
  STA.B $16,X                               ; $82CCE8 |
  RTL                                       ; $82CCEA |

CODE_FL_82CCEB:
  JSL.L CODE_FL_82CC9F                      ; $82CCEB |
  LDY.B $16,X                               ; $82CCEF |
  JSL.L CODE_FL_82CC97                      ; $82CCF1 |
  LDA.W $0016,Y                             ; $82CCF5 |
  TAY                                       ; $82CCF8 |
  JSL.L CODE_FL_82CC97                      ; $82CCF9 |
  LDA.W $0016,Y                             ; $82CCFD |
  TAY                                       ; $82CD00 |
  JML.L CODE_FL_82CC97                      ; $82CD01 |

CODE_FL_82CD05:
  JSL.L CODE_FL_82CCEB                      ; $82CD05 |
  LDA.W $0016,Y                             ; $82CD09 |
  TAY                                       ; $82CD0C |
  JML.L CODE_FL_82CC97                      ; $82CD0D |

CODE_JL_82CD11:
  LDA.B $09,X                               ; $82CD11 |
  CMP.W #$FFE0                              ; $82CD13 |
  BPL CODE_82CD1B                           ; $82CD16 |
  JMP.W CODE_FL_82CC9F                      ; $82CD18 |

CODE_82CD1B:
  CMP.W #$0120                              ; $82CD1B |
  BMI CODE_82CD23                           ; $82CD1E |
  JMP.W CODE_FL_82CC9F                      ; $82CD20 |

CODE_82CD23:
  RTL                                       ; $82CD23 |

CODE_JL_82CD24:
  LDA.B $0D,X                               ; $82CD24 |
  CMP.W #$0100                              ; $82CD26 |
  BCC CODE_82CD2E                           ; $82CD29 |
  JMP.W CODE_FL_82CC9F                      ; $82CD2B |

CODE_82CD2E:
  RTL                                       ; $82CD2E |

CODE_FL_82CD2F:
  STA.B $00                                 ; $82CD2F |
  LDY.W #$0F40                              ; $82CD31 |

CODE_82CD34:
  LDA.W $0018,Y                             ; $82CD34 |
  BEQ CODE_82CD41                           ; $82CD37 |
  LDA.W $0016,Y                             ; $82CD39 |
  TAY                                       ; $82CD3C |
  BNE CODE_82CD34                           ; $82CD3D |
  CLC                                       ; $82CD3F |
  RTL                                       ; $82CD40 |

CODE_82CD41:
  LDA.B $00                                 ; $82CD41 |
  STA.W $0018,Y                             ; $82CD43 |
  JSL.L CODE_FL_82CDCF                      ; $82CD46 |
  SEC                                       ; $82CD4A |
  RTL                                       ; $82CD4B |

CODE_FL_82CD4C:
  STA.B $00                                 ; $82CD4C |

CODE_82CD4E:
  LDA.W $0018,Y                             ; $82CD4E |
  BEQ CODE_82CD41                           ; $82CD51 |
  LDA.W $0016,Y                             ; $82CD53 |
  BEQ CODE_82CD5D                           ; $82CD56 |
  TAY                                       ; $82CD58 |
  CMP.B $02                                 ; $82CD59 |
  BMI CODE_82CD4E                           ; $82CD5B |

CODE_82CD5D:
  CLC                                       ; $82CD5D |
  RTL                                       ; $82CD5E |

CODE_FL_82CD5F:
  STA.B $00                                 ; $82CD5F |
  LDY.W #$13C0                              ; $82CD61 |

CODE_82CD64:
  LDA.W $0018,Y                             ; $82CD64 |
  BEQ CODE_82CD71                           ; $82CD67 |
  LDA.W $0016,Y                             ; $82CD69 |
  TAY                                       ; $82CD6C |
  BNE CODE_82CD64                           ; $82CD6D |
  CLC                                       ; $82CD6F |
  RTL                                       ; $82CD70 |

CODE_82CD71:
  LDA.B $00                                 ; $82CD71 |
  STA.W $0018,Y                             ; $82CD73 |
  SEC                                       ; $82CD76 |
  RTL                                       ; $82CD77 |

CODE_FL_82CD78:
  STA.B $00                                 ; $82CD78 |
  JSL.L CODE_FL_82CC97                      ; $82CD7A |
  BRA CODE_82CD41                           ; $82CD7E |

CODE_FL_82CD80:
  STA.B $00                                 ; $82CD80 |
  JSL.L CODE_FL_82CCCA                      ; $82CD82 |
  LDA.B $00                                 ; $82CD86 |
  STA.W $0018,Y                             ; $82CD88 |
  LDA.B $09,X                               ; $82CD8B |
  STA.W $0009,Y                             ; $82CD8D |
  LDA.B $0D,X                               ; $82CD90 |
  STA.W $000D,Y                             ; $82CD92 |
  RTL                                       ; $82CD95 |

CODE_FL_82CD96:
  STA.B $18,X                               ; $82CD96 |
  STZ.B $00,X                               ; $82CD98 |
  STZ.B $02,X                               ; $82CD9A |
  STZ.B $06,X                               ; $82CD9C |
  STZ.B $1A,X                               ; $82CD9E |
  STZ.B $1C,X                               ; $82CDA0 |
  STZ.B $1E,X                               ; $82CDA2 |
  STZ.B $20,X                               ; $82CDA4 |
  STZ.B $22,X                               ; $82CDA6 |
  STZ.B $24,X                               ; $82CDA8 |
  STZ.B $38,X                               ; $82CDAA |
  STZ.B $3A,X                               ; $82CDAC |
  STZ.B $3C,X                               ; $82CDAE |
  STZ.B $3E,X                               ; $82CDB0 |
  STZ.B $40,X                               ; $82CDB2 |
  STZ.B $42,X                               ; $82CDB4 |
  STZ.B $44,X                               ; $82CDB6 |
  STZ.B $46,X                               ; $82CDB8 |
  STZ.B $48,X                               ; $82CDBA |
  STZ.B $4A,X                               ; $82CDBC |
  STZ.B $4C,X                               ; $82CDBE |
  STZ.B $4E,X                               ; $82CDC0 |
  STZ.B $50,X                               ; $82CDC2 |
  STZ.B $52,X                               ; $82CDC4 |
  STZ.B $10,X                               ; $82CDC6 |
  STZ.B $5A,X                               ; $82CDC8 |
  STZ.B $5C,X                               ; $82CDCA |
  STZ.B $5E,X                               ; $82CDCC |
  RTL                                       ; $82CDCE |

CODE_FL_82CDCF:
  LDA.B $2C,X                               ; $82CDCF |
  STA.W $002C,Y                             ; $82CDD1 |
  LDA.B $2E,X                               ; $82CDD4 |
  STA.W $002E,Y                             ; $82CDD6 |
  LDA.B $30,X                               ; $82CDD9 |
  STA.W $0030,Y                             ; $82CDDB |
  LDA.B $32,X                               ; $82CDDE |
  STA.W $0032,Y                             ; $82CDE0 |
  LDA.B $34,X                               ; $82CDE3 |
  STA.W $0034,Y                             ; $82CDE5 |
  LDA.B $36,X                               ; $82CDE8 |
  STA.W $0036,Y                             ; $82CDEA |
  LDA.B $09,X                               ; $82CDED |
  STA.W $0009,Y                             ; $82CDEF |
  LDA.B $0D,X                               ; $82CDF2 |
  STA.W $000D,Y                             ; $82CDF4 |
  RTL                                       ; $82CDF7 |

CODE_FL_82CDF8:
  LDA.W $002C,Y                             ; $82CDF8 |
  STA.B $2C,X                               ; $82CDFB |
  LDA.W $002E,Y                             ; $82CDFD |
  STA.B $2E,X                               ; $82CE00 |
  LDA.W $0030,Y                             ; $82CE02 |
  STA.B $30,X                               ; $82CE05 |
  LDA.W $0032,Y                             ; $82CE07 |
  STA.B $32,X                               ; $82CE0A |
  LDA.W $0034,Y                             ; $82CE0C |
  STA.B $34,X                               ; $82CE0F |
  LDA.W $0036,Y                             ; $82CE11 |
  STA.B $36,X                               ; $82CE14 |
  LDA.W $0009,Y                             ; $82CE16 |
  STA.B $09,X                               ; $82CE19 |
  LDA.W $000D,Y                             ; $82CE1B |
  STA.B $0D,X                               ; $82CE1E |
  RTL                                       ; $82CE20 |

CODE_FL_82CE21:
  LDA.B $26,X                               ; $82CE21 |
  STA.W $0026,Y                             ; $82CE23 |
  LDA.B $28,X                               ; $82CE26 |
  STA.W $0028,Y                             ; $82CE28 |
  LDA.B $2A,X                               ; $82CE2B |
  STA.W $002A,Y                             ; $82CE2D |
  RTL                                       ; $82CE30 |

CODE_FL_82CE31:
  LDA.B $08,X                               ; $82CE31 |
  STA.W $0008,Y                             ; $82CE33 |
  LDA.B $0A,X                               ; $82CE36 |
  STA.W $000A,Y                             ; $82CE38 |
  LDA.B $0C,X                               ; $82CE3B |
  STA.W $000C,Y                             ; $82CE3D |
  LDA.B $0E,X                               ; $82CE40 |
  STA.W $000E,Y                             ; $82CE42 |
  RTL                                       ; $82CE45 |

CODE_FL_82CE46:
  LDY.W #$13C0                              ; $82CE46 |
  BRA CODE_82CE62                           ; $82CE49 |

CODE_FL_82CE4B:
  LDA.B $90                                 ; $82CE4B |
  CMP.W #$0002                              ; $82CE4D |
  BEQ CODE_82CE60                           ; $82CE50 |
  LDY.W #$13F0                              ; $82CE52 |

CODE_82CE55:
  LDA.W $0018,Y                             ; $82CE55 |
  BEQ CODE_82CE62                           ; $82CE58 |
  LDA.W $0016,Y                             ; $82CE5A |
  TAY                                       ; $82CE5D |
  BNE CODE_82CE55                           ; $82CE5E |

CODE_82CE60:
  CLC                                       ; $82CE60 |
  RTL                                       ; $82CE61 |

CODE_82CE62:
  STY.B $12,X                               ; $82CE62 |
  LDA.W #$0001                              ; $82CE64 |
  STA.W $0018,Y                             ; $82CE67 |
  SEC                                       ; $82CE6A |
  RTL                                       ; $82CE6B |

CODE_FL_82CE6C:
  PHX                                       ; $82CE6C |
  LDX.W #$13C0                              ; $82CE6D |
  JSL.L CODE_FL_82CCD2                      ; $82CE70 |
  PLX                                       ; $82CE74 |
  STZ.W $0DD2                               ; $82CE75 |
  RTL                                       ; $82CE78 |

CODE_FL_82CE79:
  AND.B $42                                 ; $82CE79 |
  BEQ CODE_82CE84                           ; $82CE7B |
  LDA.B $02,X                               ; $82CE7D |
  ORA.W #$0080                              ; $82CE7F |
  BRA CODE_82CE89                           ; $82CE82 |

CODE_82CE84:
  LDA.B $02,X                               ; $82CE84 |
  AND.W #$FF7F                              ; $82CE86 |

CODE_82CE89:
  STA.B $02,X                               ; $82CE89 |
  RTL                                       ; $82CE8B |

CODE_FL_82CE8C:
  LDA.B $02,X                               ; $82CE8C |
  EOR.W #$0080                              ; $82CE8E |
  STA.B $02,X                               ; $82CE91 |
  RTL                                       ; $82CE93 |

CODE_FL_82CE94:
  BEQ CODE_82CEB3                           ; $82CE94 |
  BMI CODE_82CEB4                           ; $82CE96 |
  STA.B $00                                 ; $82CE98 |
  SED                                       ; $82CE9A |
  LDA.W $1C4A                               ; $82CE9B |
  CLC                                       ; $82CE9E |
  ADC.B $00                                 ; $82CE9F |
  CLD                                       ; $82CEA1 |
  CMP.W #$0000                              ; $82CEA2 |
  BPL CODE_82CEA8                           ; $82CEA5 |
  TDC                                       ; $82CEA7 |

CODE_82CEA8:
  CMP.W #$0999                              ; $82CEA8 |
  BMI CODE_82CEB0                           ; $82CEAB |
  LDA.W #$0999                              ; $82CEAD |

CODE_82CEB0:
  STA.W $1C4A                               ; $82CEB0 |

CODE_82CEB3:
  RTL                                       ; $82CEB3 |

CODE_82CEB4:
  EOR.W #$FFFF                              ; $82CEB4 |
  INC A                                     ; $82CEB7 |
  STA.B $00                                 ; $82CEB8 |
  SED                                       ; $82CEBA |
  LDA.W $1C4A                               ; $82CEBB |
  SEC                                       ; $82CEBE |
  SBC.B $00                                 ; $82CEBF |
  CLD                                       ; $82CEC1 |
  STA.W $1C4A                               ; $82CEC2 |
  RTL                                       ; $82CEC5 |

CODE_FL_82CEC6:
  STX.W $1C16                               ; $82CEC6 |
  LDA.W $1C66                               ; $82CEC9 |
  BEQ CODE_82CEE1                           ; $82CECC |
  BMI CODE_82CED5                           ; $82CECE |
  LDA.B $42                                 ; $82CED0 |
  LSR A                                     ; $82CED2 |
  BCS CODE_82CEE1                           ; $82CED3 |

CODE_82CED5:
  LDA.W #$01FF                              ; $82CED5 |
  STA.W $1C06                               ; $82CED8 |
  STA.W $1C08                               ; $82CEDB |
  BRL CODE_JL_82CF5B                        ; $82CEDE |

CODE_82CEE1:
  LDA.W $1FC6                               ; $82CEE1 |
  LSR A                                     ; $82CEE4 |
  BCC CODE_82CEF3                           ; $82CEE5 |
  LDA.W $1FD0                               ; $82CEE7 |
  CLC                                       ; $82CEEA |
  ADC.B $09,X                               ; $82CEEB |
  SEC                                       ; $82CEED |
  SBC.W #$0100                              ; $82CEEE |
  BRA CODE_82CEF9                           ; $82CEF1 |

CODE_82CEF3:
  LDA.W $1FD0                               ; $82CEF3 |
  SEC                                       ; $82CEF6 |
  SBC.B $09,X                               ; $82CEF7 |

CODE_82CEF9:
  CMP.W #$037F                              ; $82CEF9 |
  BPL CODE_82CF03                           ; $82CEFC |
  CMP.W #$FC81                              ; $82CEFE |
  BPL CODE_82CF06                           ; $82CF01 |

CODE_82CF03:
  LDA.W #$047F                              ; $82CF03 |

CODE_82CF06:
  STA.W $1C06                               ; $82CF06 |
  LDA.W $1FC6                               ; $82CF09 |
  LSR A                                     ; $82CF0C |
  LSR A                                     ; $82CF0D |
  BCC CODE_82CF18                           ; $82CF0E |
  LDA.B $0D,X                               ; $82CF10 |
  SEC                                       ; $82CF12 |
  SBC.W $1FD2                               ; $82CF13 |
  BRA CODE_82CF22                           ; $82CF16 |

CODE_82CF18:
  LDA.B $0D,X                               ; $82CF18 |
  EOR.W #$FFFF                              ; $82CF1A |
  INC A                                     ; $82CF1D |
  CLC                                       ; $82CF1E |
  ADC.W $1FD2                               ; $82CF1F |

CODE_82CF22:
  STA.W $1C08                               ; $82CF22 |
  LDA.B $35,X                               ; $82CF25 |
  BMI CODE_JL_82CF5B                        ; $82CF27 |
  BEQ CODE_JL_82CF5B                        ; $82CF29 |
  SEC                                       ; $82CF2B |
  SBC.W #$0110                              ; $82CF2C |
  CMP.W #$FF18                              ; $82CF2F |
  BPL CODE_82CF37                           ; $82CF32 |
  LDA.W #$FF18                              ; $82CF34 |

CODE_82CF37:
  STA.B $00                                 ; $82CF37 |
  STA.W $1D64                               ; $82CF39 |
  STA.W $1D66                               ; $82CF3C |
  STZ.W $1C00                               ; $82CF3F |
  LDA.B $00                                 ; $82CF42 |
  CLC                                       ; $82CF44 |
  ADC.W #$0040                              ; $82CF45 |
  BPL CODE_82CF5A                           ; $82CF48 |
  EOR.W #$FFFF                              ; $82CF4A |
  INC A                                     ; $82CF4D |
  LSR A                                     ; $82CF4E |
  CMP.W #$0040                              ; $82CF4F |
  BCC CODE_82CF57                           ; $82CF52 |
  LDA.W #$0040                              ; $82CF54 |

CODE_82CF57:
  STA.W $1C00                               ; $82CF57 |

CODE_82CF5A:
  RTL                                       ; $82CF5A |

CODE_JL_82CF5B:
  LDA.W #$3FFF                              ; $82CF5B |
  STA.W $1D64                               ; $82CF5E |
  STA.W $1D66                               ; $82CF61 |
  RTL                                       ; $82CF64 |

CODE_JL_82CF65:
  STX.W $1C16                               ; $82CF65 |
  JSR.W CODE_FN_82CF85                      ; $82CF68 |
  LDA.B $35,X                               ; $82CF6B |
  BMI CODE_JL_82CF5B                        ; $82CF6D |
  BEQ CODE_JL_82CF5B                        ; $82CF6F |
  LSR A                                     ; $82CF71 |
  SEC                                       ; $82CF72 |
  SBC.W $1CB8                               ; $82CF73 |
  CMP.W #$FF10                              ; $82CF76 |
  BPL CODE_82CF7E                           ; $82CF79 |
  LDA.W #$FF10                              ; $82CF7B |

CODE_82CF7E:
  STA.W $1D64                               ; $82CF7E |
  STA.W $1D66                               ; $82CF81 |
  RTL                                       ; $82CF84 |

CODE_FN_82CF85:
  LDA.W $1FC6                               ; $82CF85 |
  LSR A                                     ; $82CF88 |
  BCC CODE_82CF97                           ; $82CF89 |
  LDA.W $1FD0                               ; $82CF8B |
  CLC                                       ; $82CF8E |
  ADC.B $09,X                               ; $82CF8F |
  SEC                                       ; $82CF91 |
  SBC.W #$0100                              ; $82CF92 |
  BRA CODE_82CF9D                           ; $82CF95 |

CODE_82CF97:
  LDA.W $1FD0                               ; $82CF97 |
  SEC                                       ; $82CF9A |
  SBC.B $09,X                               ; $82CF9B |

CODE_82CF9D:
  STA.W $1662                               ; $82CF9D |
  LDA.W $1FC6                               ; $82CFA0 |
  LSR A                                     ; $82CFA3 |
  LSR A                                     ; $82CFA4 |
  BCC CODE_82CFAF                           ; $82CFA5 |
  LDA.B $0D,X                               ; $82CFA7 |
  SEC                                       ; $82CFA9 |
  SBC.W $1FD2                               ; $82CFAA |
  BRA CODE_82CFB9                           ; $82CFAD |

CODE_82CFAF:
  LDA.B $0D,X                               ; $82CFAF |
  EOR.W #$FFFF                              ; $82CFB1 |
  INC A                                     ; $82CFB4 |
  CLC                                       ; $82CFB5 |
  ADC.W $1FD2                               ; $82CFB6 |

CODE_82CFB9:
  STA.W $1672                               ; $82CFB9 |
  RTS                                       ; $82CFBC |

CODE_FL_82CFBD:
  LDA.B $2D,X                               ; $82CFBD |
  BPL CODE_FL_82CFD5                        ; $82CFBF |
  BRA CODE_FL_82CFDF                        ; $82CFC1 |

CODE_FL_82CFC3:
  LDA.B $2D,X                               ; $82CFC3 |
  BPL CODE_FL_82CFDF                        ; $82CFC5 |
  BRA CODE_FL_82CFD5                        ; $82CFC7 |

CODE_FL_82CFC9:
  LDA.B $26,X                               ; $82CFC9 |
  BMI CODE_FL_82CFDF                        ; $82CFCB |
  BRA CODE_FL_82CFD5                        ; $82CFCD |

CODE_FL_82CFCF:
  LDA.B $26,X                               ; $82CFCF |
  BPL CODE_FL_82CFDF                        ; $82CFD1 |
  BRA CODE_FL_82CFD5                        ; $82CFD3 |

CODE_FL_82CFD5:
  LDA.B $04,X                               ; $82CFD5 |
  AND.W #$DFDF                              ; $82CFD7 |
  STA.B $04,X                               ; $82CFDA |
  JMP.W CODE_FL_82CFF3                      ; $82CFDC |

CODE_FL_82CFDF:
  LDA.B $04,X                               ; $82CFDF |
  ORA.W #$2020                              ; $82CFE1 |
  STA.B $04,X                               ; $82CFE4 |
  JMP.W CODE_FL_82CFFD                      ; $82CFE6 |

CODE_FL_82CFE9:
  LDA.B $04,X                               ; $82CFE9 |
  EOR.W #$2020                              ; $82CFEB |
  STA.B $04,X                               ; $82CFEE |
  JMP.W CODE_FL_82D007                      ; $82CFF0 |

CODE_FL_82CFF3:
  LDA.W $1FC6                               ; $82CFF3 |
  AND.W #$00FE                              ; $82CFF6 |
  STA.W $1FC6                               ; $82CFF9 |
  RTL                                       ; $82CFFC |

CODE_FL_82CFFD:
  LDA.W $1FC6                               ; $82CFFD |
  ORA.W #$0001                              ; $82D000 |
  STA.W $1FC6                               ; $82D003 |
  RTL                                       ; $82D006 |

CODE_FL_82D007:
  LDA.W $1FC6                               ; $82D007 |
  EOR.W #$0001                              ; $82D00A |
  STA.W $1FC6                               ; $82D00D |
  RTL                                       ; $82D010 |

CODE_FL_82D011:
  LDA.B $04,X                               ; $82D011 |
  BIT.W #$2020                              ; $82D013 |
  BEQ CODE_FL_82CFF3                        ; $82D016 |
  BRA CODE_FL_82CFFD                        ; $82D018 |

CODE_FL_82D01A:
  LDA.B $04,X                               ; $82D01A |
  BIT.W #$2020                              ; $82D01C |
  BEQ CODE_FL_82CFFD                        ; $82D01F |
  BRA CODE_FL_82CFF3                        ; $82D021 |

CODE_FL_82D023:
  CLC                                       ; $82D023 |
  ADC.W $1FD4                               ; $82D024 |

CODE_82D027:
  AND.W #$01FF                              ; $82D027 |
  STA.W $1FD4                               ; $82D02A |
  RTL                                       ; $82D02D |

CODE_FL_82D02E:
  AND.W #$00FF                              ; $82D02E |
  BIT.W #$0080                              ; $82D031 |
  BEQ CODE_82D039                           ; $82D034 |
  ORA.W #$FF00                              ; $82D036 |

CODE_82D039:
  CLC                                       ; $82D039 |
  ADC.W #$0200                              ; $82D03A |
  BRA CODE_82D027                           ; $82D03D |

CODE_FL_82D03F:
  STA.B $00                                 ; $82D03F |
  LDA.W $1FD4                               ; $82D041 |
  CMP.W #$0100                              ; $82D044 |
  BPL CODE_82D051                           ; $82D047 |
  SEC                                       ; $82D049 |
  SBC.B $00                                 ; $82D04A |
  BPL CODE_82D05A                           ; $82D04C |
  TDC                                       ; $82D04E |
  BRA CODE_82D05A                           ; $82D04F |

CODE_82D051:
  CLC                                       ; $82D051 |
  ADC.B $00                                 ; $82D052 |
  CMP.W #$0200                              ; $82D054 |
  BMI CODE_82D05A                           ; $82D057 |
  TDC                                       ; $82D059 |

CODE_82D05A:
  STA.W $1FD4                               ; $82D05A |
  BEQ CODE_82D061                           ; $82D05D |
  SEC                                       ; $82D05F |
  RTL                                       ; $82D060 |

CODE_82D061:
  CLC                                       ; $82D061 |
  RTL                                       ; $82D062 |

CODE_FL_82D063:
  STY.B $08                                 ; $82D063 |
  BRA CODE_82D069                           ; $82D065 |

CODE_FL_82D067:
  STZ.B $08                                 ; $82D067 |

CODE_82D069:
  STA.B $02                                 ; $82D069 |
  STA.B $04                                 ; $82D06B |
  STA.B $06                                 ; $82D06D |
  LDA.B $2D,X                               ; $82D06F |
  BPL CODE_82D077                           ; $82D071 |
  EOR.W #$FFFF                              ; $82D073 |
  INC A                                     ; $82D076 |

CODE_82D077:
  DEC.B $02                                 ; $82D077 |
  BEQ CODE_82D07E                           ; $82D079 |
  ASL A                                     ; $82D07B |
  BRA CODE_82D077                           ; $82D07C |

CODE_82D07E:
  ASL A                                     ; $82D07E |
  ASL A                                     ; $82D07F |
  ASL A                                     ; $82D080 |
  ASL A                                     ; $82D081 |
  STA.W $4204                               ; $82D082 |
  LDA.B $35,X                               ; $82D085 |
  CLC                                       ; $82D087 |
  ADC.B $08                                 ; $82D088 |
  CMP.W #$0008                              ; $82D08A |
  BPL CODE_82D092                           ; $82D08D |
  LDA.W #$0008                              ; $82D08F |

CODE_82D092:
  LSR A                                     ; $82D092 |
  LSR A                                     ; $82D093 |
  SEP #$20                                  ; $82D094 |
  STA.W $4206                               ; $82D096 |
  REP #$20                                  ; $82D099 |
  STA.B $00                                 ; $82D09B |
  LDA.B $31,X                               ; $82D09D |
  BPL CODE_82D0A5                           ; $82D09F |
  EOR.W #$FFFF                              ; $82D0A1 |
  INC A                                     ; $82D0A4 |

CODE_82D0A5:
  DEC.B $04                                 ; $82D0A5 |
  BEQ CODE_82D0AC                           ; $82D0A7 |
  ASL A                                     ; $82D0A9 |
  BRA CODE_82D0A5                           ; $82D0AA |

CODE_82D0AC:
  ASL A                                     ; $82D0AC |
  ASL A                                     ; $82D0AD |
  ASL A                                     ; $82D0AE |
  ASL A                                     ; $82D0AF |
  LDY.W $4214                               ; $82D0B0 |
  STA.W $4204                               ; $82D0B3 |
  SEP #$20                                  ; $82D0B6 |
  LDA.B $00                                 ; $82D0B8 |
  STA.W $4206                               ; $82D0BA |
  REP #$20                                  ; $82D0BD |
  TYA                                       ; $82D0BF |
  ASL A                                     ; $82D0C0 |
  ASL A                                     ; $82D0C1 |
  BIT.B $2D,X                               ; $82D0C2 |
  BMI CODE_82D0CA                           ; $82D0C4 |
  EOR.W #$FFFF                              ; $82D0C6 |
  INC A                                     ; $82D0C9 |

CODE_82D0CA:
  STA.B $26,X                               ; $82D0CA |
  LDA.W $4214                               ; $82D0CC |
  ASL A                                     ; $82D0CF |
  ASL A                                     ; $82D0D0 |
  BIT.B $31,X                               ; $82D0D1 |
  BMI CODE_82D0D9                           ; $82D0D3 |
  EOR.W #$FFFF                              ; $82D0D5 |
  INC A                                     ; $82D0D8 |

CODE_82D0D9:
  STA.B $28,X                               ; $82D0D9 |
  LDA.W #$FF00                              ; $82D0DB |

CODE_82D0DE:
  DEC.B $06                                 ; $82D0DE |
  BEQ CODE_82D0E5                           ; $82D0E0 |
  ASL A                                     ; $82D0E2 |
  BRA CODE_82D0DE                           ; $82D0E3 |

CODE_82D0E5:
  STA.B $2A,X                               ; $82D0E5 |
  RTL                                       ; $82D0E7 |

CODE_FL_82D0E8:
  STA.B $00                                 ; $82D0E8 |
  LDA.W $002D,Y                             ; $82D0EA |
  SEC                                       ; $82D0ED |
  SBC.B $2D,X                               ; $82D0EE |
  STA.B $04                                 ; $82D0F0 |
  STZ.B $02                                 ; $82D0F2 |
  LDA.W $0031,Y                             ; $82D0F4 |
  SEC                                       ; $82D0F7 |
  SBC.B $31,X                               ; $82D0F8 |
  STA.B $0A                                 ; $82D0FA |
  STZ.B $08                                 ; $82D0FC |
  LDA.W $0035,Y                             ; $82D0FE |
  SEC                                       ; $82D101 |
  SBC.B $35,X                               ; $82D102 |
  STA.B $0E                                 ; $82D104 |
  STZ.B $0C                                 ; $82D106 |

CODE_82D108:
  DEC.B $00                                 ; $82D108 |
  BMI CODE_82D129                           ; $82D10A |
  LDA.B $04                                 ; $82D10C |
  CMP.W #$8000                              ; $82D10E |
  ROR.B $04                                 ; $82D111 |
  ROR.B $02                                 ; $82D113 |
  LDA.B $0A                                 ; $82D115 |
  CMP.W #$8000                              ; $82D117 |
  ROR.B $0A                                 ; $82D11A |
  ROR.B $08                                 ; $82D11C |
  LDA.B $0E                                 ; $82D11E |
  CMP.W #$8000                              ; $82D120 |
  ROR.B $0E                                 ; $82D123 |
  ROR.B $0C                                 ; $82D125 |
  BRA CODE_82D108                           ; $82D127 |

CODE_82D129:
  LDA.B $03                                 ; $82D129 |
  STA.B $26,X                               ; $82D12B |
  LDA.B $09                                 ; $82D12D |
  STA.B $28,X                               ; $82D12F |
  LDA.B $0D                                 ; $82D131 |
  STA.B $2A,X                               ; $82D133 |
  RTL                                       ; $82D135 |

CODE_FL_82D136:
  STA.B $14                                 ; $82D136 |
  LDA.B $00                                 ; $82D138 |
  SEC                                       ; $82D13A |
  SBC.B $2D,X                               ; $82D13B |
  STA.B $0A                                 ; $82D13D |
  STZ.B $08                                 ; $82D13F |
  LDA.B $02                                 ; $82D141 |
  SEC                                       ; $82D143 |
  SBC.B $31,X                               ; $82D144 |
  STA.B $0E                                 ; $82D146 |
  STZ.B $0C                                 ; $82D148 |
  LDA.B $04                                 ; $82D14A |
  SEC                                       ; $82D14C |
  SBC.B $35,X                               ; $82D14D |
  STA.B $12                                 ; $82D14F |
  STZ.B $10                                 ; $82D151 |

CODE_82D153:
  DEC.B $14                                 ; $82D153 |
  BMI CODE_82D174                           ; $82D155 |
  LDA.B $0A                                 ; $82D157 |
  CMP.W #$8000                              ; $82D159 |
  ROR.B $0A                                 ; $82D15C |
  ROR.B $08                                 ; $82D15E |
  LDA.B $0E                                 ; $82D160 |
  CMP.W #$8000                              ; $82D162 |
  ROR.B $0E                                 ; $82D165 |
  ROR.B $0C                                 ; $82D167 |
  LDA.B $12                                 ; $82D169 |
  CMP.W #$8000                              ; $82D16B |
  ROR.B $12                                 ; $82D16E |
  ROR.B $10                                 ; $82D170 |
  BRA CODE_82D153                           ; $82D172 |

CODE_82D174:
  LDA.B $09                                 ; $82D174 |
  STA.B $26,X                               ; $82D176 |
  LDA.B $0D                                 ; $82D178 |
  STA.B $28,X                               ; $82D17A |
  LDA.B $11                                 ; $82D17C |
  STA.B $2A,X                               ; $82D17E |
  RTL                                       ; $82D180 |

CODE_FL_82D181:
  STA.B $00                                 ; $82D181 |
  LDA.W #$000C                              ; $82D183 |
  STA.B $02                                 ; $82D186 |
  LDA.W $1C9A                               ; $82D188 |
  BNE CODE_82D1BE                           ; $82D18B |
  LDA.W $1C90                               ; $82D18D |
  BEQ CODE_82D1A0                           ; $82D190 |
  DEC.W $1C90                               ; $82D192 |
  LDA.B $42                                 ; $82D195 |
  LSR A                                     ; $82D197 |
  BCC CODE_82D1A0                           ; $82D198 |
  LDA.B $00                                 ; $82D19A |
  BRA CODE_82D1B2                           ; $82D19C |

CODE_FL_82D19E:
  STA.B $02                                 ; $82D19E |

CODE_82D1A0:
  LDA.B $35,X                               ; $82D1A0 |
  BMI CODE_82D1BE                           ; $82D1A2 |
  BRA CODE_82D1AA                           ; $82D1A4 |

CODE_82D1A6:
  INY                                       ; $82D1A6 |
  INY                                       ; $82D1A7 |
  INY                                       ; $82D1A8 |
  INY                                       ; $82D1A9 |

CODE_82D1AA:
  CMP.W $0000,Y                             ; $82D1AA |
  BCS CODE_82D1A6                           ; $82D1AD |
  LDA.W $0002,Y                             ; $82D1AF |

CODE_82D1B2:
  TAY                                       ; $82D1B2 |
  PHX                                       ; $82D1B3 |
  LDX.W #$1F50                              ; $82D1B4 |
  LDA.B $02                                 ; $82D1B7 |
  JSL.L CODE_FL_80C2CC                      ; $82D1B9 |
  PLX                                       ; $82D1BD |

CODE_82D1BE:
  RTL                                       ; $82D1BE |

CODE_FL_82D1BF:
  LDA.B $42                                 ; $82D1BF |
  AND.W #$0002                              ; $82D1C1 |
  ASL A                                     ; $82D1C4 |
  DEC A                                     ; $82D1C5 |
  DEC A                                     ; $82D1C6 |
  CLC                                       ; $82D1C7 |
  ADC.B $2D,X                               ; $82D1C8 |
  STA.B $2D,X                               ; $82D1CA |
  RTL                                       ; $82D1CC |

CODE_FL_82D1CD:
  LDA.B $42                                 ; $82D1CD |
  AND.W #$0004                              ; $82D1CF |
  DEC A                                     ; $82D1D2 |
  DEC A                                     ; $82D1D3 |
  CLC                                       ; $82D1D4 |
  ADC.B $31,X                               ; $82D1D5 |
  STA.B $31,X                               ; $82D1D7 |
  RTL                                       ; $82D1D9 |

CODE_FL_82D1DA:
  LDA.B $42                                 ; $82D1DA |
  AND.W #$0004                              ; $82D1DC |
  DEC A                                     ; $82D1DF |
  DEC A                                     ; $82D1E0 |
  CLC                                       ; $82D1E1 |
  ADC.B $35,X                               ; $82D1E2 |
  STA.B $35,X                               ; $82D1E4 |
  RTL                                       ; $82D1E6 |

CODE_FL_82D1E7:
  LDA.B $42                                 ; $82D1E7 |
  AND.W #$0002                              ; $82D1E9 |
  DEC A                                     ; $82D1EC |
  CLC                                       ; $82D1ED |
  ADC.B $35,X                               ; $82D1EE |
  STA.B $35,X                               ; $82D1F0 |
  RTL                                       ; $82D1F2 |

  LDA.B $42                                 ; $82D1F3 |
  AND.W #$0002                              ; $82D1F5 |
  DEC A                                     ; $82D1F8 |
  CLC                                       ; $82D1F9 |
  ADC.B $09,X                               ; $82D1FA |
  STA.B $09,X                               ; $82D1FC |
  RTL                                       ; $82D1FE |

  LDA.B $42                                 ; $82D1FF |
  AND.W #$0002                              ; $82D201 |
  ASL A                                     ; $82D204 |
  DEC A                                     ; $82D205 |
  DEC A                                     ; $82D206 |
  CLC                                       ; $82D207 |
  ADC.B $09,X                               ; $82D208 |
  STA.B $09,X                               ; $82D20A |
  RTL                                       ; $82D20C |

CODE_FL_82D20D:
  LDA.W #$0001                              ; $82D20D |

CODE_FL_82D210:
  STA.B $1E,X                               ; $82D210 |
  STA.B $20,X                               ; $82D212 |
  STY.B $24,X                               ; $82D214 |
  STY.B $22,X                               ; $82D216 |
  RTL                                       ; $82D218 |

CODE_FL_82D219:
  STA.B $20,X                               ; $82D219 |
  LDY.B $1E,X                               ; $82D21B |
  BEQ CODE_82D253                           ; $82D21D |
  DEC.B $1E,X                               ; $82D21F |
  BNE CODE_82D251                           ; $82D221 |
  STA.B $1E,X                               ; $82D223 |
  LDY.B $24,X                               ; $82D225 |
  LDA.W $0000,Y                             ; $82D227 |
  CMP.W #$FFFF                              ; $82D22A |
  BEQ CODE_82D253                           ; $82D22D |
  CMP.W #$FFFE                              ; $82D22F |
  BNE CODE_82D238                           ; $82D232 |
  LDY.B $22,X                               ; $82D234 |
  STY.B $24,X                               ; $82D236 |

CODE_82D238:
  LDA.W $1FC6                               ; $82D238 |
  AND.W #$00FE                              ; $82D23B |
  ORA.W $0002,Y                             ; $82D23E |
  STA.W $1FC6                               ; $82D241 |
  LDA.W $0000,Y                             ; $82D244 |
  INY                                       ; $82D247 |
  INY                                       ; $82D248 |
  INY                                       ; $82D249 |
  INY                                       ; $82D24A |
  STY.B $24,X                               ; $82D24B |
  JSL.L CODE_FL_82D272                      ; $82D24D |

CODE_82D251:
  SEC                                       ; $82D251 |
  RTL                                       ; $82D252 |

CODE_82D253:
  STZ.B $1E,X                               ; $82D253 |
  CLC                                       ; $82D255 |
  RTL                                       ; $82D256 |

CODE_FL_82D257:
  LDY.B $1E,X                               ; $82D257 |
  BEQ CODE_82D253                           ; $82D259 |
  DEC.B $1E,X                               ; $82D25B |
  BNE CODE_82D251                           ; $82D25D |
  STA.B $1E,X                               ; $82D25F |
  LDY.B $24,X                               ; $82D261 |
  LDA.W $0000,Y                             ; $82D263 |
  CMP.W #$FFFF                              ; $82D266 |
  BEQ CODE_82D253                           ; $82D269 |
  CMP.W #$FFFE                              ; $82D26B |
  BEQ CODE_82D253                           ; $82D26E |
  BRA CODE_82D238                           ; $82D270 |

CODE_FL_82D272:
  LDY.B $90                                 ; $82D272 |
  CPY.W #$0002                              ; $82D274 |
  BEQ CODE_82D2AB                           ; $82D277 |
  TAY                                       ; $82D279 |
  LDA.B $DA                                 ; $82D27A |
  PHX                                       ; $82D27C |
  STA.B $00                                 ; $82D27D |
  ASL A                                     ; $82D27F |
  ADC.B $00                                 ; $82D280 |
  TAX                                       ; $82D282 |
  LDA.L PTR24_82D293,X                      ; $82D283 |
  STA.B $00                                 ; $82D287 |
  LDA.L PTR24_82D295,X                      ; $82D289 |
  STA.B $02                                 ; $82D28D |
  PLX                                       ; $82D28F |
  JML.W [$0000]                             ; $82D290 |

PTR24_82D293:
  dl CODE_8AF605                            ; $82D293 |
  dl CODE_8AF605                            ; $82D296 |
  dl CODE_8AF69E                            ; $82D299 |
  dl CODE_8AF6ED                            ; $82D29C |
  dl CODE_8AF705                            ; $82D29F |
  dl CODE_8AF7C4                            ; $82D2A2 |
  dl CODE_8AF7C4                            ; $82D2A5 |
  dl CODE_8AF605                            ; $82D2A8 |

CODE_82D2AB:
  TAY                                       ; $82D2AB |
  LDA.B $DA                                 ; $82D2AC |
  PHX                                       ; $82D2AE |
  STA.B $00                                 ; $82D2AF |
  ASL A                                     ; $82D2B1 |
  ADC.B $00                                 ; $82D2B2 |
  TAX                                       ; $82D2B4 |
  LDA.L PTR24_82D2C5,X                      ; $82D2B5 |
  STA.B $00                                 ; $82D2B9 |
  LDA.L PTR24_82D2C7,X                      ; $82D2BB |
  STA.B $02                                 ; $82D2BF |
  PLX                                       ; $82D2C1 |
  JML.W [$0000]                             ; $82D2C2 |

PTR24_82D2C5:
  dl CODE_8AF605                            ; $82D2C5 |
  dl CODE_8AF69E                            ; $82D2C8 |
  dl CODE_8AF775                            ; $82D2CB |
  dl CODE_8AF605                            ; $82D2CE |
  dl CODE_8AF605                            ; $82D2D1 |
  dl CODE_8AF605                            ; $82D2D4 |

CODE_FL_82D2D7:
  PHX                                       ; $82D2D7 |
  SEP #$20                                  ; $82D2D8 |
  LDX.W #$DB82                              ; $82D2DA |
  STA.L $7E0001,X                           ; $82D2DD |
  STA.L $7E0003,X                           ; $82D2E1 |
  STA.L $7E0005,X                           ; $82D2E5 |
  STA.L $7E0007,X                           ; $82D2E9 |
  STA.L $7E0021,X                           ; $82D2ED |
  STA.L $7E0023,X                           ; $82D2F1 |
  STA.L $7E0025,X                           ; $82D2F5 |
  STA.L $7E0027,X                           ; $82D2F9 |
  STA.W $1FDE                               ; $82D2FD |
  REP #$20                                  ; $82D300 |
  PLX                                       ; $82D302 |
  RTL                                       ; $82D303 |

CODE_FL_82D304:
  LDA.W $1C74                               ; $82D304 |
  BEQ CODE_82D311                           ; $82D307 |
  JSL.L CODE_FL_82CC9F                      ; $82D309 |
  PHP                                       ; $82D30D |
  PLA                                       ; $82D30E |
  PLA                                       ; $82D30F |
  RTL                                       ; $82D310 |

CODE_82D311:
  LDA.B $1A,X                               ; $82D311 |
  RTL                                       ; $82D313 |

CODE_FL_82D314:
  LDA.W $1C74                               ; $82D314 |
  BEQ CODE_82D311                           ; $82D317 |
  JSL.L CODE_FL_82F130                      ; $82D319 |

CODE_82D31D:
  JSL.L CODE_FL_82CC9F                      ; $82D31D |
  CPX.W $1C16                               ; $82D321 |
  BEQ CODE_82D32A                           ; $82D324 |
  PHP                                       ; $82D326 |
  PLA                                       ; $82D327 |
  PLA                                       ; $82D328 |
  RTL                                       ; $82D329 |

CODE_82D32A:
  STZ.W $1C16                               ; $82D32A |
  PHP                                       ; $82D32D |
  PLA                                       ; $82D32E |
  PLA                                       ; $82D32F |
  RTL                                       ; $82D330 |

CODE_FL_82D331:
  LDA.W $1C74                               ; $82D331 |
  BEQ CODE_82D311                           ; $82D334 |
  BRA CODE_82D31D                           ; $82D336 |

CODE_FL_82D338:
  LDA.W $1C72                               ; $82D338 |
  BEQ CODE_82D345                           ; $82D33B |
  JSL.L CODE_FL_82CC9F                      ; $82D33D |
  PHP                                       ; $82D341 |
  PLA                                       ; $82D342 |
  PLA                                       ; $82D343 |
  RTL                                       ; $82D344 |

CODE_82D345:
  LDA.B $1A,X                               ; $82D345 |
  RTL                                       ; $82D347 |

CODE_FL_82D348:
  STA.B $00                                 ; $82D348 |
  LDY.W $1C72                               ; $82D34A |
  BEQ CODE_82D35E                           ; $82D34D |
  CMP.B $1A,X                               ; $82D34F |
  BEQ CODE_82D35E                           ; $82D351 |
  BMI CODE_82D35E                           ; $82D353 |
  LDA.W #$0010                              ; $82D355 |
  STA.B $5C,X                               ; $82D358 |
  LDA.B $00                                 ; $82D35A |
  STA.B $1A,X                               ; $82D35C |

CODE_82D35E:
  RTL                                       ; $82D35E |

  PHX                                       ; $82D35F |
  PHY                                       ; $82D360 |
  AND.W #$01FF                              ; $82D361 |
  ASL A                                     ; $82D364 |
  TAX                                       ; $82D365 |
  LDA.B $00                                 ; $82D366 |
  BPL CODE_82D36E                           ; $82D368 |
  EOR.W #$FFFF                              ; $82D36A |
  INC A                                     ; $82D36D |

CODE_82D36E:
  STA.B $10                                 ; $82D36E |
  SEP #$20                                  ; $82D370 |
  STA.W $4202                               ; $82D372 |
  LDA.L DATA8_978100,X                      ; $82D375 |
  STA.W $4203                               ; $82D379 |
  REP #$20                                  ; $82D37C |
  LDA.B $02                                 ; $82D37E |
  BPL CODE_82D386                           ; $82D380 |
  EOR.W #$FFFF                              ; $82D382 |
  INC A                                     ; $82D385 |

CODE_82D386:
  STA.B $12                                 ; $82D386 |
  LDA.W $4217                               ; $82D388 |
  AND.W #$00FF                              ; $82D38B |
  TAY                                       ; $82D38E |
  SEP #$20                                  ; $82D38F |
  LDA.L DATA8_978000,X                      ; $82D391 |
  STA.W $4203                               ; $82D395 |
  REP #$20                                  ; $82D398 |
  LDA.L DATA8_978100,X                      ; $82D39A |
  EOR.B $00                                 ; $82D39E |
  ASL A                                     ; $82D3A0 |
  TYA                                       ; $82D3A1 |
  BCC CODE_82D3A8                           ; $82D3A2 |
  EOR.W #$FFFF                              ; $82D3A4 |
  INC A                                     ; $82D3A7 |

CODE_82D3A8:
  STA.B $08                                 ; $82D3A8 |
  LDA.W $4217                               ; $82D3AA |
  AND.W #$00FF                              ; $82D3AD |
  TAY                                       ; $82D3B0 |
  SEP #$20                                  ; $82D3B1 |
  LDA.B $12                                 ; $82D3B3 |
  STA.W $4202                               ; $82D3B5 |
  LDA.L DATA8_978100,X                      ; $82D3B8 |
  STA.W $4203                               ; $82D3BC |
  REP #$20                                  ; $82D3BF |
  LDA.L DATA8_978000,X                      ; $82D3C1 |
  EOR.B $00                                 ; $82D3C5 |
  ASL A                                     ; $82D3C7 |
  TYA                                       ; $82D3C8 |
  BCC CODE_82D3CF                           ; $82D3C9 |
  EOR.W #$FFFF                              ; $82D3CB |
  INC A                                     ; $82D3CE |

CODE_82D3CF:
  STA.B $0A                                 ; $82D3CF |
  LDA.W $4217                               ; $82D3D1 |
  AND.W #$00FF                              ; $82D3D4 |
  TAY                                       ; $82D3D7 |
  SEP #$20                                  ; $82D3D8 |
  LDA.L DATA8_978000,X                      ; $82D3DA |
  STA.W $4203                               ; $82D3DE |
  REP #$20                                  ; $82D3E1 |
  LDA.L DATA8_978100,X                      ; $82D3E3 |
  EOR.B $02                                 ; $82D3E7 |
  ASL A                                     ; $82D3E9 |
  TYA                                       ; $82D3EA |
  BCC CODE_82D3F1                           ; $82D3EB |
  EOR.W #$FFFF                              ; $82D3ED |
  INC A                                     ; $82D3F0 |

CODE_82D3F1:
  SEC                                       ; $82D3F1 |
  SBC.B $0A                                 ; $82D3F2 |
  STA.B $06                                 ; $82D3F4 |
  LDA.W $4217                               ; $82D3F6 |
  AND.W #$00FF                              ; $82D3F9 |
  TAY                                       ; $82D3FC |
  LDA.L DATA8_978000,X                      ; $82D3FD |
  EOR.B $02                                 ; $82D401 |
  ASL A                                     ; $82D403 |
  TYA                                       ; $82D404 |
  BCC CODE_82D40B                           ; $82D405 |
  EOR.W #$FFFF                              ; $82D407 |
  INC A                                     ; $82D40A |

CODE_82D40B:
  CLC                                       ; $82D40B |
  ADC.B $08                                 ; $82D40C |
  STA.B $04                                 ; $82D40E |
  PLY                                       ; $82D410 |
  PLX                                       ; $82D411 |
  RTL                                       ; $82D412 |

CODE_FL_82D413:
  PHY                                       ; $82D413 |
  LDA.B $0C                                 ; $82D414 |
  BMI CODE_82D48C                           ; $82D416 |
  CMP.W #$0400                              ; $82D418 |
  BCS CODE_82D48C                           ; $82D41B |
  LSR A                                     ; $82D41D |
  LSR A                                     ; $82D41E |
  BEQ CODE_82D48C                           ; $82D41F |
  STA.B $14                                 ; $82D421 |
  LDA.B $08                                 ; $82D423 |
  BPL CODE_82D42B                           ; $82D425 |
  EOR.W #$FFFF                              ; $82D427 |
  INC A                                     ; $82D42A |

CODE_82D42B:
  CMP.W #$0200                              ; $82D42B |
  BCS CODE_82D48C                           ; $82D42E |
  ASL A                                     ; $82D430 |
  ASL A                                     ; $82D431 |
  ASL A                                     ; $82D432 |
  ASL A                                     ; $82D433 |
  ASL A                                     ; $82D434 |
  ASL A                                     ; $82D435 |
  ASL A                                     ; $82D436 |
  STA.W $4204                               ; $82D437 |
  SEP #$20                                  ; $82D43A |
  LDA.B $14                                 ; $82D43C |
  STA.W $4206                               ; $82D43E |
  REP #$20                                  ; $82D441 |
  LDA.B $0A                                 ; $82D443 |
  BPL CODE_82D44B                           ; $82D445 |
  EOR.W #$FFFF                              ; $82D447 |
  INC A                                     ; $82D44A |

CODE_82D44B:
  CMP.W #$0200                              ; $82D44B |
  BCS CODE_82D48C                           ; $82D44E |
  ASL A                                     ; $82D450 |
  ASL A                                     ; $82D451 |
  ASL A                                     ; $82D452 |
  ASL A                                     ; $82D453 |
  ASL A                                     ; $82D454 |
  ASL A                                     ; $82D455 |
  ASL A                                     ; $82D456 |
  LDY.W $4214                               ; $82D457 |
  STA.W $4204                               ; $82D45A |
  SEP #$20                                  ; $82D45D |
  LDA.B $14                                 ; $82D45F |
  STA.W $4206                               ; $82D461 |
  REP #$20                                  ; $82D464 |
  TYA                                       ; $82D466 |
  LSR A                                     ; $82D467 |
  LSR A                                     ; $82D468 |
  BIT.B $08                                 ; $82D469 |
  BPL CODE_82D471                           ; $82D46B |
  EOR.W #$FFFF                              ; $82D46D |
  INC A                                     ; $82D470 |

CODE_82D471:
  CLC                                       ; $82D471 |
  ADC.W #$0080                              ; $82D472 |
  STA.B $10                                 ; $82D475 |
  LDA.W $4214                               ; $82D477 |
  LSR A                                     ; $82D47A |
  LSR A                                     ; $82D47B |
  BIT.B $0A                                 ; $82D47C |
  BPL CODE_82D484                           ; $82D47E |
  EOR.W #$FFFF                              ; $82D480 |
  INC A                                     ; $82D483 |

CODE_82D484:
  CLC                                       ; $82D484 |
  ADC.W #$0070                              ; $82D485 |
  STA.B $12                                 ; $82D488 |

CODE_82D48A:
  PLY                                       ; $82D48A |
  RTL                                       ; $82D48B |

CODE_82D48C:
  LDA.W #$01FF                              ; $82D48C |
  LDY.B $08                                 ; $82D48F |
  BPL CODE_82D496                           ; $82D491 |
  LDA.W #$FE01                              ; $82D493 |

CODE_82D496:
  STA.B $10                                 ; $82D496 |
  LDA.W #$01FF                              ; $82D498 |
  STA.B $12                                 ; $82D49B |
  BRA CODE_82D48A                           ; $82D49D |

CODE_FL_82D49F:
  PHB                                       ; $82D49F |
  PEA.W $8A8A                               ; $82D4A0 |
  PLB                                       ; $82D4A3 |
  PLB                                       ; $82D4A4 |
  SEP #$20                                  ; $82D4A5 |
  LDA.W $0000,Y                             ; $82D4A7 |
  STA.W $210B                               ; $82D4AA |
  LDA.W $0001,Y                             ; $82D4AD |
  STA.W $210C                               ; $82D4B0 |
  LDA.W $0002,Y                             ; $82D4B3 |
  STA.W $1FA4                               ; $82D4B6 |
  LDA.W $0003,Y                             ; $82D4B9 |
  STA.W $1FAC                               ; $82D4BC |
  LDA.W $0004,Y                             ; $82D4BF |
  STA.W $1FAE                               ; $82D4C2 |
  LDA.W $0005,Y                             ; $82D4C5 |
  STA.W $1FB0                               ; $82D4C8 |
  REP #$20                                  ; $82D4CB |
  PLB                                       ; $82D4CD |
  RTL                                       ; $82D4CE |

CODE_FL_82D4CF:
  JSL.L CODE_FL_808302                      ; $82D4CF |
  REP #$10                                  ; $82D4D3 |
  LDY.W #$03FF                              ; $82D4D5 |
  LDX.W #$4000                              ; $82D4D8 |
  JSL.L CODE_FL_80BF4B                      ; $82D4DB |
  REP #$10                                  ; $82D4DF |
  LDY.W #$03FF                              ; $82D4E1 |
  LDX.W #$4400                              ; $82D4E4 |
  JSL.L CODE_FL_80BF4B                      ; $82D4E7 |
  REP #$10                                  ; $82D4EB |
  LDY.W #$03FF                              ; $82D4ED |
  LDX.W #$4800                              ; $82D4F0 |
  JSL.L CODE_FL_80BF41                      ; $82D4F3 |
  LDX.W #DATA_8881C9                        ; $82D4F7 |
  JML.L sound_transfer_blocks               ; $82D4FA |

CODE_FL_82D4FE:
  PHX                                       ; $82D4FE |
  PHB                                       ; $82D4FF |
  PEA.W $7E00                               ; $82D500 |
  PLB                                       ; $82D503 |
  PLB                                       ; $82D504 |
  ASL A                                     ; $82D505 |
  ASL A                                     ; $82D506 |
  ASL A                                     ; $82D507 |
  ASL A                                     ; $82D508 |
  CLC                                       ; $82D509 |
  TAY                                       ; $82D50A |
  INY                                       ; $82D50B |
  INY                                       ; $82D50C |
  LDX.W #$000F                              ; $82D50D |
  LDA.W #$7FFF                              ; $82D510 |

CODE_82D513:
  STA.W $2C00,Y                             ; $82D513 |
  DEX                                       ; $82D516 |
  BNE CODE_82D513                           ; $82D517 |
  PLB                                       ; $82D519 |
  PLX                                       ; $82D51A |
  JML.L CODE_FL_80C2DC                      ; $82D51B |

CODE_FL_82D51F:
  JSL.L CODE_FL_82B994                      ; $82D51F |
  JSL.L CODE_FL_808BC2                      ; $82D523 |
  JSL.L CODE_FL_8B80CE                      ; $82D527 |
  LDY.W #$925C                              ; $82D52B |
  JSL.L CODE_FL_82D49F                      ; $82D52E |
  JSL.L CODE_FL_808D75                      ; $82D532 |
  JSL.L CODE_FL_808302                      ; $82D536 |
  JSL.L CODE_FL_80BEFB                      ; $82D53A |
  REP #$10                                  ; $82D53E |
  LDY.W #$07FF                              ; $82D540 |
  LDX.W #$5800                              ; $82D543 |
  JSL.L CODE_FL_80BF4B                      ; $82D546 |
  JSL.L CODE_FL_80887C                      ; $82D54A |
  JSL.L CODE_FL_808315                      ; $82D54E |
  TDC                                       ; $82D552 |
  STA.L $7E2C00                             ; $82D553 |
  LDA.B $48                                 ; $82D557 |
  ORA.W #$8000                              ; $82D559 |
  STA.B $48                                 ; $82D55C |
  STZ.W $1994                               ; $82D55E |
  STZ.W $1D60                               ; $82D561 |
  RTL                                       ; $82D564 |

CODE_FL_82D565:
  DEC.W $1CF8                               ; $82D565 |
  BPL CODE_82D577                           ; $82D568 |
  LDA.W #$0010                              ; $82D56A |
  STA.W $1CF8                               ; $82D56D |
  LDA.W #$0021                              ; $82D570 |
  JSL.L push_sound_queue                    ; $82D573 |

CODE_82D577:
  RTL                                       ; $82D577 |

  LDX.W #DATA_8883ED                        ; $82D578 |
  JSL.L sound_transfer_blocks               ; $82D57B |
  LDX.W #DATA_8883E5                        ; $82D57F |
  JSL.L sound_transfer_blocks               ; $82D582 |
  LDX.W #DATA_8883F7                        ; $82D586 |
  JSL.L sound_transfer_blocks               ; $82D589 |
  LDA.W #$00C0                              ; $82D58D |
  JSL.L CODE_FL_8AF606                      ; $82D590 |
  LDY.W #$8DF4                              ; $82D594 |
  LDA.W #$000C                              ; $82D597 |
  JSL.L CODE_FL_80C2C9                      ; $82D59A |
  LDY.W #$8E94                              ; $82D59E |
  LDA.W #$001A                              ; $82D5A1 |
  JSL.L CODE_FL_80C2C4                      ; $82D5A4 |
  LDX.W #$0DC0                              ; $82D5A8 |
  LDA.W #$8032                              ; $82D5AB |
  STA.B $18,X                               ; $82D5AE |
  STZ.B $2D,X                               ; $82D5B0 |
  STZ.B $31,X                               ; $82D5B2 |
  LDA.W #$0080                              ; $82D5B4 |
  STA.B $35,X                               ; $82D5B7 |
  LDA.W #$0800                              ; $82D5B9 |
  STA.B $10,X                               ; $82D5BC |
  JSL.L CODE_FL_82CE46                      ; $82D5BE |
  LDX.W #$0E20                              ; $82D5C2 |
  LDA.W #$8017                              ; $82D5C5 |
  STA.B $18,X                               ; $82D5C8 |
  LDX.W #$0E80                              ; $82D5CA |
  LDA.W #$C037                              ; $82D5CD |
  STA.B $18,X                               ; $82D5D0 |
  LDX.W #$1630                              ; $82D5D2 |
  LDA.W #$0002                              ; $82D5D5 |
  STA.B $18,X                               ; $82D5D8 |
  RTL                                       ; $82D5DA |

  LDY.W #$99A3                              ; $82D5DB |
  JSL.L CODE_FL_8AAF61                      ; $82D5DE |
  LDA.W #$0050                              ; $82D5E2 |
  JML.L CODE_FL_8AB11E                      ; $82D5E5 |

  LDA.W #$0033                              ; $82D5E9 |
  JSL.L CODE_FL_82D348                      ; $82D5EC |
  LDY.W #$927A                              ; $82D5F0 |
  LDA.W #$8E74                              ; $82D5F3 |
  JSL.L CODE_FL_82D181                      ; $82D5F6 |
  LDA.B $1A,X                               ; $82D5FA |
  PHX                                       ; $82D5FC |
  ASL A                                     ; $82D5FD |
  TAX                                       ; $82D5FE |
  LDA.L PTR16_82D609,X                      ; $82D5FF |
  PLX                                       ; $82D603 |
  STA.B $00                                 ; $82D604 |
  JMP.W ($0000)                             ; $82D606 |

PTR16_82D609:
  dw CODE_82D68B                            ; $82D609 |
  dw CODE_82D6C2                            ; $82D60B |
  dw CODE_82D6E3                            ; $82D60D |
  dw CODE_82D71F                            ; $82D60F |
  dw CODE_82D770                            ; $82D611 |
  dw CODE_82D7DF                            ; $82D613 |
  dw CODE_82D803                            ; $82D615 |
  dw CODE_82D82B                            ; $82D617 |
  dw CODE_82D82B                            ; $82D619 |
  dw CODE_82D82B                            ; $82D61B |
  dw CODE_82D82B                            ; $82D61D |
  dw CODE_82D852                            ; $82D61F |
  dw CODE_82D88C                            ; $82D621 |
  dw CODE_82D8B3                            ; $82D623 |
  dw CODE_82D8F3                            ; $82D625 |
  dw CODE_82D9D7                            ; $82D627 |
  dw CODE_82D9EB                            ; $82D629 |
  dw CODE_82DA16                            ; $82D62B |
  dw CODE_82DA55                            ; $82D62D |
  dw CODE_82DB23                            ; $82D62F |
  dw CODE_82DB2D                            ; $82D631 |
  dw CODE_82DA77                            ; $82D633 |
  dw CODE_82DA81                            ; $82D635 |
  dw CODE_82DAB3                            ; $82D637 |
  dw CODE_82D90F                            ; $82D639 |
  dw CODE_82D94F                            ; $82D63B |
  dw CODE_82D98E                            ; $82D63D |
  dw CODE_82D9BE                            ; $82D63F |
  dw CODE_82DB61                            ; $82D641 |
  dw CODE_82DB95                            ; $82D643 |
  dw CODE_82DBC8                            ; $82D645 |
  dw CODE_82DBF6                            ; $82D647 |
  dw CODE_82DC1C                            ; $82D649 |
  dw CODE_82DC7B                            ; $82D64B |
  dw CODE_82DC99                            ; $82D64D |
  dw CODE_JP_82DCC5                         ; $82D64F |
  dw CODE_82DCE2                            ; $82D651 |
  dw CODE_82DCFE                            ; $82D653 |
  dw CODE_82DD45                            ; $82D655 |
  dw CODE_82DD6D                            ; $82D657 |
  dw CODE_82DD75                            ; $82D659 |
  dw CODE_82DD90                            ; $82D65B |
  dw CODE_JP_82DDFB                         ; $82D65D |
  dw CODE_82DE16                            ; $82D65F |
  dw CODE_82DE56                            ; $82D661 |
  dw CODE_82DEA6                            ; $82D663 |
  dw CODE_82DED6                            ; $82D665 |
  dw CODE_82DF0E                            ; $82D667 |
  dw CODE_JP_82DF50                         ; $82D669 |
  dw CODE_82DF79                            ; $82D66B |
  dw CODE_82DFA2                            ; $82D66D |
  dw CODE_82DFB2                            ; $82D66F |
  dw CODE_JL_82A9F6                         ; $82D671 |
  dw CODE_82DFE3                            ; $82D673 |
  dw CODE_82DFFC                            ; $82D675 |
  dw CODE_82E040                            ; $82D677 |
  dw CODE_82E073                            ; $82D679 |
  dw CODE_82E088                            ; $82D67B |
  dw CODE_82E08B                            ; $82D67D |
  dw CODE_82E0AE                            ; $82D67F |
  dw CODE_82E0D7                            ; $82D681 |
  dw CODE_82E107                            ; $82D683 |
  dw CODE_82E123                            ; $82D685 |
  dw CODE_82E15E                            ; $82D687 |
  dw CODE_82E17D                            ; $82D689 |

CODE_82D68B:
  LDA.W #$0040                              ; $82D68B |
  STA.B $38,X                               ; $82D68E |
  LDY.W #$8B98                              ; $82D690 |
  JSL.L CODE_FL_82B81C                      ; $82D693 |
  LDA.W #$0001                              ; $82D697 |
  STA.B $5E,X                               ; $82D69A |
  LDA.W #$0100                              ; $82D69C |
  STA.B $2D,X                               ; $82D69F |
  LDA.W #$FF60                              ; $82D6A1 |
  STA.B $31,X                               ; $82D6A4 |
  LDA.W #$0400                              ; $82D6A6 |
  STA.B $35,X                               ; $82D6A9 |
  LDA.W #$EE00                              ; $82D6AB |
  STA.B $26,X                               ; $82D6AE |
  LDA.W #$0800                              ; $82D6B0 |
  STA.B $28,X                               ; $82D6B3 |
  LDA.W #$FC00                              ; $82D6B5 |
  STA.B $2A,X                               ; $82D6B8 |
  LDA.W #$01D0                              ; $82D6BA |
  STA.W $1FD4                               ; $82D6BD |
  BRA CODE_82D6DE                           ; $82D6C0 |

CODE_82D6C2:
  DEC.B $38,X                               ; $82D6C2 |
  BPL CODE_82D6E0                           ; $82D6C4 |
  LDA.W #$0001                              ; $82D6C6 |
  JSL.L CODE_FL_82D023                      ; $82D6C9 |
  JSL.L CODE_FL_82C8C4                      ; $82D6CD |
  LDA.W #$FFC0                              ; $82D6D1 |
  JSL.L CODE_FL_82CACA                      ; $82D6D4 |
  JSL.L CODE_FL_82C8F0                      ; $82D6D8 |
  BCS CODE_82D6E0                           ; $82D6DC |

CODE_82D6DE:
  INC.B $1A,X                               ; $82D6DE |

CODE_82D6E0:
  JMP.W CODE_FL_82CEC6                      ; $82D6E0 |

CODE_82D6E3:
  LDA.W #$0001                              ; $82D6E3 |
  JSL.L CODE_FL_82D03F                      ; $82D6E6 |
  LDY.W #$0100                              ; $82D6EA |
  LDA.W #$0020                              ; $82D6ED |
  JSL.L CODE_FL_82C8DF                      ; $82D6F0 |
  JSL.L CODE_FL_82CAD8                      ; $82D6F4 |
  BNE CODE_82D6E0                           ; $82D6F8 |
  LDA.W #$0003                              ; $82D6FA |
  LDY.W #$FF00                              ; $82D6FD |
  JSL.L CODE_FL_82D063                      ; $82D700 |
  LDA.W #$0060                              ; $82D704 |
  STA.B $38,X                               ; $82D707 |
  LDA.W #$0007                              ; $82D709 |
  JSL.L CODE_FL_82E1E3                      ; $82D70C |
  LDA.W #$8000                              ; $82D710 |
  STA.W $1C7C                               ; $82D713 |
  LDA.W #$0038                              ; $82D716 |
  JSL.L push_sound_queue                    ; $82D719 |
  BRA CODE_82D6DE                           ; $82D71D |

CODE_82D71F:
  LDA.W #$0590                              ; $82D71F |
  JSL.L CODE_FL_8CF9DB                      ; $82D722 |
  LDA.W #$8150                              ; $82D726 |
  BCC CODE_82D72E                           ; $82D729 |
  LDA.W #$8245                              ; $82D72B |

CODE_82D72E:
  JSL.L CODE_FL_809934                      ; $82D72E |
  BCC CODE_82D76F                           ; $82D732 |
  JSL.L CODE_FL_82E225                      ; $82D734 |
  LDA.W #$0590                              ; $82D738 |
  JSL.L CODE_FL_8CF9DB                      ; $82D73B |
  BEQ CODE_82D766                           ; $82D73F |
  LDA.W #$000A                              ; $82D741 |
  STA.B $1A,X                               ; $82D744 |
  STA.B $50,X                               ; $82D746 |
  LDA.W #$0080                              ; $82D748 |
  STA.B $44,X                               ; $82D74B |
  STZ.B $52,X                               ; $82D74D |
  LDA.W #$0080                              ; $82D74F |
  STA.B $4E,X                               ; $82D752 |
  LDA.W #$0000                              ; $82D754 |
  STA.W $1C5E                               ; $82D757 |
  STA.W $1C60                               ; $82D75A |
  STZ.W $1C6A                               ; $82D75D |
  STZ.W $1C24                               ; $82D760 |
  JMP.W CODE_JP_82D837                      ; $82D763 |

CODE_82D766:
  LDA.W #$0010                              ; $82D766 |
  STA.B $38,X                               ; $82D769 |
  STZ.B $3A,X                               ; $82D76B |
  INC.B $1A,X                               ; $82D76D |

CODE_82D76F:
  RTL                                       ; $82D76F |

CODE_82D770:
  DEC.B $38,X                               ; $82D770 |
  BPL CODE_82D7DC                           ; $82D772 |
  JSL.L CODE_FL_82C8C0                      ; $82D774 |
  CMP.W #$0251                              ; $82D778 |
  BPL CODE_82D796                           ; $82D77B |
  JSL.L CODE_FL_82CAD2                      ; $82D77D |
  BNE CODE_82D796                           ; $82D781 |
  LDA.B $3A,X                               ; $82D783 |
  BNE CODE_82D796                           ; $82D785 |
  INC.B $3A,X                               ; $82D787 |
  LDA.W #$8000                              ; $82D789 |
  STA.W $1C7C                               ; $82D78C |
  LDA.W #$0038                              ; $82D78F |
  JSL.L push_sound_queue                    ; $82D792 |

CODE_82D796:
  LDA.W #$00D8                              ; $82D796 |
  LDY.B $35,X                               ; $82D799 |
  CPY.W #$0240                              ; $82D79B |
  BEQ CODE_82D7C0                           ; $82D79E |
  LDA.W #$00F0                              ; $82D7A0 |
  CPY.W #$0228                              ; $82D7A3 |
  BEQ CODE_82D7C0                           ; $82D7A6 |
  LDA.W #$0108                              ; $82D7A8 |
  CPY.W #$0210                              ; $82D7AB |
  BEQ CODE_82D7C0                           ; $82D7AE |
  LDA.W #$0000                              ; $82D7B0 |
  CPY.W #$01F8                              ; $82D7B3 |
  BEQ CODE_82D7C0                           ; $82D7B6 |
  LDA.W #$0048                              ; $82D7B8 |
  CPY.W #$01A0                              ; $82D7BB |
  BNE CODE_82D7C4                           ; $82D7BE |

CODE_82D7C0:
  JSL.L CODE_FL_8AF606                      ; $82D7C0 |

CODE_82D7C4:
  LDA.B $35,X                               ; $82D7C4 |
  CMP.W #$0250                              ; $82D7C6 |
  BNE CODE_82D7D0                           ; $82D7C9 |
  LDY.W #$F600                              ; $82D7CB |
  STY.B $28,X                               ; $82D7CE |

CODE_82D7D0:
  CMP.W #$00C0                              ; $82D7D0 |
  BPL CODE_82D7DC                           ; $82D7D3 |
  LDA.W #$0020                              ; $82D7D5 |
  STA.B $38,X                               ; $82D7D8 |
  INC.B $1A,X                               ; $82D7DA |

CODE_82D7DC:
  JMP.W CODE_FL_82CEC6                      ; $82D7DC |

CODE_82D7DF:
  DEC.B $38,X                               ; $82D7DF |
  BPL CODE_82D800                           ; $82D7E1 |
  LDA.W #$0006                              ; $82D7E3 |
  STA.W $1C5E                               ; $82D7E6 |
  STA.W $1C60                               ; $82D7E9 |
  LDA.W #$0030                              ; $82D7EC |
  JSL.L CODE_FL_8AF606                      ; $82D7EF |
  LDA.W #$4035                              ; $82D7F3 |
  STA.W $0FB8                               ; $82D7F6 |
  LDA.W #$0100                              ; $82D7F9 |
  STA.B $38,X                               ; $82D7FC |
  INC.B $1A,X                               ; $82D7FE |

CODE_82D800:
  JMP.W CODE_FL_82CEC6                      ; $82D800 |

CODE_82D803:
  DEC.B $38,X                               ; $82D803 |
  BPL CODE_82D829                           ; $82D805 |
  LDA.W #$0018                              ; $82D807 |
  STA.B $1A,X                               ; $82D80A |
  STA.B $50,X                               ; $82D80C |
  LDA.W #$0080                              ; $82D80E |
  STA.B $44,X                               ; $82D811 |
  STZ.B $52,X                               ; $82D813 |
  LDA.W #$0080                              ; $82D815 |
  STA.B $4E,X                               ; $82D818 |
  LDA.W #$0000                              ; $82D81A |
  STA.W $1C5E                               ; $82D81D |
  STA.W $1C60                               ; $82D820 |
  STZ.W $1C6A                               ; $82D823 |
  STZ.W $1C24                               ; $82D826 |

CODE_82D829:
  BRA CODE_82D800                           ; $82D829 |

CODE_82D82B:
  LDY.W #$941A                              ; $82D82B |
  LDA.W #$0008                              ; $82D82E |
  JSL.L CODE_FL_82D210                      ; $82D831 |
  BRA CODE_82D839                           ; $82D835 |

CODE_JP_82D837:
  STZ.B $1E,X                               ; $82D837 |

CODE_82D839:
  LDA.W #$F600                              ; $82D839 |
  STA.B $28,X                               ; $82D83C |
  LDA.W #$0003                              ; $82D83E |
  STA.B $5E,X                               ; $82D841 |
  LDY.W #$8BA4                              ; $82D843 |
  JSL.L CODE_FL_82B81C                      ; $82D846 |
  LDA.W #$000B                              ; $82D84A |
  STA.B $1A,X                               ; $82D84D |
  JMP.W CODE_FL_82CEC6                      ; $82D84F |

CODE_82D852:
  LDA.W #$0008                              ; $82D852 |
  JSL.L CODE_FL_82D219                      ; $82D855 |
  LDA.W #$0020                              ; $82D859 |
  STA.B $06                                 ; $82D85C |
  LDY.W #$0800                              ; $82D85E |
  TDC                                       ; $82D861 |
  JSL.L CODE_FL_82C951                      ; $82D862 |
  LDA.W #$0170                              ; $82D866 |
  LDY.W #$0500                              ; $82D869 |
  JSL.L CODE_FL_82CB77                      ; $82D86C |
  LDA.W #$FFC0                              ; $82D870 |
  JSL.L CODE_FL_82CAE0                      ; $82D873 |
  BNE CODE_JP_82D87B                        ; $82D877 |
  INC.B $1A,X                               ; $82D879 |

CODE_JP_82D87B:
  LDA.W #$0004                              ; $82D87B |
  JSL.L CODE_FL_82D03F                      ; $82D87E |
  LDA.W #$0033                              ; $82D882 |
  JSL.L CODE_FL_82B42F                      ; $82D885 |
  JMP.W CODE_FL_82CEC6                      ; $82D889 |

CODE_82D88C:
  LDY.W #$0300                              ; $82D88C |
  LDA.W #$FFC0                              ; $82D88F |
  JSL.L CODE_FL_82C9A6                      ; $82D892 |
  LDA.W #$0020                              ; $82D896 |
  STA.B $06                                 ; $82D899 |
  LDY.W #$0800                              ; $82D89B |
  TDC                                       ; $82D89E |
  JSL.L CODE_FL_82C951                      ; $82D89F |
  LDA.W #$0170                              ; $82D8A3 |
  LDY.W #$0200                              ; $82D8A6 |
  JSL.L CODE_FL_82CB77                      ; $82D8A9 |
  BNE CODE_JP_82D87B                        ; $82D8AD |
  INC.B $1A,X                               ; $82D8AF |
  BRA CODE_JP_82D87B                        ; $82D8B1 |

CODE_82D8B3:
  DEC.B $44,X                               ; $82D8B3 |
  BPL CODE_82D8C3                           ; $82D8B5 |
  LDA.W #$0080                              ; $82D8B7 |
  STA.B $44,X                               ; $82D8BA |
  LDA.W #$0018                              ; $82D8BC |
  STA.B $1A,X                               ; $82D8BF |
  STA.B $50,X                               ; $82D8C1 |

CODE_82D8C3:
  DEC.B $4E,X                               ; $82D8C3 |
  BPL CODE_JP_82D8CC                        ; $82D8C5 |
  LDA.W #$000E                              ; $82D8C7 |
  STA.B $1A,X                               ; $82D8CA |

CODE_JP_82D8CC:
  LDA.W #$0020                              ; $82D8CC |
  STA.B $06                                 ; $82D8CF |
  LDY.W #$0800                              ; $82D8D1 |
  TDC                                       ; $82D8D4 |
  JSL.L CODE_FL_82C951                      ; $82D8D5 |
  LDY.W #$0400                              ; $82D8D9 |
  LDA.W #$FFC0                              ; $82D8DC |
  JSL.L CODE_FL_82C9A6                      ; $82D8DF |

CODE_JP_82D8E3:
  LDA.B $27,X                               ; $82D8E3 |
  JSL.L CODE_FL_82D02E                      ; $82D8E5 |
  LDA.W #$0033                              ; $82D8E9 |
  JSL.L CODE_FL_82B42F                      ; $82D8EC |
  JMP.W CODE_FL_82CEC6                      ; $82D8F0 |

CODE_82D8F3:
  LDA.B $52,X                               ; $82D8F3 |
  INC A                                     ; $82D8F5 |
  AND.W #$0007                              ; $82D8F6 |
  STA.B $52,X                               ; $82D8F9 |
  ASL A                                     ; $82D8FB |
  ASL A                                     ; $82D8FC |
  TAY                                       ; $82D8FD |
  LDA.W CODE_0093BA,Y                       ; $82D8FE |
  STA.B $00                                 ; $82D901 |
  LDA.W LOOSE_OP_0093BC,Y                   ; $82D903 |
  STA.W $004E,X                             ; $82D906 |
  JMP.W ($0000)                             ; $82D909 |

  JMP.W CODE_JP_82D837                      ; $82D90C |

CODE_82D90F:
  LDA.W $1C92                               ; $82D90F |
  CMP.W #$00C0                              ; $82D912 |
  BNE CODE_JP_82D926                        ; $82D915 |
  LDY.W #$9430                              ; $82D917 |
  LDA.W #$0008                              ; $82D91A |
  JSL.L CODE_FL_82D210                      ; $82D91D |
  LDA.W #$F800                              ; $82D921 |
  BRA CODE_82D932                           ; $82D924 |

CODE_JP_82D926:
  LDA.W #$0000                              ; $82D926 |
  JSL.L CODE_FL_8AF606                      ; $82D929 |
  STZ.B $1E,X                               ; $82D92D |
  LDA.W #$FD00                              ; $82D92F |

CODE_82D932:
  STA.B $28,X                               ; $82D932 |
  LDA.W #$0006                              ; $82D934 |
  STA.B $5E,X                               ; $82D937 |
  LDY.W #$8B98                              ; $82D939 |
  JSL.L CODE_FL_82B81C                      ; $82D93C |
  JSL.L CODE_FL_82CFF3                      ; $82D940 |
  LDA.W #$0019                              ; $82D944 |
  STA.B $1A,X                               ; $82D947 |
  STZ.W $1CF0                               ; $82D949 |
  JMP.W CODE_FL_82CEC6                      ; $82D94C |

CODE_82D94F:
  LDA.W #$0006                              ; $82D94F |
  JSL.L CODE_FL_82D219                      ; $82D952 |
  JSL.L CODE_FL_82CAD2                      ; $82D956 |
  BNE CODE_82D96B                           ; $82D95A |
  LDA.W $1CF0                               ; $82D95C |
  BNE CODE_82D96B                           ; $82D95F |
  INC.W $1CF0                               ; $82D961 |
  LDA.W #$0038                              ; $82D964 |
  JSL.L push_sound_queue                    ; $82D967 |

CODE_82D96B:
  TDC                                       ; $82D96B |
  LDY.W #$0100                              ; $82D96C |
  JSL.L CODE_FL_82CB1D                      ; $82D96F |
  LDA.W #$00C0                              ; $82D973 |
  LDY.W #$0600                              ; $82D976 |
  JSL.L CODE_FL_82CB77                      ; $82D979 |
  BEQ CODE_82D982                           ; $82D97D |
  JMP.W CODE_JP_82D87B                      ; $82D97F |

CODE_82D982:
  LDA.B $31,X                               ; $82D982 |
  BEQ CODE_82D989                           ; $82D984 |
  JMP.W CODE_JP_82D87B                      ; $82D986 |

CODE_82D989:
  INC.B $1A,X                               ; $82D989 |
  JMP.W CODE_JP_82D87B                      ; $82D98B |

CODE_82D98E:
  DEC.B $44,X                               ; $82D98E |
  BPL CODE_82D99E                           ; $82D990 |
  LDA.W #$0080                              ; $82D992 |
  STA.B $44,X                               ; $82D995 |
  LDA.W #$000A                              ; $82D997 |
  STA.B $1A,X                               ; $82D99A |
  STA.B $50,X                               ; $82D99C |

CODE_82D99E:
  LDA.W #$0160                              ; $82D99E |
  STA.B $06                                 ; $82D9A1 |
  LDY.W #$1800                              ; $82D9A3 |
  TDC                                       ; $82D9A6 |
  JSL.L CODE_FL_82C951                      ; $82D9A7 |
  JSL.L CODE_FL_82B8D1                      ; $82D9AB |
  DEC.B $4E,X                               ; $82D9AF |
  BMI CODE_82D9B6                           ; $82D9B1 |
  JMP.W CODE_JP_82D8E3                      ; $82D9B3 |

CODE_82D9B6:
  LDA.W #$001B                              ; $82D9B6 |
  STA.B $1A,X                               ; $82D9B9 |
  JMP.W CODE_JP_82D8E3                      ; $82D9BB |

CODE_82D9BE:
  LDA.B $52,X                               ; $82D9BE |
  INC A                                     ; $82D9C0 |
  AND.W #$0007                              ; $82D9C1 |
  STA.B $52,X                               ; $82D9C4 |
  ASL A                                     ; $82D9C6 |
  ASL A                                     ; $82D9C7 |
  TAY                                       ; $82D9C8 |
  LDA.W CODE_0093DA,Y                       ; $82D9C9 |
  STA.B $00                                 ; $82D9CC |
  LDA.W LOOSE_OP_0093DC,Y                   ; $82D9CE |
  STA.W $004E,X                             ; $82D9D1 |
  JMP.W ($0000)                             ; $82D9D4 |

CODE_82D9D7:
  LDA.W #$1000                              ; $82D9D7 |
  STA.B $2A,X                               ; $82D9DA |
  LDA.W #$0010                              ; $82D9DC |
  STA.B $1A,X                               ; $82D9DF |
  LDY.W #$0800                              ; $82D9E1 |
  JSL.L CODE_FL_82C94B                      ; $82D9E4 |
  JMP.W CODE_JP_82D8E3                      ; $82D9E8 |

CODE_82D9EB:
  LDY.W #$FF10                              ; $82D9EB |
  LDA.W #$00F0                              ; $82D9EE |
  JSL.L CODE_FL_82CC05                      ; $82D9F1 |
  JSL.L CODE_FL_82C913                      ; $82D9F5 |
  BCS CODE_82DA13                           ; $82D9F9 |
  LDA.W #$0035                              ; $82D9FB |
  JSL.L push_sound_queue                    ; $82D9FE |
  LDA.W #$0005                              ; $82DA02 |
  LDY.W #$FFA0                              ; $82DA05 |
  JSL.L CODE_FL_82D063                      ; $82DA08 |
  LDA.W #$0040                              ; $82DA0C |
  STA.B $58,X                               ; $82DA0F |
  INC.B $1A,X                               ; $82DA11 |

CODE_82DA13:
  JMP.W CODE_JP_82D8E3                      ; $82DA13 |

CODE_82DA16:
  JSL.L CODE_FL_82C8BC                      ; $82DA16 |
  CMP.W #$0048                              ; $82DA1A |
  BPL CODE_82DA2F                           ; $82DA1D |
  JSL.L CODE_FL_82CA97                      ; $82DA1F |
  LDA.W #$F800                              ; $82DA23 |
  STA.B $28,X                               ; $82DA26 |
  LDA.W #$0008                              ; $82DA28 |
  STA.B $58,X                               ; $82DA2B |
  INC.B $1A,X                               ; $82DA2D |

CODE_82DA2F:
  LDA.W #$0005                              ; $82DA2F |
  JSL.L CODE_FL_82D023                      ; $82DA32 |
  JSL.L CODE_FL_82B45B                      ; $82DA36 |
  LDA.B $5C,X                               ; $82DA3A |
  AND.W #$00FF                              ; $82DA3C |
  CMP.W #$000F                              ; $82DA3F |
  BNE CODE_82DA4B                           ; $82DA42 |
  LDY.W #$8BA4                              ; $82DA44 |
  JSL.L CODE_FL_82B81C                      ; $82DA47 |

CODE_82DA4B:
  LDA.W #$0033                              ; $82DA4B |
  JSL.L CODE_FL_82B840                      ; $82DA4E |
  JMP.W CODE_FL_82CEC6                      ; $82DA52 |

CODE_82DA55:
  JSL.L CODE_FL_82C8F0                      ; $82DA55 |
  JSL.L CODE_FL_82C913                      ; $82DA59 |
  JSL.L CODE_FL_82CAE0                      ; $82DA5D |
  BNE CODE_82DA6D                           ; $82DA61 |
  LDA.W #$0038                              ; $82DA63 |
  JSL.L push_sound_queue                    ; $82DA66 |
  JMP.W CODE_JP_82D837                      ; $82DA6A |

CODE_82DA6D:
  LDA.W #$0033                              ; $82DA6D |
  JSL.L CODE_FL_82B42F                      ; $82DA70 |
  JMP.W CODE_FL_82CEC6                      ; $82DA74 |

CODE_82DA77:
  LDA.W #$0060                              ; $82DA77 |
  STA.B $38,X                               ; $82DA7A |
  LDA.W #$0016                              ; $82DA7C |
  STA.B $1A,X                               ; $82DA7F |

CODE_82DA81:
  LDY.W #$0400                              ; $82DA81 |
  LDA.W #$FFC0                              ; $82DA84 |
  JSL.L CODE_FL_82C9A6                      ; $82DA87 |
  JSL.L CODE_FL_82D1BF                      ; $82DA8B |
  DEC.B $38,X                               ; $82DA8F |
  BPL CODE_82DAB0                           ; $82DA91 |
  LDA.B $85                                 ; $82DA93 |
  AND.W #$3F00                              ; $82DA95 |
  SEC                                       ; $82DA98 |
  SBC.W #$2000                              ; $82DA99 |
  STA.B $26,X                               ; $82DA9C |
  LDA.B $86                                 ; $82DA9E |
  AND.W #$3F00                              ; $82DAA0 |
  SEC                                       ; $82DAA3 |
  SBC.W #$2000                              ; $82DAA4 |
  STA.B $28,X                               ; $82DAA7 |
  LDA.W #$0080                              ; $82DAA9 |
  STA.B $38,X                               ; $82DAAC |
  INC.B $1A,X                               ; $82DAAE |

CODE_82DAB0:
  JMP.W CODE_JP_82D87B                      ; $82DAB0 |

CODE_82DAB3:
  LDA.B $38,X                               ; $82DAB3 |
  AND.W #$0007                              ; $82DAB5 |
  BNE CODE_82DAC9                           ; $82DAB8 |
  LDA.W #$0036                              ; $82DABA |
  JSL.L CODE_FL_82CD2F                      ; $82DABD |
  BCC CODE_82DAC9                           ; $82DAC1 |
  LDA.W #$000C                              ; $82DAC3 |
  STA.W $003C,Y                             ; $82DAC6 |

CODE_82DAC9:
  LDA.B $09,X                               ; $82DAC9 |
  CMP.W #$00E0                              ; $82DACB |
  BMI CODE_82DADC                           ; $82DACE |
  LDY.W #$E000                              ; $82DAD0 |
  STY.B $26,X                               ; $82DAD3 |
  LDA.W #$0037                              ; $82DAD5 |
  JSL.L push_sound_queue                    ; $82DAD8 |

CODE_82DADC:
  LDA.B $09,X                               ; $82DADC |
  CMP.W #$0020                              ; $82DADE |
  BPL CODE_82DAEF                           ; $82DAE1 |
  LDY.W #$2000                              ; $82DAE3 |
  STY.B $26,X                               ; $82DAE6 |
  LDA.W #$0037                              ; $82DAE8 |
  JSL.L push_sound_queue                    ; $82DAEB |

CODE_82DAEF:
  LDA.B $31,X                               ; $82DAEF |
  CMP.W #$0040                              ; $82DAF1 |
  BMI CODE_82DB02                           ; $82DAF4 |
  LDY.W #$E000                              ; $82DAF6 |
  STY.B $28,X                               ; $82DAF9 |
  LDA.W #$0037                              ; $82DAFB |
  JSL.L push_sound_queue                    ; $82DAFE |

CODE_82DB02:
  LDA.B $31,X                               ; $82DB02 |
  CMP.W #$FF80                              ; $82DB04 |
  BPL CODE_82DB15                           ; $82DB07 |
  LDY.W #$2000                              ; $82DB09 |
  STY.B $28,X                               ; $82DB0C |
  LDA.W #$0037                              ; $82DB0E |
  JSL.L push_sound_queue                    ; $82DB11 |

CODE_82DB15:
  JSL.L CODE_FL_82C897                      ; $82DB15 |
  DEC.B $38,X                               ; $82DB19 |
  BPL CODE_82DB20                           ; $82DB1B |
  JMP.W CODE_JP_82D837                      ; $82DB1D |

CODE_82DB20:
  JMP.W CODE_JP_82D8E3                      ; $82DB20 |

CODE_82DB23:
  LDA.W #$0060                              ; $82DB23 |
  STA.B $38,X                               ; $82DB26 |
  LDA.W #$0014                              ; $82DB28 |
  STA.B $1A,X                               ; $82DB2B |

CODE_82DB2D:
  LDA.B $38,X                               ; $82DB2D |
  AND.W #$000F                              ; $82DB2F |
  BNE CODE_82DB50                           ; $82DB32 |
  LDA.W #$0036                              ; $82DB34 |
  JSL.L CODE_FL_82CD2F                      ; $82DB37 |
  BCC CODE_82DB50                           ; $82DB3B |
  LDA.W #$8368                              ; $82DB3D |
  STA.W $0038,Y                             ; $82DB40 |
  LDA.W #$000C                              ; $82DB43 |
  STA.W $003C,Y                             ; $82DB46 |
  LDA.W #$002C                              ; $82DB49 |
  JSL.L CODE_FL_8089BD                      ; $82DB4C |

CODE_82DB50:
  DEC.B $38,X                               ; $82DB50 |
  BPL CODE_82DB57                           ; $82DB52 |
  JMP.W CODE_JP_82D837                      ; $82DB54 |

CODE_82DB57:
  JMP.W CODE_JP_82D8CC                      ; $82DB57 |

  LDA.W #$0010                              ; $82DB5A |
  STA.B $3A,X                               ; $82DB5D |
  BRA CODE_82DB63                           ; $82DB5F |

CODE_82DB61:
  STZ.B $3A,X                               ; $82DB61 |

CODE_82DB63:
  LDA.B $26,X                               ; $82DB63 |
  BPL CODE_82DB6B                           ; $82DB65 |
  EOR.W #$FFFF                              ; $82DB67 |
  INC A                                     ; $82DB6A |

CODE_82DB6B:
  CMP.W #$0400                              ; $82DB6B |
  BPL CODE_82DB7A                           ; $82DB6E |
  LDA.W #$FB00                              ; $82DB70 |
  STA.B $28,X                               ; $82DB73 |
  LDA.W #$FC00                              ; $82DB75 |
  STA.B $26,X                               ; $82DB78 |

CODE_82DB7A:
  LDA.W #$0030                              ; $82DB7A |
  JSL.L CODE_FL_8AF606                      ; $82DB7D |
  JSL.L CODE_FL_82CFF3                      ; $82DB81 |
  BIT.B $26,X                               ; $82DB85 |
  BMI CODE_82DB8D                           ; $82DB87 |
  JSL.L CODE_FL_82CFFD                      ; $82DB89 |

CODE_82DB8D:
  STZ.W $1CF0                               ; $82DB8D |
  LDA.W #$001D                              ; $82DB90 |
  STA.B $1A,X                               ; $82DB93 |

CODE_82DB95:
  JSL.L CODE_FL_82CAD2                      ; $82DB95 |
  BNE CODE_82DBAA                           ; $82DB99 |
  LDA.W $1CF0                               ; $82DB9B |
  BNE CODE_82DBAA                           ; $82DB9E |
  INC.W $1CF0                               ; $82DBA0 |
  LDA.W #$0038                              ; $82DBA3 |
  JSL.L push_sound_queue                    ; $82DBA6 |

CODE_82DBAA:
  JSL.L CODE_FL_82C87C                      ; $82DBAA |
  LDA.B $09,X                               ; $82DBAE |
  CMP.W #$0100                              ; $82DBB0 |
  BCC CODE_82DBC5                           ; $82DBB3 |
  LDA.W #$FA00                              ; $82DBB5 |
  STA.B $2A,X                               ; $82DBB8 |
  STZ.B $26,X                               ; $82DBBA |
  STZ.B $28,X                               ; $82DBBC |
  STZ.B $31,X                               ; $82DBBE |
  STZ.W $1FD4                               ; $82DBC0 |
  INC.B $1A,X                               ; $82DBC3 |

CODE_82DBC5:
  JMP.W CODE_JP_82D8E3                      ; $82DBC5 |

CODE_82DBC8:
  JSL.L CODE_FL_82C8C4                      ; $82DBC8 |
  CMP.W #$0048                              ; $82DBCC |
  BPL CODE_82DBF3                           ; $82DBCF |
  LDA.W #$0000                              ; $82DBD1 |
  JSL.L CODE_FL_8AF606                      ; $82DBD4 |
  STZ.B $2D,X                               ; $82DBD8 |
  LDA.W #$0050                              ; $82DBDA |
  STA.B $31,X                               ; $82DBDD |
  LDA.W #$FCC0                              ; $82DBDF |
  STA.B $28,X                               ; $82DBE2 |
  LDA.W #$0010                              ; $82DBE4 |
  STA.B $38,X                               ; $82DBE7 |
  STZ.W $1FD4                               ; $82DBE9 |
  LDA.W #$0048                              ; $82DBEC |
  STA.B $35,X                               ; $82DBEF |
  INC.B $1A,X                               ; $82DBF1 |

CODE_82DBF3:
  JMP.W CODE_FL_82CEC6                      ; $82DBF3 |

CODE_82DBF6:
  JSL.L CODE_FL_82C89B                      ; $82DBF6 |
  DEC.B $38,X                               ; $82DBFA |
  BPL CODE_82DC19                           ; $82DBFC |
  LDA.W #$0008                              ; $82DBFE |
  STA.B $38,X                               ; $82DC01 |
  LDA.W #$FA00                              ; $82DC03 |
  STA.B $2A,X                               ; $82DC06 |
  LDA.W #$0080                              ; $82DC08 |
  STA.B $28,X                               ; $82DC0B |
  LDY.W #$9446                              ; $82DC0D |
  LDA.W #$0002                              ; $82DC10 |
  JSL.L CODE_FL_82D210                      ; $82DC13 |
  INC.B $1A,X                               ; $82DC17 |

CODE_82DC19:
  JMP.W CODE_FL_82CEC6                      ; $82DC19 |

CODE_82DC1C:
  LDA.W #$0002                              ; $82DC1C |
  JSL.L CODE_FL_82D219                      ; $82DC1F |
  BCS CODE_82DC67                           ; $82DC23 |
  JSL.L CODE_FL_82C8BC                      ; $82DC25 |
  DEC.B $38,X                               ; $82DC29 |
  LDA.B $38,X                               ; $82DC2B |
  BEQ CODE_82DC52                           ; $82DC2D |
  CMP.W #$0004                              ; $82DC2F |
  BNE CODE_82DC67                           ; $82DC32 |
  LDY.W #$0F40                              ; $82DC34 |
  LDA.W #$8033                              ; $82DC37 |
  JSL.L CODE_FL_82CD78                      ; $82DC3A |
  TDC                                       ; $82DC3E |
  STA.W $0038,Y                             ; $82DC3F |
  LDA.W $0031,Y                             ; $82DC42 |
  SEC                                       ; $82DC45 |
  SBC.W #$0020                              ; $82DC46 |
  STA.W $0031,Y                             ; $82DC49 |
  JSL.L CODE_FL_82CA9D                      ; $82DC4C |
  BRA CODE_82DC67                           ; $82DC50 |

CODE_82DC52:
  LDA.B $3A,X                               ; $82DC52 |
  BNE CODE_82DC71                           ; $82DC54 |
  LDA.W #$0020                              ; $82DC56 |
  STA.B $38,X                               ; $82DC59 |
  LDA.W #$0200                              ; $82DC5B |
  STA.B $2A,X                               ; $82DC5E |
  LDA.W #$FA00                              ; $82DC60 |
  STA.B $28,X                               ; $82DC63 |
  INC.B $1A,X                               ; $82DC65 |

CODE_82DC67:
  LDA.W #$0033                              ; $82DC67 |
  JSL.L CODE_FL_82B42F                      ; $82DC6A |
  JMP.W CODE_FL_82CEC6                      ; $82DC6E |

CODE_82DC71:
  JSL.L CODE_FL_82CA8A                      ; $82DC71 |
  INC.B $1A,X                               ; $82DC75 |
  INC.B $1A,X                               ; $82DC77 |
  BRA CODE_82DC67                           ; $82DC79 |

CODE_82DC7B:
  DEC.B $38,X                               ; $82DC7B |
  BMI CODE_82DC82                           ; $82DC7D |
  JMP.W CODE_JP_82D8E3                      ; $82DC7F |

CODE_82DC82:
  JSL.L CODE_FL_82C87C                      ; $82DC82 |
  JSL.L CODE_FL_82CAD2                      ; $82DC86 |
  BEQ CODE_82DC8F                           ; $82DC8A |
  JMP.W CODE_JP_82D8E3                      ; $82DC8C |

CODE_82DC8F:
  LDA.W #$0038                              ; $82DC8F |
  JSL.L push_sound_queue                    ; $82DC92 |
  JMP.W CODE_JP_82D926                      ; $82DC96 |

CODE_82DC99:
  DEC.B $3A,X                               ; $82DC99 |
  DEC.B $3A,X                               ; $82DC9B |
  LDY.B $3A,X                               ; $82DC9D |
  LDA.W LOOSE_OP_0093FE,Y                   ; $82DC9F |
  STA.B $26,X                               ; $82DCA2 |
  LDA.W #$0008                              ; $82DCA4 |
  STA.B $38,X                               ; $82DCA7 |
  LDA.W #$FA00                              ; $82DCA9 |
  STA.B $2A,X                               ; $82DCAC |
  LDA.W #$FFE0                              ; $82DCAE |
  STA.B $28,X                               ; $82DCB1 |
  LDY.W #$9446                              ; $82DCB3 |
  LDA.W #$0002                              ; $82DCB6 |
  JSL.L CODE_FL_82D210                      ; $82DCB9 |
  LDA.W #$0020                              ; $82DCBD |
  STA.B $1A,X                               ; $82DCC0 |
  JMP.W CODE_JP_82D8E3                      ; $82DCC2 |

CODE_JP_82DCC5:
  LDA.W #$0024                              ; $82DCC5 |
  STA.B $1A,X                               ; $82DCC8 |

CODE_JP_82DCCA:
  LDA.W #$0018                              ; $82DCCA |
  JSL.L CODE_FL_8AF606                      ; $82DCCD |
  JSL.L CODE_FL_82CFF3                      ; $82DCD1 |
  LDA.W #$0004                              ; $82DCD5 |
  LDY.W #$FFC0                              ; $82DCD8 |
  JSL.L CODE_FL_82D063                      ; $82DCDB |
  JMP.W CODE_JP_82D8E3                      ; $82DCDF |

CODE_82DCE2:
  JSL.L CODE_FL_82B8D1                      ; $82DCE2 |
  JSL.L CODE_FL_82C8BC                      ; $82DCE6 |
  CMP.W #$0050                              ; $82DCEA |
  BMI CODE_82DCF2                           ; $82DCED |
  JMP.W CODE_JP_82D8E3                      ; $82DCEF |

CODE_82DCF2:
  LDY.W #$945E                              ; $82DCF2 |
  LDA.W #$0008                              ; $82DCF5 |
  JSL.L CODE_FL_82D210                      ; $82DCF8 |
  INC.B $1A,X                               ; $82DCFC |

CODE_82DCFE:
  LDA.W #$0004                              ; $82DCFE |
  JSL.L CODE_FL_82D219                      ; $82DD01 |
  BCS CODE_82DD42                           ; $82DD05 |
  LDY.W #$0F40                              ; $82DD07 |
  LDA.W #$8033                              ; $82DD0A |
  JSL.L CODE_FL_82CD78                      ; $82DD0D |
  LDA.W #$0002                              ; $82DD11 |
  STA.W $0038,Y                             ; $82DD14 |
  LDA.W $1FC6                               ; $82DD17 |
  ORA.W #$0001                              ; $82DD1A |
  STA.W $1FC6                               ; $82DD1D |
  LDA.W #$0048                              ; $82DD20 |
  JSL.L CODE_FL_8AF606                      ; $82DD23 |
  LDA.W #$0010                              ; $82DD27 |
  STA.B $38,X                               ; $82DD2A |
  LDY.W #$9468                              ; $82DD2C |
  LDA.W #$0008                              ; $82DD2F |
  JSL.L CODE_FL_82D210                      ; $82DD32 |
  LDA.W #$0200                              ; $82DD36 |
  STA.B $2A,X                               ; $82DD39 |
  LDA.W #$FE00                              ; $82DD3B |
  STA.B $28,X                               ; $82DD3E |
  INC.B $1A,X                               ; $82DD40 |

CODE_82DD42:
  JMP.W CODE_JP_82D87B                      ; $82DD42 |

CODE_82DD45:
  JSL.L CODE_FL_82B8D1                      ; $82DD45 |
  DEC.B $38,X                               ; $82DD49 |
  BPL CODE_82DD6A                           ; $82DD4B |
  LDA.W #$0004                              ; $82DD4D |
  JSL.L CODE_FL_82D219                      ; $82DD50 |
  BCS CODE_82DD6A                           ; $82DD54 |
  JSL.L CODE_FL_82C8C4                      ; $82DD56 |
  JSL.L CODE_FL_82CAD2                      ; $82DD5A |
  BNE CODE_82DD6A                           ; $82DD5E |
  LDA.W #$0038                              ; $82DD60 |
  JSL.L push_sound_queue                    ; $82DD63 |
  JMP.W CODE_JP_82D926                      ; $82DD67 |

CODE_82DD6A:
  JMP.W CODE_JP_82D87B                      ; $82DD6A |

CODE_82DD6D:
  LDA.W #$0028                              ; $82DD6D |
  STA.B $1A,X                               ; $82DD70 |
  JMP.W CODE_JP_82DCCA                      ; $82DD72 |

CODE_82DD75:
  JSL.L CODE_FL_82B8D1                      ; $82DD75 |
  JSL.L CODE_FL_82C8BC                      ; $82DD79 |
  CMP.W #$0050                              ; $82DD7D |
  BMI CODE_82DD85                           ; $82DD80 |
  JMP.W CODE_JP_82D8E3                      ; $82DD82 |

CODE_82DD85:
  STZ.B $1E,X                               ; $82DD85 |
  STZ.B $24,X                               ; $82DD87 |
  LDA.W #$000A                              ; $82DD89 |
  STA.B $22,X                               ; $82DD8C |
  INC.B $1A,X                               ; $82DD8E |

CODE_82DD90:
  LDA.W $0F9C                               ; $82DD90 |
  BEQ CODE_82DD97                           ; $82DD93 |
  INC.B $35,X                               ; $82DD95 |

CODE_82DD97:
  DEC.B $1E,X                               ; $82DD97 |
  BPL CODE_82DDE6                           ; $82DD99 |
  LDA.W #$0003                              ; $82DD9B |
  STA.B $1E,X                               ; $82DD9E |
  LDY.B $24,X                               ; $82DDA0 |
  LDA.W LOOSE_OP_009486,Y                   ; $82DDA2 |
  BPL CODE_82DDAE                           ; $82DDA5 |
  DEC.B $22,X                               ; $82DDA7 |
  BEQ CODE_82DDE9                           ; $82DDA9 |
  LDY.W #$0000                              ; $82DDAB |

CODE_82DDAE:
  LDA.W $1FC6                               ; $82DDAE |
  AND.W #$00FE                              ; $82DDB1 |
  ORA.W LOOSE_OP_009488,Y                   ; $82DDB4 |
  STA.W $1FC6                               ; $82DDB7 |
  LDA.W LOOSE_OP_009486,Y                   ; $82DDBA |
  CMP.W #$0030                              ; $82DDBD |
  BNE CODE_82DDDA                           ; $82DDC0 |
  PHY                                       ; $82DDC2 |
  PHA                                       ; $82DDC3 |
  LDY.W #$0F40                              ; $82DDC4 |
  LDA.W #$8033                              ; $82DDC7 |
  JSL.L CODE_FL_82CD78                      ; $82DDCA |
  LDA.W $1FC6                               ; $82DDCE |
  AND.W #$0001                              ; $82DDD1 |
  INC A                                     ; $82DDD4 |
  STA.W $0038,Y                             ; $82DDD5 |
  PLA                                       ; $82DDD8 |
  PLY                                       ; $82DDD9 |

CODE_82DDDA:
  PHY                                       ; $82DDDA |
  JSL.L CODE_FL_8AF606                      ; $82DDDB |
  PLY                                       ; $82DDDF |
  INY                                       ; $82DDE0 |
  INY                                       ; $82DDE1 |
  INY                                       ; $82DDE2 |
  INY                                       ; $82DDE3 |
  STY.B $24,X                               ; $82DDE4 |

CODE_82DDE6:
  JMP.W CODE_JP_82D87B                      ; $82DDE6 |

CODE_82DDE9:
  LDA.W #$0010                              ; $82DDE9 |
  LDY.W #$947C                              ; $82DDEC |
  JSL.L CODE_FL_82D210                      ; $82DDEF |
  LDA.W #$0026                              ; $82DDF3 |
  STA.B $1A,X                               ; $82DDF6 |
  JMP.W CODE_JP_82D87B                      ; $82DDF8 |

CODE_JP_82DDFB:
  LDA.W #$F800                              ; $82DDFB |
  STA.B $28,X                               ; $82DDFE |
  LDA.W #$0010                              ; $82DE00 |
  LDY.W #$941A                              ; $82DE03 |
  JSL.L CODE_FL_82D210                      ; $82DE06 |
  LDA.W #$0018                              ; $82DE0A |
  JSL.L CODE_FL_8AF606                      ; $82DE0D |
  LDA.W #$002B                              ; $82DE11 |
  STA.B $1A,X                               ; $82DE14 |

CODE_82DE16:
  LDA.W #$0003                              ; $82DE16 |
  JSL.L CODE_FL_82D219                      ; $82DE19 |
  LDA.W #$0120                              ; $82DE1D |
  LDY.W #$0800                              ; $82DE20 |
  JSL.L CODE_FL_82CB77                      ; $82DE23 |
  LDA.W #$0030                              ; $82DE27 |
  JSL.L CODE_FL_82CAE0                      ; $82DE2A |
  BEQ CODE_82DE33                           ; $82DE2E |
  JMP.W CODE_JP_82D87B                      ; $82DE30 |

CODE_82DE33:
  LDA.W #$0038                              ; $82DE33 |
  JSL.L push_sound_queue                    ; $82DE36 |
  LDA.W #$0001                              ; $82DE3A |
  STA.W $1C7C                               ; $82DE3D |
  LDA.W #$0005                              ; $82DE40 |
  LDY.W #$FFA0                              ; $82DE43 |
  JSL.L CODE_FL_82D063                      ; $82DE46 |
  LDA.W #$0040                              ; $82DE4A |
  STA.B $58,X                               ; $82DE4D |
  LDA.W #$0003                              ; $82DE4F |
  STA.B $5E,X                               ; $82DE52 |
  INC.B $1A,X                               ; $82DE54 |

CODE_82DE56:
  LDA.W #$FFE0                              ; $82DE56 |
  JSL.L CODE_FL_82D023                      ; $82DE59 |
  JSL.L CODE_FL_82C8BC                      ; $82DE5D |
  CMP.W #$0048                              ; $82DE61 |
  BPL CODE_82DE86                           ; $82DE64 |
  LDY.W #$9430                              ; $82DE66 |
  LDA.W #$0003                              ; $82DE69 |
  JSL.L CODE_FL_82D210                      ; $82DE6C |
  LDA.W #$F800                              ; $82DE70 |
  STA.B $28,X                               ; $82DE73 |
  LDA.W #$0400                              ; $82DE75 |
  STA.B $2A,X                               ; $82DE78 |
  LDA.W #$0008                              ; $82DE7A |
  STA.B $58,X                               ; $82DE7D |
  LDA.W #$0006                              ; $82DE7F |
  STA.B $5E,X                               ; $82DE82 |
  INC.B $1A,X                               ; $82DE84 |

CODE_82DE86:
  JSL.L CODE_FL_82B45B                      ; $82DE86 |
  LDA.B $5C,X                               ; $82DE8A |
  CMP.W #$000F                              ; $82DE8C |
  BNE CODE_82DE96                           ; $82DE8F |
  LDA.W #$0008                              ; $82DE91 |
  STA.B $58,X                               ; $82DE94 |

CODE_82DE96:
  LDA.B $27,X                               ; $82DE96 |
  JSL.L CODE_FL_82D02E                      ; $82DE98 |
  LDA.W #$0033                              ; $82DE9C |
  JSL.L CODE_FL_82B42F                      ; $82DE9F |
  JMP.W CODE_FL_82CEC6                      ; $82DEA3 |

CODE_82DEA6:
  LDA.B $28,X                               ; $82DEA6 |
  BMI CODE_82DEB1                           ; $82DEA8 |
  LDA.W #$0003                              ; $82DEAA |
  JSL.L CODE_FL_82D219                      ; $82DEAD |

CODE_82DEB1:
  JSL.L CODE_FL_82C8C4                      ; $82DEB1 |
  JSL.L CODE_FL_82CAD2                      ; $82DEB5 |
  BNE CODE_82DEC5                           ; $82DEB9 |
  LDA.W #$0038                              ; $82DEBB |
  JSL.L push_sound_queue                    ; $82DEBE |
  JMP.W CODE_JP_82D926                      ; $82DEC2 |

CODE_82DEC5:
  LDA.W #$0008                              ; $82DEC5 |
  JSL.L CODE_FL_82D03F                      ; $82DEC8 |
  LDA.W #$0033                              ; $82DECC |
  JSL.L CODE_FL_82B840                      ; $82DECF |
  JMP.W CODE_FL_82CEC6                      ; $82DED3 |

CODE_82DED6:
  LDA.W #$0030                              ; $82DED6 |
  JSL.L CODE_FL_8AF606                      ; $82DED9 |
  LDA.W #$0008                              ; $82DEDD |
  STA.B $38,X                               ; $82DEE0 |
  LDA.B $42,X                               ; $82DEE2 |
  INC A                                     ; $82DEE4 |
  AND.W #$0007                              ; $82DEE5 |
  STA.B $42,X                               ; $82DEE8 |
  CMP.W #$0004                              ; $82DEEA |
  BPL CODE_82DEF8                           ; $82DEED |
  JSL.L CODE_FL_82CFF3                      ; $82DEEF |
  LDY.W #$F400                              ; $82DEF3 |
  BRA CODE_82DEFF                           ; $82DEF6 |

CODE_82DEF8:
  JSL.L CODE_FL_82CFFD                      ; $82DEF8 |
  LDY.W #$0C00                              ; $82DEFC |

CODE_82DEFF:
  STY.B $26,X                               ; $82DEFF |
  STZ.B $28,X                               ; $82DF01 |
  TDC                                       ; $82DF03 |
  STA.B $2A,X                               ; $82DF04 |
  STZ.W $1CF0                               ; $82DF06 |
  LDA.W #$002F                              ; $82DF09 |
  STA.B $1A,X                               ; $82DF0C |

CODE_82DF0E:
  JSL.L CODE_FL_82C8C0                      ; $82DF0E |
  JSL.L CODE_FL_82CAD2                      ; $82DF12 |
  BNE CODE_82DF27                           ; $82DF16 |
  LDA.W $1CF0                               ; $82DF18 |
  BNE CODE_82DF27                           ; $82DF1B |
  INC.W $1CF0                               ; $82DF1D |
  LDA.W #$0038                              ; $82DF20 |
  JSL.L push_sound_queue                    ; $82DF23 |

CODE_82DF27:
  DEC.B $38,X                               ; $82DF27 |
  BMI CODE_82DF2E                           ; $82DF29 |
  JMP.W CODE_JP_82D8E3                      ; $82DF2B |

CODE_82DF2E:
  LDA.B $31,X                               ; $82DF2E |
  BPL CODE_82DF35                           ; $82DF30 |
  JMP.W CODE_JP_82D8E3                      ; $82DF32 |

CODE_82DF35:
  LDA.B $86                                 ; $82DF35 |
  AND.W #$0003                              ; $82DF37 |
  BNE CODE_82DF49                           ; $82DF3A |
  LDA.B $42                                 ; $82DF3C |
  BIT.W #$0001                              ; $82DF3E |
  BEQ CODE_82DF46                           ; $82DF41 |
  JMP.W CODE_JP_82DDFB                      ; $82DF43 |

CODE_82DF46:
  JMP.W CODE_JP_82DCC5                      ; $82DF46 |

CODE_82DF49:
  LDA.B $50,X                               ; $82DF49 |
  STA.B $1A,X                               ; $82DF4B |
  JMP.W CODE_JP_82D8E3                      ; $82DF4D |

CODE_JP_82DF50:
  LDA.W #$0010                              ; $82DF50 |
  STA.B $38,X                               ; $82DF53 |
  STZ.W $1FD4                               ; $82DF55 |
  LDA.W #$0048                              ; $82DF58 |
  JSL.L CODE_FL_8AF606                      ; $82DF5B |
  LDA.B $2D,X                               ; $82DF5F |
  BPL CODE_82DF69                           ; $82DF61 |
  JSL.L CODE_FL_82CFF3                      ; $82DF63 |
  BRA CODE_82DF6D                           ; $82DF67 |

CODE_82DF69:
  JSL.L CODE_FL_82CFFD                      ; $82DF69 |

CODE_82DF6D:
  LDA.W #$0004                              ; $82DF6D |
  STA.B $5E,X                               ; $82DF70 |
  STZ.B $2A,X                               ; $82DF72 |
  LDA.W #$0031                              ; $82DF74 |
  STA.B $1A,X                               ; $82DF77 |

CODE_82DF79:
  DEC.B $44,X                               ; $82DF79 |
  DEC.B $38,X                               ; $82DF7B |
  BPL CODE_82DF94                           ; $82DF7D |
  LDA.W $1C70                               ; $82DF7F |
  BEQ CODE_82DF86                           ; $82DF82 |
  INC.B $1A,X                               ; $82DF84 |

CODE_82DF86:
  LDA.W #$0008                              ; $82DF86 |
  STA.B $38,X                               ; $82DF89 |
  LDY.W $0EDC                               ; $82DF8B |
  BNE CODE_82DF94                           ; $82DF8E |
  LDA.B $50,X                               ; $82DF90 |
  STA.B $1A,X                               ; $82DF92 |

CODE_82DF94:
  LDA.W #$0033                              ; $82DF94 |
  JSL.L CODE_FL_82B452                      ; $82DF97 |
  JSL.L CODE_FL_82C913                      ; $82DF9B |
  JMP.W CODE_FL_82CEC6                      ; $82DF9F |

CODE_82DFA2:
  LDA.W $1C70                               ; $82DFA2 |
  BNE CODE_82DF94                           ; $82DFA5 |
  LDA.B $86                                 ; $82DFA7 |
  LSR A                                     ; $82DFA9 |
  BCS CODE_82DFAF                           ; $82DFAA |
  JMP.W CODE_JP_82DDFB                      ; $82DFAC |

CODE_82DFAF:
  JMP.W CODE_JP_82DCC5                      ; $82DFAF |

CODE_82DFB2:
  JSL.L CODE_FL_82B8B4                      ; $82DFB2 |
  BCC CODE_82DFBB                           ; $82DFB6 |
  JMP.W CODE_JP_82DF50                      ; $82DFB8 |

CODE_82DFBB:
  LDA.W #$0060                              ; $82DFBB |
  JSL.L CODE_FL_8AF606                      ; $82DFBE |
  LDA.W #$0001                              ; $82DFC2 |
  STA.W $1C74                               ; $82DFC5 |
  STZ.W $1FD4                               ; $82DFC8 |
  LDA.W #$0006                              ; $82DFCB |
  STA.B $5E,X                               ; $82DFCE |
  STZ.B $5A,X                               ; $82DFD0 |
  STZ.B $38,X                               ; $82DFD2 |
  STZ.B $3A,X                               ; $82DFD4 |
  LDY.W #$8B98                              ; $82DFD6 |
  JSL.L CODE_FL_82B81C                      ; $82DFD9 |
  INC.B $1A,X                               ; $82DFDD |
  JML.L CODE_JL_82A9F6                      ; $82DFDF |

CODE_82DFE3:
  LDA.W #$0000                              ; $82DFE3 |
  JSL.L CODE_FL_8AF606                      ; $82DFE6 |
  STZ.W $1FD4                               ; $82DFEA |
  LDA.W #$0080                              ; $82DFED |
  STA.B $38,X                               ; $82DFF0 |
  LDA.W #$FA00                              ; $82DFF2 |
  STA.B $28,X                               ; $82DFF5 |
  STZ.W $1CF0                               ; $82DFF7 |
  INC.B $1A,X                               ; $82DFFA |

CODE_82DFFC:
  TDC                                       ; $82DFFC |
  LDY.W #$0800                              ; $82DFFD |
  JSL.L CODE_FL_82CB1D                      ; $82E000 |
  LDA.W #$0120                              ; $82E004 |
  LDY.W #$0800                              ; $82E007 |
  JSL.L CODE_FL_82CB77                      ; $82E00A |
  JSL.L CODE_FL_82CAD2                      ; $82E00E |
  BNE CODE_82E03D                           ; $82E012 |
  LDA.W $1CF0                               ; $82E014 |
  BNE CODE_82E023                           ; $82E017 |
  INC.W $1CF0                               ; $82E019 |
  LDA.W #$0038                              ; $82E01C |
  JSL.L push_sound_queue                    ; $82E01F |

CODE_82E023:
  DEC.B $38,X                               ; $82E023 |
  BPL CODE_82E03D                           ; $82E025 |
  LDA.W #$FC00                              ; $82E027 |
  STA.B $2A,X                               ; $82E02A |
  LDA.W #$0040                              ; $82E02C |
  STA.B $38,X                               ; $82E02F |
  LDA.W #$0006                              ; $82E031 |
  LDY.W #$9486                              ; $82E034 |
  JSL.L CODE_FL_82D210                      ; $82E037 |
  INC.B $1A,X                               ; $82E03B |

CODE_82E03D:
  JMP.W CODE_FL_82CEC6                      ; $82E03D |

CODE_82E040:
  LDA.W #$0006                              ; $82E040 |
  JSL.L CODE_FL_82D257                      ; $82E043 |
  BCS CODE_82E070                           ; $82E047 |
  DEC.B $38,X                               ; $82E049 |
  BPL CODE_82E070                           ; $82E04B |
  JSL.L CODE_FL_82C8C4                      ; $82E04D |
  CMP.W #$00E0                              ; $82E051 |
  BPL CODE_82E070                           ; $82E054 |
  LDA.W #$0030                              ; $82E056 |
  JSL.L CODE_FL_8AF606                      ; $82E059 |
  LDA.W #$4035                              ; $82E05D |
  LDY.W #$0580                              ; $82E060 |
  JSL.L CODE_FL_82CD78                      ; $82E063 |
  INC.B $1A,X                               ; $82E067 |
  LDA.W #$0007                              ; $82E069 |
  JSL.L CODE_FL_82E1E3                      ; $82E06C |

CODE_82E070:
  JMP.W CODE_FL_82CEC6                      ; $82E070 |

CODE_82E073:
  LDA.W #$81F5                              ; $82E073 |
  JSL.L CODE_FL_809934                      ; $82E076 |
  BCC CODE_82E088                           ; $82E07A |
  LDA.W #$8000                              ; $82E07C |
  STA.W $1C68                               ; $82E07F |
  INC.B $1A,X                               ; $82E082 |
  JSL.L CODE_FL_82E225                      ; $82E084 |

CODE_82E088:
  JMP.W CODE_FL_82CEC6                      ; $82E088 |

CODE_82E08B:
  LDY.W #$0000                              ; $82E08B |
  JSL.L CODE_FL_82B31F                      ; $82E08E |
  LDA.W #$000D                              ; $82E092 |
  JSL.L push_sound_queue                    ; $82E095 |
  LDA.W #$0060                              ; $82E099 |
  JSL.L CODE_FL_8AF606                      ; $82E09C |
  STZ.B $26,X                               ; $82E0A0 |
  STZ.B $2A,X                               ; $82E0A2 |
  LDA.W #$F400                              ; $82E0A4 |
  STA.B $28,X                               ; $82E0A7 |
  TDC                                       ; $82E0A9 |
  STA.B $31,X                               ; $82E0AA |
  INC.B $1A,X                               ; $82E0AC |

CODE_82E0AE:
  LDA.B $35,X                               ; $82E0AE |
  CMP.W #$00D0                              ; $82E0B0 |
  BPL CODE_82E0BF                           ; $82E0B3 |
  LDA.W #$00D0                              ; $82E0B5 |
  LDY.W #$0400                              ; $82E0B8 |
  JSL.L CODE_FL_82CB77                      ; $82E0BB |

CODE_82E0BF:
  JSL.L CODE_FL_82CAD2                      ; $82E0BF |
  BNE CODE_82E100                           ; $82E0C3 |
  LDA.W #$0038                              ; $82E0C5 |
  JSL.L push_sound_queue                    ; $82E0C8 |
  INC.B $1A,X                               ; $82E0CC |
  LDA.W #$0009                              ; $82E0CE |
  JSL.L CODE_FL_82E1E3                      ; $82E0D1 |
  BRA CODE_82E100                           ; $82E0D5 |

CODE_82E0D7:
  LDA.W #$81DA                              ; $82E0D7 |
  JSL.L CODE_FL_809934                      ; $82E0DA |
  BCC CODE_82E100                           ; $82E0DE |
  LDA.W #$0002                              ; $82E0E0 |
  STA.W $1C68                               ; $82E0E3 |
  LDA.W #$0020                              ; $82E0E6 |
  STA.B $38,X                               ; $82E0E9 |
  LDA.W #$0001                              ; $82E0EB |
  STA.W $1C66                               ; $82E0EE |
  LDA.W #$0006                              ; $82E0F1 |
  STA.W $1C5E                               ; $82E0F4 |
  STA.W $1C60                               ; $82E0F7 |
  INC.B $1A,X                               ; $82E0FA |
  JSL.L CODE_FL_82E225                      ; $82E0FC |

CODE_82E100:
  JSL.L CODE_FL_82D1BF                      ; $82E100 |
  JMP.W CODE_FL_82CEC6                      ; $82E104 |

CODE_82E107:
  DEC.B $38,X                               ; $82E107 |
  BPL CODE_82E100                           ; $82E109 |
  LDY.W #$0002                              ; $82E10B |
  JSL.L CODE_FL_82B31F                      ; $82E10E |
  LDA.W #$0002                              ; $82E112 |
  STA.W $1C5E                               ; $82E115 |
  STA.W $1C60                               ; $82E118 |
  JSL.L CODE_FL_82C13A                      ; $82E11B |
  INC.B $1A,X                               ; $82E11F |
  BRA CODE_82E100                           ; $82E121 |

CODE_82E123:
  LDA.W $1DE0                               ; $82E123 |
  CMP.W #$0002                              ; $82E126 |
  BMI CODE_82E100                           ; $82E129 |
  STZ.W $1C66                               ; $82E12B |
  LDA.W #$0120                              ; $82E12E |
  JSL.L CODE_FL_8AF606                      ; $82E131 |
  PHX                                       ; $82E135 |
  LDA.B $12,X                               ; $82E136 |
  TAX                                       ; $82E138 |
  JSL.L CODE_FL_82CCD2                      ; $82E139 |
  LDX.W #$0700                              ; $82E13D |
  JSL.L CODE_FL_82CC9F                      ; $82E140 |
  LDX.W #$0E20                              ; $82E144 |
  JSL.L CODE_FL_82CC9F                      ; $82E147 |
  LDX.W #$0E80                              ; $82E14B |
  JSL.L CODE_FL_82CC9F                      ; $82E14E |
  LDX.W #$0EE0                              ; $82E152 |
  JSL.L CODE_FL_82CC9F                      ; $82E155 |
  PLX                                       ; $82E159 |
  INC.B $1A,X                               ; $82E15A |
  BRA CODE_82E100                           ; $82E15C |

CODE_82E15E:
  LDA.W #$0180                              ; $82E15E |
  LDY.W #$0C00                              ; $82E161 |
  JSL.L CODE_FL_82CB77                      ; $82E164 |
  BNE CODE_82E17A                           ; $82E168 |
  PHX                                       ; $82E16A |
  LDX.W #DATA_888520                        ; $82E16B |
  JSL.L sound_transfer_blocks               ; $82E16E |
  PLX                                       ; $82E172 |
  LDA.W #$0020                              ; $82E173 |
  STA.B $38,X                               ; $82E176 |
  INC.B $1A,X                               ; $82E178 |

CODE_82E17A:
  JMP.W CODE_FL_82CEC6                      ; $82E17A |

CODE_82E17D:
  DEC.B $38,X                               ; $82E17D |
  BPL CODE_82E197                           ; $82E17F |
  LDA.W #$4049                              ; $82E181 |
  LDY.W #$0E20                              ; $82E184 |
  JSL.L CODE_FL_82CD78                      ; $82E187 |
  LDA.W #$0002                              ; $82E18B |
  STA.W $003C,Y                             ; $82E18E |
  INC.B $1A,X                               ; $82E191 |
  JML.L CODE_FL_82CC9F                      ; $82E193 |

CODE_82E197:
  RTL                                       ; $82E197 |

  LDA.B $1A,X                               ; $82E198 |
  BNE CODE_82E1B7                           ; $82E19A |
  LDA.W #$337A                              ; $82E19C |
  STA.B $00,X                               ; $82E19F |
  LDA.W #$8000                              ; $82E1A1 |
  STA.B $14,X                               ; $82E1A4 |
  LDA.W #$0040                              ; $82E1A6 |
  STA.B $06,X                               ; $82E1A9 |
  LDA.W #$0068                              ; $82E1AB |
  STA.B $0D,X                               ; $82E1AE |
  LDA.W #$00A0                              ; $82E1B0 |
  STA.B $09,X                               ; $82E1B3 |
  INC.B $1A,X                               ; $82E1B5 |

CODE_82E1B7:
  LDA.W #$0068                              ; $82E1B7 |
  CLC                                       ; $82E1BA |
  ADC.W $1C80                               ; $82E1BB |
  STA.B $0D,X                               ; $82E1BE |
  RTL                                       ; $82E1C0 |

  LDA.B $1A,X                               ; $82E1C1 |
  BNE CODE_82E1DF                           ; $82E1C3 |
  LDA.W #$0080                              ; $82E1C5 |
  STA.B $09,X                               ; $82E1C8 |
  LDA.W #$0040                              ; $82E1CA |
  STA.B $0D,X                               ; $82E1CD |
  LDA.W #$0888                              ; $82E1CF |
  STA.B $04,X                               ; $82E1D2 |
  LDY.B $38,X                               ; $82E1D4 |
  LDA.W #$0008                              ; $82E1D6 |
  JSL.L CODE_FL_828AD9                      ; $82E1D9 |
  INC.B $1A,X                               ; $82E1DD |

CODE_82E1DF:
  JML.L CODE_FL_82CE8C                      ; $82E1DF |

CODE_FL_82E1E3:
  ASL A                                     ; $82E1E3 |
  ASL A                                     ; $82E1E4 |
  ASL A                                     ; $82E1E5 |
  TAY                                       ; $82E1E6 |
  PHX                                       ; $82E1E7 |
  LDA.W LOOSE_OP_0094A0,Y                   ; $82E1E8 |
  STA.B $00                                 ; $82E1EB |
  LDA.W CODE_0094A4,Y                       ; $82E1ED |
  STA.B $1C                                 ; $82E1F0 |
  LDA.W LOOSE_OP_0094A6,Y                   ; $82E1F2 |
  STA.B $1E                                 ; $82E1F5 |
  LDA.W LOOSE_OP_0094A2,Y                   ; $82E1F7 |
  STA.B $1A                                 ; $82E1FA |
  LDY.B $00                                 ; $82E1FC |
  JSL.L CODE_FL_80C2BA                      ; $82E1FE |
  PLX                                       ; $82E202 |
  LDA.W #$C034                              ; $82E203 |
  LDY.W #$0F40                              ; $82E206 |
  JSL.L CODE_FL_82CD78                      ; $82E209 |
  LDA.B $1A                                 ; $82E20D |
  LSR A                                     ; $82E20F |
  SEC                                       ; $82E210 |
  SBC.W #$0008                              ; $82E211 |
  ORA.W #$0040                              ; $82E214 |
  STA.W $0002,Y                             ; $82E217 |
  LDA.B $1C                                 ; $82E21A |
  STA.W $0006,Y                             ; $82E21C |
  LDA.B $1E                                 ; $82E21F |
  STA.W $0038,Y                             ; $82E221 |
  RTL                                       ; $82E224 |

CODE_FL_82E225:
  LDA.B $DA                                 ; $82E225 |
  ASL A                                     ; $82E227 |
  ASL A                                     ; $82E228 |
  TAY                                       ; $82E229 |
  PHX                                       ; $82E22A |
  LDA.W CODE_0094F0,Y                       ; $82E22B |
  STA.B $00                                 ; $82E22E |
  LDA.W LOOSE_OP_0094F2,Y                   ; $82E230 |
  LDY.B $00                                 ; $82E233 |
  JSL.L CODE_FL_80C2BA                      ; $82E235 |
  PLX                                       ; $82E239 |
  LDY.W #$0F40                              ; $82E23A |
  JML.L CODE_FL_82CC97                      ; $82E23D |

  dw CODE_82E245                            ; $82E241 |
  dw CODE_82E2A6                            ; $82E243 |

CODE_82E245:
  CPX.W #$0E20                              ; $82E245 |
  BNE CODE_82E263                           ; $82E248 |
  LDA.W #$00B0                              ; $82E24A |
  STA.B $09,X                               ; $82E24D |
  LDA.W #$0010                              ; $82E24F |
  STA.B $0D,X                               ; $82E252 |
  LDA.W #$FFC0                              ; $82E254 |
  STA.B $26,X                               ; $82E257 |
  LDA.W #$0100                              ; $82E259 |
  STA.B $28,X                               ; $82E25C |
  LDA.W #$0180                              ; $82E25E |
  BRA CODE_82E282                           ; $82E261 |

CODE_82E263:
  LDA.W $0DC9                               ; $82E263 |
  SEC                                       ; $82E266 |
  SBC.W #$0030                              ; $82E267 |
  STA.B $09,X                               ; $82E26A |
  LDA.W $0DCD                               ; $82E26C |
  SEC                                       ; $82E26F |
  SBC.W #$0030                              ; $82E270 |
  STA.B $0D,X                               ; $82E273 |
  LDA.W #$FFE0                              ; $82E275 |
  STA.B $26,X                               ; $82E278 |
  LDA.W #$FEC0                              ; $82E27A |
  STA.B $28,X                               ; $82E27D |
  LDA.W #$0100                              ; $82E27F |

CODE_82E282:
  STA.B $38,X                               ; $82E282 |
  LDY.W #$845C                              ; $82E284 |
  LDA.W #$0002                              ; $82E287 |
  JSL.L CODE_FL_828AD9                      ; $82E28A |
  LDA.W #$0888                              ; $82E28E |
  STA.B $04,X                               ; $82E291 |
  LDA.W #$0040                              ; $82E293 |
  STA.B $06,X                               ; $82E296 |
  LDA.W #$0030                              ; $82E298 |
  STA.B $14,X                               ; $82E29B |
  LDA.W #$00B4                              ; $82E29D |
  JSL.L CODE_FL_8089BD                      ; $82E2A0 |
  INC.B $1A,X                               ; $82E2A4 |

CODE_82E2A6:
  JSL.L CODE_FL_82C842                      ; $82E2A6 |
  LDA.W #$0008                              ; $82E2AA |
  JSL.L CODE_FL_82CB0C                      ; $82E2AD |
  LDA.B $28,X                               ; $82E2B1 |
  CMP.W #$0080                              ; $82E2B3 |
  BMI CODE_82E2BD                           ; $82E2B6 |
  LDA.W #$0080                              ; $82E2B8 |
  STA.B $28,X                               ; $82E2BB |

CODE_82E2BD:
  DEC.B $38,X                               ; $82E2BD |
  LDA.B $38,X                               ; $82E2BF |
  BMI CODE_82E2CD                           ; $82E2C1 |
  CMP.W #$0040                              ; $82E2C3 |
  BPL CODE_82E2CC                           ; $82E2C6 |
  JML.L CODE_FL_82CE8C                      ; $82E2C8 |

CODE_82E2CC:
  RTL                                       ; $82E2CC |

CODE_82E2CD:
  JML.L CODE_FL_82CC9F                      ; $82E2CD |

  dw CODE_82E2D7                            ; $82E2D1 |
  dw CODE_82E33E                            ; $82E2D3 |
  dw CODE_82E34F                            ; $82E2D5 |

CODE_82E2D7:
  LDY.B $38,X                               ; $82E2D7 |
  BNE CODE_82E2E3                           ; $82E2D9 |
  LDA.W #$0040                              ; $82E2DB |
  STA.B $06,X                               ; $82E2DE |
  LDY.W #$8466                              ; $82E2E0 |

CODE_82E2E3:
  JSL.L CODE_FL_828AC3                      ; $82E2E3 |
  JSL.L CODE_FL_82CE4B                      ; $82E2E7 |
  LDA.B $2D,X                               ; $82E2EB |
  CLC                                       ; $82E2ED |
  ADC.B $3A,X                               ; $82E2EE |
  STA.B $2D,X                               ; $82E2F0 |
  LDA.B $31,X                               ; $82E2F2 |
  CLC                                       ; $82E2F4 |
  ADC.B $3C,X                               ; $82E2F5 |
  STA.B $31,X                               ; $82E2F7 |
  LDA.B $3E,X                               ; $82E2F9 |
  BPL CODE_82E31D                           ; $82E2FB |
  AND.W #$000F                              ; $82E2FD |
  BNE CODE_82E305                           ; $82E300 |
  LDA.W #$0003                              ; $82E302 |

CODE_82E305:
  STA.B $00                                 ; $82E305 |
  LDA.B $86                                 ; $82E307 |
  AND.W #$007F                              ; $82E309 |
  SEC                                       ; $82E30C |
  SBC.W #$0030                              ; $82E30D |
  EOR.W #$FFFF                              ; $82E310 |
  INC A                                     ; $82E313 |
  TAY                                       ; $82E314 |
  LDA.B $00                                 ; $82E315 |
  JSL.L CODE_FL_82D063                      ; $82E317 |
  BRA CODE_82E329                           ; $82E31B |

CODE_82E31D:
  BNE CODE_82E322                           ; $82E31D |
  LDA.W #$0003                              ; $82E31F |

CODE_82E322:
  LDY.W #$FFD8                              ; $82E322 |
  JSL.L CODE_FL_82D063                      ; $82E325 |

CODE_82E329:
  LDA.W #$001A                              ; $82E329 |
  JSL.L CODE_FL_82CD2F                      ; $82E32C |
  LDY.W #$8B9B                              ; $82E330 |
  JSL.L CODE_FL_82B81C                      ; $82E333 |
  LDA.W #$0005                              ; $82E337 |
  STA.B $5E,X                               ; $82E33A |
  INC.B $1A,X                               ; $82E33C |

CODE_82E33E:
  JSL.L CODE_FL_82C8BC                      ; $82E33E |
  LDA.B $35,X                               ; $82E342 |
  BPL CODE_82E349                           ; $82E344 |
  JMP.W CODE_FL_82CC9F                      ; $82E346 |

CODE_82E349:
  LDA.W #$0002                              ; $82E349 |
  JMP.W CODE_FL_82B42F                      ; $82E34C |

CODE_82E34F:
  JSL.L CODE_FL_82B91D                      ; $82E34F |
  PHX                                       ; $82E353 |
  ASL A                                     ; $82E354 |
  TAX                                       ; $82E355 |
  LDA.L PTR16_82E360,X                      ; $82E356 |
  PLX                                       ; $82E35A |
  STA.B $00                                 ; $82E35B |
  JMP.W ($0000)                             ; $82E35D |

PTR16_82E360:
  dw CODE_82E38A                            ; $82E360 |
  dw CODE_82E38A                            ; $82E362 |
  dw CODE_82E393                            ; $82E364 |
  dw CODE_82E393                            ; $82E366 |
  dw CODE_82E393                            ; $82E368 |
  dw CODE_82E393                            ; $82E36A |
  dw CODE_82E393                            ; $82E36C |
  dw CODE_82E393                            ; $82E36E |
  dw CODE_82E393                            ; $82E370 |
  dw CODE_82E393                            ; $82E372 |
  dw CODE_82E393                            ; $82E374 |
  dw CODE_82E393                            ; $82E376 |
  dw CODE_82E393                            ; $82E378 |
  dw CODE_82E38D                            ; $82E37A |
  dw CODE_82E38D                            ; $82E37C |
  dw CODE_82E399                            ; $82E37E |
  dw CODE_82E38A                            ; $82E380 |
  dw CODE_82E38A                            ; $82E382 |
  dw CODE_82E39F                            ; $82E384 |
  dw CODE_82E38A                            ; $82E386 |
  dw CODE_82E38A                            ; $82E388 |

CODE_82E38A:
  JMP.W CODE_FL_82CC9F                      ; $82E38A |

CODE_82E38D:
  LDA.W #$C016                              ; $82E38D |
  JMP.W CODE_FL_82CD96                      ; $82E390 |

CODE_82E393:
  LDA.W #$C01D                              ; $82E393 |
  JMP.W CODE_FL_82CD96                      ; $82E396 |

CODE_82E399:
  LDA.W #$401B                              ; $82E399 |
  JMP.W CODE_FL_82CD96                      ; $82E39C |

CODE_82E39F:
  LDA.W #$C015                              ; $82E39F |
  JMP.W CODE_FL_82CD96                      ; $82E3A2 |

  LDX.W #DATA_888431                        ; $82E3A5 |
  JSL.L sound_transfer_blocks               ; $82E3A8 |
  LDX.W #DATA_888439                        ; $82E3AC |
  JSL.L sound_transfer_blocks               ; $82E3AF |
  LDX.W #DATA_888443                        ; $82E3B3 |
  JSL.L sound_transfer_blocks               ; $82E3B6 |
  LDA.W #$001A                              ; $82E3BA |
  JSL.L CODE_FL_8AF69F                      ; $82E3BD |
  LDA.W #$0001                              ; $82E3C1 |
  STA.W $1C9A                               ; $82E3C4 |
  LDA.W #$8000                              ; $82E3C7 |
  STA.W $1C66                               ; $82E3CA |
  LDY.W #$B85B                              ; $82E3CD |
  JSL.L CODE_FL_80C277                      ; $82E3D0 |
  LDX.W #$0DC0                              ; $82E3D4 |
  LDA.W #$8038                              ; $82E3D7 |
  STA.B $18,X                               ; $82E3DA |
  LDA.W #$1000                              ; $82E3DC |
  STA.B $10,X                               ; $82E3DF |
  JSL.L CODE_FL_82CE46                      ; $82E3E1 |
  LDX.W #$1570                              ; $82E3E5 |
  LDA.W #$0008                              ; $82E3E8 |
  STA.B $18,X                               ; $82E3EB |
  LDA.W #$0000                              ; $82E3ED |
  STA.B $2A,X                               ; $82E3F0 |
  LDX.W #$15A0                              ; $82E3F2 |
  LDA.W #$0008                              ; $82E3F5 |
  STA.B $18,X                               ; $82E3F8 |
  LDA.W #$0008                              ; $82E3FA |
  STA.B $2A,X                               ; $82E3FD |
  LDX.W #$15D0                              ; $82E3FF |
  LDA.W #$0008                              ; $82E402 |
  STA.B $18,X                               ; $82E405 |
  LDA.W #$0010                              ; $82E407 |
  STA.B $2A,X                               ; $82E40A |
  LDX.W #$1600                              ; $82E40C |
  LDA.W #$0008                              ; $82E40F |
  STA.B $18,X                               ; $82E412 |
  LDA.W #$0018                              ; $82E414 |
  STA.B $2A,X                               ; $82E417 |
  LDX.W #$1630                              ; $82E419 |
  LDA.W #$0008                              ; $82E41C |
  STA.B $18,X                               ; $82E41F |
  LDA.W #$0020                              ; $82E421 |
  STA.B $2A,X                               ; $82E424 |
  RTL                                       ; $82E426 |

  LDY.W #$9D3A                              ; $82E427 |
  JSL.L CODE_FL_8AAF61                      ; $82E42A |
  LDA.W #$0038                              ; $82E42E |
  JML.L CODE_FL_8AB11E                      ; $82E431 |

  LDA.W #$002B                              ; $82E435 |
  JSL.L CODE_FL_82D348                      ; $82E438 |
  LDY.W #$929A                              ; $82E43C |
  LDA.W #$9448                              ; $82E43F |
  JSL.L CODE_FL_82D181                      ; $82E442 |
  LDA.B $1A,X                               ; $82E446 |
  PHX                                       ; $82E448 |
  ASL A                                     ; $82E449 |
  TAX                                       ; $82E44A |
  LDA.L PTR16_82E455,X                      ; $82E44B |
  PLX                                       ; $82E44F |
  STA.B $00                                 ; $82E450 |
  JMP.W ($0000)                             ; $82E452 |

PTR16_82E455:
  dw CODE_82E4C7                            ; $82E455 |
  dw CODE_82E4EA                            ; $82E457 |
  dw CODE_82E50D                            ; $82E459 |
  dw CODE_82E52E                            ; $82E45B |
  dw CODE_JP_82E573                         ; $82E45D |
  dw CODE_82E588                            ; $82E45F |
  dw CODE_JP_82E5F8                         ; $82E461 |
  dw CODE_82E60B                            ; $82E463 |
  dw CODE_82E619                            ; $82E465 |
  dw CODE_82E65C                            ; $82E467 |
  dw CODE_82E68F                            ; $82E469 |
  dw CODE_82E6C4                            ; $82E46B |
  dw CODE_82E6EA                            ; $82E46D |
  dw CODE_82E707                            ; $82E46F |
  dw CODE_82E728                            ; $82E471 |
  dw CODE_82E766                            ; $82E473 |
  dw CODE_82E777                            ; $82E475 |
  dw CODE_82E79C                            ; $82E477 |
  dw CODE_82E7BF                            ; $82E479 |
  dw CODE_82E811                            ; $82E47B |
  dw CODE_82E82B                            ; $82E47D |
  dw CODE_82E835                            ; $82E47F |
  dw CODE_JP_82E853                         ; $82E481 |
  dw CODE_82E8AE                            ; $82E483 |
  dw CODE_JP_82E8C5                         ; $82E485 |
  dw CODE_82E996                            ; $82E487 |
  dw CODE_82E9AD                            ; $82E489 |
  dw CODE_82EA0F                            ; $82E48B |
  dw CODE_82EAC1                            ; $82E48D |
  dw CODE_82EAC4                            ; $82E48F |
  dw CODE_82EAD6                            ; $82E491 |
  dw CODE_82EB07                            ; $82E493 |
  dw CODE_82EB23                            ; $82E495 |
  dw CODE_82EB44                            ; $82E497 |
  dw CODE_JP_82E8EF                         ; $82E499 |
  dw CODE_82E8FF                            ; $82E49B |
  dw CODE_82E939                            ; $82E49D |
  dw CODE_82E96C                            ; $82E49F |
  dw CODE_82EBA4                            ; $82E4A1 |
  dw CODE_82EBD4                            ; $82E4A3 |
  dw CODE_82EBF1                            ; $82E4A5 |
  dw CODE_82EC17                            ; $82E4A7 |
  dw CODE_82EC3E                            ; $82E4A9 |
  dw CODE_82EC48                            ; $82E4AB |
  dw CODE_JL_82A9F6                         ; $82E4AD |
  dw CODE_82EC75                            ; $82E4AF |
  dw CODE_82ECA1                            ; $82E4B1 |
  dw CODE_82ECCB                            ; $82E4B3 |
  dw CODE_82ECF8                            ; $82E4B5 |
  dw CODE_82ED0B                            ; $82E4B7 |
  dw CODE_82ED2E                            ; $82E4B9 |
  dw CODE_82ED39                            ; $82E4BB |
  dw CODE_82ED78                            ; $82E4BD |
  dw CODE_82ED9E                            ; $82E4BF |
  dw CODE_82EDCB                            ; $82E4C1 |
  dw CODE_82EDE0                            ; $82E4C3 |
  dw CODE_82EE20                            ; $82E4C5 |

CODE_82E4C7:
  LDY.W #$8BA7                              ; $82E4C7 |
  JSL.L CODE_FL_82B81C                      ; $82E4CA |
  LDA.W #$0006                              ; $82E4CE |
  STA.B $5E,X                               ; $82E4D1 |
  STZ.B $2D,X                               ; $82E4D3 |
  STZ.B $31,X                               ; $82E4D5 |
  LDA.W #$0100                              ; $82E4D7 |
  STA.B $35,X                               ; $82E4DA |
  LDA.W #$0040                              ; $82E4DC |
  STA.B $38,X                               ; $82E4DF |
  LDA.W #$0080                              ; $82E4E1 |
  STA.B $3A,X                               ; $82E4E4 |
  INC.B $1A,X                               ; $82E4E6 |
  BRA CODE_82E50A                           ; $82E4E8 |

CODE_82E4EA:
  DEC.B $38,X                               ; $82E4EA |
  BPL CODE_82E50A                           ; $82E4EC |
  LDA.W #$0001                              ; $82E4EE |
  STA.W $1C7C                               ; $82E4F1 |
  DEC.B $3A,X                               ; $82E4F4 |
  BPL CODE_82E50A                           ; $82E4F6 |
  LDA.W #$00E0                              ; $82E4F8 |
  STA.B $38,X                               ; $82E4FB |
  INC.B $1A,X                               ; $82E4FD |
  LDA.W #$0088                              ; $82E4FF |
  JSL.L CODE_FL_8089BD                      ; $82E502 |
  JML.L CODE_FL_82BFF4                      ; $82E506 |

CODE_82E50A:
  JMP.W CODE_FL_82CEC6                      ; $82E50A |

CODE_82E50D:
  LDA.W #$0001                              ; $82E50D |
  STA.W $1C7C                               ; $82E510 |
  LDA.B $38,X                               ; $82E513 |
  CMP.W #$00A0                              ; $82E515 |
  BNE CODE_82E526                           ; $82E518 |
  PHX                                       ; $82E51A |
  LDY.W #$BA86                              ; $82E51B |
  LDX.W #$1F50                              ; $82E51E |
  JSL.L CODE_FL_80C27F                      ; $82E521 |
  PLX                                       ; $82E525 |

CODE_82E526:
  DEC.B $38,X                               ; $82E526 |
  BPL CODE_82E50A                           ; $82E528 |
  INC.B $1A,X                               ; $82E52A |
  BRA CODE_82E50A                           ; $82E52C |

CODE_82E52E:
  LDA.W #$0592                              ; $82E52E |
  JSL.L CODE_FL_8CF9DB                      ; $82E531 |
  LDA.W #$86F0                              ; $82E535 |
  BCC CODE_82E53D                           ; $82E538 |
  LDA.W #$88A6                              ; $82E53A |

CODE_82E53D:
  JSL.L CODE_FL_809934                      ; $82E53D |
  BCC CODE_82E56B                           ; $82E541 |
  JSL.L CODE_FL_82E225                      ; $82E543 |
  PHX                                       ; $82E547 |
  LDX.W #DATA_888460                        ; $82E548 |
  JSL.L sound_transfer_blocks               ; $82E54B |
  PLX                                       ; $82E54F |
  STZ.W $1C9A                               ; $82E550 |
  STZ.W $1C6A                               ; $82E553 |
  STZ.W $1C24                               ; $82E556 |
  LDA.W #$0004                              ; $82E559 |
  STA.B $1A,X                               ; $82E55C |
  STA.B $50,X                               ; $82E55E |
  LDA.W #$0080                              ; $82E560 |
  STA.B $4E,X                               ; $82E563 |
  STZ.B $52,X                               ; $82E565 |
  JML.L CODE_FL_82CEC6                      ; $82E567 |

CODE_82E56B:
  JSL.L CODE_FL_82EE46                      ; $82E56B |
  JML.L CODE_FL_82CEC6                      ; $82E56F |

CODE_JP_82E573:
  JSL.L CODE_FL_82CFF3                      ; $82E573 |
  LDY.W #$9550                              ; $82E577 |
  JSL.L CODE_FL_82D20D                      ; $82E57A |
  LDA.W #$0006                              ; $82E57E |
  STA.B $5E,X                               ; $82E581 |
  LDA.W #$0005                              ; $82E583 |
  STA.B $1A,X                               ; $82E586 |

CODE_82E588:
  LDA.W #$0006                              ; $82E588 |
  JSL.L CODE_FL_82D219                      ; $82E58B |
  LDA.W #$0020                              ; $82E58F |
  STA.B $06                                 ; $82E592 |
  LDY.W #$0800                              ; $82E594 |
  TDC                                       ; $82E597 |
  JSL.L CODE_FL_82C951                      ; $82E598 |
  LDY.W #$0400                              ; $82E59C |
  LDA.W #$0100                              ; $82E59F |
  JSL.L CODE_FL_82C9EF                      ; $82E5A2 |
  JSL.L CODE_FL_82CAD2                      ; $82E5A6 |
  BEQ CODE_82E5AF                           ; $82E5AA |
  JMP.W CODE_JP_82E5D3                      ; $82E5AC |

CODE_82E5AF:
  DEC.B $4E,X                               ; $82E5AF |
  BMI CODE_82E5B6                           ; $82E5B1 |
  JMP.W CODE_JP_82E5D3                      ; $82E5B3 |

CODE_82E5B6:
  STZ.B $44,X                               ; $82E5B6 |
  LDA.W $0052,X                             ; $82E5B8 |
  INC A                                     ; $82E5BB |
  AND.W #$000F                              ; $82E5BC |
  STA.W $0052,X                             ; $82E5BF |
  ASL A                                     ; $82E5C2 |
  ASL A                                     ; $82E5C3 |
  TAY                                       ; $82E5C4 |
  LDA.W LOOSE_OP_009510,Y                   ; $82E5C5 |
  STA.B $00                                 ; $82E5C8 |
  LDA.W LOOSE_OP_009512,Y                   ; $82E5CA |
  STA.W $004E,X                             ; $82E5CD |
  JMP.W ($0000)                             ; $82E5D0 |

CODE_JP_82E5D3:
  LDA.B $27,X                               ; $82E5D3 |
  EOR.W #$FFFF                              ; $82E5D5 |
  INC A                                     ; $82E5D8 |
  JSL.L CODE_FL_82D02E                      ; $82E5D9 |
  LDA.W #$002B                              ; $82E5DD |
  JSL.L CODE_FL_82B42F                      ; $82E5E0 |
  JMP.W CODE_FL_82CEC6                      ; $82E5E4 |

CODE_JP_82E5E7:
  LDA.W #$0004                              ; $82E5E7 |
  JSL.L CODE_FL_82D03F                      ; $82E5EA |
  LDA.W #$002B                              ; $82E5EE |
  JSL.L CODE_FL_82B42F                      ; $82E5F1 |
  JMP.W CODE_FL_82CEC6                      ; $82E5F5 |

CODE_JP_82E5F8:
  LDY.W #$9550                              ; $82E5F8 |
  JSL.L CODE_FL_82D20D                      ; $82E5FB |
  LDA.W #$0001                              ; $82E5FF |
  STA.B $3A,X                               ; $82E602 |
  LDA.W #$0008                              ; $82E604 |
  STA.B $1A,X                               ; $82E607 |
  BRA CODE_82E619                           ; $82E609 |

CODE_82E60B:
  LDY.W #$9550                              ; $82E60B |
  JSL.L CODE_FL_82D20D                      ; $82E60E |
  STZ.B $3A,X                               ; $82E612 |
  LDA.W #$0008                              ; $82E614 |
  STA.B $1A,X                               ; $82E617 |

CODE_82E619:
  JSR.W CODE_FN_82E74E                      ; $82E619 |
  JSL.L CODE_FL_82B8D1                      ; $82E61C |
  LDA.W #$0004                              ; $82E620 |
  JSL.L CODE_FL_82D219                      ; $82E623 |
  TDC                                       ; $82E627 |
  LDY.W #$0100                              ; $82E628 |
  JSL.L CODE_FL_82CB1D                      ; $82E62B |
  LDA.W #$0100                              ; $82E62F |
  LDY.W #$0800                              ; $82E632 |
  JSL.L CODE_FL_82CB77                      ; $82E635 |
  BEQ CODE_82E63E                           ; $82E639 |
  JMP.W CODE_JP_82E5E7                      ; $82E63B |

CODE_82E63E:
  LDA.W #$001A                              ; $82E63E |
  JSL.L CODE_FL_8AF69F                      ; $82E641 |
  LDY.W #$0C00                              ; $82E645 |
  JSL.L CODE_FL_82C936                      ; $82E648 |
  JSL.L CODE_FL_82CFCF                      ; $82E64C |
  LDA.W #$FE00                              ; $82E650 |
  STA.B $2A,X                               ; $82E653 |
  LDA.W #$0010                              ; $82E655 |
  STA.B $38,X                               ; $82E658 |
  INC.B $1A,X                               ; $82E65A |

CODE_82E65C:
  JSR.W CODE_FN_82E74E                      ; $82E65C |
  JSL.L CODE_FL_82B8D1                      ; $82E65F |
  JSL.L CODE_FL_82C8C4                      ; $82E663 |
  LDY.W #$FF01                              ; $82E667 |
  LDA.W #$00FF                              ; $82E66A |
  JSL.L CODE_FL_82CBE2                      ; $82E66D |
  DEC.B $38,X                               ; $82E671 |
  BMI CODE_82E678                           ; $82E673 |
  JMP.W CODE_JP_82E5D3                      ; $82E675 |

CODE_82E678:
  LDA.W #$0034                              ; $82E678 |
  JSL.L CODE_FL_8AF69F                      ; $82E67B |
  JSL.L CODE_FL_82D007                      ; $82E67F |
  LDA.W #$0005                              ; $82E683 |
  LDY.W #$FFC0                              ; $82E686 |
  JSL.L CODE_FL_82D063                      ; $82E689 |
  INC.B $1A,X                               ; $82E68D |

CODE_82E68F:
  JSR.W CODE_FN_82E74E                      ; $82E68F |
  JSL.L CODE_FL_82C8BC                      ; $82E692 |
  CMP.W #$0050                              ; $82E696 |
  BMI CODE_82E69E                           ; $82E699 |
  JMP.W CODE_JP_82E5D3                      ; $82E69B |

CODE_82E69E:
  LDA.B $3A,X                               ; $82E69E |
  BNE CODE_82E6B7                           ; $82E6A0 |
  JSR.W CODE_FN_82EB85                      ; $82E6A2 |

CODE_82E6A5:
  LDA.W #$004E                              ; $82E6A5 |
  JSL.L CODE_FL_8AF69F                      ; $82E6A8 |
  LDA.W #$0010                              ; $82E6AC |
  STA.B $38,X                               ; $82E6AF |
  LDA.W #$000D                              ; $82E6B1 |
  STA.B $1A,X                               ; $82E6B4 |
  RTL                                       ; $82E6B6 |

CODE_82E6B7:
  JSR.W CODE_FN_82EB85                      ; $82E6B7 |
  LDA.W #$0008                              ; $82E6BA |
  STA.B $38,X                               ; $82E6BD |
  LDA.W #$000B                              ; $82E6BF |
  STA.B $1A,X                               ; $82E6C2 |

CODE_82E6C4:
  JSR.W CODE_FN_82E74E                      ; $82E6C4 |
  JSL.L CODE_FL_82D1BF                      ; $82E6C7 |
  DEC.B $38,X                               ; $82E6CB |
  BMI CODE_82E6D2                           ; $82E6CD |
  JMP.W CODE_JP_82E5D3                      ; $82E6CF |

CODE_82E6D2:
  LDA.B $3A,X                               ; $82E6D2 |
  BMI CODE_82E6A5                           ; $82E6D4 |
  BEQ CODE_82E6DC                           ; $82E6D6 |
  JSL.L CODE_FL_82D007                      ; $82E6D8 |

CODE_82E6DC:
  LDA.W #$001A                              ; $82E6DC |
  JSL.L CODE_FL_8AF69F                      ; $82E6DF |
  LDA.W #$0006                              ; $82E6E3 |
  STA.B $38,X                               ; $82E6E6 |
  INC.B $1A,X                               ; $82E6E8 |

CODE_82E6EA:
  JSR.W CODE_FN_82E74E                      ; $82E6EA |
  JSL.L CODE_FL_82B8D1                      ; $82E6ED |
  DEC.B $38,X                               ; $82E6F1 |
  BMI CODE_82E6F8                           ; $82E6F3 |
  JMP.W CODE_JP_82E5E7                      ; $82E6F5 |

CODE_82E6F8:
  LDA.W #$0034                              ; $82E6F8 |
  JSL.L CODE_FL_8AF69F                      ; $82E6FB |
  JSL.L CODE_FL_82D007                      ; $82E6FF |
  DEC.B $3A,X                               ; $82E703 |
  BRA CODE_82E6B7                           ; $82E705 |

CODE_82E707:
  JSR.W CODE_FN_82E74E                      ; $82E707 |
  JSL.L CODE_FL_82D1BF                      ; $82E70A |
  DEC.B $38,X                               ; $82E70E |
  BMI CODE_82E715                           ; $82E710 |
  JMP.W CODE_JP_82E5E7                      ; $82E712 |

CODE_82E715:
  LDA.W #$0104                              ; $82E715 |
  JSL.L CODE_FL_8AF69F                      ; $82E718 |
  LDA.W #$0800                              ; $82E71C |
  STA.B $2A,X                               ; $82E71F |
  LDA.W #$FE00                              ; $82E721 |
  STA.B $28,X                               ; $82E724 |
  INC.B $1A,X                               ; $82E726 |

CODE_82E728:
  JSR.W CODE_FN_82E74E                      ; $82E728 |
  JSL.L CODE_FL_82B8D1                      ; $82E72B |
  JSL.L CODE_FL_82C913                      ; $82E72F |
  JSL.L CODE_FL_82CAD2                      ; $82E733 |
  BEQ CODE_82E73C                           ; $82E737 |
  JMP.W CODE_JP_82E5E7                      ; $82E739 |

CODE_82E73C:
  LDA.B $44,X                               ; $82E73C |
  BNE CODE_82E743                           ; $82E73E |
  JMP.W CODE_JP_82E573                      ; $82E740 |

CODE_82E743:
  DEC A                                     ; $82E743 |
  STA.B $44,X                               ; $82E744 |
  BNE CODE_82E74B                           ; $82E746 |
  JMP.W CODE_JP_82E573                      ; $82E748 |

CODE_82E74B:
  JMP.W CODE_JP_82E5F8                      ; $82E74B |

CODE_FN_82E74E:
  LDA.B $44,X                               ; $82E74E |
  BEQ CODE_82E765                           ; $82E750 |
  LDA.B $42                                 ; $82E752 |
  LSR A                                     ; $82E754 |
  BCC CODE_82E765                           ; $82E755 |
  PHX                                       ; $82E757 |
  LDY.W #$9468                              ; $82E758 |
  LDA.W #$000C                              ; $82E75B |
  JSL.L CODE_FL_80C2BF                      ; $82E75E |
  PLX                                       ; $82E762 |
  STZ.B $5E,X                               ; $82E763 |

CODE_82E765:
  RTS                                       ; $82E765 |

CODE_82E766:
  LDA.W #$001A                              ; $82E766 |
  JSL.L CODE_FL_8AF69F                      ; $82E769 |
  LDA.W #$0020                              ; $82E76D |
  STA.B $38,X                               ; $82E770 |
  LDA.W #$0010                              ; $82E772 |
  STA.B $1A,X                               ; $82E775 |

CODE_82E777:
  JSL.L CODE_FL_82CFCF                      ; $82E777 |
  LDA.W #$0800                              ; $82E77B |
  JSL.L CODE_FL_82CC3A                      ; $82E77E |
  BEQ CODE_82E787                           ; $82E782 |
  JMP.W CODE_JP_82E5D3                      ; $82E784 |

CODE_82E787:
  DEC.B $38,X                               ; $82E787 |
  BMI CODE_82E78E                           ; $82E789 |
  JMP.W CODE_JP_82E5D3                      ; $82E78B |

CODE_82E78E:
  LDA.W #$0104                              ; $82E78E |
  JSL.L CODE_FL_8AF69F                      ; $82E791 |
  LDA.W #$0010                              ; $82E795 |
  STA.B $38,X                               ; $82E798 |
  INC.B $1A,X                               ; $82E79A |

CODE_82E79C:
  DEC.B $38,X                               ; $82E79C |
  BEQ CODE_82E7A3                           ; $82E79E |
  JMP.W CODE_JP_82E5E7                      ; $82E7A0 |

CODE_82E7A3:
  LDY.W #$9562                              ; $82E7A3 |
  LDA.W #$0006                              ; $82E7A6 |
  JSL.L CODE_FL_82D210                      ; $82E7A9 |
  LDY.W #$0C00                              ; $82E7AD |
  JSL.L CODE_FL_82C936                      ; $82E7B0 |
  LDA.B $44,X                               ; $82E7B4 |
  BNE CODE_82E7BB                           ; $82E7B6 |
  LDA.W #$0050                              ; $82E7B8 |

CODE_82E7BB:
  STA.B $38,X                               ; $82E7BB |
  INC.B $1A,X                               ; $82E7BD |

CODE_82E7BF:
  LDA.B $44,X                               ; $82E7BF |
  BEQ CODE_82E7CA                           ; $82E7C1 |
  LDA.W #$0C00                              ; $82E7C3 |
  JSL.L CODE_FL_82CC3A                      ; $82E7C6 |

CODE_82E7CA:
  LDA.W #$0006                              ; $82E7CA |
  JSL.L CODE_FL_82D219                      ; $82E7CD |
  LDA.B $38,X                               ; $82E7D1 |
  AND.W #$000F                              ; $82E7D3 |
  BNE CODE_82E808                           ; $82E7D6 |
  LDA.W #$0036                              ; $82E7D8 |
  JSL.L CODE_FL_82CD2F                      ; $82E7DB |
  BCC CODE_82E808                           ; $82E7DF |
  LDA.W #$8390                              ; $82E7E1 |
  STA.W $0038,Y                             ; $82E7E4 |
  LDA.W #$00C0                              ; $82E7E7 |
  STA.W $0006,Y                             ; $82E7EA |
  LDA.W #$FFE8                              ; $82E7ED |
  STA.W $003C,Y                             ; $82E7F0 |
  PHY                                       ; $82E7F3 |
  LDA.B $86                                 ; $82E7F4 |
  AND.W #$0006                              ; $82E7F6 |
  TAY                                       ; $82E7F9 |
  LDA.W CODE_009618,Y                       ; $82E7FA |
  PLY                                       ; $82E7FD |
  STA.W $0002,Y                             ; $82E7FE |
  LDA.W #$002C                              ; $82E801 |
  JSL.L CODE_FL_8089BD                      ; $82E804 |

CODE_82E808:
  DEC.B $38,X                               ; $82E808 |
  BMI CODE_82E80F                           ; $82E80A |
  JMP.W CODE_JP_82E5E7                      ; $82E80C |

CODE_82E80F:
  INC.B $1A,X                               ; $82E80F |

CODE_82E811:
  LDA.W #$0006                              ; $82E811 |
  JSL.L CODE_FL_82D257                      ; $82E814 |
  BCC CODE_82E81D                           ; $82E818 |
  JMP.W CODE_JP_82E5E7                      ; $82E81A |

CODE_82E81D:
  LDA.W #$0104                              ; $82E81D |
  JSL.L CODE_FL_8AF69F                      ; $82E820 |
  LDA.W #$0020                              ; $82E824 |
  STA.B $38,X                               ; $82E827 |
  INC.B $1A,X                               ; $82E829 |

CODE_82E82B:
  DEC.B $38,X                               ; $82E82B |
  BMI CODE_82E832                           ; $82E82D |
  JMP.W CODE_JP_82E5E7                      ; $82E82F |

CODE_82E832:
  JMP.W CODE_JP_82E573                      ; $82E832 |

CODE_82E835:
  LDA.W #$001A                              ; $82E835 |
  JSL.L CODE_FL_8AF69F                      ; $82E838 |
  JSL.L CODE_FL_82CFF3                      ; $82E83C |
  LDA.W #$F600                              ; $82E840 |
  STA.B $28,X                               ; $82E843 |
  LDY.W #$F600                              ; $82E845 |
  JSL.L CODE_FL_82C945                      ; $82E848 |
  STZ.B $38,X                               ; $82E84C |
  LDA.W #$0016                              ; $82E84E |
  STA.B $1A,X                               ; $82E851 |

CODE_JP_82E853:
  LDY.W #$FF01                              ; $82E853 |
  LDA.W #$00FF                              ; $82E856 |
  JSL.L CODE_FL_82CBA4                      ; $82E859 |
  JSL.L CODE_FL_82CFCF                      ; $82E85D |
  JSL.L CODE_FL_82CAD2                      ; $82E861 |
  BNE CODE_82E874                           ; $82E865 |
  LDA.B $38,X                               ; $82E867 |
  BNE CODE_82E874                           ; $82E869 |
  INC.B $38,X                               ; $82E86B |
  LDA.W #$0038                              ; $82E86D |
  JSL.L push_sound_queue                    ; $82E870 |

CODE_82E874:
  LDY.W #$0400                              ; $82E874 |
  LDA.W #$01E0                              ; $82E877 |
  JSL.L CODE_FL_82CB77                      ; $82E87A |
  BEQ CODE_82E883                           ; $82E87E |
  JMP.W CODE_JP_82E5E7                      ; $82E880 |

CODE_82E883:
  LDA.B $31,X                               ; $82E883 |
  BEQ CODE_82E88A                           ; $82E885 |
  JMP.W CODE_JP_82E5E7                      ; $82E887 |

CODE_82E88A:
  LDA.W #$0001                              ; $82E88A |
  STA.W $1C9A                               ; $82E88D |
  LDA.W #$0000                              ; $82E890 |
  JSL.L CODE_FL_8AF69F                      ; $82E893 |
  LDY.W #$8496                              ; $82E897 |
  LDA.W #$0006                              ; $82E89A |
  JSL.L CODE_FL_828AD9                      ; $82E89D |
  LDA.B $44,X                               ; $82E8A1 |
  BNE CODE_82E8AA                           ; $82E8A3 |
  LDA.W #$0030                              ; $82E8A5 |
  STA.B $1E,X                               ; $82E8A8 |

CODE_82E8AA:
  STZ.B $5E,X                               ; $82E8AA |
  INC.B $1A,X                               ; $82E8AC |

CODE_82E8AE:
  LDA.B $1C,X                               ; $82E8AE |
  BNE CODE_JP_82E8BE                        ; $82E8B0 |
  LDA.W #$8039                              ; $82E8B2 |
  LDY.W #$0F40                              ; $82E8B5 |
  JSL.L CODE_FL_82CD78                      ; $82E8B8 |
  INC.B $1A,X                               ; $82E8BC |

CODE_JP_82E8BE:
  LDA.W #$002B                              ; $82E8BE |
  JML.L CODE_FL_82B42F                      ; $82E8C1 |

CODE_JP_82E8C5:
  LDA.W $1C16                               ; $82E8C5 |
  BNE CODE_JP_82E8BE                        ; $82E8C8 |
  LDA.B $44,X                               ; $82E8CA |
  BEQ CODE_82E8D2                           ; $82E8CC |
  DEC.B $44,X                               ; $82E8CE |
  BNE CODE_82E8E3                           ; $82E8D0 |

CODE_82E8D2:
  STZ.W $1C9A                               ; $82E8D2 |
  STZ.B $00,X                               ; $82E8D5 |
  PHX                                       ; $82E8D7 |
  LDY.W #$B85B                              ; $82E8D8 |
  JSL.L CODE_FL_80C277                      ; $82E8DB |
  PLX                                       ; $82E8DF |
  JMP.W CODE_JP_82E573                      ; $82E8E0 |

CODE_82E8E3:
  JSL.L CODE_FL_82CA81                      ; $82E8E3 |
  LDA.W #$0016                              ; $82E8E7 |
  STA.B $1A,X                               ; $82E8EA |
  JMP.W CODE_JP_82E853                      ; $82E8EC |

CODE_JP_82E8EF:
  LDY.W #$9550                              ; $82E8EF |
  JSL.L CODE_FL_82D20D                      ; $82E8F2 |
  JSL.L CODE_FL_82CFBD                      ; $82E8F6 |
  LDA.W #$0023                              ; $82E8FA |
  STA.B $1A,X                               ; $82E8FD |

CODE_82E8FF:
  LDA.W #$0004                              ; $82E8FF |
  JSL.L CODE_FL_82D219                      ; $82E902 |
  JSL.L CODE_FL_82CAD2                      ; $82E906 |
  LDY.W #$0800                              ; $82E90A |
  LDA.W #$01E0                              ; $82E90D |
  JSL.L CODE_FL_82CB77                      ; $82E910 |
  BEQ CODE_82E919                           ; $82E914 |
  JMP.W CODE_JP_82E5E7                      ; $82E916 |

CODE_82E919:
  LDA.W #$0001                              ; $82E919 |
  STA.W $1C9A                               ; $82E91C |
  LDA.W #$0000                              ; $82E91F |
  JSL.L CODE_FL_8AF69F                      ; $82E922 |
  LDA.W #$345A                              ; $82E926 |
  STA.B $00,X                               ; $82E929 |
  LDY.W #$0400                              ; $82E92B |
  JSL.L CODE_FL_82C94B                      ; $82E92E |
  LDA.W #$F600                              ; $82E932 |
  STA.B $28,X                               ; $82E935 |
  INC.B $1A,X                               ; $82E937 |

CODE_82E939:
  JSL.L CODE_FL_82C87C                      ; $82E939 |
  JSL.L CODE_FL_82CAD2                      ; $82E93D |
  LDA.B $28,X                               ; $82E941 |
  AND.W #$FF00                              ; $82E943 |
  BNE CODE_82E969                           ; $82E946 |
  LDA.W #$3478                              ; $82E948 |
  STA.B $00,X                               ; $82E94B |
  LDA.W #$803D                              ; $82E94D |
  LDY.W #$0F40                              ; $82E950 |
  JSL.L CODE_FL_82CD78                      ; $82E953 |
  LDA.B $04,X                               ; $82E957 |
  STA.W $0004,Y                             ; $82E959 |
  JSL.L CODE_FL_82EA3B                      ; $82E95C |
  LDA.W #$0020                              ; $82E960 |
  JSL.L CODE_FL_8089BD                      ; $82E963 |
  INC.B $1A,X                               ; $82E967 |

CODE_82E969:
  JMP.W CODE_JP_82E8BE                      ; $82E969 |

CODE_82E96C:
  JSL.L CODE_FL_82C87C                      ; $82E96C |
  JSL.L CODE_FL_82CAD2                      ; $82E970 |
  BNE CODE_82E993                           ; $82E974 |
  STZ.B $26,X                               ; $82E976 |
  LDA.W $1C16                               ; $82E978 |
  BNE CODE_82E993                           ; $82E97B |
  STZ.W $1C9A                               ; $82E97D |
  STZ.B $00,X                               ; $82E980 |
  LDA.B $44,X                               ; $82E982 |
  BNE CODE_82E989                           ; $82E984 |
  JMP.W CODE_JP_82E573                      ; $82E986 |

CODE_82E989:
  DEC.B $44,X                               ; $82E989 |
  BNE CODE_82E990                           ; $82E98B |
  JMP.W CODE_JP_82E573                      ; $82E98D |

CODE_82E990:
  JMP.W CODE_JP_82E8EF                      ; $82E990 |

CODE_82E993:
  JMP.W CODE_JP_82E8BE                      ; $82E993 |

CODE_82E996:
  LDY.W #$9550                              ; $82E996 |
  JSL.L CODE_FL_82D20D                      ; $82E999 |
  LDY.W #$0400                              ; $82E99D |
  JSL.L CODE_FL_82C94B                      ; $82E9A0 |
  JSL.L CODE_FL_82CFBD                      ; $82E9A4 |
  LDA.W #$001A                              ; $82E9A8 |
  STA.B $1A,X                               ; $82E9AB |

CODE_82E9AD:
  LDA.W #$0004                              ; $82E9AD |
  JSL.L CODE_FL_82D219                      ; $82E9B0 |
  JSL.L CODE_FL_82CAD2                      ; $82E9B4 |
  LDY.W #$FFC0                              ; $82E9B8 |
  LDA.W #$0040                              ; $82E9BB |
  JSL.L CODE_FL_82CBA4                      ; $82E9BE |
  BNE CODE_82E9C6                           ; $82E9C2 |
  STZ.B $26,X                               ; $82E9C4 |

CODE_82E9C6:
  LDY.W #$0800                              ; $82E9C6 |
  LDA.W #$01E0                              ; $82E9C9 |
  JSL.L CODE_FL_82CB77                      ; $82E9CC |
  BEQ CODE_82E9D5                           ; $82E9D0 |
  JMP.W CODE_JP_82E5E7                      ; $82E9D2 |

CODE_82E9D5:
  LDA.B $26,X                               ; $82E9D5 |
  BEQ CODE_82E9DC                           ; $82E9D7 |
  JMP.W CODE_JP_82E5E7                      ; $82E9D9 |

CODE_82E9DC:
  LDA.W #$0001                              ; $82E9DC |
  STA.W $1C9A                               ; $82E9DF |
  LDA.W #$0000                              ; $82E9E2 |
  JSL.L CODE_FL_8AF69F                      ; $82E9E5 |
  LDY.W #$849E                              ; $82E9E9 |
  LDA.W #$0006                              ; $82E9EC |
  JSL.L CODE_FL_828AD9                      ; $82E9EF |
  LDA.W #$0008                              ; $82E9F3 |
  STA.B $1E,X                               ; $82E9F6 |
  LDA.B $3E,X                               ; $82E9F8 |
  INC A                                     ; $82E9FA |
  AND.W #$0007                              ; $82E9FB |
  STA.B $3E,X                               ; $82E9FE |
  LDY.W #$0000                              ; $82EA00 |
  CMP.W #$0004                              ; $82EA03 |
  BPL CODE_82EA0B                           ; $82EA06 |
  LDY.W #$2020                              ; $82EA08 |

CODE_82EA0B:
  STY.B $04,X                               ; $82EA0B |
  INC.B $1A,X                               ; $82EA0D |

CODE_82EA0F:
  JSL.L CODE_FL_82CAD2                      ; $82EA0F |
  LDA.B $1C,X                               ; $82EA13 |
  BNE CODE_82EA38                           ; $82EA15 |
  LDA.W #$803B                              ; $82EA17 |
  LDY.W #$0F40                              ; $82EA1A |
  JSL.L CODE_FL_82CD78                      ; $82EA1D |
  LDA.B $3E,X                               ; $82EA21 |
  STA.W $0038,Y                             ; $82EA23 |
  LDA.B $04,X                               ; $82EA26 |
  STA.W $0004,Y                             ; $82EA28 |
  JSL.L CODE_FL_82EA3B                      ; $82EA2B |
  LDA.W #$0020                              ; $82EA2F |
  JSL.L CODE_FL_8089BD                      ; $82EA32 |
  INC.B $1A,X                               ; $82EA36 |

CODE_82EA38:
  JMP.W CODE_JP_82E8BE                      ; $82EA38 |

CODE_FL_82EA3B:
  LDA.W #$003A                              ; $82EA3B |
  LDY.W #$0FA0                              ; $82EA3E |
  JSL.L CODE_FL_82CD78                      ; $82EA41 |
  LDA.W #$003A                              ; $82EA45 |
  LDY.W #$1000                              ; $82EA48 |
  JSL.L CODE_FL_82CD78                      ; $82EA4B |
  LDA.W #$003A                              ; $82EA4F |
  LDY.W #$1060                              ; $82EA52 |
  JSL.L CODE_FL_82CD78                      ; $82EA55 |
  LDA.W #$003A                              ; $82EA59 |
  LDY.W #$10C0                              ; $82EA5C |
  JSL.L CODE_FL_82CD78                      ; $82EA5F |
  LDA.W #$003A                              ; $82EA63 |
  LDY.W #$1120                              ; $82EA66 |
  JSL.L CODE_FL_82CD78                      ; $82EA69 |
  LDA.W #$003A                              ; $82EA6D |
  LDY.W #$1180                              ; $82EA70 |
  JSL.L CODE_FL_82CD78                      ; $82EA73 |
  LDA.W #$003A                              ; $82EA77 |
  LDY.W #$11E0                              ; $82EA7A |
  JSL.L CODE_FL_82CD78                      ; $82EA7D |
  LDA.W #$00C0                              ; $82EA81 |
  JSL.L CODE_FL_82EAAB                      ; $82EA84 |
  LDA.W #$0042                              ; $82EA88 |
  LDY.B $90                                 ; $82EA8B |
  CPY.W #$0002                              ; $82EA8D |
  BNE CODE_82EA95                           ; $82EA90 |
  LDA.W #$0045                              ; $82EA92 |

CODE_82EA95:
  STA.W $0FA2                               ; $82EA95 |
  STA.W $1002                               ; $82EA98 |
  STA.W $1062                               ; $82EA9B |
  STA.W $10C2                               ; $82EA9E |
  STA.W $1122                               ; $82EAA1 |
  STA.W $1182                               ; $82EAA4 |
  STA.W $11E2                               ; $82EAA7 |
  RTL                                       ; $82EAAA |

CODE_FL_82EAAB:
  STA.W $0FA6                               ; $82EAAB |
  STA.W $1006                               ; $82EAAE |
  STA.W $1066                               ; $82EAB1 |
  STA.W $10C6                               ; $82EAB4 |
  STA.W $1126                               ; $82EAB7 |
  STA.W $1186                               ; $82EABA |
  STA.W $11E6                               ; $82EABD |
  RTL                                       ; $82EAC0 |

CODE_82EAC1:
  JMP.W CODE_JP_82E8C5                      ; $82EAC1 |

CODE_82EAC4:
  LDA.W #$001A                              ; $82EAC4 |
  JSL.L CODE_FL_8AF69F                      ; $82EAC7 |
  JSL.L CODE_FL_82CFBD                      ; $82EACB |
  STZ.B $38,X                               ; $82EACF |
  LDA.W #$001E                              ; $82EAD1 |
  STA.B $1A,X                               ; $82EAD4 |

CODE_82EAD6:
  JSL.L CODE_FL_82CAD2                      ; $82EAD6 |
  LDY.W #$0800                              ; $82EADA |
  LDA.W #$01E0                              ; $82EADD |
  JSL.L CODE_FL_82CB77                      ; $82EAE0 |
  BEQ CODE_82EAE9                           ; $82EAE4 |
  JMP.W CODE_JP_82E5E7                      ; $82EAE6 |

CODE_82EAE9:
  LDA.W #$0001                              ; $82EAE9 |
  STA.W $1C9A                               ; $82EAEC |
  LDA.W #$0000                              ; $82EAEF |
  JSL.L CODE_FL_8AF69F                      ; $82EAF2 |
  LDA.W #$339E                              ; $82EAF6 |
  STA.B $00,X                               ; $82EAF9 |
  LDA.W #$F600                              ; $82EAFB |
  STA.B $28,X                               ; $82EAFE |
  LDA.W #$0050                              ; $82EB00 |
  STA.B $1E,X                               ; $82EB03 |
  INC.B $1A,X                               ; $82EB05 |

CODE_82EB07:
  JSL.L CODE_FL_82CAD2                      ; $82EB07 |
  BNE CODE_82EB20                           ; $82EB0B |
  LDA.W #$0038                              ; $82EB0D |
  JSL.L push_sound_queue                    ; $82EB10 |
  LDA.W #$33D0                              ; $82EB14 |
  STA.B $00,X                               ; $82EB17 |
  LDA.W #$0010                              ; $82EB19 |
  STA.B $38,X                               ; $82EB1C |
  INC.B $1A,X                               ; $82EB1E |

CODE_82EB20:
  JMP.W CODE_JP_82E8BE                      ; $82EB20 |

CODE_82EB23:
  DEC.B $38,X                               ; $82EB23 |
  BPL CODE_82EB41                           ; $82EB25 |
  LDA.W #$803C                              ; $82EB27 |
  LDY.W #$0F40                              ; $82EB2A |
  JSL.L CODE_FL_82CD78                      ; $82EB2D |
  LDA.W #$001A                              ; $82EB31 |
  JSL.L CODE_FL_82CD2F                      ; $82EB34 |
  LDA.W #$002C                              ; $82EB38 |
  JSL.L CODE_FL_8089BD                      ; $82EB3B |
  INC.B $1A,X                               ; $82EB3F |

CODE_82EB41:
  JMP.W CODE_JP_82E8BE                      ; $82EB41 |

CODE_82EB44:
  LDA.W $1C16                               ; $82EB44 |
  BEQ CODE_82EB4C                           ; $82EB47 |
  JMP.W CODE_JP_82E8BE                      ; $82EB49 |

CODE_82EB4C:
  LDA.W #$0006                              ; $82EB4C |
  STA.B $5E,X                               ; $82EB4F |
  STZ.W $1C9A                               ; $82EB51 |
  STZ.B $00,X                               ; $82EB54 |
  LDA.B $40,X                               ; $82EB56 |
  CLC                                       ; $82EB58 |
  ADC.W #$0020                              ; $82EB59 |
  AND.W #$01FF                              ; $82EB5C |
  LSR A                                     ; $82EB5F |
  LSR A                                     ; $82EB60 |
  LSR A                                     ; $82EB61 |
  LSR A                                     ; $82EB62 |
  AND.W #$001C                              ; $82EB63 |
  TAY                                       ; $82EB66 |
  LDA.W LOOSE_OP_0095F8,Y                   ; $82EB67 |
  STA.B $00                                 ; $82EB6A |
  LDA.W CODE_0095FA,Y                       ; $82EB6C |
  STA.B $44,X                               ; $82EB6F |
  JMP.W ($0000)                             ; $82EB71 |

  LDA.W $1C9C                               ; $82EB74 |
  ORA.W #$0001                              ; $82EB77 |
  STA.W $1C9C                               ; $82EB7A |
  LDA.W #$0100                              ; $82EB7D |
  STA.B $4E,X                               ; $82EB80 |
  JMP.W CODE_JP_82E573                      ; $82EB82 |

CODE_FN_82EB85:
  LDY.W #$0F40                              ; $82EB85 |
  LDA.W #$8033                              ; $82EB88 |
  CMP.W $0018,Y                             ; $82EB8B |
  BEQ CODE_82EBA3                           ; $82EB8E |
  JSL.L CODE_FL_82CD78                      ; $82EB90 |
  LDA.W $1FC6                               ; $82EB94 |
  LSR A                                     ; $82EB97 |
  LDA.W #$0003                              ; $82EB98 |
  BCC CODE_82EBA0                           ; $82EB9B |
  LDA.W #$0004                              ; $82EB9D |

CODE_82EBA0:
  STA.W $0038,Y                             ; $82EBA0 |

CODE_82EBA3:
  RTS                                       ; $82EBA3 |

CODE_82EBA4:
  LDA.W #$001A                              ; $82EBA4 |
  JSL.L CODE_FL_8AF69F                      ; $82EBA7 |
  LDA.W #$0008                              ; $82EBAB |
  STA.B $38,X                               ; $82EBAE |
  LDA.B $42,X                               ; $82EBB0 |
  INC A                                     ; $82EBB2 |
  AND.W #$0007                              ; $82EBB3 |
  STA.B $42,X                               ; $82EBB6 |
  CMP.W #$0004                              ; $82EBB8 |
  BPL CODE_82EBC2                           ; $82EBBB |
  LDY.W #$F400                              ; $82EBBD |
  BRA CODE_82EBC5                           ; $82EBC0 |

CODE_82EBC2:
  LDY.W #$0C00                              ; $82EBC2 |

CODE_82EBC5:
  STY.B $26,X                               ; $82EBC5 |
  JSL.L CODE_FL_82C94B                      ; $82EBC7 |
  STZ.B $28,X                               ; $82EBCB |
  STZ.B $2A,X                               ; $82EBCD |
  LDA.W #$0027                              ; $82EBCF |
  STA.B $1A,X                               ; $82EBD2 |

CODE_82EBD4:
  JSL.L CODE_FL_82C8C0                      ; $82EBD4 |
  JSL.L CODE_FL_82CAD2                      ; $82EBD8 |
  DEC.B $38,X                               ; $82EBDC |
  BMI CODE_82EBE3                           ; $82EBDE |
  JMP.W CODE_JP_82E5D3                      ; $82EBE0 |

CODE_82EBE3:
  LDA.B $31,X                               ; $82EBE3 |
  BPL CODE_82EBEA                           ; $82EBE5 |
  JMP.W CODE_JP_82E5D3                      ; $82EBE7 |

CODE_82EBEA:
  LDA.B $50,X                               ; $82EBEA |
  STA.B $1A,X                               ; $82EBEC |
  JMP.W CODE_JP_82E5D3                      ; $82EBEE |

CODE_82EBF1:
  LDA.W #$0010                              ; $82EBF1 |
  STA.B $38,X                               ; $82EBF4 |
  STZ.W $1FD4                               ; $82EBF6 |
  LDA.W #$0068                              ; $82EBF9 |
  JSL.L CODE_FL_8AF69F                      ; $82EBFC |
  LDY.W #$0100                              ; $82EC00 |
  JSL.L CODE_FL_82C936                      ; $82EC03 |
  JSL.L CODE_FL_82CFC9                      ; $82EC07 |
  LDA.W #$0004                              ; $82EC0B |
  STA.B $5E,X                               ; $82EC0E |
  STZ.B $2A,X                               ; $82EC10 |
  LDA.W #$0029                              ; $82EC12 |
  STA.B $1A,X                               ; $82EC15 |

CODE_82EC17:
  DEC.B $38,X                               ; $82EC17 |
  BPL CODE_82EC30                           ; $82EC19 |
  LDA.W $1C70                               ; $82EC1B |
  BEQ CODE_82EC22                           ; $82EC1E |
  INC.B $1A,X                               ; $82EC20 |

CODE_82EC22:
  LDA.W #$0008                              ; $82EC22 |
  STA.B $38,X                               ; $82EC25 |
  LDY.W $0EDC                               ; $82EC27 |
  BNE CODE_82EC30                           ; $82EC2A |
  LDA.B $50,X                               ; $82EC2C |
  STA.B $1A,X                               ; $82EC2E |

CODE_82EC30:
  LDA.W #$002B                              ; $82EC30 |
  JSL.L CODE_FL_82B452                      ; $82EC33 |
  JSL.L CODE_FL_82C913                      ; $82EC37 |
  JMP.W CODE_FL_82CEC6                      ; $82EC3B |

CODE_82EC3E:
  LDA.W $1C70                               ; $82EC3E |
  BNE CODE_82EC30                           ; $82EC41 |
  LDA.B $50,X                               ; $82EC43 |
  STA.B $1A,X                               ; $82EC45 |
  RTL                                       ; $82EC47 |

CODE_82EC48:
  LDA.W #$009C                              ; $82EC48 |
  JSL.L CODE_FL_8AF69F                      ; $82EC4B |
  STZ.B $00,X                               ; $82EC4F |
  STZ.W $1C9A                               ; $82EC51 |
  LDA.W #$0001                              ; $82EC54 |
  STA.W $1C74                               ; $82EC57 |
  STZ.W $1FD4                               ; $82EC5A |
  LDA.W #$0006                              ; $82EC5D |
  STA.B $5E,X                               ; $82EC60 |
  STZ.B $5A,X                               ; $82EC62 |
  STZ.B $38,X                               ; $82EC64 |
  STZ.B $3A,X                               ; $82EC66 |
  LDY.W #$8BA7                              ; $82EC68 |
  JSL.L CODE_FL_82B81C                      ; $82EC6B |
  INC.B $1A,X                               ; $82EC6F |
  JML.L CODE_JL_82A9F6                      ; $82EC71 |

CODE_82EC75:
  LDA.W $1C16                               ; $82EC75 |
  BEQ CODE_82EC80                           ; $82EC78 |
  CMP.W #$0DC0                              ; $82EC7A |
  BEQ CODE_82EC80                           ; $82EC7D |
  RTL                                       ; $82EC7F |

CODE_82EC80:
  PHX                                       ; $82EC80 |
  LDX.W #DATA_888468                        ; $82EC81 |
  JSL.L sound_transfer_blocks               ; $82EC84 |
  PLX                                       ; $82EC88 |
  LDA.W #$0104                              ; $82EC89 |
  JSL.L CODE_FL_8AF69F                      ; $82EC8C |
  STZ.B $00,X                               ; $82EC90 |
  LDA.W #$0001                              ; $82EC92 |
  STA.W $1C6A                               ; $82EC95 |
  STZ.B $5E,X                               ; $82EC98 |
  LDA.W #$0080                              ; $82EC9A |
  STA.B $38,X                               ; $82EC9D |
  INC.B $1A,X                               ; $82EC9F |

CODE_82ECA1:
  LDA.W #$0100                              ; $82ECA1 |
  LDY.W #$0A00                              ; $82ECA4 |
  JSL.L CODE_FL_82CB1D                      ; $82ECA7 |
  LDA.W #$01E0                              ; $82ECAB |
  LDY.W #$0A00                              ; $82ECAE |
  JSL.L CODE_FL_82CB77                      ; $82ECB1 |
  JSL.L CODE_FL_82CAD2                      ; $82ECB5 |
  BNE CODE_82ECC1                           ; $82ECB9 |
  DEC.B $38,X                               ; $82ECBB |
  BPL CODE_82ECC1                           ; $82ECBD |
  INC.B $1A,X                               ; $82ECBF |

CODE_82ECC1:
  LDA.W #$0004                              ; $82ECC1 |
  JSL.L CODE_FL_82D03F                      ; $82ECC4 |
  JMP.W CODE_FL_82CEC6                      ; $82ECC8 |

CODE_82ECCB:
  LDA.W #$886C                              ; $82ECCB |
  JSL.L CODE_FL_809934                      ; $82ECCE |
  BCC CODE_82ECF2                           ; $82ECD2 |
  LDA.W #$0001                              ; $82ECD4 |
  STA.W $1C9A                               ; $82ECD7 |
  LDA.W #$0000                              ; $82ECDA |
  JSL.L CODE_FL_8AF69F                      ; $82ECDD |
  LDA.W #$339E                              ; $82ECE1 |
  STA.B $00,X                               ; $82ECE4 |
  LDA.W #$F600                              ; $82ECE6 |
  STA.B $28,X                               ; $82ECE9 |
  JSL.L CODE_FL_82E225                      ; $82ECEB |
  INC.B $1A,X                               ; $82ECEF |
  RTL                                       ; $82ECF1 |

CODE_82ECF2:
  JSL.L CODE_FL_82EE46                      ; $82ECF2 |
  BRA CODE_82ECC1                           ; $82ECF6 |

CODE_82ECF8:
  JSL.L CODE_FL_82CAD2                      ; $82ECF8 |
  BNE CODE_82ED0A                           ; $82ECFC |
  LDA.W #$33D0                              ; $82ECFE |
  STA.B $00,X                               ; $82ED01 |
  LDA.W #$0010                              ; $82ED03 |
  STA.B $38,X                               ; $82ED06 |
  INC.B $1A,X                               ; $82ED08 |

CODE_82ED0A:
  RTL                                       ; $82ED0A |

CODE_82ED0B:
  DEC.B $38,X                               ; $82ED0B |
  BPL CODE_82ED2D                           ; $82ED0D |
  LDA.W #$803C                              ; $82ED0F |
  LDY.W #$0F40                              ; $82ED12 |
  JSL.L CODE_FL_82CD78                      ; $82ED15 |
  LDA.W #$0009                              ; $82ED19 |
  STA.W $001A,Y                             ; $82ED1C |
  LDA.W #$001A                              ; $82ED1F |
  JSL.L CODE_FL_82CD2F                      ; $82ED22 |
  LDA.W #$0040                              ; $82ED26 |
  STA.B $38,X                               ; $82ED29 |
  INC.B $1A,X                               ; $82ED2B |

CODE_82ED2D:
  RTL                                       ; $82ED2D |

CODE_82ED2E:
  DEC.B $38,X                               ; $82ED2E |
  BNE CODE_82ED2D                           ; $82ED30 |
  LDA.W #$8000                              ; $82ED32 |
  STA.W $1C68                               ; $82ED35 |
  RTL                                       ; $82ED38 |

CODE_82ED39:
  LDY.W #$0000                              ; $82ED39 |
  JSL.L CODE_FL_82B0E1                      ; $82ED3C |
  LDA.W #$000D                              ; $82ED40 |
  JSL.L push_sound_queue                    ; $82ED43 |
  LDA.W #$009C                              ; $82ED47 |
  JSL.L CODE_FL_8AF69F                      ; $82ED4A |
  STZ.B $00,X                               ; $82ED4E |
  PHX                                       ; $82ED50 |
  LDX.W #DATA_888468                        ; $82ED51 |
  JSL.L sound_transfer_blocks               ; $82ED54 |
  PLX                                       ; $82ED58 |
  STZ.B $26,X                               ; $82ED59 |
  STZ.B $2A,X                               ; $82ED5B |
  LDA.B $35,X                               ; $82ED5D |
  CMP.W #$00C0                              ; $82ED5F |
  BPL CODE_82ED69                           ; $82ED62 |
  LDA.W #$0400                              ; $82ED64 |
  STA.B $2A,X                               ; $82ED67 |

CODE_82ED69:
  LDA.W #$FC00                              ; $82ED69 |
  STA.B $28,X                               ; $82ED6C |
  TDC                                       ; $82ED6E |
  STA.B $31,X                               ; $82ED6F |
  LDA.W #$0040                              ; $82ED71 |
  STA.B $38,X                               ; $82ED74 |
  INC.B $1A,X                               ; $82ED76 |

CODE_82ED78:
  JSL.L CODE_FL_82C8C0                      ; $82ED78 |
  JSL.L CODE_FL_82CAD2                      ; $82ED7C |
  BNE CODE_82ED8D                           ; $82ED80 |
  STZ.B $31,X                               ; $82ED82 |
  LDA.W #$FC00                              ; $82ED84 |
  STA.B $28,X                               ; $82ED87 |
  STZ.B $2A,X                               ; $82ED89 |
  STZ.B $26,X                               ; $82ED8B |

CODE_82ED8D:
  DEC.B $38,X                               ; $82ED8D |
  BPL CODE_82ED97                           ; $82ED8F |
  LDA.B $31,X                               ; $82ED91 |
  BNE CODE_82ED97                           ; $82ED93 |
  INC.B $1A,X                               ; $82ED95 |

CODE_82ED97:
  JSL.L CODE_FL_82D1BF                      ; $82ED97 |
  JMP.W CODE_FL_82CEC6                      ; $82ED9B |

CODE_82ED9E:
  LDA.W #$87A7                              ; $82ED9E |
  JSL.L CODE_FL_809934                      ; $82EDA1 |
  BCC CODE_82EDC0                           ; $82EDA5 |
  LDA.W #$0002                              ; $82EDA7 |
  STA.W $1C68                               ; $82EDAA |
  LDA.W #$0080                              ; $82EDAD |
  STA.B $38,X                               ; $82EDB0 |
  LDA.W #$0001                              ; $82EDB2 |
  STA.W $1C66                               ; $82EDB5 |
  INC.B $1A,X                               ; $82EDB8 |
  JSL.L CODE_FL_82E225                      ; $82EDBA |
  BRA CODE_82EDC4                           ; $82EDBE |

CODE_82EDC0:
  JSL.L CODE_FL_82EE46                      ; $82EDC0 |

CODE_82EDC4:
  JSL.L CODE_FL_82D1BF                      ; $82EDC4 |
  JMP.W CODE_FL_82CEC6                      ; $82EDC8 |

CODE_82EDCB:
  DEC.B $38,X                               ; $82EDCB |
  BPL CODE_82EDC4                           ; $82EDCD |
  LDA.W #$0002                              ; $82EDCF |
  STA.W $1C5E                               ; $82EDD2 |
  STA.W $1C60                               ; $82EDD5 |
  JSL.L CODE_FL_82C13A                      ; $82EDD8 |
  INC.B $1A,X                               ; $82EDDC |
  BRA CODE_82EDC4                           ; $82EDDE |

CODE_82EDE0:
  LDA.W $1DE0                               ; $82EDE0 |
  CMP.W #$0002                              ; $82EDE3 |
  BMI CODE_82EDC4                           ; $82EDE6 |
  LDA.W #$0000                              ; $82EDE8 |
  JSL.L CODE_FL_8AF69F                      ; $82EDEB |
  INC.W $1C9A                               ; $82EDEF |
  PHX                                       ; $82EDF2 |
  LDA.B $12,X                               ; $82EDF3 |
  TAX                                       ; $82EDF5 |
  JSL.L CODE_FL_82CCD2                      ; $82EDF6 |
  LDX.W #$0700                              ; $82EDFA |
  JSL.L CODE_FL_82CC9F                      ; $82EDFD |
  LDX.W #$0E20                              ; $82EE01 |
  JSL.L CODE_FL_82CC9F                      ; $82EE04 |
  LDX.W #$0E80                              ; $82EE08 |
  JSL.L CODE_FL_82CC9F                      ; $82EE0B |
  LDX.W #$0EE0                              ; $82EE0F |
  JSL.L CODE_FL_82CC9F                      ; $82EE12 |
  PLX                                       ; $82EE16 |
  INC.B $1A,X                               ; $82EE17 |
  LDA.W #$01C0                              ; $82EE19 |
  STA.B $38,X                               ; $82EE1C |
  BRA CODE_82EDC4                           ; $82EE1E |

CODE_82EE20:
  DEC.B $38,X                               ; $82EE20 |
  BNE CODE_82EE2A                           ; $82EE22 |
  LDA.W #$FFFF                              ; $82EE24 |
  STA.W $1C68                               ; $82EE27 |

CODE_82EE2A:
  LDA.B $38,X                               ; $82EE2A |
  CMP.W #$0180                              ; $82EE2C |
  BNE CODE_82EE45                           ; $82EE2F |
  JSL.L CODE_FL_82C828                      ; $82EE31 |
  LDA.W #$803C                              ; $82EE35 |
  LDY.W #$0E20                              ; $82EE38 |
  JSL.L CODE_FL_82CD78                      ; $82EE3B |
  LDA.W #$000D                              ; $82EE3F |
  STA.W $001A,Y                             ; $82EE42 |

CODE_82EE45:
  RTL                                       ; $82EE45 |

CODE_FL_82EE46:
  LDA.L $7E7C04                             ; $82EE46 |
  BEQ CODE_82EE5A                           ; $82EE4A |
  AND.W #$007F                              ; $82EE4C |
  JSL.L CODE_FL_82E1E3                      ; $82EE4F |
  TDC                                       ; $82EE53 |
  STA.L $7E7C04                             ; $82EE54 |
  BRA CODE_82EE70                           ; $82EE58 |

CODE_82EE5A:
  LDA.L $7E7C02                             ; $82EE5A |
  BEQ CODE_82EE70                           ; $82EE5E |
  CMP.W #$0010                              ; $82EE60 |
  BNE CODE_82EE6B                           ; $82EE63 |
  PHA                                       ; $82EE65 |
  JSL.L CODE_FL_82E225                      ; $82EE66 |
  PLA                                       ; $82EE6A |

CODE_82EE6B:
  DEC A                                     ; $82EE6B |
  STA.L $7E7C02                             ; $82EE6C |

CODE_82EE70:
  RTL                                       ; $82EE70 |

  JSL.L CODE_FL_82D304                      ; $82EE71 |
  PHX                                       ; $82EE75 |
  ASL A                                     ; $82EE76 |
  TAX                                       ; $82EE77 |
  LDA.L PTR16_82EE82,X                      ; $82EE78 |
  PLX                                       ; $82EE7C |
  STA.B $00                                 ; $82EE7D |
  JMP.W ($0000)                             ; $82EE7F |

PTR16_82EE82:
  dw CODE_82EE8C                            ; $82EE82 |
  dw CODE_82EEBC                            ; $82EE84 |
  dw CODE_82EED1                            ; $82EE86 |
  dw CODE_82EEE9                            ; $82EE88 |
  dw CODE_82EF04                            ; $82EE8A |

CODE_82EE8C:
  LDA.W #$0034                              ; $82EE8C |
  JSL.L CODE_FL_8AF69F                      ; $82EE8F |
  LDY.W #$8165                              ; $82EE93 |
  JSL.L CODE_FL_808D78                      ; $82EE96 |
  LDA.W #$000A                              ; $82EE9A |
  STA.B $5E,X                               ; $82EE9D |
  STZ.W $1FD4                               ; $82EE9F |
  LDY.W #$8BAA                              ; $82EEA2 |
  JSL.L CODE_FL_82B81C                      ; $82EEA5 |
  LDA.W #$0005                              ; $82EEA9 |
  LDY.W #$FFA0                              ; $82EEAC |
  JSL.L CODE_FL_82D063                      ; $82EEAF |
  LDA.W #$0035                              ; $82EEB3 |
  JSL.L push_sound_queue                    ; $82EEB6 |
  INC.B $1A,X                               ; $82EEBA |

CODE_82EEBC:
  JSL.L CODE_FL_82C8BC                      ; $82EEBC |
  CMP.W #$0048                              ; $82EEC0 |
  BPL CODE_82EEC7                           ; $82EEC3 |
  INC.B $1A,X                               ; $82EEC5 |

CODE_82EEC7:
  LDA.W #$0002                              ; $82EEC7 |
  JSL.L CODE_FL_82B438                      ; $82EECA |
  JMP.W CODE_FL_82CEC6                      ; $82EECE |

CODE_82EED1:
  LDA.W $0E04                               ; $82EED1 |
  BEQ CODE_82EEDB                           ; $82EED4 |
  CMP.W #$0001                              ; $82EED6 |
  BNE CODE_82EEE7                           ; $82EED9 |

CODE_82EEDB:
  PHX                                       ; $82EEDB |
  LDY.W #$B9D4                              ; $82EEDC |
  LDX.W #$1F50                              ; $82EEDF |
  JSL.L CODE_FL_80C27F                      ; $82EEE2 |
  PLX                                       ; $82EEE6 |

CODE_82EEE7:
  INC.B $1A,X                               ; $82EEE7 |

CODE_82EEE9:
  LDA.W $1F50                               ; $82EEE9 |
  BNE CODE_82EF01                           ; $82EEEC |
  LDY.W #$816A                              ; $82EEEE |
  JSL.L CODE_FL_808D78                      ; $82EEF1 |
  LDA.W #$0000                              ; $82EEF5 |
  JSL.L CODE_FL_8AF69F                      ; $82EEF8 |
  STZ.W $1C9A                               ; $82EEFC |
  INC.B $1A,X                               ; $82EEFF |

CODE_82EF01:
  JMP.W CODE_FL_82CEC6                      ; $82EF01 |

CODE_82EF04:
  LDA.W $0E04                               ; $82EF04 |
  BEQ CODE_82EF0E                           ; $82EF07 |
  CMP.W #$0001                              ; $82EF09 |
  BNE CODE_82EF13                           ; $82EF0C |

CODE_82EF0E:
  LDY.W #$0C00                              ; $82EF0E |
  BRA CODE_82EF16                           ; $82EF11 |

CODE_82EF13:
  LDY.W #$1000                              ; $82EF13 |

CODE_82EF16:
  STY.B $00                                 ; $82EF16 |
  LDY.W #$0DC0                              ; $82EF18 |
  LDA.W $0035,Y                             ; $82EF1B |
  LDY.B $00                                 ; $82EF1E |
  JSL.L CODE_FL_82CB77                      ; $82EF20 |
  BNE CODE_82EF01                           ; $82EF24 |
  STZ.W $1C16                               ; $82EF26 |
  JML.L CODE_FL_82CC9F                      ; $82EF29 |

  JSL.L CODE_FL_82D314                      ; $82EF2D |
  PHX                                       ; $82EF31 |
  ASL A                                     ; $82EF32 |
  TAX                                       ; $82EF33 |
  LDA.L PTR16_82EF3E,X                      ; $82EF34 |
  PLX                                       ; $82EF38 |
  STA.B $00                                 ; $82EF39 |
  JMP.W ($0000)                             ; $82EF3B |

PTR16_82EF3E:
  dw CODE_82EF4C                            ; $82EF3E |
  dw CODE_82EFA2                            ; $82EF40 |
  dw CODE_82EFD1                            ; $82EF42 |
  dw CODE_82EFE1                            ; $82EF44 |
  dw CODE_82EFEF                            ; $82EF46 |
  dw CODE_82EFFC                            ; $82EF48 |
  dw CODE_82F00C                            ; $82EF4A |

CODE_82EF4C:
  LDA.W #$00D0                              ; $82EF4C |
  JSL.L CODE_FL_8AF69F                      ; $82EF4F |
  JSL.L CODE_FL_82CE4B                      ; $82EF53 |
  LDA.W #$000B                              ; $82EF57 |
  STA.B $5E,X                               ; $82EF5A |
  LDY.W #$8BAD                              ; $82EF5C |
  JSL.L CODE_FL_82B81C                      ; $82EF5F |
  JSL.L CODE_FL_82D01A                      ; $82EF63 |
  LDA.W #$FFE4                              ; $82EF67 |
  LDY.B $38,X                               ; $82EF6A |
  CPY.W #$0004                              ; $82EF6C |
  BMI CODE_82EF74                           ; $82EF6F |
  LDA.W #$001C                              ; $82EF71 |

CODE_82EF74:
  STA.B $3A,X                               ; $82EF74 |
  LDA.W #$FFF4                              ; $82EF76 |
  STA.B $3C,X                               ; $82EF79 |
  LDA.W #$FFFE                              ; $82EF7B |
  STA.B $3E,X                               ; $82EF7E |
  LDA.B $38,X                               ; $82EF80 |
  ASL A                                     ; $82EF82 |
  ASL A                                     ; $82EF83 |
  ASL A                                     ; $82EF84 |
  TAY                                       ; $82EF85 |
  LDA.W LOOSE_OP_009578,Y                   ; $82EF86 |
  STA.B $26,X                               ; $82EF89 |
  LDA.W CODE_00957A,Y                       ; $82EF8B |
  STA.B $28,X                               ; $82EF8E |
  LDA.W LOOSE_OP_00957C,Y                   ; $82EF90 |
  STA.B $2A,X                               ; $82EF93 |
  LDA.W LOOSE_OP_00957E,Y                   ; $82EF95 |
  STA.W $1FD4                               ; $82EF98 |
  LDA.W #$000C                              ; $82EF9B |
  STA.B $38,X                               ; $82EF9E |
  INC.B $1A,X                               ; $82EFA0 |

CODE_82EFA2:
  JSL.L CODE_FL_82C8BC                      ; $82EFA2 |
  DEC.B $38,X                               ; $82EFA6 |
  BPL CODE_JP_82EFB7                        ; $82EFA8 |
  LDA.W #$0004                              ; $82EFAA |
  JSL.L CODE_FL_82D067                      ; $82EFAD |
  JSL.L CODE_FL_82D007                      ; $82EFB1 |
  INC.B $1A,X                               ; $82EFB5 |

CODE_JP_82EFB7:
  PHX                                       ; $82EFB7 |
  LDY.W #$929A                              ; $82EFB8 |
  LDA.W #$000C                              ; $82EFBB |
  JSL.L CODE_FL_82D19E                      ; $82EFBE |
  PLX                                       ; $82EFC2 |
  JSL.L CODE_FL_82F02D                      ; $82EFC3 |
  LDA.W #$0004                              ; $82EFC7 |
  JSL.L CODE_FL_82B438                      ; $82EFCA |
  JMP.W CODE_FL_82CEC6                      ; $82EFCE |

CODE_82EFD1:
  JSL.L CODE_FL_82C8BC                      ; $82EFD1 |
  CMP.W #$0040                              ; $82EFD5 |
  BPL CODE_JP_82EFB7                        ; $82EFD8 |
  LDA.W #$0010                              ; $82EFDA |
  STA.B $38,X                               ; $82EFDD |
  INC.B $1A,X                               ; $82EFDF |

CODE_82EFE1:
  JSL.L CODE_FL_82C897                      ; $82EFE1 |
  DEC.B $38,X                               ; $82EFE5 |
  BPL CODE_JP_82EFB7                        ; $82EFE7 |
  LDA.W #$0006                              ; $82EFE9 |
  STA.B $1A,X                               ; $82EFEC |
  RTL                                       ; $82EFEE |

CODE_82EFEF:
  STZ.B $5E,X                               ; $82EFEF |
  JSL.L CODE_FL_82CA9D                      ; $82EFF1 |
  LDA.W #$0006                              ; $82EFF5 |
  STA.B $38,X                               ; $82EFF8 |
  INC.B $1A,X                               ; $82EFFA |

CODE_82EFFC:
  JSL.L CODE_FL_82C8BC                      ; $82EFFC |
  DEC.B $38,X                               ; $82F000 |
  BPL CODE_82F009                           ; $82F002 |
  LDA.W #$0006                              ; $82F004 |
  STA.B $1A,X                               ; $82F007 |

CODE_82F009:
  JMP.W CODE_FL_82CEC6                      ; $82F009 |

CODE_82F00C:
  JSL.L CODE_FL_82F0E2                      ; $82F00C |
  JSL.L CODE_FL_82C8BC                      ; $82F010 |
  CLC                                       ; $82F014 |
  ADC.W #$000C                              ; $82F015 |
  CMP.W $0DF5                               ; $82F018 |
  BPL CODE_82F020                           ; $82F01B |
  JMP.W CODE_JP_82EFB7                      ; $82F01D |

CODE_82F020:
  LDA.W #$0000                              ; $82F020 |
  JSL.L CODE_FL_8AF69F                      ; $82F023 |
  STZ.W $1C16                               ; $82F027 |
  JMP.W CODE_JP_82F128                      ; $82F02A |

CODE_FL_82F02D:
  LDA.B $2D,X                               ; $82F02D |
  SEC                                       ; $82F02F |
  SBC.W $0DED                               ; $82F030 |
  SEC                                       ; $82F033 |
  SBC.B $3A,X                               ; $82F034 |
  JSR.W CODE_FN_82F119                      ; $82F036 |
  STA.B $00                                 ; $82F039 |
  CLC                                       ; $82F03B |
  ADC.W $0DED                               ; $82F03C |
  CLC                                       ; $82F03F |
  ADC.B $3A,X                               ; $82F040 |
  STA.W $120D                               ; $82F042 |
  CLC                                       ; $82F045 |
  ADC.B $00                                 ; $82F046 |
  STA.W $11AD                               ; $82F048 |
  CLC                                       ; $82F04B |
  ADC.B $00                                 ; $82F04C |
  STA.W $114D                               ; $82F04E |
  CLC                                       ; $82F051 |
  ADC.B $00                                 ; $82F052 |
  STA.W $10ED                               ; $82F054 |
  CLC                                       ; $82F057 |
  ADC.B $00                                 ; $82F058 |
  STA.W $108D                               ; $82F05A |
  CLC                                       ; $82F05D |
  ADC.B $00                                 ; $82F05E |
  STA.W $102D                               ; $82F060 |
  CLC                                       ; $82F063 |
  ADC.B $00                                 ; $82F064 |
  STA.W $0FCD                               ; $82F066 |
  LDA.B $31,X                               ; $82F069 |
  SEC                                       ; $82F06B |
  SBC.W $0DF1                               ; $82F06C |
  SEC                                       ; $82F06F |
  SBC.B $3C,X                               ; $82F070 |
  JSR.W CODE_FN_82F119                      ; $82F072 |
  STA.B $00                                 ; $82F075 |
  CLC                                       ; $82F077 |
  ADC.W $0DF1                               ; $82F078 |
  CLC                                       ; $82F07B |
  ADC.B $3C,X                               ; $82F07C |
  STA.W $1211                               ; $82F07E |
  CLC                                       ; $82F081 |
  ADC.B $00                                 ; $82F082 |
  STA.W $11B1                               ; $82F084 |
  CLC                                       ; $82F087 |
  ADC.B $00                                 ; $82F088 |
  STA.W $1151                               ; $82F08A |
  CLC                                       ; $82F08D |
  ADC.B $00                                 ; $82F08E |
  STA.W $10F1                               ; $82F090 |
  CLC                                       ; $82F093 |
  ADC.B $00                                 ; $82F094 |
  STA.W $1091                               ; $82F096 |
  CLC                                       ; $82F099 |
  ADC.B $00                                 ; $82F09A |
  STA.W $1031                               ; $82F09C |
  CLC                                       ; $82F09F |
  ADC.B $00                                 ; $82F0A0 |
  STA.W $0FD1                               ; $82F0A2 |
  LDA.B $35,X                               ; $82F0A5 |
  SEC                                       ; $82F0A7 |
  SBC.W $0DF5                               ; $82F0A8 |
  SEC                                       ; $82F0AB |
  SBC.B $3E,X                               ; $82F0AC |
  JSR.W CODE_FN_82F119                      ; $82F0AE |
  STA.B $00                                 ; $82F0B1 |
  CLC                                       ; $82F0B3 |
  ADC.W $0DF5                               ; $82F0B4 |
  CLC                                       ; $82F0B7 |
  ADC.B $3E,X                               ; $82F0B8 |
  STA.W $1215                               ; $82F0BA |
  CLC                                       ; $82F0BD |
  ADC.B $00                                 ; $82F0BE |
  STA.W $11B5                               ; $82F0C0 |
  CLC                                       ; $82F0C3 |
  ADC.B $00                                 ; $82F0C4 |
  STA.W $1155                               ; $82F0C6 |
  CLC                                       ; $82F0C9 |
  ADC.B $00                                 ; $82F0CA |
  STA.W $10F5                               ; $82F0CC |
  CLC                                       ; $82F0CF |
  ADC.B $00                                 ; $82F0D0 |
  STA.W $1095                               ; $82F0D2 |
  CLC                                       ; $82F0D5 |
  ADC.B $00                                 ; $82F0D6 |
  STA.W $1035                               ; $82F0D8 |
  CLC                                       ; $82F0DB |
  ADC.B $00                                 ; $82F0DC |
  STA.W $0FD5                               ; $82F0DE |
  RTL                                       ; $82F0E1 |

CODE_FL_82F0E2:
  LDA.W $0DED                               ; $82F0E2 |
  CLC                                       ; $82F0E5 |
  ADC.B $3A,X                               ; $82F0E6 |
  SEC                                       ; $82F0E8 |
  SBC.B $2D,X                               ; $82F0E9 |
  JSR.W CODE_FN_82F119                      ; $82F0EB |
  AND.W #$00FF                              ; $82F0EE |
  XBA                                       ; $82F0F1 |
  STA.B $26,X                               ; $82F0F2 |
  LDA.W $0DF1                               ; $82F0F4 |
  CLC                                       ; $82F0F7 |
  ADC.B $3C,X                               ; $82F0F8 |
  SEC                                       ; $82F0FA |
  SBC.B $31,X                               ; $82F0FB |
  JSR.W CODE_FN_82F119                      ; $82F0FD |
  AND.W #$00FF                              ; $82F100 |
  XBA                                       ; $82F103 |
  STA.B $28,X                               ; $82F104 |
  LDA.W $0DF5                               ; $82F106 |
  CLC                                       ; $82F109 |
  ADC.B $3E,X                               ; $82F10A |
  SEC                                       ; $82F10C |
  SBC.B $35,X                               ; $82F10D |
  JSR.W CODE_FN_82F119                      ; $82F10F |
  AND.W #$00FF                              ; $82F112 |
  XBA                                       ; $82F115 |
  STA.B $2A,X                               ; $82F116 |
  RTL                                       ; $82F118 |

CODE_FN_82F119:
  CMP.W #$8000                              ; $82F119 |
  ROR A                                     ; $82F11C |
  CMP.W #$8000                              ; $82F11D |
  ROR A                                     ; $82F120 |
  CMP.W #$8000                              ; $82F121 |
  ROR A                                     ; $82F124 |
  STA.B $00                                 ; $82F125 |
  RTS                                       ; $82F127 |

CODE_JP_82F128:
  JSL.L CODE_FL_82F130                      ; $82F128 |
  JML.L CODE_FL_82CC9F                      ; $82F12C |

CODE_FL_82F130:
  PHX                                       ; $82F130 |
  LDX.W #$0FA0                              ; $82F131 |
  JSL.L CODE_FL_82CC9F                      ; $82F134 |
  LDX.W #$1000                              ; $82F138 |
  JSL.L CODE_FL_82CC9F                      ; $82F13B |
  LDX.W #$1060                              ; $82F13F |
  JSL.L CODE_FL_82CC9F                      ; $82F142 |
  LDX.W #$10C0                              ; $82F146 |
  JSL.L CODE_FL_82CC9F                      ; $82F149 |
  LDX.W #$1120                              ; $82F14D |
  JSL.L CODE_FL_82CC9F                      ; $82F150 |
  LDX.W #$1180                              ; $82F154 |
  JSL.L CODE_FL_82CC9F                      ; $82F157 |
  LDX.W #$11E0                              ; $82F15B |
  JSL.L CODE_FL_82CC9F                      ; $82F15E |
  PLX                                       ; $82F162 |
  RTL                                       ; $82F163 |

  JSL.L CODE_FL_82D314                      ; $82F164 |
  PHX                                       ; $82F168 |
  ASL A                                     ; $82F169 |
  TAX                                       ; $82F16A |
  LDA.L PTR16_82F175,X                      ; $82F16B |
  PLX                                       ; $82F16F |
  STA.B $00                                 ; $82F170 |
  JMP.W ($0000)                             ; $82F172 |

PTR16_82F175:
  dw CODE_82F17F                            ; $82F175 |
  dw CODE_82F1C0                            ; $82F177 |
  dw CODE_82F1ED                            ; $82F179 |
  dw CODE_82F1FA                            ; $82F17B |
  dw CODE_82F00C                            ; $82F17D |

CODE_82F17F:
  LDA.W #$00B6                              ; $82F17F |
  JSL.L CODE_FL_8AF69F                      ; $82F182 |
  JSL.L CODE_FL_82CE4B                      ; $82F186 |
  LDA.W #$000C                              ; $82F18A |
  STA.B $5E,X                               ; $82F18D |
  LDY.W #$8BAD                              ; $82F18F |
  JSL.L CODE_FL_82B81C                      ; $82F192 |
  LDY.W #$0010                              ; $82F196 |
  LDA.B $04,X                               ; $82F199 |
  BIT.W #$2020                              ; $82F19B |
  BEQ CODE_82F1A3                           ; $82F19E |
  LDY.W #$FFF0                              ; $82F1A0 |

CODE_82F1A3:
  STY.B $3A,X                               ; $82F1A3 |
  LDA.W #$000C                              ; $82F1A5 |
  STA.B $3C,X                               ; $82F1A8 |
  LDA.W #$FFFE                              ; $82F1AA |
  STA.B $3E,X                               ; $82F1AD |
  JSL.L CODE_FL_82D011                      ; $82F1AF |
  LDA.W #$0004                              ; $82F1B3 |
  JSL.L CODE_FL_82D067                      ; $82F1B6 |
  JSL.L CODE_FL_82CFCF                      ; $82F1BA |
  INC.B $1A,X                               ; $82F1BE |

CODE_82F1C0:
  JSL.L CODE_FL_82C8BC                      ; $82F1C0 |
  CMP.W #$0040                              ; $82F1C4 |
  BPL CODE_82F1D3                           ; $82F1C7 |
  LDA.W #$0010                              ; $82F1C9 |
  STA.B $38,X                               ; $82F1CC |
  LDA.W #$0004                              ; $82F1CE |
  STA.B $1A,X                               ; $82F1D1 |

CODE_82F1D3:
  PHX                                       ; $82F1D3 |
  LDY.W #$929A                              ; $82F1D4 |
  LDA.W #$000C                              ; $82F1D7 |
  JSL.L CODE_FL_82D19E                      ; $82F1DA |
  PLX                                       ; $82F1DE |
  JSL.L CODE_FL_82F02D                      ; $82F1DF |
  LDA.W #$0002                              ; $82F1E3 |
  JSL.L CODE_FL_82B438                      ; $82F1E6 |
  JMP.W CODE_FL_82CEC6                      ; $82F1EA |

CODE_82F1ED:
  STZ.B $5E,X                               ; $82F1ED |
  JSL.L CODE_FL_82CA9D                      ; $82F1EF |
  LDA.W #$0008                              ; $82F1F3 |
  STA.B $38,X                               ; $82F1F6 |
  INC.B $1A,X                               ; $82F1F8 |

CODE_82F1FA:
  JSL.L CODE_FL_82C8BC                      ; $82F1FA |
  DEC.B $38,X                               ; $82F1FE |
  BPL CODE_82F1D3                           ; $82F200 |
  LDA.W #$0000                              ; $82F202 |
  JSL.L CODE_FL_8AF69F                      ; $82F205 |
  LDA.W #$0004                              ; $82F209 |
  STA.B $1A,X                               ; $82F20C |
  JMP.W CODE_FL_82CEC6                      ; $82F20E |

  JSL.L CODE_FL_82D304                      ; $82F211 |
  PHX                                       ; $82F215 |
  ASL A                                     ; $82F216 |
  TAX                                       ; $82F217 |
  LDA.L PTR16_82F222,X                      ; $82F218 |
  PLX                                       ; $82F21C |
  STA.B $00                                 ; $82F21D |
  JMP.W ($0000)                             ; $82F21F |

PTR16_82F222:
  dw CODE_82F242                            ; $82F222 |
  dw CODE_82F275                            ; $82F224 |
  dw CODE_82F2CF                            ; $82F226 |
  dw CODE_82F2F5                            ; $82F228 |
  dw CODE_82F301                            ; $82F22A |
  dw CODE_82F30E                            ; $82F22C |
  dw CODE_82F31B                            ; $82F22E |
  dw CODE_82F362                            ; $82F230 |
  dw CODE_82F362                            ; $82F232 |
  dw CODE_82F242                            ; $82F234 |
  dw CODE_82F275                            ; $82F236 |
  dw CODE_82F3A1                            ; $82F238 |
  dw CODE_82F3BB                            ; $82F23A |
  dw CODE_82F3D1                            ; $82F23C |
  dw CODE_82F400                            ; $82F23E |
  dw CODE_82F43B                            ; $82F240 |

CODE_82F242:
  LDA.W #$00EA                              ; $82F242 |
  JSL.L CODE_FL_8AF69F                      ; $82F245 |
  JSL.L CODE_FL_82CE4B                      ; $82F249 |
  LDY.W #$8B92                              ; $82F24D |
  JSL.L CODE_FL_82B81C                      ; $82F250 |
  JSL.L CODE_FL_82CFF3                      ; $82F254 |
  STZ.B $3A,X                               ; $82F258 |
  LDA.W #$FFF8                              ; $82F25A |
  STA.B $3C,X                               ; $82F25D |
  LDA.W #$FFFE                              ; $82F25F |
  STA.B $3E,X                               ; $82F262 |
  LDA.W #$0020                              ; $82F264 |
  STA.B $40,X                               ; $82F267 |
  INC.B $42,X                               ; $82F269 |
  LDA.B $86                                 ; $82F26B |
  AND.W #$01FF                              ; $82F26D |
  STA.W $1FD4                               ; $82F270 |
  INC.B $1A,X                               ; $82F273 |

CODE_82F275:
  STZ.B $18                                 ; $82F275 |
  TDC                                       ; $82F277 |
  LDY.W #$0800                              ; $82F278 |
  JSL.L CODE_FL_82CB1D                      ; $82F27B |
  BEQ CODE_82F283                           ; $82F27F |
  INC.B $18                                 ; $82F281 |

CODE_82F283:
  TDC                                       ; $82F283 |
  LDY.W #$0800                              ; $82F284 |
  JSL.L CODE_FL_82CB4A                      ; $82F287 |
  BEQ CODE_82F28F                           ; $82F28B |
  INC.B $18                                 ; $82F28D |

CODE_82F28F:
  LDA.W #$0050                              ; $82F28F |
  LDY.W #$0800                              ; $82F292 |
  JSL.L CODE_FL_82CB77                      ; $82F295 |
  BNE CODE_JP_82F2B7                        ; $82F299 |
  LDA.B $18                                 ; $82F29B |
  BNE CODE_JP_82F2B7                        ; $82F29D |
  LDA.W #$C03E                              ; $82F29F |
  LDY.W #$1000                              ; $82F2A2 |
  JSL.L CODE_FL_82CD78                      ; $82F2A5 |
  STX.B $38,Y                               ; $82F2A9 |
  LDA.W #$0100                              ; $82F2AB |
  STA.B $38,X                               ; $82F2AE |
  LDA.W #$0001                              ; $82F2B0 |
  STA.B $5E,X                               ; $82F2B3 |
  INC.B $1A,X                               ; $82F2B5 |

CODE_JP_82F2B7:
  PHX                                       ; $82F2B7 |
  LDY.W #$92BA                              ; $82F2B8 |
  LDA.W #$000E                              ; $82F2BB |
  JSL.L CODE_FL_82D19E                      ; $82F2BE |
  PLX                                       ; $82F2C2 |
  JSR.W CODE_FN_82F45A                      ; $82F2C3 |
  LDA.B $40,X                               ; $82F2C6 |
  JSL.L CODE_FL_82D023                      ; $82F2C8 |
  JMP.W CODE_FL_82CEC6                      ; $82F2CC |

CODE_82F2CF:
  LDA.W #$0003                              ; $82F2CF |
  JSL.L CODE_FL_82B42F                      ; $82F2D2 |
  DEC.B $38,X                               ; $82F2D6 |
  BPL CODE_JP_82F2B7                        ; $82F2D8 |
  LDA.B $42                                 ; $82F2DA |
  AND.W #$0003                              ; $82F2DC |
  BNE CODE_JP_82F2B7                        ; $82F2DF |
  DEC.B $40,X                               ; $82F2E1 |
  BNE CODE_JP_82F2B7                        ; $82F2E3 |
  STZ.B $5E,X                               ; $82F2E5 |
  INC.W $101A                               ; $82F2E7 |
  LDA.W #$0050                              ; $82F2EA |
  STA.B $38,X                               ; $82F2ED |
  LDA.W #$0005                              ; $82F2EF |
  STA.B $1A,X                               ; $82F2F2 |
  RTL                                       ; $82F2F4 |

CODE_82F2F5:
  STZ.B $40,X                               ; $82F2F5 |
  INC.W $101A                               ; $82F2F7 |
  LDA.W #$0050                              ; $82F2FA |
  STA.B $38,X                               ; $82F2FD |
  INC.B $1A,X                               ; $82F2FF |

CODE_82F301:
  JSL.L CODE_FL_82D1BF                      ; $82F301 |
  DEC.B $38,X                               ; $82F305 |
  BPL CODE_JP_82F2B7                        ; $82F307 |
  LDA.W #$0005                              ; $82F309 |
  STA.B $1A,X                               ; $82F30C |

CODE_82F30E:
  DEC.B $38,X                               ; $82F30E |
  BPL CODE_JP_82F2B7                        ; $82F310 |
  LDY.W #$1000                              ; $82F312 |
  JSL.L CODE_FL_82CC97                      ; $82F315 |
  INC.B $1A,X                               ; $82F319 |

CODE_82F31B:
  LDA.B $42,X                               ; $82F31B |
  BEQ CODE_82F33A                           ; $82F31D |
  LDA.B $35,X                               ; $82F31F |
  CMP.W #$0180                              ; $82F321 |
  BMI CODE_82F33A                           ; $82F324 |
  JSR.W CODE_FN_82F4D7                      ; $82F326 |
  CMP.W #$0003                              ; $82F329 |
  BEQ CODE_82F333                           ; $82F32C |
  CMP.W #$0007                              ; $82F32E |
  BNE CODE_82F33A                           ; $82F331 |

CODE_82F333:
  STZ.B $42,X                               ; $82F333 |
  LDA.W #$0007                              ; $82F335 |
  STA.B $1A,X                               ; $82F338 |

CODE_82F33A:
  JSL.L CODE_FL_82F0E2                      ; $82F33A |
  JSL.L CODE_FL_82C8BC                      ; $82F33E |
  CLC                                       ; $82F342 |
  ADC.W #$000C                              ; $82F343 |
  CMP.W $0DF5                               ; $82F346 |
  BPL CODE_82F34E                           ; $82F349 |
  JMP.W CODE_JP_82F2B7                      ; $82F34B |

CODE_82F34E:
  LDA.W $1FD4                               ; $82F34E |
  STA.W $0E00                               ; $82F351 |
  LDA.W #$0000                              ; $82F354 |
  JSL.L CODE_FL_8AF69F                      ; $82F357 |
  STZ.W $1C16                               ; $82F35B |
  JML.L CODE_FL_82CC9F                      ; $82F35E |

CODE_82F362:
  LDA.W #$0003                              ; $82F362 |
  STA.B $5E,X                               ; $82F365 |
  LDY.W #$8BAD                              ; $82F367 |
  JSL.L CODE_FL_82B81C                      ; $82F36A |
  LDA.W #$0004                              ; $82F36E |
  LDY.W #$FFC0                              ; $82F371 |
  JSL.L CODE_FL_82D063                      ; $82F374 |
  INC.B $1A,X                               ; $82F378 |
  LDA.W #$0008                              ; $82F37A |
  STA.B $1A,X                               ; $82F37D |
  JSL.L CODE_FL_82C8BC                      ; $82F37F |
  LDA.W #$0006                              ; $82F383 |
  JSL.L CODE_FL_82B438                      ; $82F386 |
  LDA.B $35,X                               ; $82F38A |
  CMP.W #$0030                              ; $82F38C |
  BMI CODE_82F394                           ; $82F38F |
  JMP.W CODE_JP_82F2B7                      ; $82F391 |

CODE_82F394:
  LDA.W #$0010                              ; $82F394 |
  STA.B $38,X                               ; $82F397 |
  LDA.W #$0006                              ; $82F399 |
  STA.B $1A,X                               ; $82F39C |
  JMP.W CODE_JP_82F2B7                      ; $82F39E |

CODE_82F3A1:
  LDA.W #$0003                              ; $82F3A1 |
  JSL.L CODE_FL_82B42F                      ; $82F3A4 |
  DEC.B $38,X                               ; $82F3A8 |
  DEC.B $38,X                               ; $82F3AA |
  DEC.B $38,X                               ; $82F3AC |
  DEC.B $38,X                               ; $82F3AE |
  BMI CODE_82F3B5                           ; $82F3B0 |
  JMP.W CODE_JP_82F2B7                      ; $82F3B2 |

CODE_82F3B5:
  INC.W $101A                               ; $82F3B5 |
  INC.B $1A,X                               ; $82F3B8 |
  RTL                                       ; $82F3BA |

CODE_82F3BB:
  LDA.W $1FD4                               ; $82F3BB |
  AND.W #$01E0                              ; $82F3BE |
  CMP.W #$0100                              ; $82F3C1 |
  BNE CODE_82F3CE                           ; $82F3C4 |
  LDA.W #$0100                              ; $82F3C6 |
  STA.W $1FD4                               ; $82F3C9 |
  STZ.B $40,X                               ; $82F3CC |

CODE_82F3CE:
  JMP.W CODE_JP_82F2B7                      ; $82F3CE |

CODE_82F3D1:
  LDA.W #$8000                              ; $82F3D1 |
  STA.W $1C66                               ; $82F3D4 |
  LDA.W #$00EA                              ; $82F3D7 |
  JSL.L CODE_FL_8AF69F                      ; $82F3DA |
  JSL.L CODE_FL_82CFF3                      ; $82F3DE |
  LDA.W #$0180                              ; $82F3E2 |
  STA.B $2D,X                               ; $82F3E5 |
  LDA.W #$FF00                              ; $82F3E7 |
  STA.B $31,X                               ; $82F3EA |
  LDA.W #$0120                              ; $82F3EC |
  STA.B $35,X                               ; $82F3EF |
  LDA.W #$FE80                              ; $82F3F1 |
  STA.B $26,X                               ; $82F3F4 |
  LDA.W #$FFF8                              ; $82F3F6 |
  STA.B $40,X                               ; $82F3F9 |
  INC.B $1A,X                               ; $82F3FB |
  JMP.W CODE_JP_82F2B7                      ; $82F3FD |

CODE_82F400:
  STZ.W $1C66                               ; $82F400 |
  JSL.L CODE_FL_82C87C                      ; $82F403 |
  JSL.L CODE_FL_82CAD8                      ; $82F407 |
  BNE CODE_82F42A                           ; $82F40B |
  LDA.W #$0044                              ; $82F40D |
  JSL.L CODE_FL_8089BD                      ; $82F410 |
  LDA.B $28,X                               ; $82F414 |
  CMP.W #$0100                              ; $82F416 |
  BPL CODE_82F41D                           ; $82F419 |
  INC.B $1A,X                               ; $82F41B |

CODE_82F41D:
  AND.W #$FF00                              ; $82F41D |
  SEC                                       ; $82F420 |
  SBC.W #$0100                              ; $82F421 |
  EOR.W #$FFFF                              ; $82F424 |
  INC A                                     ; $82F427 |
  STA.B $28,X                               ; $82F428 |

CODE_82F42A:
  LDA.B $42                                 ; $82F42A |
  AND.W #$0003                              ; $82F42C |
  BNE CODE_82F438                           ; $82F42F |
  LDY.W #$0003                              ; $82F431 |
  JSL.L CODE_FL_82B14B                      ; $82F434 |

CODE_82F438:
  JMP.W CODE_JP_82F2B7                      ; $82F438 |

CODE_82F43B:
  LDY.W #$0002                              ; $82F43B |
  JSL.L CODE_FL_82B0E1                      ; $82F43E |
  LDA.W #$000E                              ; $82F442 |
  JSL.L push_sound_queue                    ; $82F445 |
  LDA.W #$0000                              ; $82F449 |
  JSL.L CODE_FL_8AF69F                      ; $82F44C |
  LDA.W #$8000                              ; $82F450 |
  STA.W $1C66                               ; $82F453 |
  JML.L CODE_FL_82CC9F                      ; $82F456 |

CODE_FN_82F45A:
  LDA.W $1FD4                               ; $82F45A |
  AND.W #$00FF                              ; $82F45D |
  CLC                                       ; $82F460 |
  ADC.B $40,X                               ; $82F461 |
  CMP.W #$0100                              ; $82F463 |
  BMI CODE_82F46F                           ; $82F466 |
  LDA.W #$003D                              ; $82F468 |
  JSL.L push_sound_queue                    ; $82F46B |

CODE_82F46F:
  RTS                                       ; $82F46F |

  JSL.L CODE_FL_82D304                      ; $82F470 |
  PHX                                       ; $82F474 |
  ASL A                                     ; $82F475 |
  TAX                                       ; $82F476 |
  LDA.L PTR16_82F481,X                      ; $82F477 |
  PLX                                       ; $82F47B |
  STA.B $00                                 ; $82F47C |
  JMP.W ($0000)                             ; $82F47E |

PTR16_82F481:
  dw CODE_82F489                            ; $82F481 |
  dw CODE_82F49A                            ; $82F483 |
  dw CODE_82F4AB                            ; $82F485 |
  dw CODE_82F4C7                            ; $82F487 |

CODE_82F489:
  LDY.W #$84B6                              ; $82F489 |
  LDA.W #$0006                              ; $82F48C |
  JSL.L CODE_FL_828AD9                      ; $82F48F |
  LDA.W #$1898                              ; $82F493 |
  STA.B $04,X                               ; $82F496 |
  INC.B $1A,X                               ; $82F498 |

CODE_82F49A:
  LDY.B $38,X                               ; $82F49A |
  LDA.W $0009,Y                             ; $82F49C |
  STA.B $09,X                               ; $82F49F |
  LDA.W $000D,Y                             ; $82F4A1 |
  SEC                                       ; $82F4A4 |
  SBC.W #$0040                              ; $82F4A5 |
  STA.B $0D,X                               ; $82F4A8 |
  RTL                                       ; $82F4AA |

CODE_82F4AB:
  JSR.W CODE_FN_82F4D7                      ; $82F4AB |
  BNE CODE_82F4B9                           ; $82F4AE |
  LDA.W #$003E                              ; $82F4B0 |
  JSL.L push_sound_queue                    ; $82F4B3 |
  BRA CODE_82F4C5                           ; $82F4B7 |

CODE_82F4B9:
  CMP.W #$0004                              ; $82F4B9 |
  BNE CODE_82F4C5                           ; $82F4BC |
  LDA.W #$0000                              ; $82F4BE |
  JSL.L CODE_FL_8089BD                      ; $82F4C1 |

CODE_82F4C5:
  INC.B $1A,X                               ; $82F4C5 |

CODE_82F4C7:
  STZ.B $1C,X                               ; $82F4C7 |
  LDA.W #$349C                              ; $82F4C9 |
  STA.B $00,X                               ; $82F4CC |
  LDA.W #$0002                              ; $82F4CE |
  JSL.L CODE_FL_82CE79                      ; $82F4D1 |
  BRA CODE_82F49A                           ; $82F4D5 |

CODE_FN_82F4D7:
  LDA.W $1FD4                               ; $82F4D7 |
  CLC                                       ; $82F4DA |
  ADC.W #$0020                              ; $82F4DB |
  AND.W #$01FF                              ; $82F4DE |
  LSR A                                     ; $82F4E1 |
  LSR A                                     ; $82F4E2 |
  LSR A                                     ; $82F4E3 |
  LSR A                                     ; $82F4E4 |
  LSR A                                     ; $82F4E5 |
  LSR A                                     ; $82F4E6 |
  RTS                                       ; $82F4E7 |

  LDX.W #DATA_888488                        ; $82F4E8 |
  JSL.L sound_transfer_blocks               ; $82F4EB |
  LDX.W #DATA_888490                        ; $82F4EF |
  JSL.L sound_transfer_blocks               ; $82F4F2 |
  LDX.W #DATA_888498                        ; $82F4F6 |
  JSL.L sound_transfer_blocks               ; $82F4F9 |
  LDX.W #DATA_8884A2                        ; $82F4FD |
  JSL.L sound_transfer_blocks               ; $82F500 |
  LDY.W #$95A8                              ; $82F504 |
  LDA.W #$000C                              ; $82F507 |
  JSL.L CODE_FL_80C2C9                      ; $82F50A |
  LDY.W #$96A0                              ; $82F50E |
  LDA.W #$0018                              ; $82F511 |
  JSL.L CODE_FL_80C2C4                      ; $82F514 |
  LDA.W #$0100                              ; $82F518 |
  STA.W $1FD0                               ; $82F51B |
  LDA.W #$0090                              ; $82F51E |
  STA.W $1FD2                               ; $82F521 |
  JSR.W CODE_FN_82FEFE                      ; $82F524 |
  LDX.W #$0DC0                              ; $82F527 |
  LDA.W #$803F                              ; $82F52A |
  STA.B $18,X                               ; $82F52D |
  LDA.W #$0700                              ; $82F52F |
  STA.B $10,X                               ; $82F532 |
  JSL.L CODE_FL_82CE46                      ; $82F534 |
  RTL                                       ; $82F538 |

  LDY.W #$9CC1                              ; $82F539 |
  JSL.L CODE_FL_8AAF61                      ; $82F53C |
  LDA.W #$0050                              ; $82F540 |
  JSL.L CODE_FL_8AB11E                      ; $82F543 |
  RTL                                       ; $82F547 |

  LDY.W #$92CA                              ; $82F548 |
  LDA.W #$000C                              ; $82F54B |
  JSL.L CODE_FL_82D19E                      ; $82F54E |
  LDA.B $1A,X                               ; $82F552 |
  PHX                                       ; $82F554 |
  ASL A                                     ; $82F555 |
  TAX                                       ; $82F556 |
  LDA.L PTR16_82F561,X                      ; $82F557 |
  PLX                                       ; $82F55B |
  STA.B $00                                 ; $82F55C |
  JMP.W ($0000)                             ; $82F55E |

PTR16_82F561:
  dw CODE_82F581                            ; $82F561 |
  dw CODE_82F59A                            ; $82F563 |
  dw CODE_82F5A8                            ; $82F565 |
  dw CODE_82F5D3                            ; $82F567 |
  dw CODE_82F649                            ; $82F569 |
  dw CODE_82F664                            ; $82F56B |
  dw CODE_82F671                            ; $82F56D |
  dw CODE_82F6A5                            ; $82F56F |
  dw CODE_82F6AD                            ; $82F571 |
  dw CODE_82F6DE                            ; $82F573 |
  dw CODE_82F70B                            ; $82F575 |
  dw CODE_82F72F                            ; $82F577 |
  dw CODE_82F752                            ; $82F579 |
  dw CODE_82F754                            ; $82F57B |
  dw CODE_82F771                            ; $82F57D |
  dw CODE_82F785                            ; $82F57F |

CODE_82F581:
  LDA.W #$0080                              ; $82F581 |
  STA.B $38,X                               ; $82F584 |
  STZ.B $2D,X                               ; $82F586 |
  STZ.B $31,X                               ; $82F588 |
  LDA.W #$0210                              ; $82F58A |
  STA.B $35,X                               ; $82F58D |
  LDA.W #$FFE0                              ; $82F58F |
  STA.B $2A,X                               ; $82F592 |
  INC.B $1A,X                               ; $82F594 |
  JML.L CODE_FL_82CEC6                      ; $82F596 |

CODE_82F59A:
  DEC.B $38,X                               ; $82F59A |
  BPL CODE_82F5A0                           ; $82F59C |
  INC.B $1A,X                               ; $82F59E |

CODE_82F5A0:
  JSL.L CODE_FL_82C8C4                      ; $82F5A0 |
  JML.L CODE_FL_82CEC6                      ; $82F5A4 |

CODE_82F5A8:
  LDA.W #$0594                              ; $82F5A8 |
  JSL.L CODE_FL_8CF9DB                      ; $82F5AB |
  LDY.W $1C20                               ; $82F5AF |
  LDA.W CODE_009660,Y                       ; $82F5B2 |
  BCC CODE_82F5BA                           ; $82F5B5 |
  LDA.W CODE_009678,Y                       ; $82F5B7 |

CODE_82F5BA:
  JSL.L CODE_FL_809934                      ; $82F5BA |
  BCC CODE_82F5CF                           ; $82F5BE |
  STZ.W $1C6A                               ; $82F5C0 |
  STZ.W $1C24                               ; $82F5C3 |
  STZ.B $2A,X                               ; $82F5C6 |
  LDA.W #$0010                              ; $82F5C8 |
  STA.B $38,X                               ; $82F5CB |
  INC.B $1A,X                               ; $82F5CD |

CODE_82F5CF:
  JML.L CODE_FL_82CEC6                      ; $82F5CF |

CODE_82F5D3:
  JSR.W CODE_FN_82F7EA                      ; $82F5D3 |
  DEC.B $38,X                               ; $82F5D6 |
  BPL CODE_82F648                           ; $82F5D8 |
  INC.B $1A,X                               ; $82F5DA |
  LDY.W #$0E20                              ; $82F5DC |
  LDA.W #$4040                              ; $82F5DF |
  JSL.L CODE_FL_82CD78                      ; $82F5E2 |
  LDA.W #$0000                              ; $82F5E6 |
  STA.W $003E,Y                             ; $82F5E9 |
  LDA.W #$0080                              ; $82F5EC |
  STA.W $0040,Y                             ; $82F5EF |
  LDY.W #$0E80                              ; $82F5F2 |
  LDA.W #$4040                              ; $82F5F5 |
  JSL.L CODE_FL_82CD78                      ; $82F5F8 |
  LDA.W #$0080                              ; $82F5FC |
  STA.W $003E,Y                             ; $82F5FF |
  LDA.W #$00E0                              ; $82F602 |
  STA.W $0040,Y                             ; $82F605 |
  LDY.W #$0EE0                              ; $82F608 |
  LDA.W #$4040                              ; $82F60B |
  JSL.L CODE_FL_82CD78                      ; $82F60E |
  LDA.W #$0100                              ; $82F612 |
  STA.W $003E,Y                             ; $82F615 |
  LDA.W #$0120                              ; $82F618 |
  STA.W $0040,Y                             ; $82F61B |
  LDY.W #$0F40                              ; $82F61E |
  LDA.W #$4041                              ; $82F621 |
  JSL.L CODE_FL_82CD78                      ; $82F624 |
  LDA.W #$00E0                              ; $82F628 |
  STA.W $003C,Y                             ; $82F62B |
  LDY.W #$0FA0                              ; $82F62E |
  LDA.W #$4041                              ; $82F631 |
  JSL.L CODE_FL_82CD78                      ; $82F634 |
  LDA.W #$00F0                              ; $82F638 |
  STA.W $003C,Y                             ; $82F63B |
  LDY.W #$1000                              ; $82F63E |
  LDA.W #$4042                              ; $82F641 |
  JSL.L CODE_FL_82CD78                      ; $82F644 |

CODE_82F648:
  RTL                                       ; $82F648 |

CODE_82F649:
  JSR.W CODE_FN_82F7EA                      ; $82F649 |
  BPL CODE_82F65D                           ; $82F64C |
  LDY.W #$FFE0                              ; $82F64E |
  LDA.B $86                                 ; $82F651 |
  LSR A                                     ; $82F653 |
  BCC CODE_82F659                           ; $82F654 |
  LDY.W #$0020                              ; $82F656 |

CODE_82F659:
  STY.B $26,X                               ; $82F659 |
  INC.B $1A,X                               ; $82F65B |

CODE_82F65D:
  JSR.W CODE_FN_82F7DB                      ; $82F65D |
  JSR.W CODE_FN_82F788                      ; $82F660 |
  RTL                                       ; $82F663 |

CODE_82F664:
  JSR.W CODE_FN_82F83E                      ; $82F664 |
  JSR.W CODE_FN_82F86B                      ; $82F667 |
  JSR.W CODE_FN_82F7DB                      ; $82F66A |
  JSR.W CODE_FN_82F788                      ; $82F66D |
  RTL                                       ; $82F670 |

CODE_82F671:
  LDA.B $46,X                               ; $82F671 |
  BEQ CODE_82F67D                           ; $82F673 |
  DEC.B $46,X                               ; $82F675 |
  JSL.L CODE_FL_82D1DA                      ; $82F677 |
  BRA CODE_82F686                           ; $82F67B |

CODE_82F67D:
  LDA.W $1C86                               ; $82F67D |
  BEQ CODE_82F686                           ; $82F680 |
  JSL.L CODE_FL_82D1E7                      ; $82F682 |

CODE_82F686:
  STZ.B $26,X                               ; $82F686 |
  LDY.W #$0080                              ; $82F688 |
  TDC                                       ; $82F68B |
  JSL.L CODE_FL_82CB1D                      ; $82F68C |
  LDY.W #$0080                              ; $82F690 |
  LDA.W #$0080                              ; $82F693 |
  JSL.L CODE_FL_82CB77                      ; $82F696 |
  JSL.L CODE_FL_82CEC6                      ; $82F69A |
  JSR.W CODE_FN_82F86B                      ; $82F69E |
  JSR.W CODE_FN_82F7DB                      ; $82F6A1 |
  RTL                                       ; $82F6A4 |

CODE_82F6A5:
  LDA.W #$FFC0                              ; $82F6A5 |
  STA.W $073E                               ; $82F6A8 |
  INC.B $1A,X                               ; $82F6AB |

CODE_82F6AD:
  JSL.L CODE_FL_82D1DA                      ; $82F6AD |
  LDA.W #$0001                              ; $82F6B1 |
  STA.B $44,X                               ; $82F6B4 |
  LDY.W #$0080                              ; $82F6B6 |
  TDC                                       ; $82F6B9 |
  JSL.L CODE_FL_82CB1D                      ; $82F6BA |
  LDY.W #$0080                              ; $82F6BE |
  LDA.W #$0120                              ; $82F6C1 |
  JSL.L CODE_FL_82CB77                      ; $82F6C4 |
  BNE CODE_82F6D7                           ; $82F6C8 |
  LDA.W #$0080                              ; $82F6CA |
  STA.B $38,X                               ; $82F6CD |
  LDA.W #$0002                              ; $82F6CF |
  STA.W $1C68                               ; $82F6D2 |
  INC.B $1A,X                               ; $82F6D5 |

CODE_82F6D7:
  JSR.W CODE_FN_82F7DB                      ; $82F6D7 |
  JML.L CODE_FL_82CEC6                      ; $82F6DA |

CODE_82F6DE:
  JSL.L CODE_FL_82D1DA                      ; $82F6DE |
  DEC.B $38,X                               ; $82F6E2 |
  BPL CODE_82F6D7                           ; $82F6E4 |
  LDY.W #$0700                              ; $82F6E6 |
  JSL.L CODE_FL_82CC97                      ; $82F6E9 |
  JSL.L CODE_FL_82C13A                      ; $82F6ED |
  LDA.B $0D,X                               ; $82F6F1 |
  SEC                                       ; $82F6F3 |
  SBC.W #$0010                              ; $82F6F4 |
  STA.W $1DA6                               ; $82F6F7 |
  STA.W $1DC6                               ; $82F6FA |
  LDA.W LOOSE_OP_00975E                     ; $82F6FD |
  JSL.L CODE_FL_8AF6EE                      ; $82F700 |
  JSR.W CODE_FN_82FFC8                      ; $82F704 |
  INC.B $1A,X                               ; $82F707 |
  BRA CODE_82F6D7                           ; $82F709 |

CODE_82F70B:
  LDY.W $1C20                               ; $82F70B |
  LDA.W CODE_009668,Y                       ; $82F70E |
  JSL.L CODE_FL_809929                      ; $82F711 |
  BCC CODE_82F72C                           ; $82F715 |
  LDA.W #$0000                              ; $82F717 |
  STA.W $1C5E                               ; $82F71A |
  STA.W $1C60                               ; $82F71D |
  LDA.W #$FF00                              ; $82F720 |
  STA.B $2A,X                               ; $82F723 |
  INC.B $1A,X                               ; $82F725 |
  LDA.W #$0060                              ; $82F727 |
  STA.B $38,X                               ; $82F72A |

CODE_82F72C:
  JMP.W CODE_FL_82CEC6                      ; $82F72C |

CODE_82F72F:
  DEC.B $38,X                               ; $82F72F |
  BPL CODE_82F74C                           ; $82F731 |
  STZ.B $38,X                               ; $82F733 |
  JSL.L CODE_FL_82C8C4                      ; $82F735 |
  CMP.W #$0080                              ; $82F739 |
  BPL CODE_82F74C                           ; $82F73C |
  STZ.B $2A,X                               ; $82F73E |
  STZ.B $35,X                               ; $82F740 |
  LDA.W #$FFFF                              ; $82F742 |
  STA.W $1C68                               ; $82F745 |
  JML.L CODE_FL_82CC9F                      ; $82F748 |

CODE_82F74C:
  JSR.W CODE_FN_82F7DB                      ; $82F74C |
  JMP.W CODE_FL_82CEC6                      ; $82F74F |

CODE_82F752:
  INC.B $1A,X                               ; $82F752 |

CODE_82F754:
  LDY.W #$0080                              ; $82F754 |
  TDC                                       ; $82F757 |
  JSL.L CODE_FL_82CB1D                      ; $82F758 |
  LDY.W #$0080                              ; $82F75C |
  LDA.W #$0120                              ; $82F75F |
  JSL.L CODE_FL_82CB77                      ; $82F762 |
  BNE CODE_82F76A                           ; $82F766 |
  INC.B $1A,X                               ; $82F768 |

CODE_82F76A:
  JSR.W CODE_FN_82F7DB                      ; $82F76A |
  JML.L CODE_FL_82CEC6                      ; $82F76D |

CODE_82F771:
  LDY.W $1C20                               ; $82F771 |
  LDA.W CODE_009670,Y                       ; $82F774 |
  JSL.L CODE_FL_809934                      ; $82F777 |
  BCC CODE_82F785                           ; $82F77B |
  LDA.W #$8000                              ; $82F77D |
  STA.W $1C68                               ; $82F780 |
  INC.B $1A,X                               ; $82F783 |

CODE_82F785:
  JMP.W CODE_FL_82CEC6                      ; $82F785 |

CODE_FN_82F788:
  LDA.W $0E38                               ; $82F788 |
  CMP.W #$4043                              ; $82F78B |
  BEQ CODE_82F7DA                           ; $82F78E |
  ORA.W #$4000                              ; $82F790 |
  CMP.W #$4040                              ; $82F793 |
  BEQ CODE_82F7DA                           ; $82F796 |
  LDA.W $0E98                               ; $82F798 |
  ORA.W #$4000                              ; $82F79B |
  CMP.W #$4040                              ; $82F79E |
  BEQ CODE_82F7DA                           ; $82F7A1 |
  LDA.W $0EF8                               ; $82F7A3 |
  ORA.W #$4000                              ; $82F7A6 |
  CMP.W #$4040                              ; $82F7A9 |
  BEQ CODE_82F7DA                           ; $82F7AC |
  LDA.W $0F58                               ; $82F7AE |
  ORA.W #$4000                              ; $82F7B1 |
  CMP.W #$4041                              ; $82F7B4 |
  BEQ CODE_82F7DA                           ; $82F7B7 |
  LDA.W $0FB8                               ; $82F7B9 |
  ORA.W #$4000                              ; $82F7BC |
  CMP.W #$4041                              ; $82F7BF |
  BEQ CODE_82F7DA                           ; $82F7C2 |
  LDA.W #$0002                              ; $82F7C4 |
  JSL.L CODE_FL_82B0E1                      ; $82F7C7 |
  LDY.W #$0E20                              ; $82F7CB |
  LDA.W #$4043                              ; $82F7CE |
  JSL.L CODE_FL_82CD78                      ; $82F7D1 |
  LDA.W #$0006                              ; $82F7D5 |
  STA.B $1A,X                               ; $82F7D8 |

CODE_82F7DA:
  RTS                                       ; $82F7DA |

CODE_FN_82F7DB:
  LDA.W #$0200                              ; $82F7DB |
  SEC                                       ; $82F7DE |
  SBC.B $35,X                               ; $82F7DF |
  LSR A                                     ; $82F7E1 |
  LSR A                                     ; $82F7E2 |
  SEC                                       ; $82F7E3 |
  SBC.W #$000A                              ; $82F7E4 |
  STA.B $31,X                               ; $82F7E7 |
  RTS                                       ; $82F7E9 |

CODE_FN_82F7EA:
  LDY.W #$0080                              ; $82F7EA |
  TDC                                       ; $82F7ED |
  JSL.L CODE_FL_82CB1D                      ; $82F7EE |
  LDA.W $1C78                               ; $82F7F2 |
  BEQ CODE_82F7FF                           ; $82F7F5 |
  STZ.W $1C78                               ; $82F7F7 |
  LDY.W #$0300                              ; $82F7FA |
  STY.B $2A,X                               ; $82F7FD |

CODE_82F7FF:
  LDA.B $2A,X                               ; $82F7FF |
  BMI CODE_82F80E                           ; $82F801 |
  SEC                                       ; $82F803 |
  SBC.W #$0040                              ; $82F804 |
  BPL CODE_82F81A                           ; $82F807 |
  LDA.W #$FFFF                              ; $82F809 |
  BRA CODE_82F81A                           ; $82F80C |

CODE_82F80E:
  SEC                                       ; $82F80E |
  SBC.W #$0008                              ; $82F80F |
  CMP.W #$FFF0                              ; $82F812 |
  BPL CODE_82F81A                           ; $82F815 |
  LDA.W #$FFF0                              ; $82F817 |

CODE_82F81A:
  STA.B $2A,X                               ; $82F81A |
  JSL.L CODE_FL_82C8C4                      ; $82F81C |
  JSL.L CODE_FL_82CEC6                      ; $82F820 |
  LDA.B $35,X                               ; $82F824 |
  CMP.W #$0200                              ; $82F826 |
  BMI CODE_82F830                           ; $82F829 |
  LDY.W #$0200                              ; $82F82B |
  STY.B $35,X                               ; $82F82E |

CODE_82F830:
  CMP.W #$0080                              ; $82F830 |
  BPL CODE_82F83D                           ; $82F833 |
  LDA.W #$0080                              ; $82F835 |
  STA.B $35,X                               ; $82F838 |
  LDA.W #$8000                              ; $82F83A |

CODE_82F83D:
  RTS                                       ; $82F83D |

CODE_FN_82F83E:
  LDA.W $1C86                               ; $82F83E |
  BEQ CODE_82F849                           ; $82F841 |
  JSL.L CODE_FL_82D1E7                      ; $82F843 |
  BRA CODE_82F84E                           ; $82F847 |

CODE_82F849:
  LDA.W #$0080                              ; $82F849 |
  STA.B $35,X                               ; $82F84C |

CODE_82F84E:
  JSL.L CODE_FL_82C87C                      ; $82F84E |
  CMP.W #$0080                              ; $82F852 |
  BMI CODE_82F85C                           ; $82F855 |
  LDY.W #$FFE0                              ; $82F857 |
  STY.B $26,X                               ; $82F85A |

CODE_82F85C:
  CMP.W #$FF80                              ; $82F85C |
  BPL CODE_82F866                           ; $82F85F |
  LDY.W #$0020                              ; $82F861 |
  STY.B $26,X                               ; $82F864 |

CODE_82F866:
  JSL.L CODE_FL_82CEC6                      ; $82F866 |
  RTS                                       ; $82F86A |

CODE_FN_82F86B:
  LDA.B $35,X                               ; $82F86B |
  CMP.W #$0086                              ; $82F86D |
  BPL CODE_82F890                           ; $82F870 |
  DEC.B $4E,X                               ; $82F872 |
  BPL CODE_82F890                           ; $82F874 |
  LDA.W $0052,X                             ; $82F876 |
  INC A                                     ; $82F879 |
  AND.W #$000F                              ; $82F87A |
  STA.W $0052,X                             ; $82F87D |
  ASL A                                     ; $82F880 |
  ASL A                                     ; $82F881 |
  TAY                                       ; $82F882 |
  LDA.W CODE_009622,Y                       ; $82F883 |
  STA.W $004E,X                             ; $82F886 |
  LDA.W CODE_009620,Y                       ; $82F889 |
  JSL.L CODE_FL_82CD2F                      ; $82F88C |

CODE_82F890:
  RTS                                       ; $82F890 |

  dw CODE_82F8A1                            ; $82F891 |
  dw CODE_82F8AC                            ; $82F893 |
  dw CODE_82F8FD                            ; $82F895 |
  dw CODE_82F91A                            ; $82F897 |
  dw CODE_82F93E                            ; $82F899 |
  dw CODE_82F94C                            ; $82F89B |
  dw CODE_82F974                            ; $82F89D |
  dw CODE_82F982                            ; $82F89F |

CODE_82F8A1:
  LDA.B $3E,X                               ; $82F8A1 |
  STA.B $3C,X                               ; $82F8A3 |
  INC.B $1A,X                               ; $82F8A5 |
  JSR.W CODE_FN_82FF44                      ; $82F8A7 |
  BRA CODE_JP_82F8E3                        ; $82F8AA |

CODE_82F8AC:
  JSR.W CODE_FN_82FF44                      ; $82F8AC |
  BCC CODE_82F8F9                           ; $82F8AF |
  DEC.B $4E,X                               ; $82F8B1 |
  BPL CODE_JP_82F8DD                        ; $82F8B3 |
  LDY.W #$8BB3                              ; $82F8B5 |
  LDA.B $42,X                               ; $82F8B8 |
  CMP.W #$0003                              ; $82F8BA |
  BMI CODE_82F8C2                           ; $82F8BD |
  LDY.W #$8BB6                              ; $82F8BF |

CODE_82F8C2:
  JSL.L CODE_FL_82B81C                      ; $82F8C2 |
  LDA.W #$0001                              ; $82F8C6 |
  STA.B $5E,X                               ; $82F8C9 |
  STZ.B $5C,X                               ; $82F8CB |
  INC.B $1A,X                               ; $82F8CD |
  LDA.W #$0001                              ; $82F8CF |
  JSL.L CODE_FL_82FEA9                      ; $82F8D2 |
  LDA.W #$0040                              ; $82F8D6 |
  STA.B $38,X                               ; $82F8D9 |
  BRA CODE_JP_82F8E3                        ; $82F8DB |

CODE_JP_82F8DD:
  JSR.W CODE_FN_82FFA2                      ; $82F8DD |
  JSR.W CODE_FN_82FF93                      ; $82F8E0 |

CODE_JP_82F8E3:
  LDA.W $0DED                               ; $82F8E3 |
  CLC                                       ; $82F8E6 |
  ADC.B $44,X                               ; $82F8E7 |
  STA.B $2D,X                               ; $82F8E9 |
  LDA.W $0DF1                               ; $82F8EB |
  CLC                                       ; $82F8EE |
  ADC.B $46,X                               ; $82F8EF |
  STA.B $31,X                               ; $82F8F1 |
  LDA.W $0DF5                               ; $82F8F3 |
  STA.B $35,X                               ; $82F8F6 |
  RTL                                       ; $82F8F8 |

CODE_82F8F9:
  JML.L CODE_FL_82CC9F                      ; $82F8F9 |

CODE_82F8FD:
  LDA.B $38,X                               ; $82F8FD |
  CMP.W #$0020                              ; $82F8FF |
  BNE CODE_82F90B                           ; $82F902 |
  LDA.W #$0002                              ; $82F904 |
  JSL.L CODE_FL_82FEA9                      ; $82F907 |

CODE_82F90B:
  DEC.B $38,X                               ; $82F90B |
  BPL CODE_82F911                           ; $82F90D |
  INC.B $1A,X                               ; $82F90F |

CODE_82F911:
  LDA.W #$0006                              ; $82F911 |
  JSL.L CODE_FL_82B42F                      ; $82F914 |
  BRA CODE_JP_82F8E3                        ; $82F918 |

CODE_82F91A:
  JSR.W CODE_FN_82FEE2                      ; $82F91A |
  BCC CODE_82F942                           ; $82F91D |
  LDA.W #$0036                              ; $82F91F |
  JSL.L CODE_FL_82CD2F                      ; $82F922 |
  BCC CODE_82F942                           ; $82F926 |
  LDA.W #$8368                              ; $82F928 |
  STA.W $0038,Y                             ; $82F92B |
  LDA.W #$00BC                              ; $82F92E |
  JSL.L CODE_FL_8089BD                      ; $82F931 |
  LDA.W #$0040                              ; $82F935 |
  STA.B $38,X                               ; $82F938 |
  INC.B $1A,X                               ; $82F93A |
  BRA CODE_82F911                           ; $82F93C |

CODE_82F93E:
  DEC.B $38,X                               ; $82F93E |
  BPL CODE_82F911                           ; $82F940 |

CODE_82F942:
  LDA.W #$0040                              ; $82F942 |
  STA.B $38,X                               ; $82F945 |
  LDA.W #$0005                              ; $82F947 |
  STA.B $1A,X                               ; $82F94A |

CODE_82F94C:
  LDA.B $38,X                               ; $82F94C |
  CMP.W #$0020                              ; $82F94E |
  BNE CODE_82F95A                           ; $82F951 |
  LDA.W #$0001                              ; $82F953 |
  JSL.L CODE_FL_82FEA9                      ; $82F956 |

CODE_82F95A:
  DEC.B $38,X                               ; $82F95A |
  BPL CODE_82F911                           ; $82F95C |
  STZ.B $5E,X                               ; $82F95E |
  LDA.W #$0000                              ; $82F960 |
  JSL.L CODE_FL_82FEA9                      ; $82F963 |
  LDA.W #$0050                              ; $82F967 |
  STA.B $4E,X                               ; $82F96A |
  LDA.W #$0001                              ; $82F96C |
  STA.B $1A,X                               ; $82F96F |
  JMP.W CODE_JP_82F8DD                      ; $82F971 |

CODE_82F974:
  STZ.B $5C,X                               ; $82F974 |
  LDA.B $18,X                               ; $82F976 |
  AND.W #$BFFF                              ; $82F978 |
  STA.B $18,X                               ; $82F97B |
  INC.B $1A,X                               ; $82F97D |
  JMP.W CODE_JP_82F8E3                      ; $82F97F |

CODE_82F982:
  LDY.W #$0000                              ; $82F982 |
  JSL.L CODE_FL_82B0E1                      ; $82F985 |
  LDA.W #$0003                              ; $82F989 |
  JSL.L CODE_FL_82FEA9                      ; $82F98C |
  LDA.W #$C015                              ; $82F990 |
  JSL.L CODE_FL_82CD2F                      ; $82F993 |
  LDA.W #$000D                              ; $82F997 |
  JSL.L push_sound_queue                    ; $82F99A |
  JSR.W CODE_FN_82FFBD                      ; $82F99E |
  JSR.W CODE_FN_82FF93                      ; $82F9A1 |
  LDA.W #$0001                              ; $82F9A4 |
  STA.B $1A,X                               ; $82F9A7 |
  LDA.B $18,X                               ; $82F9A9 |
  ORA.W #$4000                              ; $82F9AB |
  STA.B $18,X                               ; $82F9AE |
  JMP.W CODE_JP_82F8E3                      ; $82F9B0 |

  dw CODE_82F9BD                            ; $82F9B3 |
  dw CODE_82F9D1                            ; $82F9B5 |
  dw CODE_82F9ED                            ; $82F9B7 |
  dw CODE_82FA28                            ; $82F9B9 |
  dw CODE_82FA34                            ; $82F9BB |

CODE_82F9BD:
  LDY.W #$8BB6                              ; $82F9BD |
  JSL.L CODE_FL_82B81C                      ; $82F9C0 |
  LDA.W #$0001                              ; $82F9C4 |
  STA.B $5E,X                               ; $82F9C7 |
  JSR.W CODE_FN_82FF3A                      ; $82F9C9 |
  INC.B $1A,X                               ; $82F9CC |
  JMP.W CODE_JP_82F8E3                      ; $82F9CE |

CODE_82F9D1:
  DEC.B $4E,X                               ; $82F9D1 |
  BPL CODE_82F9E3                           ; $82F9D3 |
  LDA.W #$00C0                              ; $82F9D5 |
  STA.B $4E,X                               ; $82F9D8 |
  STZ.B $38,X                               ; $82F9DA |
  LDA.W #$0003                              ; $82F9DC |
  STA.B $3A,X                               ; $82F9DF |
  INC.B $1A,X                               ; $82F9E1 |

CODE_82F9E3:
  LDA.W #$0003                              ; $82F9E3 |
  JSL.L CODE_FL_82B42F                      ; $82F9E6 |
  JMP.W CODE_JP_82F8E3                      ; $82F9EA |

CODE_82F9ED:
  DEC.B $38,X                               ; $82F9ED |
  BPL CODE_82FA1E                           ; $82F9EF |
  LDA.W #$0008                              ; $82F9F1 |
  STA.B $38,X                               ; $82F9F4 |
  JSR.W CODE_FN_82FEE2                      ; $82F9F6 |
  BCC CODE_82FA1E                           ; $82F9F9 |
  LDA.W #$0036                              ; $82F9FB |
  JSL.L CODE_FL_82CD2F                      ; $82F9FE |
  BCC CODE_82FA10                           ; $82FA02 |
  LDA.W #$83C0                              ; $82FA04 |
  STA.W $0038,Y                             ; $82FA07 |
  LDA.W #$0040                              ; $82FA0A |
  STA.W $0006,Y                             ; $82FA0D |

CODE_82FA10:
  DEC.B $3A,X                               ; $82FA10 |
  BNE CODE_82FA1E                           ; $82FA12 |

CODE_82FA14:
  LDA.W #$0080                              ; $82FA14 |
  STA.B $4E,X                               ; $82FA17 |
  LDA.W #$0001                              ; $82FA19 |
  STA.B $1A,X                               ; $82FA1C |

CODE_82FA1E:
  LDA.W #$0003                              ; $82FA1E |
  JSL.L CODE_FL_82B42F                      ; $82FA21 |
  JMP.W CODE_JP_82F8E3                      ; $82FA25 |

CODE_82FA28:
  LDA.B $18,X                               ; $82FA28 |
  AND.W #$BFFF                              ; $82FA2A |
  STA.B $18,X                               ; $82FA2D |
  INC.B $1A,X                               ; $82FA2F |
  JMP.W CODE_JP_82F8E3                      ; $82FA31 |

CODE_82FA34:
  JSL.L CODE_FL_82B931                      ; $82FA34 |
  LDA.B $10,X                               ; $82FA38 |
  BEQ CODE_82FA3E                           ; $82FA3A |
  BPL CODE_82FA14                           ; $82FA3C |

CODE_82FA3E:
  LDY.W #$0000                              ; $82FA3E |
  JSL.L CODE_FL_82B0E1                      ; $82FA41 |
  LDA.W #$000D                              ; $82FA45 |
  JSL.L push_sound_queue                    ; $82FA48 |
  LDY.B $4A,X                               ; $82FA4C |
  LDA.W LOOSE_OP_009688,Y                   ; $82FA4E |
  TAY                                       ; $82FA51 |
  LDA.W #$9734                              ; $82FA52 |
  JSL.L CODE_FL_A0F92E                      ; $82FA55 |
  JSR.W CODE_FN_82FFBD                      ; $82FA59 |
  LDA.W #$C015                              ; $82FA5C |
  JML.L CODE_FL_82CD96                      ; $82FA5F |

  dw CODE_82FA67                            ; $82FA63 |
  dw CODE_82FA75                            ; $82FA65 |

CODE_82FA67:
  LDY.W #$8BB0                              ; $82FA67 |
  JSL.L CODE_FL_82B81C                      ; $82FA6A |
  LDA.W #$0003                              ; $82FA6E |
  STA.B $5E,X                               ; $82FA71 |
  INC.B $1A,X                               ; $82FA73 |

CODE_82FA75:
  LDA.W #$0001                              ; $82FA75 |
  JSL.L CODE_FL_82B45B                      ; $82FA78 |
  LDY.W #$0DC0                              ; $82FA7C |
  JSL.L CODE_FL_82CDF8                      ; $82FA7F |
  LDA.B $35,X                               ; $82FA83 |
  CLC                                       ; $82FA85 |
  ADC.B $58,X                               ; $82FA86 |
  STA.B $35,X                               ; $82FA88 |
  RTL                                       ; $82FA8A |

  dw CODE_82FA93                            ; $82FA8B |
  dw CODE_82FAA8                            ; $82FA8D |
  dw CODE_82FACA                            ; $82FA8F |
  dw CODE_82FAD4                            ; $82FA91 |

CODE_82FA93:
  LDY.W #$8BB6                              ; $82FA93 |
  JSL.L CODE_FL_82B81C                      ; $82FA96 |
  LDA.W #$0003                              ; $82FA9A |
  STA.B $5E,X                               ; $82FA9D |
  LDA.W CODE_00975C                         ; $82FA9F |
  JSL.L CODE_FL_8AF6EE                      ; $82FAA2 |
  INC.B $1A,X                               ; $82FAA6 |

CODE_82FAA8:
  JSR.W CODE_FN_82FB17                      ; $82FAA8 |
  LDY.W #$0DC0                              ; $82FAAB |
  JSL.L CODE_FL_82CDF8                      ; $82FAAE |
  LDA.B $31,X                               ; $82FAB2 |
  SEC                                       ; $82FAB4 |
  SBC.W #$0070                              ; $82FAB5 |
  STA.B $31,X                               ; $82FAB8 |
  LDA.W $0E06                               ; $82FABA |
  BNE CODE_82FAC6                           ; $82FABD |
  LDA.W #$0002                              ; $82FABF |
  JML.L CODE_FL_82B42F                      ; $82FAC2 |

CODE_82FAC6:
  DEC.W $0E06                               ; $82FAC6 |
  RTL                                       ; $82FAC9 |

CODE_82FACA:
  LDA.B $18,X                               ; $82FACA |
  AND.W #$BFFF                              ; $82FACC |
  STA.B $18,X                               ; $82FACF |
  INC.B $1A,X                               ; $82FAD1 |
  RTL                                       ; $82FAD3 |

CODE_82FAD4:
  LDA.W #$0010                              ; $82FAD4 |
  STA.W $0E06                               ; $82FAD7 |
  SED                                       ; $82FADA |
  LDA.W $0DD0                               ; $82FADB |
  SEC                                       ; $82FADE |
  SBC.W #$0030                              ; $82FADF |
  STA.W $0DD0                               ; $82FAE2 |
  CLD                                       ; $82FAE5 |
  BEQ CODE_82FAFF                           ; $82FAE6 |
  BMI CODE_82FAFF                           ; $82FAE8 |
  XBA                                       ; $82FAEA |
  AND.W #$0007                              ; $82FAEB |
  ASL A                                     ; $82FAEE |
  TAY                                       ; $82FAEF |
  LDA.W CODE_009750,Y                       ; $82FAF0 |
  JSL.L CODE_FL_8AF6EE                      ; $82FAF3 |
  STZ.B $5C,X                               ; $82FAF7 |
  LDA.W #$0001                              ; $82FAF9 |
  STA.B $1A,X                               ; $82FAFC |
  RTL                                       ; $82FAFE |

CODE_82FAFF:
  STZ.W $0DD0                               ; $82FAFF |
  LDA.W #$9764                              ; $82FB02 |
  LDY.W #$059F                              ; $82FB05 |
  JSL.L CODE_FL_A0F92E                      ; $82FB08 |
  LDY.W #$1000                              ; $82FB0C |
  JSL.L CODE_FL_82CC97                      ; $82FB0F |
  JML.L CODE_FL_82CC9F                      ; $82FB13 |

CODE_FN_82FB17:
  DEC.B $3C,X                               ; $82FB17 |
  BPL CODE_82FB35                           ; $82FB19 |
  LDA.W #$0006                              ; $82FB1B |
  SEC                                       ; $82FB1E |
  SBC.B $3A,X                               ; $82FB1F |
  STA.B $3C,X                               ; $82FB21 |
  LDA.B $3E,X                               ; $82FB23 |
  EOR.W #$0004                              ; $82FB25 |
  STA.B $3E,X                               ; $82FB28 |
  CLC                                       ; $82FB2A |
  ADC.W #$9760                              ; $82FB2B |
  LDY.W #$059F                              ; $82FB2E |
  JSL.L CODE_FL_A0F92E                      ; $82FB31 |

CODE_82FB35:
  RTS                                       ; $82FB35 |

  JSR.W CODE_FN_82FCFF                      ; $82FB36 |
  LDA.W $0E04                               ; $82FB39 |
  BEQ CODE_82FB47                           ; $82FB3C |
  LDA.W #$0005                              ; $82FB3E |
  CMP.B $1A,X                               ; $82FB41 |
  BMI CODE_82FB47                           ; $82FB43 |
  STA.B $1A,X                               ; $82FB45 |

CODE_82FB47:
  LDA.B $1A,X                               ; $82FB47 |
  PHX                                       ; $82FB49 |
  ASL A                                     ; $82FB4A |
  TAX                                       ; $82FB4B |
  LDA.L PTR16_82FB56,X                      ; $82FB4C |
  PLX                                       ; $82FB50 |
  STA.B $00                                 ; $82FB51 |
  JMP.W ($0000)                             ; $82FB53 |

PTR16_82FB56:
  dw CODE_82FB64                            ; $82FB56 |
  dw CODE_82FBB7                            ; $82FB58 |
  dw CODE_82FBE0                            ; $82FB5A |
  dw CODE_82FBF1                            ; $82FB5C |
  dw CODE_82FE69                            ; $82FB5E |
  dw CODE_82FC31                            ; $82FB60 |
  dw CODE_82FC3D                            ; $82FB62 |

CODE_82FB64:
  LDA.B $86                                 ; $82FB64 |
  AND.W #$0018                              ; $82FB66 |
  TAY                                       ; $82FB69 |
  LDA.W LOOSE_OP_009780,Y                   ; $82FB6A |
  STA.B $2D,X                               ; $82FB6D |
  LDA.W LOOSE_OP_009782,Y                   ; $82FB6F |
  STA.B $04,X                               ; $82FB72 |
  LDA.W CODE_009784,Y                       ; $82FB74 |
  STA.B $26,X                               ; $82FB77 |
  LDA.W CODE_009786,Y                       ; $82FB79 |
  STA.B $31,X                               ; $82FB7C |
  LDA.W $0DF5                               ; $82FB7E |
  SEC                                       ; $82FB81 |
  SBC.W #$0020                              ; $82FB82 |
  STA.B $35,X                               ; $82FB85 |
  LDY.W #$8B9B                              ; $82FB87 |
  JSL.L CODE_FL_82B81C                      ; $82FB8A |
  LDA.W #$0001                              ; $82FB8E |
  STA.B $5E,X                               ; $82FB91 |
  LDA.B $86                                 ; $82FB93 |
  AND.W #$001F                              ; $82FB95 |
  CLC                                       ; $82FB98 |
  ADC.W #$0010                              ; $82FB99 |
  STA.B $4E,X                               ; $82FB9C |
  LDY.W #$84C2                              ; $82FB9E |
  LDA.W #$0006                              ; $82FBA1 |
  JSL.L CODE_FL_828AD9                      ; $82FBA4 |
  LDY.W #$0000                              ; $82FBA8 |
  LDA.B $42                                 ; $82FBAB |
  LSR A                                     ; $82FBAD |
  BCC CODE_82FBB3                           ; $82FBAE |
  LDY.W #$0045                              ; $82FBB0 |

CODE_82FBB3:
  STY.B $02,X                               ; $82FBB3 |
  INC.B $1A,X                               ; $82FBB5 |

CODE_82FBB7:
  LDA.B $09,X                               ; $82FBB7 |
  CMP.W #$0020                              ; $82FBB9 |
  BMI CODE_82FBD1                           ; $82FBBC |
  CMP.W #$00E0                              ; $82FBBE |
  BPL CODE_82FBD1                           ; $82FBC1 |
  DEC.B $4E,X                               ; $82FBC3 |
  BPL CODE_82FBD1                           ; $82FBC5 |
  LDA.W #$0020                              ; $82FBC7 |
  STA.B $4E,X                               ; $82FBCA |
  LDA.W #$0002                              ; $82FBCC |
  STA.B $1A,X                               ; $82FBCF |

CODE_82FBD1:
  JSL.L CODE_FL_82C897                      ; $82FBD1 |

CODE_82FBD5:
  LDA.W #$0004                              ; $82FBD5 |
  JSL.L CODE_FL_82B42F                      ; $82FBD8 |
  JML.L CODE_JL_82CD11                      ; $82FBDC |

CODE_82FBE0:
  LDY.W #$84CC                              ; $82FBE0 |
  LDA.W #$0009                              ; $82FBE3 |
  JSL.L CODE_FL_828AD9                      ; $82FBE6 |
  LDA.W #$0020                              ; $82FBEA |
  STA.B $38,X                               ; $82FBED |
  INC.B $1A,X                               ; $82FBEF |

CODE_82FBF1:
  DEC.B $38,X                               ; $82FBF1 |
  BPL CODE_82FC1C                           ; $82FBF3 |
  LDA.W #$0036                              ; $82FBF5 |
  JSL.L CODE_FL_82CD2F                      ; $82FBF8 |
  BCC CODE_82FC1C                           ; $82FBFC |
  LDA.W #$83C0                              ; $82FBFE |
  STA.W $0038,Y                             ; $82FC01 |
  LDA.W #$0040                              ; $82FC04 |
  STA.W $0006,Y                             ; $82FC07 |
  LDA.W #$0002                              ; $82FC0A |
  STA.W $003E,Y                             ; $82FC0D |
  LDA.W #$002C                              ; $82FC10 |
  JSL.L CODE_FL_8089BD                      ; $82FC13 |
  LDA.W #$8000                              ; $82FC17 |
  STA.B $38,X                               ; $82FC1A |

CODE_82FC1C:
  LDA.B $1C,X                               ; $82FC1C |
  BNE CODE_82FBD5                           ; $82FC1E |
  LDY.W #$84C2                              ; $82FC20 |
  LDA.W #$0006                              ; $82FC23 |
  JSL.L CODE_FL_828AD9                      ; $82FC26 |
  LDA.W #$0001                              ; $82FC2A |
  STA.B $1A,X                               ; $82FC2D |
  BRA CODE_82FBD5                           ; $82FC2F |

CODE_82FC31:
  LDA.W #$FF00                              ; $82FC31 |
  STA.B $28,X                               ; $82FC34 |
  LDA.W #$33EA                              ; $82FC36 |
  STA.B $00,X                               ; $82FC39 |
  INC.B $1A,X                               ; $82FC3B |

CODE_82FC3D:
  JSL.L CODE_FL_82CAC7                      ; $82FC3D |
  JML.L CODE_JL_82CD24                      ; $82FC41 |

  JSR.W CODE_FN_82FCFF                      ; $82FC45 |
  LDA.W $0E04                               ; $82FC48 |
  BEQ CODE_82FC56                           ; $82FC4B |
  LDA.W #$0003                              ; $82FC4D |
  CMP.B $1A,X                               ; $82FC50 |
  BMI CODE_82FC56                           ; $82FC52 |
  STA.B $1A,X                               ; $82FC54 |

CODE_82FC56:
  LDA.B $1A,X                               ; $82FC56 |
  PHX                                       ; $82FC58 |
  ASL A                                     ; $82FC59 |
  TAX                                       ; $82FC5A |
  LDA.L PTR16_82FC65,X                      ; $82FC5B |
  PLX                                       ; $82FC5F |
  STA.B $00                                 ; $82FC60 |
  JMP.W ($0000)                             ; $82FC62 |

PTR16_82FC65:
  dw CODE_82FC6F                            ; $82FC65 |
  dw CODE_82FCB9                            ; $82FC67 |
  dw CODE_82FE69                            ; $82FC69 |
  dw CODE_82FC31                            ; $82FC6B |
  dw CODE_82FC3D                            ; $82FC6D |

CODE_82FC6F:
  LDA.B $86                                 ; $82FC6F |
  AND.W #$0008                              ; $82FC71 |
  TAY                                       ; $82FC74 |
  LDA.W LOOSE_OP_0097A0,Y                   ; $82FC75 |
  STA.B $2D,X                               ; $82FC78 |
  LDA.W CODE_0097A2,Y                       ; $82FC7A |
  STA.B $04,X                               ; $82FC7D |
  LDA.W CODE_0097A4,Y                       ; $82FC7F |
  STA.B $26,X                               ; $82FC82 |
  LDY.W #$0009                              ; $82FC84 |
  LDA.B $86                                 ; $82FC87 |
  LSR A                                     ; $82FC89 |
  BCC CODE_82FC8F                           ; $82FC8A |
  LDY.W #$FFC9                              ; $82FC8C |

CODE_82FC8F:
  STY.B $31,X                               ; $82FC8F |
  LDA.W $0DF5                               ; $82FC91 |
  SEC                                       ; $82FC94 |
  SBC.W #$0020                              ; $82FC95 |
  STA.B $35,X                               ; $82FC98 |
  LDY.W #$8B9B                              ; $82FC9A |
  JSL.L CODE_FL_82B81C                      ; $82FC9D |
  LDA.W #$0001                              ; $82FCA1 |
  STA.B $5E,X                               ; $82FCA4 |
  LDA.B $86                                 ; $82FCA6 |
  AND.W #$001F                              ; $82FCA8 |
  STA.B $4E,X                               ; $82FCAB |
  LDY.W #$84DE                              ; $82FCAD |
  LDA.W #$0006                              ; $82FCB0 |
  JSL.L CODE_FL_828AD9                      ; $82FCB3 |
  INC.B $1A,X                               ; $82FCB7 |

CODE_82FCB9:
  LDA.B $09,X                               ; $82FCB9 |
  CMP.W #$0020                              ; $82FCBB |
  BMI CODE_82FCF0                           ; $82FCBE |
  CMP.W #$00E0                              ; $82FCC0 |
  BPL CODE_82FCF0                           ; $82FCC3 |
  DEC.B $4E,X                               ; $82FCC5 |
  BPL CODE_82FCF0                           ; $82FCC7 |
  LDA.W #$0020                              ; $82FCC9 |
  STA.B $4E,X                               ; $82FCCC |
  LDA.W #$0036                              ; $82FCCE |
  JSL.L CODE_FL_82CD2F                      ; $82FCD1 |
  BCC CODE_82FCF0                           ; $82FCD5 |
  LDA.W #$83C0                              ; $82FCD7 |
  STA.W $0038,Y                             ; $82FCDA |
  LDA.W #$0040                              ; $82FCDD |
  STA.W $0006,Y                             ; $82FCE0 |
  LDA.W #$0002                              ; $82FCE3 |
  STA.W $003E,Y                             ; $82FCE6 |
  LDA.W #$002C                              ; $82FCE9 |
  JSL.L CODE_FL_8089BD                      ; $82FCEC |

CODE_82FCF0:
  JSL.L CODE_FL_82C897                      ; $82FCF0 |
  LDA.W #$0002                              ; $82FCF4 |
  JSL.L CODE_FL_82B42F                      ; $82FCF7 |
  JML.L CODE_JL_82CD11                      ; $82FCFB |

CODE_FN_82FCFF:
  CLC                                       ; $82FCFF |
  LDA.W $0DE6                               ; $82FD00 |
  BPL CODE_82FD0E                           ; $82FD03 |
  ADC.B $2C,X                               ; $82FD05 |
  STA.B $2C,X                               ; $82FD07 |
  BCS CODE_82FD16                           ; $82FD09 |
  DEC.B $2E,X                               ; $82FD0B |
  RTS                                       ; $82FD0D |

CODE_82FD0E:
  ADC.B $2C,X                               ; $82FD0E |
  STA.B $2C,X                               ; $82FD10 |
  BCC CODE_82FD16                           ; $82FD12 |
  INC.B $2E,X                               ; $82FD14 |

CODE_82FD16:
  RTS                                       ; $82FD16 |

  LDA.W $0E04                               ; $82FD17 |
  BEQ CODE_82FD25                           ; $82FD1A |
  LDA.W #$0004                              ; $82FD1C |
  CMP.B $1A,X                               ; $82FD1F |
  BMI CODE_82FD25                           ; $82FD21 |
  STA.B $1A,X                               ; $82FD23 |

CODE_82FD25:
  LDA.B $1A,X                               ; $82FD25 |
  PHX                                       ; $82FD27 |
  ASL A                                     ; $82FD28 |
  TAX                                       ; $82FD29 |
  LDA.L PTR16_82FD34,X                      ; $82FD2A |
  PLX                                       ; $82FD2E |
  STA.B $00                                 ; $82FD2F |
  JMP.W ($0000)                             ; $82FD31 |

PTR16_82FD34:
  dw CODE_82FD42                            ; $82FD34 |
  dw CODE_82FD99                            ; $82FD36 |
  dw CODE_82FDD5                            ; $82FD38 |
  dw CODE_82FDE1                            ; $82FD3A |
  dw CODE_82FE36                            ; $82FD3C |
  dw CODE_82FE56                            ; $82FD3E |
  dw CODE_82FE69                            ; $82FD40 |

CODE_82FD42:
  LDY.W #$FFA0                              ; $82FD42 |
  LDA.B $86                                 ; $82FD45 |
  LSR A                                     ; $82FD47 |
  BCC CODE_82FD4D                           ; $82FD48 |
  LDY.W #$0060                              ; $82FD4A |

CODE_82FD4D:
  STY.B $2D,X                               ; $82FD4D |
  LDY.W #$FFF0                              ; $82FD4F |
  LSR A                                     ; $82FD52 |
  BCC CODE_82FD58                           ; $82FD53 |
  LDY.W #$FFD0                              ; $82FD55 |

CODE_82FD58:
  STY.B $31,X                               ; $82FD58 |
  TYA                                       ; $82FD5A |
  CLC                                       ; $82FD5B |
  ADC.W #$0010                              ; $82FD5C |
  STA.B $40,X                               ; $82FD5F |
  LDA.W $0DF5                               ; $82FD61 |
  SEC                                       ; $82FD64 |
  SBC.W #$0022                              ; $82FD65 |
  STA.B $35,X                               ; $82FD68 |
  LDY.W #$0045                              ; $82FD6A |
  LDA.B $42                                 ; $82FD6D |
  LSR A                                     ; $82FD6F |
  BCC CODE_82FD75                           ; $82FD70 |
  LDY.W #$0046                              ; $82FD72 |

CODE_82FD75:
  STY.B $02,X                               ; $82FD75 |
  LDY.W #$8B9B                              ; $82FD77 |
  JSL.L CODE_FL_82B81C                      ; $82FD7A |
  LDA.W #$0001                              ; $82FD7E |
  STA.B $5E,X                               ; $82FD81 |
  LDA.B $86                                 ; $82FD83 |
  AND.W #$001F                              ; $82FD85 |
  CLC                                       ; $82FD88 |
  ADC.W #$0080                              ; $82FD89 |
  STA.B $4E,X                               ; $82FD8C |
  STZ.B $3E,X                               ; $82FD8E |
  INC.B $1A,X                               ; $82FD90 |
  LDA.W #$003F                              ; $82FD92 |
  JSL.L push_sound_queue                    ; $82FD95 |

CODE_82FD99:
  DEC.B $4E,X                               ; $82FD99 |
  BPL CODE_82FDAF                           ; $82FD9B |
  LDA.B $3C,X                               ; $82FD9D |
  BEQ CODE_82FDA9                           ; $82FD9F |
  LDA.W #$0004                              ; $82FDA1 |
  STA.W $001A,X                             ; $82FDA4 |
  BRA CODE_82FDAF                           ; $82FDA7 |

CODE_82FDA9:
  LDA.W #$0002                              ; $82FDA9 |
  STA.W $001A,X                             ; $82FDAC |

CODE_82FDAF:
  LDA.W #$0010                              ; $82FDAF |
  STA.B $06                                 ; $82FDB2 |
  LDY.W #$0300                              ; $82FDB4 |
  LDA.B $3E,X                               ; $82FDB7 |
  JSL.L CODE_FL_82C951                      ; $82FDB9 |
  LDA.W #$0020                              ; $82FDBD |
  STA.B $06                                 ; $82FDC0 |
  LDY.W #$0200                              ; $82FDC2 |
  LDA.B $40,X                               ; $82FDC5 |
  JSL.L CODE_FL_82C9A0                      ; $82FDC7 |
  LDA.W #$0006                              ; $82FDCB |
  JSL.L CODE_FL_82B42F                      ; $82FDCE |
  JMP.W CODE_FL_82FE77                      ; $82FDD2 |

CODE_82FDD5:
  LDY.W #$84E8                              ; $82FDD5 |
  LDA.W #$0004                              ; $82FDD8 |
  JSL.L CODE_FL_828AD9                      ; $82FDDB |
  INC.B $1A,X                               ; $82FDDF |

CODE_82FDE1:
  LDA.B $00,X                               ; $82FDE1 |
  CMP.W #$35EE                              ; $82FDE3 |
  BNE CODE_82FE15                           ; $82FDE6 |
  DEC.B $31,X                               ; $82FDE8 |
  LDA.B $3C,X                               ; $82FDEA |
  BNE CODE_82FE15                           ; $82FDEC |
  LDA.W #$000C                              ; $82FDEE |
  STA.B $3C,X                               ; $82FDF1 |
  LDA.W #$0036                              ; $82FDF3 |
  JSL.L CODE_FL_82CD2F                      ; $82FDF6 |
  BCC CODE_82FE15                           ; $82FDFA |
  LDA.W #$83C0                              ; $82FDFC |
  STA.W $0038,Y                             ; $82FDFF |
  LDA.W #$0040                              ; $82FE02 |
  STA.W $0006,Y                             ; $82FE05 |
  LDA.W #$0002                              ; $82FE08 |
  STA.W $003E,Y                             ; $82FE0B |
  LDA.W #$002C                              ; $82FE0E |
  JSL.L CODE_FL_8089BD                      ; $82FE11 |

CODE_82FE15:
  LDA.B $1C,X                               ; $82FE15 |
  BNE CODE_82FE2F                           ; $82FE17 |
  LDA.B $86                                 ; $82FE19 |
  AND.W #$0007                              ; $82FE1B |
  CLC                                       ; $82FE1E |
  ADC.W #$0040                              ; $82FE1F |
  STA.B $4E,X                               ; $82FE22 |
  STZ.B $1C,X                               ; $82FE24 |
  STZ.B $22,X                               ; $82FE26 |
  STZ.B $1E,X                               ; $82FE28 |
  LDA.W #$0001                              ; $82FE2A |
  STA.B $1A,X                               ; $82FE2D |

CODE_82FE2F:
  LDA.W #$0006                              ; $82FE2F |
  JML.L CODE_FL_82B42F                      ; $82FE32 |

CODE_82FE36:
  STZ.B $1C,X                               ; $82FE36 |
  STZ.B $22,X                               ; $82FE38 |
  STZ.B $1E,X                               ; $82FE3A |
  LDA.W #$FB00                              ; $82FE3C |
  LDY.B $26,X                               ; $82FE3F |
  BMI CODE_82FE46                           ; $82FE41 |
  LDA.W #$0500                              ; $82FE43 |

CODE_82FE46:
  STA.B $26,X                               ; $82FE46 |
  LDA.W #$FE00                              ; $82FE48 |
  LDY.B $28,X                               ; $82FE4B |
  BMI CODE_82FE52                           ; $82FE4D |
  LDA.W #$0200                              ; $82FE4F |

CODE_82FE52:
  STA.B $28,X                               ; $82FE52 |
  INC.B $1A,X                               ; $82FE54 |

CODE_82FE56:
  JSL.L CODE_FL_82C897                      ; $82FE56 |
  LDA.W #$0006                              ; $82FE5A |
  JSL.L CODE_FL_82B42F                      ; $82FE5D |
  JSL.L CODE_FL_82FE77                      ; $82FE61 |
  JML.L CODE_JL_82CD11                      ; $82FE65 |

CODE_82FE69:
  LDY.W #$0000                              ; $82FE69 |
  JSL.L CODE_FL_82B0E1                      ; $82FE6C |
  LDA.W #$C015                              ; $82FE70 |
  JML.L CODE_FL_82CD96                      ; $82FE73 |

CODE_FL_82FE77:
  DEC.B $1E,X                               ; $82FE77 |
  BPL CODE_82FEA8                           ; $82FE79 |
  LDA.W #$0001                              ; $82FE7B |
  STA.B $1E,X                               ; $82FE7E |
  LDA.B $22,X                               ; $82FE80 |
  EOR.W #$0002                              ; $82FE82 |
  STA.B $22,X                               ; $82FE85 |
  LDA.W #$0000                              ; $82FE87 |
  LDY.B $26,X                               ; $82FE8A |
  CPY.W #$FF00                              ; $82FE8C |
  BMI CODE_82FE9C                           ; $82FE8F |
  LDA.W #$0004                              ; $82FE91 |
  CPY.W #$0100                              ; $82FE94 |
  BMI CODE_82FE9C                           ; $82FE97 |
  LDA.W #$0008                              ; $82FE99 |

CODE_82FE9C:
  CLC                                       ; $82FE9C |
  ADC.B $22,X                               ; $82FE9D |
  CLC                                       ; $82FE9F |
  ADC.B $3C,X                               ; $82FEA0 |
  TAY                                       ; $82FEA2 |
  LDA.W CODE_009768,Y                       ; $82FEA3 |
  STA.B $00,X                               ; $82FEA6 |

CODE_82FEA8:
  RTL                                       ; $82FEA8 |

CODE_FL_82FEA9:
  STA.B $00                                 ; $82FEA9 |
  LDY.B $4A,X                               ; $82FEAB |
  LDA.W LOOSE_OP_009688,Y                   ; $82FEAD |
  STA.B $02                                 ; $82FEB0 |
  LDY.B $42,X                               ; $82FEB2 |
  CPY.W #$0004                              ; $82FEB4 |
  BEQ CODE_82FED4                           ; $82FEB7 |
  CPY.W #$0001                              ; $82FEB9 |
  BEQ CODE_82FEC9                           ; $82FEBC |
  LDY.B $00                                 ; $82FEBE |
  LDA.W LOOSE_OP_00974C,Y                   ; $82FEC0 |
  LDY.B $02                                 ; $82FEC3 |
  JML.L CODE_JL_A0F917                      ; $82FEC5 |

CODE_82FEC9:
  LDY.B $00                                 ; $82FEC9 |
  LDA.W LOOSE_OP_009748,Y                   ; $82FECB |
  LDY.B $02                                 ; $82FECE |
  JML.L CODE_JL_A0F917                      ; $82FED0 |

CODE_82FED4:
  LDA.B $00                                 ; $82FED4 |
  ASL A                                     ; $82FED6 |
  ASL A                                     ; $82FED7 |
  CLC                                       ; $82FED8 |
  ADC.W #$9738                              ; $82FED9 |
  LDY.B $02                                 ; $82FEDC |
  JML.L CODE_FL_A0F92E                      ; $82FEDE |

CODE_FN_82FEE2:
  LDA.B $09,X                               ; $82FEE2 |
  CMP.W #$0010                              ; $82FEE4 |
  BMI CODE_82FEFC                           ; $82FEE7 |
  CMP.W #$00F0                              ; $82FEE9 |
  BPL CODE_82FEFC                           ; $82FEEC |
  LDA.B $0D,X                               ; $82FEEE |
  CMP.W #$0030                              ; $82FEF0 |
  BMI CODE_82FEFC                           ; $82FEF3 |
  CMP.W #$0090                              ; $82FEF5 |
  BPL CODE_82FEFC                           ; $82FEF8 |
  SEC                                       ; $82FEFA |
  RTS                                       ; $82FEFB |

CODE_82FEFC:
  CLC                                       ; $82FEFC |
  RTS                                       ; $82FEFD |

CODE_FN_82FEFE:
  LDA.W #$0012                              ; $82FEFE |
  STA.B $00                                 ; $82FF01 |
  LDY.W #$0000                              ; $82FF03 |
  LDX.W #$0000                              ; $82FF06 |

CODE_82FF09:
  LDA.W LOOSE_OP_009680,Y                   ; $82FF09 |
  AND.W #$00FF                              ; $82FF0C |
  STA.L $7F0000,X                           ; $82FF0F |
  LDA.W LOOSE_OP_009681,Y                   ; $82FF13 |
  AND.W #$00FF                              ; $82FF16 |
  STA.L $7F0002,X                           ; $82FF19 |
  LDA.W CODE_009686,Y                       ; $82FF1D |
  STA.L $7F0004,X                           ; $82FF20 |
  TYA                                       ; $82FF24 |
  STA.L $7F0006,X                           ; $82FF25 |
  TYA                                       ; $82FF29 |
  CLC                                       ; $82FF2A |
  ADC.W #$000A                              ; $82FF2B |
  TAY                                       ; $82FF2E |
  TXA                                       ; $82FF2F |
  CLC                                       ; $82FF30 |
  ADC.W #$0010                              ; $82FF31 |
  TAX                                       ; $82FF34 |
  DEC.B $00                                 ; $82FF35 |
  BNE CODE_82FF09                           ; $82FF37 |
  RTS                                       ; $82FF39 |

CODE_FN_82FF3A:
  TXY                                       ; $82FF3A |
  LDA.B $3C,X                               ; $82FF3B |
  TAX                                       ; $82FF3D |
  LDA.L $7F0000,X                           ; $82FF3E |
  BRA CODE_82FF58                           ; $82FF42 |

CODE_FN_82FF44:
  TXY                                       ; $82FF44 |
  LDA.B $3E,X                               ; $82FF45 |
  STA.B $02                                 ; $82FF47 |
  LDA.B $40,X                               ; $82FF49 |
  STA.B $04                                 ; $82FF4B |
  LDA.B $3C,X                               ; $82FF4D |
  STA.B $00                                 ; $82FF4F |
  TAX                                       ; $82FF51 |

CODE_82FF52:
  LDA.L $7F0000,X                           ; $82FF52 |
  BEQ CODE_82FF80                           ; $82FF56 |

CODE_82FF58:
  STA.W $0042,Y                             ; $82FF58 |
  LDA.L $7F0002,X                           ; $82FF5B |
  STA.W $0010,Y                             ; $82FF5F |
  LDA.L $7F0004,X                           ; $82FF62 |
  STA.W $004E,Y                             ; $82FF66 |
  LDA.L $7F0006,X                           ; $82FF69 |
  STA.W $004A,Y                             ; $82FF6D |
  STX.B $48,Y                               ; $82FF70 |
  TYX                                       ; $82FF72 |
  TAY                                       ; $82FF73 |
  LDA.W LOOSE_OP_009682,Y                   ; $82FF74 |
  STA.B $44,X                               ; $82FF77 |
  LDA.W LOOSE_OP_009684,Y                   ; $82FF79 |
  STA.B $46,X                               ; $82FF7C |
  SEC                                       ; $82FF7E |
  RTS                                       ; $82FF7F |

CODE_82FF80:
  TXA                                       ; $82FF80 |
  CLC                                       ; $82FF81 |
  ADC.W #$0010                              ; $82FF82 |
  TAX                                       ; $82FF85 |
  CPX.B $04                                 ; $82FF86 |
  BMI CODE_82FF8C                           ; $82FF88 |
  LDX.B $02                                 ; $82FF8A |

CODE_82FF8C:
  CPX.B $00                                 ; $82FF8C |
  BNE CODE_82FF52                           ; $82FF8E |
  TYX                                       ; $82FF90 |
  CLC                                       ; $82FF91 |
  RTS                                       ; $82FF92 |

CODE_FN_82FF93:
  LDA.B $3C,X                               ; $82FF93 |
  CLC                                       ; $82FF95 |
  ADC.W #$0010                              ; $82FF96 |
  CMP.B $40,X                               ; $82FF99 |
  BMI CODE_82FF9F                           ; $82FF9B |
  LDA.B $3E,X                               ; $82FF9D |

CODE_82FF9F:
  STA.B $3C,X                               ; $82FF9F |
  RTS                                       ; $82FFA1 |

CODE_FN_82FFA2:
  TXY                                       ; $82FFA2 |
  LDA.B $48,X                               ; $82FFA3 |
  TAX                                       ; $82FFA5 |
  LDA.W $0042,Y                             ; $82FFA6 |
  STA.L $7F0000,X                           ; $82FFA9 |
  LDA.W $0010,Y                             ; $82FFAD |
  STA.L $7F0002,X                           ; $82FFB0 |
  LDA.W $004E,Y                             ; $82FFB4 |
  STA.L $7F0004,X                           ; $82FFB7 |
  TYX                                       ; $82FFBB |
  RTS                                       ; $82FFBC |

CODE_FN_82FFBD:
  TXY                                       ; $82FFBD |
  LDA.B $48,X                               ; $82FFBE |
  TAX                                       ; $82FFC0 |
  TDC                                       ; $82FFC1 |
  STA.L $7F0000,X                           ; $82FFC2 |
  TYX                                       ; $82FFC6 |
  RTS                                       ; $82FFC7 |

CODE_FN_82FFC8:
  LDA.W #$0005                              ; $82FFC8 |
  STA.B $18                                 ; $82FFCB |

CODE_82FFCD:
  LDA.W #$0004                              ; $82FFCD |
  JSL.L CODE_FL_82CD5F                      ; $82FFD0 |
  BCC CODE_82FFF5                           ; $82FFD4 |
  LDA.B $18                                 ; $82FFD6 |
  STA.W $002A,Y                             ; $82FFD8 |
  JSL.L CODE_FL_82CE31                      ; $82FFDB |
  LDA.W $000D,Y                             ; $82FFDF |
  SEC                                       ; $82FFE2 |
  SBC.W #$0010                              ; $82FFE3 |
  STA.W $000D,Y                             ; $82FFE6 |
  LDA.W #$0888                              ; $82FFE9 |
  STA.W $0004,Y                             ; $82FFEC |
  LDA.W #$0040                              ; $82FFEF |
  STA.W $002C,Y                             ; $82FFF2 |

CODE_82FFF5:
  LDA.B $18                                 ; $82FFF5 |
  INC A                                     ; $82FFF7 |
  STA.B $18                                 ; $82FFF8 |
  CMP.W #$000D                              ; $82FFFA |
  BMI CODE_82FFCD                           ; $82FFFD |
  RTS                                       ; $82FFFF |

