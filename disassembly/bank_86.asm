org $868000

  RTL                                       ; $868000 |

  RTL                                       ; $868001 |

CODE_FN_868002:
  LDA.W $00A0                               ; $868002 |
  CMP.W #$0009                              ; $868005 |
  BPL CODE_868011                           ; $868008 |
  ASL A                                     ; $86800A |
  TAX                                       ; $86800B |
  LDA.L DATA8_87CC93,X                      ; $86800C |
  TAX                                       ; $868010 |

CODE_868011:
  RTS                                       ; $868011 |

CODE_FN_868012:
  LDA.W $00A0                               ; $868012 |
  CMP.W #$0009                              ; $868015 |
  BPL CODE_868021                           ; $868018 |
  ASL A                                     ; $86801A |
  TAX                                       ; $86801B |
  LDA.L DATA8_87CCA5,X                      ; $86801C |
  TAX                                       ; $868020 |

CODE_868021:
  RTS                                       ; $868021 |

  LDA.W #$0001                              ; $868022 |

CODE_FL_868025:
  CLC                                       ; $868025 |
  ADC.L $700298                             ; $868026 |
  CMP.W #$0004                              ; $86802A |
  BCC CODE_86803B                           ; $86802D |
  SBC.W #$0004                              ; $86802F |
  PHA                                       ; $868032 |
  LDA.W #$0002                              ; $868033 |
  JSL.L CODE_FL_83D22E                      ; $868036 |
  PLA                                       ; $86803A |

CODE_86803B:
  STA.L $700298                             ; $86803B |
  RTL                                       ; $86803F |

CODE_FL_868040:
  LDA.W $00C4                               ; $868040 |
  BEQ CODE_868049                           ; $868043 |
  LDA.W #$0000                              ; $868045 |
  RTL                                       ; $868048 |

CODE_868049:
  PHX                                       ; $868049 |
  PHY                                       ; $86804A |
  JSR.W CODE_FN_868002                      ; $86804B |
  LDA.L $700000,X                           ; $86804E |
  STA.W $0000                               ; $868052 |
  PLY                                       ; $868055 |
  PLX                                       ; $868056 |
  LDA.W $0000                               ; $868057 |
  AND.W #$00FF                              ; $86805A |
  RTL                                       ; $86805D |

CODE_FL_86805E:
  LDA.W $00C4                               ; $86805E |
  BEQ CODE_868067                           ; $868061 |
  LDA.W #$0000                              ; $868063 |
  RTL                                       ; $868066 |

CODE_868067:
  PHX                                       ; $868067 |
  PHY                                       ; $868068 |
  JSR.W CODE_FN_868012                      ; $868069 |
  LDA.L $700000,X                           ; $86806C |
  STA.W $0000                               ; $868070 |
  PLY                                       ; $868073 |
  PLX                                       ; $868074 |
  LDA.W $0000                               ; $868075 |
  AND.W #$00FF                              ; $868078 |
  RTL                                       ; $86807B |

CODE_FL_86807C:
  PHX                                       ; $86807C |
  PHY                                       ; $86807D |
  JSR.W CODE_FN_868002                      ; $86807E |
  SEP #$20                                  ; $868081 |
  LDA.L $700000,X                           ; $868083 |
  CMP.B #$09                                ; $868087 |
  BCC CODE_868096                           ; $868089 |
  LDA.B #$09                                ; $86808B |
  STA.L $700000,X                           ; $86808D |
  REP #$20                                  ; $868091 |
  PLY                                       ; $868093 |
  PLX                                       ; $868094 |
  RTL                                       ; $868095 |

CODE_868096:
  LDA.L $700000,X                           ; $868096 |
  INC A                                     ; $86809A |
  STA.L $700000,X                           ; $86809B |
  REP #$20                                  ; $86809F |
  PLY                                       ; $8680A1 |
  PLX                                       ; $8680A2 |
  RTL                                       ; $8680A3 |

CODE_FL_8680A4:
  PHX                                       ; $8680A4 |
  PHY                                       ; $8680A5 |
  JSR.W CODE_FN_868012                      ; $8680A6 |
  SEP #$20                                  ; $8680A9 |
  LDA.B #$01                                ; $8680AB |
  STA.L $700000,X                           ; $8680AD |
  REP #$20                                  ; $8680B1 |
  PLY                                       ; $8680B3 |
  PLX                                       ; $8680B4 |
  RTL                                       ; $8680B5 |

CODE_FL_8680B6:
  PHX                                       ; $8680B6 |
  PHY                                       ; $8680B7 |
  JSR.W CODE_FN_868002                      ; $8680B8 |
  SEP #$20                                  ; $8680BB |
  LDA.L $700000,X                           ; $8680BD |
  BEQ CODE_8680CC                           ; $8680C1 |
  LDA.L $700000,X                           ; $8680C3 |
  DEC A                                     ; $8680C7 |
  STA.L $700000,X                           ; $8680C8 |

CODE_8680CC:
  REP #$20                                  ; $8680CC |
  PLY                                       ; $8680CE |
  PLX                                       ; $8680CF |
  RTL                                       ; $8680D0 |

  PHX                                       ; $8680D1 |
  PHY                                       ; $8680D2 |
  JSR.W CODE_FN_868002                      ; $8680D3 |
  SEP #$20                                  ; $8680D6 |
  LDA.B #$00                                ; $8680D8 |
  STA.L $700000,X                           ; $8680DA |
  REP #$20                                  ; $8680DE |
  PLY                                       ; $8680E0 |
  PLX                                       ; $8680E1 |
  RTL                                       ; $8680E2 |

  RTL                                       ; $8680E3 |

  RTL                                       ; $8680E4 |

CODE_FL_8680E5:
  PHB                                       ; $8680E5 |
  PEA.W $8787                               ; $8680E6 |
  PLB                                       ; $8680E9 |
  PLB                                       ; $8680EA |
  STZ.B $EE                                 ; $8680EB |
  LDA.W #$0001                              ; $8680ED |
  JSL.L CODE_FL_83D24E                      ; $8680F0 |
  LDA.B $B8                                 ; $8680F4 |
  BNE CODE_8680FB                           ; $8680F6 |
  PLB                                       ; $8680F8 |
  SEC                                       ; $8680F9 |
  RTL                                       ; $8680FA |

CODE_8680FB:
  LDA.B $BC                                 ; $8680FB |
  STA.B $BA                                 ; $8680FD |
  INC.W $199A                               ; $8680FF |
  LDA.W #$0009                              ; $868102 |
  JSL.L CODE_FL_8085EC                      ; $868105 |
  LDA.W #$0000                              ; $868109 |
  JSL.L CODE_FL_80C876                      ; $86810C |
  PLB                                       ; $868110 |
  CLC                                       ; $868111 |
  RTL                                       ; $868112 |

CODE_FL_868113:
  PHB                                       ; $868113 |
  PEA.W $8787                               ; $868114 |
  PLB                                       ; $868117 |
  PLB                                       ; $868118 |
  JSL.L CODE_FL_8693BC                      ; $868119 |
  JSL.L CODE_FL_868123                      ; $86811D |
  PLB                                       ; $868121 |

CODE_868122:
  RTL                                       ; $868122 |

CODE_FL_868123:
  LDX.W #$0580                              ; $868123 |
  STX.B $FC                                 ; $868126 |
  STZ.W $1CA2                               ; $868128 |
  JSL.L CODE_FL_86941B                      ; $86812B |
  JSL.L CODE_FL_8681FD                      ; $86812F |
  JSL.L CODE_FL_8681C2                      ; $868133 |
  LDA.W $1CB4                               ; $868137 |
  BNE CODE_86815E                           ; $86813A |
  LDY.B $1A,X                               ; $86813C |
  CPY.W #$0003                              ; $86813E |
  BCS CODE_86816A                           ; $868141 |
  LDA.B $36,X                               ; $868143 |
  AND.W #$00FF                              ; $868145 |
  BNE CODE_86816A                           ; $868148 |
  INC.B $38,X                               ; $86814A |
  CPY.W #$0001                              ; $86814C |
  BNE CODE_86816A                           ; $86814F |
  LDA.W #$0004                              ; $868151 |
  CMP.B $7E                                 ; $868154 |
  BNE CODE_86816A                           ; $868156 |
  JSL.L CODE_FL_8685DF                      ; $868158 |
  BRA CODE_FL_86816E                        ; $86815C |

CODE_86815E:
  LDA.W $0589                               ; $86815E |
  CMP.W #$0120                              ; $868161 |
  BMI CODE_86816A                           ; $868164 |
  JSL.L CODE_FL_869397                      ; $868166 |

CODE_86816A:
  JSL.L CODE_FL_86818A                      ; $86816A |

CODE_FL_86816E:
  JSL.L CODE_FL_8682B6                      ; $86816E |
  LDY.W #$0400                              ; $868172 |
  LDA.B $08,X                               ; $868175 |
  STA.W $0008,Y                             ; $868177 |
  LDA.B $0A,X                               ; $86817A |
  STA.W $000A,Y                             ; $86817C |
  LDA.B $0C,X                               ; $86817F |
  STA.W $000C,Y                             ; $868181 |
  LDA.B $0E,X                               ; $868184 |
  STA.W $000E,Y                             ; $868186 |
  RTL                                       ; $868189 |

CODE_FL_86818A:
  LDA.W $1CA4                               ; $86818A |
  LSR A                                     ; $86818D |
  BCS CODE_8681AE                           ; $86818E |
  LDA.W $1CB2                               ; $868190 |
  ORA.B $78                                 ; $868193 |
  BNE CODE_8681AE                           ; $868195 |
  LDA.B $1A,X                               ; $868197 |
  PHX                                       ; $868199 |
  ASL A                                     ; $86819A |
  TAX                                       ; $86819B |
  LDA.L PTR16_8681A6,X                      ; $86819C |
  PLX                                       ; $8681A0 |
  STA.B $00                                 ; $8681A1 |
  JMP.W ($0000)                             ; $8681A3 |

PTR16_8681A6:
  dw CODE_FL_86831F                         ; $8681A6 |
  dw CODE_8683B4                            ; $8681A8 |
  dw CODE_86856F                            ; $8681AA |
  dw CODE_868615                            ; $8681AC |

CODE_8681AE:
  LDA.W #$FFFF                              ; $8681AE |
  STA.W $1C94                               ; $8681B1 |
  LDA.L $7E7C02                             ; $8681B4 |
  CMP.W #$0008                              ; $8681B8 |
  BNE CODE_8681C1                           ; $8681BB |
  JSL.L CODE_FL_8684D7                      ; $8681BD |

CODE_8681C1:
  RTL                                       ; $8681C1 |

CODE_FL_8681C2:
  LDA.B $1A,X                               ; $8681C2 |
  BEQ CODE_8681CE                           ; $8681C4 |
  JSL.L CODE_FL_97FD36                      ; $8681C6 |
  JSL.L CODE_FL_8DD196                      ; $8681CA |

CODE_8681CE:
  LDA.B $2C,X                               ; $8681CE |
  BEQ CODE_8681D4                           ; $8681D0 |
  DEC.B $2C,X                               ; $8681D2 |

CODE_8681D4:
  LDA.B $38,X                               ; $8681D4 |
  BEQ CODE_8681F4                           ; $8681D6 |
  LDY.W #$ED6C                              ; $8681D8 |
  DEC.B $38,X                               ; $8681DB |
  BEQ CODE_8681EA                           ; $8681DD |
  LDA.W $1C8E                               ; $8681DF |
  BIT.W #$0004                              ; $8681E2 |
  BEQ CODE_8681EA                           ; $8681E5 |
  LDY.W #$EDAA                              ; $8681E7 |

CODE_8681EA:
  LDA.W #$0004                              ; $8681EA |
  JSL.L CODE_FL_80C2C4                      ; $8681ED |
  LDX.W #$0580                              ; $8681F1 |

CODE_8681F4:
  LDA.B $32,X                               ; $8681F4 |
  BPL CODE_8681FC                           ; $8681F6 |
  JSL.L CODE_FL_B3FD40                      ; $8681F8 |

CODE_8681FC:
  RTL                                       ; $8681FC |

CODE_FL_8681FD:
  STZ.W $1C9C                               ; $8681FD |
  STZ.W $1CA0                               ; $868200 |
  STZ.W $1C9A                               ; $868203 |
  STZ.W $1C9E                               ; $868206 |
  LDA.W $1CA4                               ; $868209 |
  LSR A                                     ; $86820C |
  BCS CODE_86826D                           ; $86820D |
  BEQ CODE_86826D                           ; $86820F |
  LDA.W $1CB4                               ; $868211 |
  LSR A                                     ; $868214 |
  BNE CODE_86826D                           ; $868215 |
  LDA.W $1F30                               ; $868217 |
  BNE CODE_86826D                           ; $86821A |
  LDA.B $28                                 ; $86821C |
  STA.W $1C9C                               ; $86821E |
  STA.W $1CA0                               ; $868221 |
  LDA.B $30                                 ; $868224 |
  STA.W $1C9A                               ; $868226 |
  STA.W $1C9E                               ; $868229 |
  LDA.L $0004D8                             ; $86822C |
  BEQ CODE_86824D                           ; $868230 |
  LDA.B $2A                                 ; $868232 |
  STA.W $1CA0                               ; $868234 |
  LDA.B $32                                 ; $868237 |
  STA.W $1C9E                               ; $868239 |
  LDA.W $1C9A                               ; $86823C |
  ORA.W $1C9E                               ; $86823F |
  BIT.W #$2000                              ; $868242 |
  BEQ CODE_868250                           ; $868245 |
  LDA.W $1C98                               ; $868247 |
  EOR.W #$0001                              ; $86824A |

CODE_86824D:
  STA.W $1C98                               ; $86824D |

CODE_868250:
  LDA.W $1C98                               ; $868250 |
  BEQ CODE_86826D                           ; $868253 |
  LDY.W $1CA0                               ; $868255 |
  LDA.W $1C9C                               ; $868258 |
  STA.W $1CA0                               ; $86825B |
  STY.W $1C9C                               ; $86825E |
  LDY.W $1C9E                               ; $868261 |
  LDA.W $1C9A                               ; $868264 |
  STA.W $1C9E                               ; $868267 |
  STY.W $1C9A                               ; $86826A |

CODE_86826D:
  LDA.W $1C9C                               ; $86826D |
  ORA.W $0498                               ; $868270 |
  STA.W $1C9C                               ; $868273 |
  LDA.W $1CA0                               ; $868276 |
  ORA.W $0558                               ; $868279 |
  STA.W $1CA0                               ; $86827C |
  LDA.W $1C9A                               ; $86827F |
  ORA.W $049A                               ; $868282 |
  STA.W $1C9A                               ; $868285 |
  LDA.W $1C9E                               ; $868288 |
  ORA.W $055A                               ; $86828B |
  STA.W $1C9E                               ; $86828E |
  ORA.W $1C9A                               ; $868291 |
  BIT.W #$1000                              ; $868294 |
  BEQ CODE_8682A9                           ; $868297 |
  LDA.B $78                                 ; $868299 |
  EOR.W #$0001                              ; $86829B |
  STA.B $78                                 ; $86829E |
  BEQ CODE_8682A9                           ; $8682A0 |
  LDA.W #$004C                              ; $8682A2 |
  JSL.L push_sound_queue                    ; $8682A5 |

CODE_8682A9:
  STZ.W $0498                               ; $8682A9 |
  STZ.W $049A                               ; $8682AC |
  STZ.W $0558                               ; $8682AF |
  STZ.W $055A                               ; $8682B2 |
  RTL                                       ; $8682B5 |

CODE_FL_8682B6:
  SEC                                       ; $8682B6 |
  LDA.W #$0040                              ; $8682B7 |
  SBC.B $09,X                               ; $8682BA |
  STA.W $1682                               ; $8682BC |
  SEC                                       ; $8682BF |
  LDA.W #$00E0                              ; $8682C0 |
  SBC.B $0D,X                               ; $8682C3 |
  STA.W $1692                               ; $8682C5 |
  LDA.B $1C,X                               ; $8682C8 |
  BEQ CODE_8682FE                           ; $8682CA |
  DEC A                                     ; $8682CC |
  ASL A                                     ; $8682CD |
  ASL A                                     ; $8682CE |
  ASL A                                     ; $8682CF |
  ASL A                                     ; $8682D0 |
  ASL A                                     ; $8682D1 |
  ASL A                                     ; $8682D2 |
  ASL A                                     ; $8682D3 |
  ADC.W $1682                               ; $8682D4 |
  STA.W $1682                               ; $8682D7 |
  SEC                                       ; $8682DA |
  LDA.B $09,X                               ; $8682DB |
  SBC.W #$0040                              ; $8682DD |
  BPL CODE_8682E3                           ; $8682E0 |
  TDC                                       ; $8682E2 |

CODE_8682E3:
  CMP.W #$0100                              ; $8682E3 |
  BCC CODE_8682EB                           ; $8682E6 |
  LDA.W #$00FF                              ; $8682E8 |

CODE_8682EB:
  STA.B $00                                 ; $8682EB |
  CLC                                       ; $8682ED |
  LDA.B $09,X                               ; $8682EE |
  ADC.W #$0040                              ; $8682F0 |
  BPL CODE_8682F6                           ; $8682F3 |
  TDC                                       ; $8682F5 |

CODE_8682F6:
  CMP.W #$0100                              ; $8682F6 |
  BCC CODE_8682FE                           ; $8682F9 |
  LDA.W #$00FF                              ; $8682FB |

CODE_8682FE:
  CMP.B $00                                 ; $8682FE |
  STA.B $01                                 ; $868300 |
  BNE CODE_868309                           ; $868302 |
  LDA.W #$00FF                              ; $868304 |
  STA.B $00                                 ; $868307 |

CODE_868309:
  LDA.B $00                                 ; $868309 |
  STA.W $1FF8                               ; $86830B |
  RTL                                       ; $86830E |

CODE_FL_86830F:
  PHB                                       ; $86830F |
  PEA.W $8787                               ; $868310 |
  PLB                                       ; $868313 |
  PLB                                       ; $868314 |
  JSL.L CODE_FL_86831F                      ; $868315 |
  JSL.L CODE_FL_86816E                      ; $868319 |
  PLB                                       ; $86831D |
  RTL                                       ; $86831E |

CODE_FL_86831F:
  LDA.W #$9090                              ; $86831F |
  STA.W $1C58                               ; $868322 |
  LDX.W #$0580                              ; $868325 |
  JSL.L CODE_FL_808F2C                      ; $868328 |
  LDA.W #$0370                              ; $86832C |
  STA.B $18,X                               ; $86832F |
  LDA.W #$FFD0                              ; $868331 |
  STA.B $09,X                               ; $868334 |
  LDA.W #$0001                              ; $868336 |
  STA.B $1C,X                               ; $868339 |
  LDY.W #$81D4                              ; $86833B |
  JSL.L CODE_FL_808DBE                      ; $86833E |
  JSL.L CODE_FL_868FDF                      ; $868342 |
  LDA.W #$00C0                              ; $868346 |
  STA.B $0D,X                               ; $868349 |
  STA.B $11,X                               ; $86834B |
  LDA.W #$C000                              ; $86834D |
  STA.B $34,X                               ; $868350 |
  LDA.W #$0014                              ; $868352 |
  STA.B $2E,X                               ; $868355 |
  LDA.W #$00A0                              ; $868357 |
  STA.B $30,X                               ; $86835A |
  LDA.W #$0301                              ; $86835C |
  STA.B $2A,X                               ; $86835F |
  JSL.L CODE_FL_8687C1                      ; $868361 |
  JSL.L CODE_FL_868E2B                      ; $868365 |
  JSL.L CODE_FL_868FAE                      ; $868369 |
  STZ.W $1C98                               ; $86836D |
  STZ.W $1C9A                               ; $868370 |
  STZ.W $1C9C                               ; $868373 |
  STZ.W $1C9E                               ; $868376 |
  STZ.W $1CA0                               ; $868379 |
  STZ.W $1CA6                               ; $86837C |
  STZ.W $1CA8                               ; $86837F |
  STZ.W $1CAA                               ; $868382 |
  STZ.W $1CAC                               ; $868385 |
  LDA.W #$0500                              ; $868388 |
  STA.L $7007BC                             ; $86838B |
  LDA.W #$0000                              ; $86838F |
  STA.L $7007BE                             ; $868392 |
  SEP #$20                                  ; $868396 |
  LDA.B #$21                                ; $868398 |
  STA.B $36,X                               ; $86839A |
  REP #$20                                  ; $86839C |
  JSL.L CODE_FL_97FEB7                      ; $86839E |
  LDA.W #$20FF                              ; $8683A2 |
  STA.B $4E,X                               ; $8683A5 |
  LDA.W #$0001                              ; $8683A7 |
  STA.W $1CB4                               ; $8683AA |

CODE_JP_8683AD:
  LDA.W #$0001                              ; $8683AD |
  STA.B $1A,X                               ; $8683B0 |
  STZ.B $4C,X                               ; $8683B2 |

CODE_8683B4:
  LDA.W #$0001                              ; $8683B4 |
  STA.W $05FA                               ; $8683B7 |
  STZ.B $26,X                               ; $8683BA |
  JSR.W CODE_FN_86852E                      ; $8683BC |
  LDA.B $10,X                               ; $8683BF |
  STA.B $08                                 ; $8683C1 |
  SEC                                       ; $8683C3 |
  LDA.B $11,X                               ; $8683C4 |
  SBC.W #$00C0                              ; $8683C6 |
  ASL A                                     ; $8683C9 |
  LDA.W #$FFE0                              ; $8683CA |
  BCC CODE_8683D2                           ; $8683CD |
  LDA.W #$0020                              ; $8683CF |

CODE_8683D2:
  JSL.L CODE_FL_8CFD63                      ; $8683D2 |
  LDA.W $1CA0                               ; $8683D6 |
  BIT.W #$0800                              ; $8683D9 |
  BEQ CODE_8683E5                           ; $8683DC |
  LDA.W #$FE20                              ; $8683DE |
  JSL.L CODE_FL_8CFD63                      ; $8683E1 |

CODE_8683E5:
  LDA.W $1CA0                               ; $8683E5 |
  BIT.W #$0400                              ; $8683E8 |
  BEQ CODE_8683F4                           ; $8683EB |
  LDA.W #$01E0                              ; $8683ED |
  JSL.L CODE_FL_8CFD63                      ; $8683F0 |

CODE_8683F4:
  LDA.W #$009F                              ; $8683F4 |
  CMP.B $11,X                               ; $8683F7 |
  BPL CODE_868402                           ; $8683F9 |
  LDA.W #$0117                              ; $8683FB |
  CMP.B $11,X                               ; $8683FE |
  BPL CODE_868407                           ; $868400 |

CODE_868402:
  STZ.B $10,X                               ; $868402 |
  INC A                                     ; $868404 |
  STA.B $11,X                               ; $868405 |

CODE_868407:
  SEC                                       ; $868407 |
  LDA.B $10,X                               ; $868408 |
  SBC.B $08                                 ; $86840A |
  JSL.L CODE_FL_86C872                      ; $86840C |
  LDA.W $1C90                               ; $868410 |
  BEQ CODE_868422                           ; $868413 |
  BIT.W $1C94                               ; $868415 |
  BPL CODE_868422                           ; $868418 |
  CMP.W #$0008                              ; $86841A |
  BCS CODE_JP_868464                        ; $86841D |
  STZ.W $1C94                               ; $86841F |

CODE_868422:
  LDA.B $4C,X                               ; $868422 |
  BNE CODE_868437                           ; $868424 |
  LDA.W #$FFD0                              ; $868426 |
  STA.B $28,X                               ; $868429 |
  SEC                                       ; $86842B |
  LDA.B $11,X                               ; $86842C |
  SBC.W #$0004                              ; $86842E |
  SBC.B $0D,X                               ; $868431 |
  BMI CODE_868459                           ; $868433 |
  INC.B $4C,X                               ; $868435 |

CODE_868437:
  LDA.B $11,X                               ; $868437 |
  CMP.B $0D,X                               ; $868439 |
  BPL CODE_868459                           ; $86843B |
  STA.B $0D,X                               ; $86843D |
  LDA.W #$0014                              ; $86843F |
  STA.W $1C90                               ; $868442 |
  LDA.W #$FFFF                              ; $868445 |
  STA.W $1C94                               ; $868448 |
  STZ.B $4C,X                               ; $86844B |
  LDA.W $1CB4                               ; $86844D |
  BEQ CODE_868459                           ; $868450 |
  LDA.W #$001B                              ; $868452 |
  JSL.L push_sound_queue                    ; $868455 |

CODE_868459:
  LDA.W #$0010                              ; $868459 |
  JSL.L CODE_FL_86C831                      ; $86845C |
  JSL.L CODE_FL_86C870                      ; $868460 |

CODE_JP_868464:
  LDA.W $1C94                               ; $868464 |
  BMI CODE_FL_8684D7                        ; $868467 |
  LDA.W $1CB4                               ; $868469 |
  BEQ CODE_868473                           ; $86846C |
  DEC A                                     ; $86846E |
  BEQ CODE_868486                           ; $86846F |
  BRA CODE_868481                           ; $868471 |

CODE_868473:
  LDA.W $1CB6                               ; $868473 |
  BPL CODE_868486                           ; $868476 |
  LDA.W #$0002                              ; $868478 |
  STA.W $1CB4                               ; $86847B |
  INC.W $1CA4                               ; $86847E |

CODE_868481:
  LDA.W #$0120                              ; $868481 |
  BRA CODE_8684A9                           ; $868484 |

CODE_868486:
  LDA.W $1CA4                               ; $868486 |
  LSR A                                     ; $868489 |
  BNE CODE_8684AF                           ; $86848A |
  LDA.W #$FFFF                              ; $86848C |
  STA.W $1C94                               ; $86848F |
  LDA.W #$0030                              ; $868492 |
  LDY.B $8E                                 ; $868495 |
  CPY.W #$00FF                              ; $868497 |
  BNE CODE_86849F                           ; $86849A |
  LDA.W #$0020                              ; $86849C |

CODE_86849F:
  CMP.B $09,X                               ; $86849F |
  BPL CODE_8684A6                           ; $8684A1 |
  INC.W $1CA4                               ; $8684A3 |

CODE_8684A6:
  LDA.W #$0250                              ; $8684A6 |

CODE_8684A9:
  JSL.L CODE_FL_86C85B                      ; $8684A9 |
  BRA CODE_FL_8684D7                        ; $8684AD |

CODE_8684AF:
  LDA.W #$0020                              ; $8684AF |
  JSL.L CODE_FL_86C85B                      ; $8684B2 |
  LDA.W $1CA0                               ; $8684B6 |
  BIT.W #$0100                              ; $8684B9 |
  BEQ CODE_8684C5                           ; $8684BC |
  LDA.W #$0080                              ; $8684BE |
  JSL.L CODE_FL_86C85B                      ; $8684C1 |

CODE_8684C5:
  LDA.W $1CA0                               ; $8684C5 |
  BIT.W #$0200                              ; $8684C8 |
  BEQ CODE_8684D4                           ; $8684CB |
  LDA.W #$FF80                              ; $8684CD |
  JSL.L CODE_FL_86C85B                      ; $8684D0 |

CODE_8684D4:
  JSR.W CODE_FN_868517                      ; $8684D4 |

CODE_FL_8684D7:
  LDA.W $1CA0                               ; $8684D7 |
  BIT.W #$0010                              ; $8684DA |
  BNE CODE_8684E4                           ; $8684DD |
  BIT.W #$0080                              ; $8684DF |
  BNE CODE_8684F5                           ; $8684E2 |

CODE_8684E4:
  LDA.W $1CA1                               ; $8684E4 |
  AND.W #$0007                              ; $8684E7 |
  TAY                                       ; $8684EA |
  LDA.W LOOSE_OP_00CCB7,Y                   ; $8684EB |
  AND.W #$00FF                              ; $8684EE |
  BEQ CODE_8684F5                           ; $8684F1 |
  STA.B $1E,X                               ; $8684F3 |

CODE_8684F5:
  LDA.B $1E,X                               ; $8684F5 |
  BEQ CODE_868516                           ; $8684F7 |
  LDY.B $20,X                               ; $8684F9 |
  BNE CODE_868514                           ; $8684FB |
  CMP.B $1C,X                               ; $8684FD |
  BEQ CODE_86850F                           ; $8684FF |
  BPL CODE_868507                           ; $868501 |
  DEC.B $1C,X                               ; $868503 |
  DEC.B $1C,X                               ; $868505 |

CODE_868507:
  INC.B $1C,X                               ; $868507 |
  LDA.W #$0004                              ; $868509 |
  STA.B $20,X                               ; $86850C |
  RTL                                       ; $86850E |

CODE_86850F:
  STZ.B $20,X                               ; $86850F |
  STZ.B $1E,X                               ; $868511 |
  RTL                                       ; $868513 |

CODE_868514:
  DEC.B $20,X                               ; $868514 |

CODE_868516:
  RTL                                       ; $868516 |

CODE_FN_868517:
  LDA.W #$000F                              ; $868517 |
  CMP.B $09,X                               ; $86851A |
  BPL CODE_868528                           ; $86851C |
  LDA.W #$005F                              ; $86851E |
  CMP.B $09,X                               ; $868521 |
  BPL CODE_86852A                           ; $868523 |
  STZ.B $08,X                               ; $868525 |
  INC A                                     ; $868527 |

CODE_868528:
  STA.B $09,X                               ; $868528 |

CODE_86852A:
  RTS                                       ; $86852A |

CODE_86852B:
  DEC.B $4A,X                               ; $86852B |

CODE_86852D:
  RTS                                       ; $86852D |

CODE_FN_86852E:
  LDA.B $4A,X                               ; $86852E |
  BNE CODE_86852B                           ; $868530 |
  LDA.B $36,X                               ; $868532 |
  AND.W #$00FF                              ; $868534 |
  BEQ CODE_86852D                           ; $868537 |
  LDA.W $1C9A                               ; $868539 |
  BIT.W #$0040                              ; $86853C |
  BEQ CODE_86852D                           ; $86853F |
  LDA.B $36,X                               ; $868541 |
  CMP.W #$0006                              ; $868543 |
  BCC CODE_86852D                           ; $868546 |
  PLA                                       ; $868548 |
  LDA.W #$0002                              ; $868549 |
  STA.B $1A,X                               ; $86854C |
  STZ.B $4C,X                               ; $86854E |
  LDA.W #$FFFF                              ; $868550 |
  STA.W $1C94                               ; $868553 |
  LDA.W #$0002                              ; $868556 |
  STA.W $05FA                               ; $868559 |
  TDC                                       ; $86855C |
  SEP #$20                                  ; $86855D |
  SEC                                       ; $86855F |
  LDA.B $36,X                               ; $868560 |
  SBC.B #$05                                ; $868562 |
  BCS CODE_868567                           ; $868564 |
  TDC                                       ; $868566 |

CODE_868567:
  STA.B $36,X                               ; $868567 |
  REP #$20                                  ; $868569 |
  JSL.L CODE_FL_97FEB7                      ; $86856B |

CODE_86856F:
  CLC                                       ; $86856F |
  LDA.B $11,X                               ; $868570 |
  ADC.W #$0048                              ; $868572 |
  STA.B $08                                 ; $868575 |
  LDA.B $4C,X                               ; $868577 |
  DEC A                                     ; $868579 |
  BEQ CODE_86859B                           ; $86857A |
  DEC A                                     ; $86857C |
  BEQ CODE_8685CA                           ; $86857D |
  LDA.W #$0600                              ; $86857F |
  STA.B $28,X                               ; $868582 |
  LDA.B $08                                 ; $868584 |
  CMP.B $0D,X                               ; $868586 |
  BPL CODE_8685AC                           ; $868588 |
  STA.B $0D,X                               ; $86858A |
  LDA.W #$F620                              ; $86858C |
  STA.B $28,X                               ; $86858F |
  LDA.W #$00C0                              ; $868591 |
  STA.B $11,X                               ; $868594 |
  INC.W $1C94                               ; $868596 |
  INC.B $4C,X                               ; $868599 |

CODE_86859B:
  BIT.B $28,X                               ; $86859B |
  BMI CODE_8685A5                           ; $86859D |
  LDA.B $08                                 ; $86859F |
  CMP.B $0D,X                               ; $8685A1 |
  BMI CODE_8685B3                           ; $8685A3 |

CODE_8685A5:
  LDA.W #$0048                              ; $8685A5 |
  JSL.L CODE_FL_86C831                      ; $8685A8 |

CODE_8685AC:
  JSL.L CODE_FL_86C870                      ; $8685AC |

CODE_8685B0:
  JMP.W CODE_JP_868464                      ; $8685B0 |

CODE_8685B3:
  LDA.W #$001E                              ; $8685B3 |
  STA.W $1C90                               ; $8685B6 |
  LDA.W #$0008                              ; $8685B9 |
  STA.B $4A,X                               ; $8685BC |
  INC.B $4C,X                               ; $8685BE |
  INC.W $1CA2                               ; $8685C0 |
  LDA.W #$001B                              ; $8685C3 |
  JSL.L push_sound_queue                    ; $8685C6 |

CODE_8685CA:
  JSR.W CODE_FN_86852E                      ; $8685CA |
  LDA.W #$F400                              ; $8685CD |
  JSL.L CODE_FL_86C872                      ; $8685D0 |
  LDA.B $11,X                               ; $8685D4 |
  CMP.B $0D,X                               ; $8685D6 |
  BMI CODE_8685B0                           ; $8685D8 |
  STA.B $0D,X                               ; $8685DA |
  JMP.W CODE_JP_8683AD                      ; $8685DC |

CODE_FL_8685DF:
  LDA.W #$0003                              ; $8685DF |
  STA.B $1A,X                               ; $8685E2 |
  STZ.B $4C,X                               ; $8685E4 |
  STZ.W $1DE2                               ; $8685E6 |
  LDA.W #$FFFF                              ; $8685E9 |
  STA.W $1C94                               ; $8685EC |
  STZ.B $3A,X                               ; $8685EF |
  LDA.W #$0064                              ; $8685F1 |
  STA.B $2C,X                               ; $8685F4 |
  ASL.B $32,X                               ; $8685F6 |
  LSR.B $32,X                               ; $8685F8 |
  PHX                                       ; $8685FA |
  LDX.W $1B78                               ; $8685FB |
  JSL.L CODE_FL_86CA36                      ; $8685FE |
  PLX                                       ; $868602 |
  LDA.W #$0000                              ; $868603 |
  STA.W $05FA                               ; $868606 |
  STZ.W $05EA                               ; $868609 |
  LDA.W #$0001                              ; $86860C |
  STA.W $06BA                               ; $86860F |
  STZ.W $061C                               ; $868612 |

CODE_868615:
  LDY.W $1B78                               ; $868615 |
  JSL.L CODE_FL_86C7D4                      ; $868618 |
  JSR.W CODE_FN_86876B                      ; $86861C |
  LDA.W $1FBE                               ; $86861F |
  PHA                                       ; $868622 |
  LDA.W $1FC0                               ; $868623 |
  PHA                                       ; $868626 |
  PHX                                       ; $868627 |
  PHB                                       ; $868628 |
  PEA.W $8A8A                               ; $868629 |
  PLB                                       ; $86862C |
  PLB                                       ; $86862D |
  JSL.L CODE_FL_82BE73                      ; $86862E |
  LDA.W $1DE2                               ; $868632 |
  BEQ CODE_86863D                           ; $868635 |
  LDA.W #$003D                              ; $868637 |
  STA.W $1FDE                               ; $86863A |

CODE_86863D:
  PLB                                       ; $86863D |
  PLX                                       ; $86863E |
  PLA                                       ; $86863F |
  STA.W $1FC0                               ; $868640 |
  PLA                                       ; $868643 |
  STA.W $1FBE                               ; $868644 |
  JSL.L CODE_FL_86864E                      ; $868647 |
  INC.B $38,X                               ; $86864B |
  RTL                                       ; $86864D |

CODE_FL_86864E:
  LDA.B $4C,X                               ; $86864E |
  PHX                                       ; $868650 |
  ASL A                                     ; $868651 |
  TAX                                       ; $868652 |
  LDA.L PTR16_86865D,X                      ; $868653 |
  PLX                                       ; $868657 |
  STA.B $00                                 ; $868658 |
  JMP.W ($0000)                             ; $86865A |

PTR16_86865D:
  dw CODE_868673                            ; $86865D |
  dw CODE_86867A                            ; $86865F |
  dw CODE_868683                            ; $868661 |
  dw CODE_868690                            ; $868663 |
  dw CODE_868673                            ; $868665 |
  dw CODE_8686BE                            ; $868667 |
  dw CODE_8686F4                            ; $868669 |
  dw CODE_868673                            ; $86866B |
  dw CODE_86871D                            ; $86866D |
  dw CODE_86875B                            ; $86866F |
  dw CODE_868767                            ; $868671 |

CODE_868673:
  LDA.B $2C,X                               ; $868673 |
  BNE CODE_868679                           ; $868675 |
  INC.B $4C,X                               ; $868677 |

CODE_868679:
  RTL                                       ; $868679 |

CODE_86867A:
  LDA.W #$0008                              ; $86867A |
  STA.W $05FA                               ; $86867D |
  INC.B $4C,X                               ; $868680 |

CODE_868682:
  RTL                                       ; $868682 |

CODE_868683:
  LDA.W $061A                               ; $868683 |
  CMP.W #$0005                              ; $868686 |
  BCC CODE_868682                           ; $868689 |
  LDA.W #$0028                              ; $86868B |
  BRA CODE_8686B9                           ; $86868E |

CODE_868690:
  LDA.W #$0373                              ; $868690 |
  LDY.W $1B78                               ; $868693 |
  JSL.L CODE_FL_86C9E0                      ; $868696 |
  LDA.W #$00A0                              ; $86869A |
  STA.W $004E,Y                             ; $86869D |
  LDA.W #$8000                              ; $8686A0 |
  STA.W $0022,Y                             ; $8686A3 |
  LDA.W #$C000                              ; $8686A6 |
  STA.W $0034,Y                             ; $8686A9 |
  LDA.B $2E,X                               ; $8686AC |
  STA.W $002E,Y                             ; $8686AE |
  LDA.B $30,X                               ; $8686B1 |
  STA.W $0030,Y                             ; $8686B3 |
  LDA.W #$000A                              ; $8686B6 |

CODE_8686B9:
  STA.B $2C,X                               ; $8686B9 |

CODE_JP_8686BB:
  INC.B $4C,X                               ; $8686BB |
  RTL                                       ; $8686BD |

CODE_8686BE:
  LDA.B $2E,X                               ; $8686BE |
  PHA                                       ; $8686C0 |
  LDA.B $30,X                               ; $8686C1 |
  PHA                                       ; $8686C3 |
  STZ.B $38,X                               ; $8686C4 |
  LDA.W #$0100                              ; $8686C6 |
  STA.B $2E,X                               ; $8686C9 |
  STA.B $30,X                               ; $8686CB |
  LDA.W #$4000                              ; $8686CD |
  STA.B $34,X                               ; $8686D0 |
  LDA.W #$00FF                              ; $8686D2 |
  STA.B $2A,X                               ; $8686D5 |
  JSL.L CODE_FL_97FD36                      ; $8686D7 |
  LDA.W #$0301                              ; $8686DB |
  STA.B $2A,X                               ; $8686DE |
  STZ.B $32,X                               ; $8686E0 |
  PLA                                       ; $8686E2 |
  STA.B $30,X                               ; $8686E3 |
  PLA                                       ; $8686E5 |
  STA.B $2E,X                               ; $8686E6 |
  LDA.W #$0120                              ; $8686E8 |
  STA.B $26,X                               ; $8686EB |
  LDA.W #$0120                              ; $8686ED |
  STA.B $28,X                               ; $8686F0 |
  BRA CODE_JP_8686BB                        ; $8686F2 |

CODE_8686F4:
  JSL.L CODE_FL_86C855                      ; $8686F4 |
  JSR.W CODE_FN_868517                      ; $8686F8 |
  LDA.B $26,X                               ; $8686FB |
  EOR.W #$FFFF                              ; $8686FD |
  INC A                                     ; $868700 |
  STA.B $26,X                               ; $868701 |
  LDA.W #$0177                              ; $868703 |
  CMP.B $0D,X                               ; $868706 |
  BPL CODE_86871C                           ; $868708 |
  INC A                                     ; $86870A |
  STA.B $0D,X                               ; $86870B |
  JSL.L CODE_FL_86C899                      ; $86870D |
  STZ.B $1C,X                               ; $868711 |
  STZ.B $34,X                               ; $868713 |
  LDA.W #$001E                              ; $868715 |
  STA.B $2C,X                               ; $868718 |
  INC.B $4C,X                               ; $86871A |

CODE_86871C:
  RTL                                       ; $86871C |

CODE_86871D:
  LDA.W $1FBE                               ; $86871D |
  ORA.W $1FC0                               ; $868720 |
  AND.W #$00FD                              ; $868723 |
  PHA                                       ; $868726 |
  JSL.L CODE_FL_808F67                      ; $868727 |
  PHB                                       ; $86872B |
  PEA.W $8A8A                               ; $86872C |
  PLB                                       ; $86872F |
  PLB                                       ; $868730 |
  JSL.L CODE_FL_82C1FE                      ; $868731 |
  PLB                                       ; $868735 |
  LDY.W #$0030                              ; $868736 |
  JSL.L CODE_FL_808993                      ; $868739 |
  PLA                                       ; $86873D |
  STA.W $1FBE                               ; $86873E |
  STZ.W $1FC0                               ; $868741 |
  LDA.B $09,X                               ; $868744 |
  STA.W $1DA8                               ; $868746 |
  CLC                                       ; $868749 |
  LDA.B $0D,X                               ; $86874A |
  ADC.W #$FF30                              ; $86874C |
  STA.W $1DA6                               ; $86874F |
  LDA.W #$00FF                              ; $868752 |
  STA.W $1FFA                               ; $868755 |
  JMP.W CODE_JP_8686BB                      ; $868758 |

CODE_86875B:
  LDA.W $1DE0                               ; $86875B |
  CMP.W #$0002                              ; $86875E |
  BNE CODE_868766                           ; $868761 |
  JMP.W CODE_JP_8686BB                      ; $868763 |

CODE_868766:
  RTL                                       ; $868766 |

CODE_868767:
  JML.L CODE_JL_8693B7                      ; $868767 |

CODE_FN_86876B:
  LDA.W $1C8E                               ; $86876B |
  BIT.W #$0003                              ; $86876E |
  BNE CODE_8687C0                           ; $868771 |
  PHX                                       ; $868773 |
  LDY.B $3A,X                               ; $868774 |
  LDX.W CODE_00CCBF,Y                       ; $868776 |
  STX.B $FC                                 ; $868779 |
  LDA.W LOOSE_OP_00CCC1,Y                   ; $86877B |
  STA.B $0A                                 ; $86877E |
  LDA.W CODE_00CCC3,Y                       ; $868780 |
  STA.B $08                                 ; $868783 |
  LDA.W #$0379                              ; $868785 |
  JSL.L CODE_FL_8695FD                      ; $868788 |
  BCS CODE_8687AE                           ; $86878C |
  TYX                                       ; $86878E |
  LDA.W #$9090                              ; $86878F |
  STA.B $04,X                               ; $868792 |
  LDA.W #$4000                              ; $868794 |
  STA.B $22,X                               ; $868797 |
  STZ.B $34,X                               ; $868799 |
  STZ.B $14,X                               ; $86879B |
  LDA.W #$FCE0                              ; $86879D |
  STA.B $28,X                               ; $8687A0 |
  LDA.W #$0028                              ; $8687A2 |
  STA.B $2C,X                               ; $8687A5 |
  LDA.W #$800A                              ; $8687A7 |
  JSL.L CODE_FL_86CAEE                      ; $8687AA |

CODE_8687AE:
  PLX                                       ; $8687AE |
  STX.B $FC                                 ; $8687AF |
  CLC                                       ; $8687B1 |
  LDA.B $3A,X                               ; $8687B2 |
  ADC.W #$0006                              ; $8687B4 |
  STA.B $3A,X                               ; $8687B7 |
  CMP.W #$0024                              ; $8687B9 |
  BCC CODE_8687C0                           ; $8687BC |
  STZ.B $3A,X                               ; $8687BE |

CODE_8687C0:
  RTS                                       ; $8687C0 |

CODE_FL_8687C1:
  PHX                                       ; $8687C1 |
  STZ.B $10                                 ; $8687C2 |
  LDA.W #$0040                              ; $8687C4 |
  STA.B $12                                 ; $8687C7 |

CODE_8687C9:
  LDY.B $16,X                               ; $8687C9 |
  TYX                                       ; $8687CB |
  JSL.L CODE_FL_86CA57                      ; $8687CC |
  LDA.W #$0374                              ; $8687D0 |
  STA.B $18,X                               ; $8687D3 |
  LDA.W #$338C                              ; $8687D5 |
  STA.B $00,X                               ; $8687D8 |
  LDA.W #$9090                              ; $8687DA |
  LDY.B $8E                                 ; $8687DD |
  CPY.W #$00FF                              ; $8687DF |
  BNE CODE_8687EC                           ; $8687E2 |
  LDA.W #$0004                              ; $8687E4 |
  STA.B $02,X                               ; $8687E7 |
  LDA.W #$9898                              ; $8687E9 |

CODE_8687EC:
  STA.B $04,X                               ; $8687EC |
  LDA.W #$030F                              ; $8687EE |
  STA.B $2A,X                               ; $8687F1 |
  LDA.W #$4000                              ; $8687F3 |
  STA.B $40,X                               ; $8687F6 |
  STZ.B $22,X                               ; $8687F8 |
  STZ.B $34,X                               ; $8687FA |
  LDA.W #$2100                              ; $8687FC |
  STA.B $4E,X                               ; $8687FF |
  DEC.B $12                                 ; $868801 |
  LDA.B $12                                 ; $868803 |
  STA.B $14,X                               ; $868805 |
  LDA.W #$000C                              ; $868807 |
  STA.B $2E,X                               ; $86880A |
  ASL A                                     ; $86880C |
  STA.B $30,X                               ; $86880D |
  LDA.B $10                                 ; $86880F |
  STA.W $003A,X                             ; $868811 |
  INC.B $10                                 ; $868814 |
  CMP.W #$0004                              ; $868816 |
  BNE CODE_8687C9                           ; $868819 |
  LDA.W #$337A                              ; $86881B |
  STA.B $00,X                               ; $86881E |
  LDA.W #$2000                              ; $868820 |
  STA.W $0668                               ; $868823 |
  PLX                                       ; $868826 |
  RTL                                       ; $868827 |

CODE_868828:
  LDA.W $05EA                               ; $868828 |
  CMP.W #$0008                              ; $86882B |
  BCS CODE_868833                           ; $86882E |
  JSR.W CODE_FN_868D64                      ; $868830 |

CODE_868833:
  JSL.L CODE_FL_97FD36                      ; $868833 |
  JSL.L CODE_FL_8DD196                      ; $868837 |
  LDA.W $06B8                               ; $86883B |
  BEQ CODE_868843                           ; $86883E |
  DEC.W $06B8                               ; $868840 |

CODE_868843:
  LDA.B $2C,X                               ; $868843 |
  BEQ CODE_868849                           ; $868845 |
  DEC.B $2C,X                               ; $868847 |

CODE_868849:
  LDA.W $05EA                               ; $868849 |
  LDY.B $3A,X                               ; $86884C |
  BEQ CODE_868853                           ; $86884E |
  JMP.W CODE_JP_8688C4                      ; $868850 |

CODE_868853:
  CLC                                       ; $868853 |
  LDA.W $0708                               ; $868854 |
  ADC.W $070A                               ; $868857 |
  BPL CODE_86885D                           ; $86885A |
  TDC                                       ; $86885C |

CODE_86885D:
  CMP.W #$4C00                              ; $86885D |
  BMI CODE_868865                           ; $868860 |
  LDA.W #$4C00                              ; $868862 |

CODE_868865:
  STA.W $0708                               ; $868865 |
  LDA.W $06BA                               ; $868868 |
  BNE CODE_868884                           ; $86886B |
  LDA.W $1C9A                               ; $86886D |
  BIT.W #$C000                              ; $868870 |
  BEQ CODE_868884                           ; $868873 |
  LDA.W #$0007                              ; $868875 |
  LDY.B $8E                                 ; $868878 |
  CPY.W #$00FF                              ; $86887A |
  BEQ CODE_8688A2                           ; $86887D |
  LDA.W #$0003                              ; $86887F |
  BRA CODE_8688A2                           ; $868882 |

CODE_868884:
  LDA.W $05F0                               ; $868884 |
  BEQ CODE_86888D                           ; $868887 |
  DEC.W $05F0                               ; $868889 |

CODE_86888C:
  RTL                                       ; $86888C |

CODE_86888D:
  LDA.W $05FA                               ; $86888D |
  BEQ CODE_JP_8688C4                        ; $868890 |
  CMP.W $05EA                               ; $868892 |
  BEQ CODE_JP_8688C4                        ; $868895 |
  LDY.W $061C                               ; $868897 |
  BNE CODE_JP_8688C4                        ; $86889A |
  LDA.W $05FA                               ; $86889C |
  STZ.W $05FA                               ; $86889F |

CODE_8688A2:
  STA.W $05EA                               ; $8688A2 |
  PHX                                       ; $8688A5 |
  ASL A                                     ; $8688A6 |
  TAX                                       ; $8688A7 |
  LDA.L PTR16_8688B2,X                      ; $8688A8 |
  PLX                                       ; $8688AC |
  STA.B $00                                 ; $8688AD |
  JMP.W ($0000)                             ; $8688AF |

PTR16_8688B2:
  dw CODE_8688EB                            ; $8688B2 |
  dw CODE_8688F2                            ; $8688B4 |
  dw CODE_868928                            ; $8688B6 |
  dw CODE_86899F                            ; $8688B8 |
  dw CODE_868A28                            ; $8688BA |
  dw CODE_868A78                            ; $8688BC |
  dw CODE_JP_868AAD                         ; $8688BE |
  dw CODE_868B43                            ; $8688C0 |
  dw CODE_868BF1                            ; $8688C2 |

CODE_JP_8688C4:
  LDA.W $05F0                               ; $8688C4 |
  BNE CODE_86888C                           ; $8688C7 |
  LDA.W $05EA                               ; $8688C9 |
  PHX                                       ; $8688CC |
  ASL A                                     ; $8688CD |
  TAX                                       ; $8688CE |
  LDA.L PTR16_8688D9,X                      ; $8688CF |
  PLX                                       ; $8688D3 |
  STA.B $00                                 ; $8688D4 |
  JMP.W ($0000)                             ; $8688D6 |

PTR16_8688D9:
  dw CODE_8688EB                            ; $8688D9 |
  dw CODE_86890B                            ; $8688DB |
  dw CODE_868949                            ; $8688DD |
  dw CODE_8689B1                            ; $8688DF |
  dw CODE_868A44                            ; $8688E1 |
  dw CODE_868A94                            ; $8688E3 |
  dw CODE_868ACF                            ; $8688E5 |
  dw CODE_868B5F                            ; $8688E7 |
  dw CODE_868C17                            ; $8688E9 |

CODE_8688EB:
  JSR.W CODE_FN_868DED                      ; $8688EB |
  STZ.W $061C                               ; $8688EE |
  RTL                                       ; $8688F1 |

CODE_8688F2:
  LDA.W #$CCF1                              ; $8688F2 |
  STA.W $0618                               ; $8688F5 |
  LDA.W #$0120                              ; $8688F8 |
  JSL.L CODE_FL_868921                      ; $8688FB |
  STZ.W $061A                               ; $8688FF |
  LDA.W #$FC00                              ; $868902 |
  STA.W $070A                               ; $868905 |
  JSR.W CODE_FN_868DED                      ; $868908 |

CODE_86890B:
  STZ.W $061C                               ; $86890B |
  JSR.W CODE_FN_868C38                      ; $86890E |
  BIT.W $1C94                               ; $868911 |
  BPL CODE_868927                           ; $868914 |
  LDA.W #$0120                              ; $868916 |
  BIT.W $060C                               ; $868919 |
  BMI CODE_FL_868921                        ; $86891C |
  LDA.W #$FEE0                              ; $86891E |

CODE_FL_868921:
  STA.W $060C                               ; $868921 |
  STZ.W $061A                               ; $868924 |

CODE_868927:
  RTL                                       ; $868927 |

CODE_868928:
  LDA.W #$FFFF                              ; $868928 |
  STA.W $061C                               ; $86892B |
  STZ.W $0612                               ; $86892E |
  LDA.W #$FC00                              ; $868931 |
  STA.W $070A                               ; $868934 |
  JSR.W CODE_FN_868DED                      ; $868937 |
  LDA.W #$CCF1                              ; $86893A |
  STA.W $0618                               ; $86893D |
  LDA.W #$0080                              ; $868940 |
  STA.W $060C                               ; $868943 |
  STZ.W $061A                               ; $868946 |

CODE_868949:
  JSR.W CODE_FN_86895C                      ; $868949 |
  LDA.W #$CCF1                              ; $86894C |
  CMP.W $0618                               ; $86894F |
  BNE CODE_868958                           ; $868952 |
  JSR.W CODE_FN_868C3F                      ; $868954 |
  RTL                                       ; $868957 |

CODE_868958:
  JSR.W CODE_FN_868D1C                      ; $868958 |
  RTL                                       ; $86895B |

CODE_FN_86895C:
  LDA.B $3A,X                               ; $86895C |
  BNE CODE_86898C                           ; $86895E |
  LDA.W $059A                               ; $868960 |
  CMP.W #$0002                              ; $868963 |
  BNE CODE_868978                           ; $868966 |
  LDA.W $05A8                               ; $868968 |
  CMP.W #$0300                              ; $86896B |
  BMI CODE_86898D                           ; $86896E |
  LDA.W #$000C                              ; $868970 |
  LDY.W $05CC                               ; $868973 |
  BEQ CODE_86897E                           ; $868976 |

CODE_868978:
  LDA.W #$0014                              ; $868978 |
  STZ.W $061C                               ; $86897B |

CODE_86897E:
  LDY.W $0612                               ; $86897E |
  BNE CODE_86898C                           ; $868981 |
  INC.W $0612                               ; $868983 |
  LDY.W #$CDF1                              ; $868986 |
  JSR.W CODE_FN_868CA4                      ; $868989 |

CODE_86898C:
  RTS                                       ; $86898C |

CODE_86898D:
  LDA.W $0612                               ; $86898D |
  BEQ CODE_86898C                           ; $868990 |
  STZ.W $0612                               ; $868992 |
  LDA.W #$000E                              ; $868995 |
  LDY.W #$CE01                              ; $868998 |
  JSR.W CODE_FN_868CA4                      ; $86899B |
  RTS                                       ; $86899E |

CODE_86899F:
  LDA.W #$0001                              ; $86899F |
  STA.W $061C                               ; $8689A2 |
  STA.W $06BA                               ; $8689A5 |
  LDA.W #$FC00                              ; $8689A8 |
  STA.W $070A                               ; $8689AB |
  JSR.W CODE_FN_868DED                      ; $8689AE |

CODE_8689B1:
  LDA.W $0708                               ; $8689B1 |
  CMP.W #$4000                              ; $8689B4 |
  BPL CODE_8689E9                           ; $8689B7 |
  LDA.W $061C                               ; $8689B9 |
  DEC A                                     ; $8689BC |
  PHX                                       ; $8689BD |
  ASL A                                     ; $8689BE |
  TAX                                       ; $8689BF |
  LDA.L PTR16_8689CA,X                      ; $8689C0 |
  PLX                                       ; $8689C4 |
  STA.B $00                                 ; $8689C5 |
  JMP.W ($0000)                             ; $8689C7 |

PTR16_8689CA:
  dw CODE_8689D0                            ; $8689CA |
  dw CODE_8689F0                            ; $8689CC |
  dw CODE_868A13                            ; $8689CE |

CODE_8689D0:
  LDA.B $3A,X                               ; $8689D0 |
  BNE CODE_8689E9                           ; $8689D2 |
  LDA.W #$000C                              ; $8689D4 |
  LDY.W #$CD01                              ; $8689D7 |
  JSR.W CODE_FN_868CA4                      ; $8689DA |
  LDY.W $06B8                               ; $8689DD |
  STZ.W $06B8                               ; $8689E0 |
  TYA                                       ; $8689E3 |
  BNE CODE_868A13                           ; $8689E4 |
  INC.W $061C                               ; $8689E6 |

CODE_8689E9:
  RTL                                       ; $8689E9 |

CODE_8689EA:
  LDA.W #$0002                              ; $8689EA |
  STA.W $061C                               ; $8689ED |

CODE_8689F0:
  JSR.W CODE_FN_868D1C                      ; $8689F0 |
  LDA.W #$0002                              ; $8689F3 |
  JSR.W CODE_FN_868E02                      ; $8689F6 |
  LDA.W $1C9C                               ; $8689F9 |
  BIT.W #$0200                              ; $8689FC |
  BEQ CODE_868A13                           ; $8689FF |
  LDY.W #$CD11                              ; $868A01 |
  CPY.W $0618                               ; $868A04 |
  BNE CODE_868A0C                           ; $868A07 |
  LDY.W #$CD01                              ; $868A09 |

CODE_868A0C:
  LDA.W #$0014                              ; $868A0C |
  JSR.W CODE_FN_868CA4                      ; $868A0F |
  RTL                                       ; $868A12 |

CODE_868A13:
  LDA.W $1C9C                               ; $868A13 |
  BIT.W #$0200                              ; $868A16 |
  BNE CODE_8689EA                           ; $868A19 |
  BIT.W #$0100                              ; $868A1B |
  BNE CODE_868A78                           ; $868A1E |
  BIT.W #$0800                              ; $868A20 |
  BNE CODE_868A28                           ; $868A23 |
  JMP.W CODE_JP_868AAD                      ; $868A25 |

CODE_868A28:
  LDA.W #$0004                              ; $868A28 |
  STA.W $05EA                               ; $868A2B |
  LDA.W #$0001                              ; $868A2E |
  STA.W $061C                               ; $868A31 |
  LDY.W #$CD61                              ; $868A34 |
  LDA.W #$000C                              ; $868A37 |
  JSR.W CODE_FN_868CA4                      ; $868A3A |
  LDA.W #$0002                              ; $868A3D |
  JSR.W CODE_FN_868E02                      ; $868A40 |
  RTL                                       ; $868A43 |

CODE_868A44:
  JSR.W CODE_FN_868D1C                      ; $868A44 |
  LDA.W $061C                               ; $868A47 |
  PHX                                       ; $868A4A |
  ASL A                                     ; $868A4B |
  TAX                                       ; $868A4C |
  LDA.L PTR16_868A57,X                      ; $868A4D |
  PLX                                       ; $868A51 |
  STA.B $00                                 ; $868A52 |
  JMP.W ($0000)                             ; $868A54 |

PTR16_868A57:
  dw CODE_868B2A                            ; $868A57 |
  dw CODE_868A5F                            ; $868A59 |
  dw CODE_868B07                            ; $868A5B |
  dw CODE_JP_868B18                         ; $868A5D |

CODE_868A5F:
  LDY.W #$CD71                              ; $868A5F |
  LDA.W #$000A                              ; $868A62 |
  JSR.W CODE_FN_868CA4                      ; $868A65 |
  LDA.W #$0004                              ; $868A68 |
  STA.W $05F0                               ; $868A6B |
  INC.W $061C                               ; $868A6E |
  LDA.W #$0004                              ; $868A71 |
  JSR.W CODE_FN_868E02                      ; $868A74 |
  RTL                                       ; $868A77 |

CODE_868A78:
  LDA.W #$0005                              ; $868A78 |
  STA.W $05EA                               ; $868A7B |
  LDA.W #$0001                              ; $868A7E |
  STA.W $061C                               ; $868A81 |
  LDY.W #$CD81                              ; $868A84 |
  LDA.W #$0003                              ; $868A87 |
  JSR.W CODE_FN_868CA4                      ; $868A8A |
  LDA.W #$0002                              ; $868A8D |
  JSR.W CODE_FN_868E02                      ; $868A90 |
  RTL                                       ; $868A93 |

CODE_868A94:
  JSR.W CODE_FN_868D1C                      ; $868A94 |
  LDA.W $061C                               ; $868A97 |
  PHX                                       ; $868A9A |
  ASL A                                     ; $868A9B |
  TAX                                       ; $868A9C |
  LDA.L PTR16_868AA7,X                      ; $868A9D |
  PLX                                       ; $868AA1 |
  STA.B $00                                 ; $868AA2 |
  JMP.W ($0000)                             ; $868AA4 |

PTR16_868AA7:
  dw CODE_868B2A                            ; $868AA7 |
  dw CODE_868B07                            ; $868AA9 |
  dw CODE_JP_868B18                         ; $868AAB |

CODE_JP_868AAD:
  LDA.W #$0006                              ; $868AAD |
  STA.W $05EA                               ; $868AB0 |
  LDA.W #$0001                              ; $868AB3 |
  STA.W $061C                               ; $868AB6 |
  LDA.W #$0500                              ; $868AB9 |
  STA.W $070A                               ; $868ABC |
  LDY.W #$CD21                              ; $868ABF |
  LDA.W #$000A                              ; $868AC2 |
  JSR.W CODE_FN_868CA4                      ; $868AC5 |
  LDA.W #$0006                              ; $868AC8 |
  JSR.W CODE_FN_868E02                      ; $868ACB |
  RTL                                       ; $868ACE |

CODE_868ACF:
  JSR.W CODE_FN_868D1C                      ; $868ACF |
  LDA.W $061C                               ; $868AD2 |
  PHX                                       ; $868AD5 |
  ASL A                                     ; $868AD6 |
  TAX                                       ; $868AD7 |
  LDA.L PTR16_868AE2,X                      ; $868AD8 |
  PLX                                       ; $868ADC |
  STA.B $00                                 ; $868ADD |
  JMP.W ($0000)                             ; $868ADF |

PTR16_868AE2:
  dw CODE_868B2A                            ; $868AE2 |
  dw CODE_868AEA                            ; $868AE4 |
  dw CODE_868B07                            ; $868AE6 |
  dw CODE_JP_868B18                         ; $868AE8 |

CODE_868AEA:
  JSR.W CODE_FN_868B2B                      ; $868AEA |
  LDA.W CODE_00CCE3,Y                       ; $868AED |
  TAY                                       ; $868AF0 |
  LDA.W #$0004                              ; $868AF1 |
  JSR.W CODE_FN_868CA4                      ; $868AF4 |
  LDA.W #$0004                              ; $868AF7 |
  STA.W $05F0                               ; $868AFA |
  INC.W $061C                               ; $868AFD |
  LDA.W #$0006                              ; $868B00 |
  JSR.W CODE_FN_868E02                      ; $868B03 |
  RTL                                       ; $868B06 |

CODE_868B07:
  LDA.W #$0009                              ; $868B07 |
  JSL.L push_sound_queue                    ; $868B0A |
  LDA.W #$0003                              ; $868B0E |
  STA.W $05F0                               ; $868B11 |
  INC.W $061C                               ; $868B14 |
  RTL                                       ; $868B17 |

CODE_JP_868B18:
  STZ.W $06BA                               ; $868B18 |
  STZ.W $061C                               ; $868B1B |
  STZ.W $05EA                               ; $868B1E |
  LDA.W #$0014                              ; $868B21 |
  STA.W $06B8                               ; $868B24 |
  JSR.W CODE_FN_868DED                      ; $868B27 |

CODE_868B2A:
  RTL                                       ; $868B2A |

CODE_FN_868B2B:
  LDY.W #$0002                              ; $868B2B |
  LDA.W $1C9C                               ; $868B2E |
  BIT.W #$0800                              ; $868B31 |
  BEQ CODE_868B38                           ; $868B34 |
  DEY                                       ; $868B36 |
  DEY                                       ; $868B37 |

CODE_868B38:
  BIT.W #$0400                              ; $868B38 |
  BEQ CODE_868B3F                           ; $868B3B |
  INY                                       ; $868B3D |
  INY                                       ; $868B3E |

CODE_868B3F:
  STY.W $0690                               ; $868B3F |
  RTS                                       ; $868B42 |

CODE_868B43:
  LDA.W #$0007                              ; $868B43 |
  STA.W $05EA                               ; $868B46 |
  LDA.W #$0001                              ; $868B49 |
  STA.W $061C                               ; $868B4C |
  LDA.W #$FC00                              ; $868B4F |
  STA.W $070A                               ; $868B52 |
  LDY.W #$CD91                              ; $868B55 |
  LDA.W #$003C                              ; $868B58 |
  JSR.W CODE_FN_868CA4                      ; $868B5B |
  RTL                                       ; $868B5E |

CODE_868B5F:
  LDA.W $061C                               ; $868B5F |
  PHX                                       ; $868B62 |
  ASL A                                     ; $868B63 |
  TAX                                       ; $868B64 |
  LDA.L PTR16_868B6F,X                      ; $868B65 |
  PLX                                       ; $868B69 |
  STA.B $00                                 ; $868B6A |
  JMP.W ($0000)                             ; $868B6C |

PTR16_868B6F:
  dw CODE_868B2A                            ; $868B6F |
  dw CODE_868B79                            ; $868B71 |
  dw CODE_868B9B                            ; $868B73 |
  dw CODE_868BAB                            ; $868B75 |
  dw CODE_868BE7                            ; $868B77 |

CODE_868B79:
  JSR.W CODE_FN_868D1C                      ; $868B79 |
  LDA.W #$0002                              ; $868B7C |
  STA.W $061C                               ; $868B7F |
  LDA.W #$003C                              ; $868B82 |
  STA.B $42,X                               ; $868B85 |
  INC.W $1CAE                               ; $868B87 |
  LDA.W #$0038                              ; $868B8A |
  JSL.L push_sound_queue                    ; $868B8D |
  LDA.W #$0200                              ; $868B91 |

CODE_FL_868B94:
  STA.W $0498                               ; $868B94 |
  STA.W $0558                               ; $868B97 |

CODE_868B9A:
  RTL                                       ; $868B9A |

CODE_868B9B:
  LDA.B $3A,X                               ; $868B9B |
  BNE CODE_868B9A                           ; $868B9D |
  DEC.B $42,X                               ; $868B9F |
  BPL CODE_868B2A                           ; $868BA1 |
  LDA.W #$003C                              ; $868BA3 |
  STA.B $42,X                               ; $868BA6 |
  INC.W $061C                               ; $868BA8 |

CODE_868BAB:
  LDA.B $3A,X                               ; $868BAB |
  BNE CODE_868BD9                           ; $868BAD |
  SEC                                       ; $868BAF |
  LDA.W $059C                               ; $868BB0 |
  SBC.W #$0001                              ; $868BB3 |
  BMI CODE_868BDC                           ; $868BB6 |
  ASL A                                     ; $868BB8 |
  TAY                                       ; $868BB9 |
  LDA.W LOOSE_OP_00CCE9,Y                   ; $868BBA |
  TAY                                       ; $868BBD |
  LDA.W $0042,X                             ; $868BBE |
  BNE CODE_868BCE                           ; $868BC1 |
  LDA.W $061A                               ; $868BC3 |
  CMP.W #$0004                              ; $868BC6 |
  BCS CODE_868BD9                           ; $868BC9 |
  LDA.W #$0001                              ; $868BCB |

CODE_868BCE:
  DEC.W $0042,X                             ; $868BCE |
  CPY.W $0618                               ; $868BD1 |
  BEQ CODE_868BD9                           ; $868BD4 |
  JSR.W CODE_FN_868CA4                      ; $868BD6 |

CODE_868BD9:
  JSR.W CODE_FN_868D1C                      ; $868BD9 |

CODE_868BDC:
  LDA.W #$0100                              ; $868BDC |
  JSL.L CODE_FL_868B94                      ; $868BDF |
  INC.W $061C                               ; $868BE3 |
  RTL                                       ; $868BE6 |

CODE_868BE7:
  LDA.B $3A,X                               ; $868BE7 |
  BNE CODE_868B9A                           ; $868BE9 |
  INC.W $1CAE                               ; $868BEB |
  JMP.W CODE_JP_868B18                      ; $868BEE |

CODE_868BF1:
  LDA.W #$0008                              ; $868BF1 |
  STA.W $05EA                               ; $868BF4 |
  LDA.W #$0001                              ; $868BF7 |
  STA.W $061C                               ; $868BFA |
  STZ.W $061A                               ; $868BFD |
  LDY.W #$0032                              ; $868C00 |

CODE_868C03:
  STY.B $2C,X                               ; $868C03 |
  SEC                                       ; $868C05 |
  TYA                                       ; $868C06 |
  SBC.W #$000A                              ; $868C07 |
  TAY                                       ; $868C0A |
  STZ.B $28,X                               ; $868C0B |
  STZ.B $3C,X                               ; $868C0D |
  LDA.B $16,X                               ; $868C0F |
  TAX                                       ; $868C11 |
  CMP.W #$0760                              ; $868C12 |
  BCC CODE_868C03                           ; $868C15 |

CODE_868C17:
  LDA.B $2C,X                               ; $868C17 |
  BNE CODE_868C37                           ; $868C19 |
  LDA.B $3C,X                               ; $868C1B |
  BNE CODE_868C37                           ; $868C1D |
  CLC                                       ; $868C1F |
  LDA.B $28,X                               ; $868C20 |
  ADC.W #$0040                              ; $868C22 |
  STA.B $28,X                               ; $868C25 |
  JSL.L CODE_FL_86C870                      ; $868C27 |
  LDA.B $0D,X                               ; $868C2B |
  CMP.W #$0120                              ; $868C2D |
  BMI CODE_868C37                           ; $868C30 |
  INC.B $3C,X                               ; $868C32 |
  INC.W $061A                               ; $868C34 |

CODE_868C37:
  RTL                                       ; $868C37 |

CODE_FN_868C38:
  JSR.W CODE_FN_868C3F                      ; $868C38 |
  BCS CODE_868C9D                           ; $868C3B |
  PLA                                       ; $868C3D |
  RTL                                       ; $868C3E |

CODE_FN_868C3F:
  LDA.B $3A,X                               ; $868C3F |
  CMP.W $061A                               ; $868C41 |
  BNE CODE_868CA2                           ; $868C44 |
  STZ.B $00                                 ; $868C46 |
  DEC A                                     ; $868C48 |
  BMI CODE_868C5D                           ; $868C49 |
  ASL A                                     ; $868C4B |
  ASL A                                     ; $868C4C |
  BIT.W $060C                               ; $868C4D |
  BPL CODE_868C54                           ; $868C50 |
  INC A                                     ; $868C52 |
  INC A                                     ; $868C53 |

CODE_868C54:
  ADC.W $0618                               ; $868C54 |
  TAY                                       ; $868C57 |
  LDA.W $0000,Y                             ; $868C58 |
  STA.B $00                                 ; $868C5B |

CODE_868C5D:
  SEC                                       ; $868C5D |
  LDA.B $3E,X                               ; $868C5E |
  SBC.B $00                                 ; $868C60 |
  BEQ CODE_868C90                           ; $868C62 |
  BIT.W $060C                               ; $868C64 |
  BMI CODE_868C6D                           ; $868C67 |
  EOR.W #$FFFF                              ; $868C69 |
  INC A                                     ; $868C6C |

CODE_868C6D:
  CMP.W #$D000                              ; $868C6D |
  LDA.W $060C                               ; $868C70 |
  BCC CODE_868C78                           ; $868C73 |
  EOR.W #$FFFF                              ; $868C75 |

CODE_868C78:
  STA.B $02                                 ; $868C78 |
  ADC.B $3E,X                               ; $868C7A |
  STA.B $3E,X                               ; $868C7C |
  SEC                                       ; $868C7E |
  SBC.B $00                                 ; $868C7F |
  BEQ CODE_868C90                           ; $868C81 |
  BIT.B $02                                 ; $868C83 |
  BMI CODE_868C8B                           ; $868C85 |
  EOR.W #$FFFF                              ; $868C87 |
  INC A                                     ; $868C8A |

CODE_868C8B:
  CMP.W #$D000                              ; $868C8B |
  BCC CODE_868CA2                           ; $868C8E |

CODE_868C90:
  LDA.B $00                                 ; $868C90 |
  STA.B $3E,X                               ; $868C92 |
  LDA.W $061A                               ; $868C94 |
  INC A                                     ; $868C97 |
  CMP.W #$0005                              ; $868C98 |
  BCC CODE_868C9F                           ; $868C9B |

CODE_868C9D:
  SEC                                       ; $868C9D |
  RTS                                       ; $868C9E |

CODE_868C9F:
  STA.W $061A                               ; $868C9F |

CODE_868CA2:
  CLC                                       ; $868CA2 |
  RTS                                       ; $868CA3 |

CODE_FN_868CA4:
  STZ.W $061A                               ; $868CA4 |
  STY.W $0618                               ; $868CA7 |
  TAY                                       ; $868CAA |
  BNE CODE_868CAE                           ; $868CAB |
  INC A                                     ; $868CAD |

CODE_868CAE:
  STA.B $08                                 ; $868CAE |
  PHX                                       ; $868CB0 |
  JSR.W CODE_FN_868CC8                      ; $868CB1 |

CODE_868CB4:
  LDY.B $16,X                               ; $868CB4 |
  TYX                                       ; $868CB6 |
  LDA.W #$0001                              ; $868CB7 |
  STA.B $4C,X                               ; $868CBA |
  JSR.W CODE_FN_868CC8                      ; $868CBC |
  LDA.B $3A,X                               ; $868CBF |
  CMP.W #$0004                              ; $868CC1 |
  BCC CODE_868CB4                           ; $868CC4 |
  PLX                                       ; $868CC6 |
  RTS                                       ; $868CC7 |

CODE_FN_868CC8:
  JSR.W CODE_FN_868D0B                      ; $868CC8 |
  SEC                                       ; $868CCB |
  SBC.B $3E,X                               ; $868CCC |
  STA.B $02                                 ; $868CCE |
  LDA.W $0002,Y                             ; $868CD0 |
  BNE CODE_868CD7                           ; $868CD3 |
  LDA.B $02                                 ; $868CD5 |

CODE_868CD7:
  STA.B $04                                 ; $868CD7 |
  ASL A                                     ; $868CD9 |
  LDA.B $02                                 ; $868CDA |
  BCC CODE_868CE2                           ; $868CDC |
  EOR.W #$FFFF                              ; $868CDE |
  INC A                                     ; $868CE1 |

CODE_868CE2:
  CMP.W #$D000                              ; $868CE2 |
  BCC CODE_868CF4                           ; $868CE5 |
  EOR.W #$FFFF                              ; $868CE7 |
  INC A                                     ; $868CEA |
  TAY                                       ; $868CEB |
  LDA.B $02                                 ; $868CEC |
  EOR.W #$FFFF                              ; $868CEE |
  STA.B $02                                 ; $868CF1 |
  TYA                                       ; $868CF3 |

CODE_868CF4:
  LDY.B $08                                 ; $868CF4 |
  JSL.L CODE_FL_808E65                      ; $868CF6 |
  AND.W #$FFFF                              ; $868CFA |
  BNE CODE_868D00                           ; $868CFD |
  TYA                                       ; $868CFF |

CODE_868D00:
  BIT.B $04                                 ; $868D00 |
  BPL CODE_868D08                           ; $868D02 |
  EOR.W #$FFFF                              ; $868D04 |
  INC A                                     ; $868D07 |

CODE_868D08:
  STA.B $3C,X                               ; $868D08 |
  RTS                                       ; $868D0A |

CODE_FN_868D0B:
  LDA.B $3A,X                               ; $868D0B |
  BEQ CODE_868D19                           ; $868D0D |
  DEC A                                     ; $868D0F |
  ASL A                                     ; $868D10 |
  ASL A                                     ; $868D11 |
  ADC.W $0618                               ; $868D12 |
  TAY                                       ; $868D15 |
  LDA.W $0000,Y                             ; $868D16 |

CODE_868D19:
  STA.B $00                                 ; $868D19 |
  RTS                                       ; $868D1B |

CODE_FN_868D1C:
  JSR.W CODE_FN_868D23                      ; $868D1C |
  BCS CODE_868D58                           ; $868D1F |
  PLA                                       ; $868D21 |
  RTL                                       ; $868D22 |

CODE_FN_868D23:
  JSR.W CODE_FN_868D0B                      ; $868D23 |
  LDA.B $3E,X                               ; $868D26 |
  CMP.B $00                                 ; $868D28 |
  BEQ CODE_868D4E                           ; $868D2A |
  CLC                                       ; $868D2C |
  ADC.B $3C,X                               ; $868D2D |
  STA.B $3E,X                               ; $868D2F |
  SEC                                       ; $868D31 |
  SBC.B $00                                 ; $868D32 |
  LDY.B $3C,X                               ; $868D34 |
  BPL CODE_868D44                           ; $868D36 |
  EOR.W #$FFFF                              ; $868D38 |
  INC A                                     ; $868D3B |
  PHA                                       ; $868D3C |
  TYA                                       ; $868D3D |
  EOR.W #$FFFF                              ; $868D3E |
  INC A                                     ; $868D41 |
  TAY                                       ; $868D42 |
  PLA                                       ; $868D43 |

CODE_868D44:
  STY.B $02                                 ; $868D44 |
  CMP.B $02                                 ; $868D46 |
  BCS CODE_868D62                           ; $868D48 |
  LDA.B $00                                 ; $868D4A |
  STA.B $3E,X                               ; $868D4C |

CODE_868D4E:
  LDA.B $3A,X                               ; $868D4E |
  BNE CODE_868D59                           ; $868D50 |
  LDA.W $061A                               ; $868D52 |
  CMP.W #$0004                              ; $868D55 |

CODE_868D58:
  RTS                                       ; $868D58 |

CODE_868D59:
  LDA.B $4C,X                               ; $868D59 |
  STZ.B $4C,X                               ; $868D5B |
  BEQ CODE_868D62                           ; $868D5D |
  INC.W $061A                               ; $868D5F |

CODE_868D62:
  CLC                                       ; $868D62 |
  RTS                                       ; $868D63 |

CODE_FN_868D64:
  LDA.B $3A,X                               ; $868D64 |
  BNE CODE_868D7F                           ; $868D66 |
  LDY.W #$0580                              ; $868D68 |
  JSL.L CODE_FL_86C89E                      ; $868D6B |
  LDA.W #$FFC0                              ; $868D6F |
  JSL.L CODE_FL_86C849                      ; $868D72 |
  TDC                                       ; $868D76 |
  BCS CODE_868D7F                           ; $868D77 |
  SEP #$20                                  ; $868D79 |
  DEC.B $0F,X                               ; $868D7B |
  REP #$20                                  ; $868D7D |

CODE_868D7F:
  CMP.W #$0004                              ; $868D7F |
  BCS CODE_868DEC                           ; $868D82 |
  PHX                                       ; $868D84 |
  TXY                                       ; $868D85 |
  LDX.B $16,Y                               ; $868D86 |
  JSL.L CODE_FL_86C89E                      ; $868D88 |
  LDA.W $0669                               ; $868D8C |
  AND.W #$00FF                              ; $868D8F |
  PHA                                       ; $868D92 |
  CLC                                       ; $868D93 |
  LDA.B $3E,X                               ; $868D94 |
  ADC.W $0040,Y                             ; $868D96 |
  STA.B $40,X                               ; $868D99 |
  CMP.W #$8000                              ; $868D9B |
  ROL A                                     ; $868D9E |
  XBA                                       ; $868D9F |
  AND.W #$01FF                              ; $868DA0 |
  PLY                                       ; $868DA3 |
  JSL.L CODE_FL_8AB51A                      ; $868DA4 |
  LDA.B $00                                 ; $868DA8 |
  JSL.L CODE_FL_86C85B                      ; $868DAA |
  LDA.B $04                                 ; $868DAE |
  LDY.W $0708                               ; $868DB0 |
  BEQ CODE_868DE6                           ; $868DB3 |
  TYA                                       ; $868DB5 |
  CMP.W #$8000                              ; $868DB6 |
  ROL A                                     ; $868DB9 |
  CMP.W #$8000                              ; $868DBA |
  ROL A                                     ; $868DBD |
  XBA                                       ; $868DBE |
  AND.W #$03FE                              ; $868DBF |
  PHX                                       ; $868DC2 |
  TAX                                       ; $868DC3 |
  LDA.L DATA8_978100,X                      ; $868DC4 |
  PLX                                       ; $868DC8 |
  PHA                                       ; $868DC9 |
  EOR.B $04                                 ; $868DCA |
  STA.B $06                                 ; $868DCC |
  LDA.B $04                                 ; $868DCE |
  BPL CODE_868DD6                           ; $868DD0 |
  EOR.W #$FFFF                              ; $868DD2 |
  INC A                                     ; $868DD5 |

CODE_868DD6:
  TAY                                       ; $868DD6 |
  PLA                                       ; $868DD7 |
  JSL.L CODE_FL_808E18                      ; $868DD8 |
  LDA.B $01                                 ; $868DDC |
  BIT.B $06                                 ; $868DDE |
  BPL CODE_868DE6                           ; $868DE0 |
  EOR.W #$FFFF                              ; $868DE2 |
  INC A                                     ; $868DE5 |

CODE_868DE6:
  TAY                                       ; $868DE6 |
  JSL.L CODE_FL_86C872                      ; $868DE7 |
  PLX                                       ; $868DEB |

CODE_868DEC:
  RTS                                       ; $868DEC |

CODE_FN_868DED:
  TDC                                       ; $868DED |
  LDY.B $3A,X                               ; $868DEE |
  BNE CODE_868E2A                           ; $868DF0 |
  STA.W $0604                               ; $868DF2 |
  STA.W $0654                               ; $868DF5 |
  STA.W $06A4                               ; $868DF8 |
  STA.W $06F4                               ; $868DFB |
  STA.W $0744                               ; $868DFE |
  RTS                                       ; $868E01 |

CODE_FN_868E02:
  LDY.B $3A,X                               ; $868E02 |
  BNE CODE_868E2A                           ; $868E04 |
  ORA.W #$2100                              ; $868E06 |
  STA.W $061E                               ; $868E09 |
  STA.W $066E                               ; $868E0C |
  STA.W $06BE                               ; $868E0F |
  STA.W $070E                               ; $868E12 |
  STA.W $075E                               ; $868E15 |
  LDA.W #$E000                              ; $868E18 |
  STA.W $0604                               ; $868E1B |
  STA.W $0654                               ; $868E1E |
  STA.W $06A4                               ; $868E21 |
  STA.W $06F4                               ; $868E24 |
  STA.W $0744                               ; $868E27 |

CODE_868E2A:
  RTS                                       ; $868E2A |

CODE_FL_868E2B:
  PHX                                       ; $868E2B |
  LDX.W #$0760                              ; $868E2C |
  JSL.L CODE_FL_86CA57                      ; $868E2F |
  STZ.B $22,X                               ; $868E33 |
  LDA.W #$0375                              ; $868E35 |
  STA.B $18,X                               ; $868E38 |
  LDA.W #$9090                              ; $868E3A |
  STA.B $04,X                               ; $868E3D |
  STZ.B $34,X                               ; $868E3F |
  PLX                                       ; $868E41 |
  RTL                                       ; $868E42 |

CODE_868E43:
  LDY.W #$0580                              ; $868E43 |
  JSL.L CODE_FL_86C89E                      ; $868E46 |
  LDA.W $001C,Y                             ; $868E4A |
  BNE CODE_868E52                           ; $868E4D |
  JMP.W CODE_JP_868EF0                      ; $868E4F |

CODE_868E52:
  DEC A                                     ; $868E52 |
  ASL A                                     ; $868E53 |
  TAY                                       ; $868E54 |
  STY.B $FE                                 ; $868E55 |
  LDA.W LOOSE_OP_00CE19,Y                   ; $868E57 |
  JSL.L CODE_FL_86C85B                      ; $868E5A |
  LDA.W #$FF78                              ; $868E5E |
  JSL.L CODE_FL_86C849                      ; $868E61 |
  JSL.L CODE_FL_86C3A3                      ; $868E65 |
  JSL.L CODE_FL_97FC80                      ; $868E69 |
  JSL.L CODE_FL_85A893                      ; $868E6D |
  LDA.B $40,X                               ; $868E71 |
  BEQ CODE_868E77                           ; $868E73 |
  DEC.B $40,X                               ; $868E75 |

CODE_868E77:
  LDA.W $059A                               ; $868E77 |
  CMP.W #$0003                              ; $868E7A |
  TDC                                       ; $868E7D |
  BCC CODE_868E81                           ; $868E7E |
  DEC A                                     ; $868E80 |

CODE_868E81:
  STA.B $3A,X                               ; $868E81 |
  BNE CODE_868EDF                           ; $868E83 |
  PHX                                       ; $868E85 |
  LDA.B $3C,X                               ; $868E86 |
  LSR A                                     ; $868E88 |
  LDY.B $FE                                 ; $868E89 |
  LDA.W LOOSE_OP_00CE21,Y                   ; $868E8B |
  BCC CODE_868E93                           ; $868E8E |
  LDA.W LOOSE_OP_00CE29,Y                   ; $868E90 |

CODE_868E93:
  STA.B $3E,X                               ; $868E93 |
  PHA                                       ; $868E95 |
  TXY                                       ; $868E96 |
  LDX.W #$08F0                              ; $868E97 |
  JSL.L CODE_FL_86C89E                      ; $868E9A |
  PLA                                       ; $868E9E |
  LDY.W #$00FF                              ; $868E9F |
  JSL.L CODE_FL_8AB499                      ; $868EA2 |
  JSL.L CODE_FL_86C855                      ; $868EA6 |
  PLX                                       ; $868EAA |
  LDA.B $40,X                               ; $868EAB |
  BNE CODE_868EB7                           ; $868EAD |
  LDA.W $1CA0                               ; $868EAF |
  BIT.W #$0080                              ; $868EB2 |
  BNE CODE_868EBF                           ; $868EB5 |

CODE_868EB7:
  LDA.W $1C9E                               ; $868EB7 |
  BIT.W #$0080                              ; $868EBA |
  BEQ CODE_868EDF                           ; $868EBD |

CODE_868EBF:
  LDY.B $FE                                 ; $868EBF |
  LDA.W LOOSE_OP_00CE11,Y                   ; $868EC1 |
  JSL.L CODE_FL_86CAEE                      ; $868EC4 |
  LDA.W #$0014                              ; $868EC8 |
  STA.B $2C,X                               ; $868ECB |
  LDA.B $3E,X                               ; $868ECD |
  JSL.L CODE_FL_868EF7                      ; $868ECF |
  LDA.W #$000A                              ; $868ED3 |
  STA.B $40,X                               ; $868ED6 |
  LDA.B $3C,X                               ; $868ED8 |
  EOR.W #$0001                              ; $868EDA |
  STA.B $3C,X                               ; $868EDD |

CODE_868EDF:
  LDA.B $2C,X                               ; $868EDF |
  BEQ CODE_JP_868EF0                        ; $868EE1 |
  LDY.B $FE                                 ; $868EE3 |
  LDA.W LOOSE_OP_00CE11,Y                   ; $868EE5 |
  CMP.B $1E,X                               ; $868EE8 |
  BEQ CODE_868EF6                           ; $868EEA |
  JML.L CODE_FL_86CAEE                      ; $868EEC |

CODE_JP_868EF0:
  STZ.B $00,X                               ; $868EF0 |
  STZ.B $20,X                               ; $868EF2 |
  STZ.B $2C,X                               ; $868EF4 |

CODE_868EF6:
  RTL                                       ; $868EF6 |

CODE_FL_868EF7:
  STY.B $10                                 ; $868EF7 |
  STA.B $12                                 ; $868EF9 |
  SEC                                       ; $868EFB |
  LDA.L $7007BC                             ; $868EFC |
  BEQ CODE_868F6D                           ; $868F00 |
  LDA.W $08B6                               ; $868F02 |
  PHA                                       ; $868F05 |
  STZ.W $08B6                               ; $868F06 |
  LDX.W #$07B0                              ; $868F09 |
  LDA.W #$0376                              ; $868F0C |
  JSL.L CODE_FL_86C96E                      ; $868F0F |
  PLA                                       ; $868F13 |
  STA.W $08B6                               ; $868F14 |
  BCS CODE_868F6D                           ; $868F17 |
  PHX                                       ; $868F19 |
  TYX                                       ; $868F1A |
  LDA.B $12                                 ; $868F1B |
  LDY.W #$0017                              ; $868F1D |
  JSL.L CODE_FL_8AB499                      ; $868F20 |
  LDA.W #$020F                              ; $868F24 |
  STA.B $2A,X                               ; $868F27 |
  LDA.W #$2202                              ; $868F29 |
  STA.B $4E,X                               ; $868F2C |
  LDA.W #$0032                              ; $868F2E |
  STA.B $14,X                               ; $868F31 |
  LDA.W #$0002                              ; $868F33 |
  STA.B $36,X                               ; $868F36 |
  LDA.W #$C000                              ; $868F38 |
  STA.B $34,X                               ; $868F3B |
  STA.B $22,X                               ; $868F3D |
  LDA.W #$800F                              ; $868F3F |
  LDY.B $10                                 ; $868F42 |
  BEQ CODE_868F47                           ; $868F44 |
  INC A                                     ; $868F46 |

CODE_868F47:
  JSL.L CODE_FL_86CAEE                      ; $868F47 |
  INC.B $1A,X                               ; $868F4B |
  LDA.W #$0004                              ; $868F4D |
  STA.B $2E,X                               ; $868F50 |
  ASL A                                     ; $868F52 |
  STA.B $30,X                               ; $868F53 |
  LDA.L $7007BC                             ; $868F55 |
  BEQ CODE_868F65                           ; $868F59 |
  SED                                       ; $868F5B |
  SEC                                       ; $868F5C |
  SBC.W #$0001                              ; $868F5D |
  STA.L $7007BC                             ; $868F60 |
  CLD                                       ; $868F64 |

CODE_868F65:
  LDA.W #$0024                              ; $868F65 |
  JSL.L CODE_FL_8089BD                      ; $868F68 |
  PLX                                       ; $868F6C |

CODE_868F6D:
  RTL                                       ; $868F6D |

CODE_868F6E:
  JSL.L CODE_FL_97FD36                      ; $868F6E |
  JSL.L CODE_FL_8DD196                      ; $868F72 |
  LDA.B $36,X                               ; $868F76 |
  AND.W #$00FF                              ; $868F78 |
  BEQ CODE_868FAA                           ; $868F7B |
  CLC                                       ; $868F7D |
  LDA.B $28,X                               ; $868F7E |
  ADC.W #$0005                              ; $868F80 |
  STA.B $28,X                               ; $868F83 |
  LDA.W #$8010                              ; $868F85 |
  CMP.B $1E,X                               ; $868F88 |
  BNE CODE_868FA5                           ; $868F8A |
  LDY.B $1C,X                               ; $868F8C |
  CMP.W #$0006                              ; $868F8E |
  BCC CODE_868FA5                           ; $868F91 |
  LDA.W #$060F                              ; $868F93 |
  CPY.W #$000C                              ; $868F96 |
  BCC CODE_868FA3                           ; $868F99 |
  LDA.W #$9898                              ; $868F9B |
  STA.B $04,X                               ; $868F9E |
  LDA.W #$040F                              ; $868FA0 |

CODE_868FA3:
  STA.B $2A,X                               ; $868FA3 |

CODE_868FA5:
  JSL.L CODE_FL_86C3F8                      ; $868FA5 |
  RTL                                       ; $868FA9 |

CODE_868FAA:
  JML.L CODE_FL_86CA36                      ; $868FAA |

CODE_FL_868FAE:
  PHX                                       ; $868FAE |
  LDX.W #$08F0                              ; $868FAF |
  JSL.L CODE_FL_86CA57                      ; $868FB2 |
  STZ.B $22,X                               ; $868FB6 |
  LDA.W #$0377                              ; $868FB8 |
  STA.B $18,X                               ; $868FBB |
  LDA.W #$9898                              ; $868FBD |
  STA.B $04,X                               ; $868FC0 |
  STZ.B $34,X                               ; $868FC2 |
  STZ.B $14,X                               ; $868FC4 |
  LDA.W #$307A                              ; $868FC6 |
  STA.B $00,X                               ; $868FC9 |
  PLX                                       ; $868FCB |

CODE_868FCC:
  RTL                                       ; $868FCC |

CODE_868FCD:
  JSL.L CODE_FL_86C7DF                      ; $868FCD |
  LDA.W $1CB4                               ; $868FD1 |
  BNE CODE_868FDB                           ; $868FD4 |
  LDA.W $079A                               ; $868FD6 |
  BEQ CODE_868FCC                           ; $868FD9 |

CODE_868FDB:
  JML.L CODE_FL_86C7E7                      ; $868FDB |

CODE_FL_868FDF:
  PHX                                       ; $868FDF |
  SEC                                       ; $868FE0 |
  LDA.B $8E                                 ; $868FE1 |
  SBC.W #$00FC                              ; $868FE3 |
  ASL A                                     ; $868FE6 |
  TAY                                       ; $868FE7 |
  LDA.W LOOSE_OP_00CE31,Y                   ; $868FE8 |
  TAY                                       ; $868FEB |
  PHB                                       ; $868FEC |
  PEA.W $8A8A                               ; $868FED |
  PLB                                       ; $868FF0 |
  PLB                                       ; $868FF1 |
  JSL.L CODE_FL_8AAF61                      ; $868FF2 |
  PLB                                       ; $868FF6 |
  PLX                                       ; $868FF7 |
  LDY.W #$0058                              ; $868FF8 |
  STY.W $1C96                               ; $868FFB |
  SEC                                       ; $868FFE |
  LDA.B $8E                                 ; $868FFF |
  SBC.W #$00FC                              ; $869001 |
  PHX                                       ; $869004 |
  ASL A                                     ; $869005 |
  TAX                                       ; $869006 |
  LDA.L PTR16_869011,X                      ; $869007 |
  PLX                                       ; $86900B |
  STA.B $00                                 ; $86900C |
  JMP.W ($0000)                             ; $86900E |

PTR16_869011:
  dw CODE_869019                            ; $869011 |
  dw CODE_869086                            ; $869013 |
  dw CODE_8690CB                            ; $869015 |
  dw CODE_869085                            ; $869017 |

CODE_869019:
  LDY.W #$F000                              ; $869019 |
  JSL.L CODE_FL_80972B                      ; $86901C |
  LDY.W #$0000                              ; $869020 |
  LDA.W #$1116                              ; $869023 |
  JSL.L CODE_FL_808FD5                      ; $869026 |
  LDY.W #$005C                              ; $86902A |
  LDA.W #$DA00                              ; $86902D |
  JSL.L CODE_FL_808FD8                      ; $869030 |
  LDA.W #$DAD2                              ; $869034 |
  LDY.W #$0000                              ; $869037 |
  JSL.L CODE_FL_808FBA                      ; $86903A |
  LDA.W #$DAD8                              ; $86903E |
  LDY.W #$0066                              ; $869041 |
  JSL.L CODE_FL_808FBA                      ; $869044 |
  LDA.W #$DAD4                              ; $869048 |
  LDY.W #$0000                              ; $86904B |
  JSL.L CODE_FL_808FB4                      ; $86904E |
  LDA.W #$DADA                              ; $869052 |
  LDY.W #$0066                              ; $869055 |
  JSL.L CODE_FL_808FB4                      ; $869058 |
  LDA.W #$0002                              ; $86905C |
  STA.W $1FDC                               ; $86905F |
  LDA.W #$0020                              ; $869062 |
  STA.W $1FDE                               ; $869065 |
  LDY.W #$0008                              ; $869068 |
  JSL.L CODE_FL_809725                      ; $86906B |
  LDA.W $1660                               ; $86906F |
  STA.L $7EDADC                             ; $869072 |
  STA.L $7EDAFC                             ; $869076 |
  LDA.W $1662                               ; $86907A |
  STA.L $7EDADE                             ; $86907D |
  STA.L $7EDAFE                             ; $869081 |

CODE_869085:
  RTL                                       ; $869085 |

CODE_869086:
  LDY.W #$2000                              ; $869086 |
  JSL.L CODE_FL_80972B                      ; $869089 |
  LDY.W #$0000                              ; $86908D |
  LDA.W #$1116                              ; $869090 |
  JSL.L CODE_FL_808FD5                      ; $869093 |
  LDY.W #$0060                              ; $869097 |
  LDA.W #$DA00                              ; $86909A |
  JSL.L CODE_FL_808FD8                      ; $86909D |
  LDA.W #$0002                              ; $8690A1 |
  STA.W $1FDC                               ; $8690A4 |
  LDA.W #$0020                              ; $8690A7 |
  STA.W $1FDE                               ; $8690AA |
  LDY.W #$0004                              ; $8690AD |
  JSL.L CODE_FL_809725                      ; $8690B0 |
  LDA.W $1660                               ; $8690B4 |
  STA.L $7EDAD2                             ; $8690B7 |
  STA.L $7EDAE8                             ; $8690BB |
  LDA.W $1662                               ; $8690BF |
  STA.L $7EDAD4                             ; $8690C2 |
  STA.L $7EDAEA                             ; $8690C6 |
  RTL                                       ; $8690CA |

CODE_8690CB:
  LDY.W #$2000                              ; $8690CB |
  JSL.L CODE_FL_80972B                      ; $8690CE |
  LDY.W #$0000                              ; $8690D2 |
  LDA.W #$1116                              ; $8690D5 |
  JSL.L CODE_FL_808FD5                      ; $8690D8 |
  LDY.W #$0060                              ; $8690DC |
  LDA.W #$DA00                              ; $8690DF |
  JSL.L CODE_FL_808FD8                      ; $8690E2 |
  LDA.W #$0002                              ; $8690E6 |
  STA.W $1FDC                               ; $8690E9 |
  LDA.W #$0020                              ; $8690EC |
  STA.W $1FDE                               ; $8690EF |
  LDY.W #$0002                              ; $8690F2 |
  JSL.L CODE_FL_809725                      ; $8690F5 |
  LDA.W $1660                               ; $8690F9 |
  STA.L $7EDAD4                             ; $8690FC |
  STA.L $7EDAF2                             ; $869100 |
  LDA.W $1662                               ; $869104 |
  STA.L $7EDAD6                             ; $869107 |
  STA.L $7EDAF4                             ; $86910B |
  PHX                                       ; $86910F |
  LDY.W #$B3AA                              ; $869110 |
  JSL.L CODE_FL_80C272                      ; $869113 |
  LDY.W #$B3B7                              ; $869117 |
  JSL.L CODE_FL_80C26D                      ; $86911A |
  PLX                                       ; $86911E |
  RTL                                       ; $86911F |

  dw $0000,$0010,$FFF0,$0000                ; $869120 |

CODE_FL_869128:
  PHB                                       ; $869128 |
  PEA.W $7E00                               ; $869129 |
  PLB                                       ; $86912C |
  PLB                                       ; $86912D |
  JSR.W CODE_FN_869133                      ; $86912E |
  PLB                                       ; $869131 |
  RTL                                       ; $869132 |

CODE_FN_869133:
  SEC                                       ; $869133 |
  LDA.B $8E                                 ; $869134 |
  SBC.W #$00FC                              ; $869136 |
  PHX                                       ; $869139 |
  ASL A                                     ; $86913A |
  TAX                                       ; $86913B |
  LDA.L PTR16_869146,X                      ; $86913C |
  PLX                                       ; $869140 |
  STA.B $00                                 ; $869141 |
  JMP.W ($0000)                             ; $869143 |

PTR16_869146:
  dw CODE_86914E                            ; $869146 |
  dw CODE_869245                            ; $869148 |
  dw CODE_8692DE                            ; $86914A |
  dw CODE_869383                            ; $86914C |

CODE_86914E:
  LDX.W #$0000                              ; $86914E |
  LDY.W #$0020                              ; $869151 |
  LDA.W CODE_00DAC0                         ; $869154 |
  LSR A                                     ; $869157 |
  BCS CODE_86915D                           ; $869158 |
  TYA                                       ; $86915A |
  TXY                                       ; $86915B |
  TAX                                       ; $86915C |

CODE_86915D:
  LDA.W $1672                               ; $86915D |
  STA.W LOOSE_OP_00DAE0,X                   ; $869160 |
  EOR.W #$0100                              ; $869163 |
  STA.W LOOSE_OP_00DAC6,X                   ; $869166 |
  LDA.W #$0003                              ; $869169 |
  STA.W LOOSE_OP_00DAD4,X                   ; $86916C |
  STA.W LOOSE_OP_00DAD4,Y                   ; $86916F |
  LDA.W #$000B                              ; $869172 |
  STA.W CODE_00DADA,X                       ; $869175 |
  LDA.W $1C90                               ; $869178 |
  BEQ CODE_869197                           ; $86917B |
  DEC.W $1C90                               ; $86917D |
  DEC.W CODE_00DADA,X                       ; $869180 |
  BIT.W #$0002                              ; $869183 |
  BEQ CODE_869191                           ; $869186 |
  INC.W CODE_00DADA,X                       ; $869188 |
  DEC.W LOOSE_OP_00DAE0,X                   ; $86918B |
  DEC.W LOOSE_OP_00DAE0,X                   ; $86918E |

CODE_869191:
  LDA.W CODE_00DADA,X                       ; $869191 |
  STA.W CODE_00DADA,Y                       ; $869194 |

CODE_869197:
  LDA.W #$0040                              ; $869197 |
  JSR.W CODE_FN_869211                      ; $86919A |
  JSR.W CODE_FN_869240                      ; $86919D |
  LDA.W #$0019                              ; $8691A0 |
  JSR.W CODE_FN_869211                      ; $8691A3 |
  LDA.W #$0020                              ; $8691A6 |
  JSR.W CODE_FN_869211                      ; $8691A9 |
  LDA.W #$0040                              ; $8691AC |
  JSR.W CODE_FN_869211                      ; $8691AF |
  LDA.W CODE_00DABE,X                       ; $8691B2 |
  STA.W CODE_00DABE,Y                       ; $8691B5 |
  LDA.W CODE_00DAC0,X                       ; $8691B8 |
  STA.W CODE_00DAC0,Y                       ; $8691BB |
  JSR.W CODE_FN_869240                      ; $8691BE |
  LDA.W $16A0                               ; $8691C1 |
  STA.W CODE_00DAC2,Y                       ; $8691C4 |
  LDA.W $16A2                               ; $8691C7 |
  STA.W CODE_00DAC4,Y                       ; $8691CA |
  LDA.W #$0080                              ; $8691CD |
  JSR.W CODE_FN_869211                      ; $8691D0 |
  LDA.W CODE_00DABE,X                       ; $8691D3 |
  STA.W CODE_00DABE,Y                       ; $8691D6 |
  STA.W $16A0                               ; $8691D9 |
  LDA.W CODE_00DAC0,X                       ; $8691DC |
  STA.W CODE_00DAC0,Y                       ; $8691DF |
  STA.W $16A2                               ; $8691E2 |
  JSR.W CODE_FN_869240                      ; $8691E5 |
  LDA.W $1662                               ; $8691E8 |
  STA.W CODE_00DAC4,Y                       ; $8691EB |
  LDA.W #$0100                              ; $8691EE |
  JSR.W CODE_FN_869211                      ; $8691F1 |
  SEC                                       ; $8691F4 |
  LDA.W CODE_00DABE,X                       ; $8691F5 |
  SBC.W $1660                               ; $8691F8 |
  STA.W $1664                               ; $8691FB |
  LDA.W CODE_00DAC0,X                       ; $8691FE |
  SBC.W $1662                               ; $869201 |
  STA.W $1666                               ; $869204 |
  LDA.W CODE_00DAC0                         ; $869207 |
  EOR.W #$0001                              ; $86920A |
  STA.W CODE_00DAC0                         ; $86920D |
  RTS                                       ; $869210 |

CODE_FN_869211:
  BIT.W $1C94                               ; $869211 |
  BPL CODE_869217                           ; $869214 |
  TDC                                       ; $869216 |

CODE_869217:
  PHB                                       ; $869217 |
  PEA.W $8000                               ; $869218 |
  PLB                                       ; $86921B |
  PLB                                       ; $86921C |
  PHY                                       ; $86921D |
  TAY                                       ; $86921E |
  LDA.W $1C96                               ; $86921F |
  JSL.L CODE_FL_808E18                      ; $869222 |
  LDA.B $01                                 ; $869226 |
  PLY                                       ; $869228 |
  PLB                                       ; $869229 |
  CLC                                       ; $86922A |
  ADC.W LOOSE_OP_00DAC3,Y                   ; $86922B |
  STA.W LOOSE_OP_00DAC3,X                   ; $86922E |
  TDC                                       ; $869231 |
  SEP #$20                                  ; $869232 |
  ADC.W LOOSE_OP_00DAC5,Y                   ; $869234 |
  STA.W LOOSE_OP_00DAC5,X                   ; $869237 |
  REP #$20                                  ; $86923A |
  INY                                       ; $86923C |
  INY                                       ; $86923D |
  INX                                       ; $86923E |
  INX                                       ; $86923F |

CODE_FN_869240:
  INX                                       ; $869240 |
  INX                                       ; $869241 |
  INY                                       ; $869242 |
  INY                                       ; $869243 |
  RTS                                       ; $869244 |

CODE_869245:
  LDX.W #$0000                              ; $869245 |
  LDY.W #$0016                              ; $869248 |
  LDA.W CODE_00DAC0                         ; $86924B |
  LSR A                                     ; $86924E |
  BCS CODE_869254                           ; $86924F |
  TYA                                       ; $869251 |
  TXY                                       ; $869252 |
  TAX                                       ; $869253 |

CODE_869254:
  LDA.W $1672                               ; $869254 |
  STA.W CODE_00DAD6,X                       ; $869257 |
  EOR.W #$0100                              ; $86925A |
  STA.W LOOSE_OP_00DAC6,X                   ; $86925D |
  LDA.W #$0003                              ; $869260 |
  STA.W LOOSE_OP_00DAD0,X                   ; $869263 |
  LDA.W $1C90                               ; $869266 |
  BEQ CODE_869285                           ; $869269 |
  DEC.W $1C90                               ; $86926B |
  DEC.W LOOSE_OP_00DAD0,X                   ; $86926E |
  BIT.W #$0002                              ; $869271 |
  BEQ CODE_86927F                           ; $869274 |
  INC.W LOOSE_OP_00DAD0,X                   ; $869276 |
  DEC.W CODE_00DAD6,X                       ; $869279 |
  DEC.W CODE_00DAD6,X                       ; $86927C |

CODE_86927F:
  LDA.W LOOSE_OP_00DAD0,X                   ; $86927F |
  STA.W $16B2                               ; $869282 |

CODE_869285:
  LDA.W #$0040                              ; $869285 |
  JSR.W CODE_FN_869211                      ; $869288 |
  JSR.W CODE_FN_869240                      ; $86928B |
  LDA.W #$0019                              ; $86928E |
  JSR.W CODE_FN_869211                      ; $869291 |
  LDA.W $16A0                               ; $869294 |
  STA.W CODE_00DAC2,Y                       ; $869297 |
  LDA.W $16A2                               ; $86929A |
  STA.W CODE_00DAC4,Y                       ; $86929D |
  LDA.W #$0080                              ; $8692A0 |
  JSR.W CODE_FN_869211                      ; $8692A3 |
  LDA.W CODE_00DABE,X                       ; $8692A6 |
  STA.W $16A0                               ; $8692A9 |
  LDA.W CODE_00DAC0,X                       ; $8692AC |
  STA.W $16A2                               ; $8692AF |
  JSR.W CODE_FN_869240                      ; $8692B2 |
  LDA.W $1662                               ; $8692B5 |
  STA.W CODE_00DAC4,Y                       ; $8692B8 |
  LDA.W #$0100                              ; $8692BB |
  JSR.W CODE_FN_869211                      ; $8692BE |
  SEC                                       ; $8692C1 |
  LDA.W CODE_00DABE,X                       ; $8692C2 |
  SBC.W $1660                               ; $8692C5 |
  STA.W $1664                               ; $8692C8 |
  LDA.W CODE_00DAC0,X                       ; $8692CB |
  SBC.W $1662                               ; $8692CE |
  STA.W $1666                               ; $8692D1 |
  LDA.W CODE_00DAC0                         ; $8692D4 |
  EOR.W #$0001                              ; $8692D7 |
  STA.W CODE_00DAC0                         ; $8692DA |
  RTS                                       ; $8692DD |

CODE_8692DE:
  LDX.W #$0000                              ; $8692DE |
  LDY.W #$001E                              ; $8692E1 |
  LDA.W CODE_00DAC0                         ; $8692E4 |
  LSR A                                     ; $8692E7 |
  BCS CODE_8692ED                           ; $8692E8 |
  TYA                                       ; $8692EA |
  TXY                                       ; $8692EB |
  TAX                                       ; $8692EC |

CODE_8692ED:
  LDA.W $1672                               ; $8692ED |
  STA.W LOOSE_OP_00DADE,X                   ; $8692F0 |
  EOR.W #$0100                              ; $8692F3 |
  STA.W LOOSE_OP_00DAC6,X                   ; $8692F6 |
  LDA.W #$0003                              ; $8692F9 |
  STA.W CODE_00DAD8,X                       ; $8692FC |
  LDA.W $1C90                               ; $8692FF |
  BEQ CODE_86931E                           ; $869302 |
  DEC.W $1C90                               ; $869304 |
  DEC.W CODE_00DAD8,X                       ; $869307 |
  BIT.W #$0002                              ; $86930A |
  BEQ CODE_869318                           ; $86930D |
  INC.W CODE_00DAD8,X                       ; $86930F |
  DEC.W LOOSE_OP_00DADE,X                   ; $869312 |
  DEC.W LOOSE_OP_00DADE,X                   ; $869315 |

CODE_869318:
  LDA.W CODE_00DAD8,X                       ; $869318 |
  STA.W $16B2                               ; $86931B |

CODE_86931E:
  LDA.W #$00C0                              ; $86931E |
  JSR.W CODE_FN_869211                      ; $869321 |
  JSR.W CODE_FN_869240                      ; $869324 |
  LDA.W #$00A8                              ; $869327 |
  JSR.W CODE_FN_869211                      ; $86932A |
  LDA.W #$0090                              ; $86932D |
  JSR.W CODE_FN_869211                      ; $869330 |
  LDA.W #$0080                              ; $869333 |
  JSR.W CODE_FN_869211                      ; $869336 |
  LDA.W $16A0                               ; $869339 |
  STA.W CODE_00DAC2,Y                       ; $86933C |
  LDA.W $16A2                               ; $86933F |
  STA.W CODE_00DAC4,Y                       ; $869342 |
  LDA.W #$0088                              ; $869345 |
  JSR.W CODE_FN_869211                      ; $869348 |
  LDA.W CODE_00DABE,X                       ; $86934B |
  STA.W $16A0                               ; $86934E |
  LDA.W CODE_00DAC0,X                       ; $869351 |
  STA.W $16A2                               ; $869354 |
  JSR.W CODE_FN_869240                      ; $869357 |
  LDA.W $1662                               ; $86935A |
  STA.W CODE_00DAC4,Y                       ; $86935D |
  LDA.W #$0100                              ; $869360 |
  JSR.W CODE_FN_869211                      ; $869363 |
  SEC                                       ; $869366 |
  LDA.W CODE_00DABE,X                       ; $869367 |
  SBC.W $1660                               ; $86936A |
  STA.W $1664                               ; $86936D |
  LDA.W CODE_00DAC0,X                       ; $869370 |
  SBC.W $1662                               ; $869373 |
  STA.W $1666                               ; $869376 |
  LDA.W CODE_00DAC0                         ; $869379 |
  EOR.W #$0001                              ; $86937C |
  STA.W CODE_00DAC0                         ; $86937F |
  RTS                                       ; $869382 |

CODE_869383:
  LDA.W $1C90                               ; $869383 |
  BEQ CODE_869396                           ; $869386 |
  DEC.W $1C90                               ; $869388 |
  DEC.W $1670                               ; $86938B |
  BIT.W #$0002                              ; $86938E |
  BEQ CODE_869396                           ; $869391 |
  INC.W $1670                               ; $869393 |

CODE_869396:
  RTS                                       ; $869396 |

CODE_FL_869397:
  LDA.W #$0006                              ; $869397 |

CODE_86939A:
  CMP.B $7E                                 ; $86939A |
  BEQ CODE_8693A0                           ; $86939C |
  BPL CODE_8693A1                           ; $86939E |

CODE_8693A0:
  RTL                                       ; $8693A0 |

CODE_8693A1:
  PHX                                       ; $8693A1 |
  PHA                                       ; $8693A2 |
  JSL.L CODE_FL_80C213                      ; $8693A3 |
  LDY.W #$0002                              ; $8693A7 |
  STY.B $06,X                               ; $8693AA |
  JSL.L CODE_FL_80893F                      ; $8693AC |
  PLA                                       ; $8693B0 |
  JSL.L CODE_FL_80C876                      ; $8693B1 |
  PLX                                       ; $8693B5 |
  RTL                                       ; $8693B6 |

CODE_JL_8693B7:
  LDA.W #$0005                              ; $8693B7 |
  BRA CODE_86939A                           ; $8693BA |

CODE_FL_8693BC:
  JSR.W CODE_FN_869410                      ; $8693BC |
  STZ.W $1CB6                               ; $8693BF |
  BIT.W $0589                               ; $8693C2 |
  BMI CODE_8693FF                           ; $8693C5 |
  LDA.W $1662                               ; $8693C7 |
  ADC.W #$00A0                              ; $8693CA |
  STA.B $00                                 ; $8693CD |
  SEC                                       ; $8693CF |
  LDA.W $1C00                               ; $8693D0 |
  AND.W #$FF00                              ; $8693D3 |
  SBC.B $00                                 ; $8693D6 |
  STA.W $1CB6                               ; $8693D8 |
  BMI CODE_86940D                           ; $8693DB |
  LSR A                                     ; $8693DD |
  LSR A                                     ; $8693DE |
  LSR A                                     ; $8693DF |
  LSR A                                     ; $8693E0 |
  LSR A                                     ; $8693E1 |
  JSR.W CODE_FN_869410                      ; $8693E2 |
  JSL.L CODE_FL_808DF4                      ; $8693E5 |
  PHA                                       ; $8693E9 |
  SEC                                       ; $8693EA |
  LDA.W $1C00                               ; $8693EB |
  AND.W #$FF00                              ; $8693EE |
  SBC.W #$01A0                              ; $8693F1 |
  LSR A                                     ; $8693F4 |
  LSR A                                     ; $8693F5 |
  LSR A                                     ; $8693F6 |
  LSR A                                     ; $8693F7 |
  LSR A                                     ; $8693F8 |
  TAY                                       ; $8693F9 |
  PLA                                       ; $8693FA |
  JSL.L CODE_FL_808E65                      ; $8693FB |

CODE_8693FF:
  LDY.W #$0005                              ; $8693FF |
  JSL.L CODE_FL_808DF4                      ; $869402 |
  JSL.L CODE_FL_80A877                      ; $869406 |
  STA.B $A2                                 ; $86940A |
  RTL                                       ; $86940C |

CODE_86940D:
  TDC                                       ; $86940D |
  BRA CODE_8693FF                           ; $86940E |

CODE_FN_869410:
  PHA                                       ; $869410 |
  LDY.B $8E                                 ; $869411 |
  LDA.W LOOSE_OP_00CD3B,Y                   ; $869413 |
  AND.W #$00FF                              ; $869416 |
  PLY                                       ; $869419 |
  RTS                                       ; $86941A |

CODE_FL_86941B:
  LDA.W $1CA4                               ; $86941B |
  LSR A                                     ; $86941E |
  BCC CODE_869451                           ; $86941F |
  SEC                                       ; $869421 |
  LDA.B $8E                                 ; $869422 |
  SBC.W #$00FC                              ; $869424 |
  ASL A                                     ; $869427 |
  TAY                                       ; $869428 |
  LDA.W $1CA4                               ; $869429 |
  LSR A                                     ; $86942C |
  ASL A                                     ; $86942D |
  ADC.W LOOSE_OP_00CE3B,Y                   ; $86942E |
  TAY                                       ; $869431 |
  LDA.W $0000,Y                             ; $869432 |
  JSL.L CODE_FL_809934                      ; $869435 |
  JSR.W CODE_FN_869452                      ; $869439 |
  BCC CODE_869451                           ; $86943C |
  LDA.W $1CA4                               ; $86943E |
  INC.W $1CA4                               ; $869441 |
  LSR A                                     ; $869444 |
  BNE CODE_869451                           ; $869445 |
  STZ.W $1CB4                               ; $869447 |
  LDY.W #$0188                              ; $86944A |
  JSL.L CODE_FL_808993                      ; $86944D |

CODE_869451:
  RTL                                       ; $869451 |

CODE_FN_869452:
  PHP                                       ; $869452 |
  LDA.L $7E7C02                             ; $869453 |
  PHX                                       ; $869457 |
  ASL A                                     ; $869458 |
  TAX                                       ; $869459 |
  LDA.L PTR16_869464,X                      ; $86945A |
  PLX                                       ; $86945E |
  STA.B $00                                 ; $86945F |
  JMP.W ($0000)                             ; $869461 |

PTR16_869464:
  dw CODE_JP_869481                         ; $869464 |
  dw CODE_869478                            ; $869466 |
  dw CODE_JP_869481                         ; $869468 |
  dw CODE_869483                            ; $86946A |
  dw CODE_8694A3                            ; $86946C |
  dw CODE_8694C4                            ; $86946E |
  dw CODE_8694E6                            ; $869470 |
  dw CODE_869502                            ; $869472 |
  dw CODE_86951C                            ; $869474 |
  dw CODE_86952F                            ; $869476 |

CODE_869478:
  JSL.L CODE_FL_96FE20                      ; $869478 |

CODE_JL_86947C:
  TDC                                       ; $86947C |
  STA.L $7E7C02                             ; $86947D |

CODE_JP_869481:
  PLP                                       ; $869481 |
  RTS                                       ; $869482 |

CODE_869483:
  LDA.W $1CA6                               ; $869483 |
  JSR.W CODE_FN_869497                      ; $869486 |
  LDY.W #$5453                              ; $869489 |
  JSL.L CODE_FL_869724                      ; $86948C |
  LDA.L $7E7C02                             ; $869490 |
  INC A                                     ; $869494 |
  BRA CODE_JL_86947C                        ; $869495 |

CODE_FN_869497:
  JSL.L CODE_FL_80A877                      ; $869497 |
  LDY.W #$3000                              ; $86949B |
  STY.B $00                                 ; $86949E |
  STZ.B $88                                 ; $8694A0 |
  RTS                                       ; $8694A2 |

CODE_8694A3:
  LDA.W $1CA8                               ; $8694A3 |
  JSR.W CODE_FN_869497                      ; $8694A6 |
  LDY.W #$54B2                              ; $8694A9 |
  PHA                                       ; $8694AC |
  JSL.L CODE_FL_8696FC                      ; $8694AD |
  PLA                                       ; $8694B1 |
  SED                                       ; $8694B2 |
  CLC                                       ; $8694B3 |
  ADC.L $7007BA                             ; $8694B4 |
  STA.L $7007BA                             ; $8694B8 |
  CLD                                       ; $8694BC |
  LDA.L $7E7C02                             ; $8694BD |
  INC A                                     ; $8694C1 |
  BRA CODE_JL_86947C                        ; $8694C2 |

CODE_8694C4:
  LDA.W $1CAA                               ; $8694C4 |
  ASL A                                     ; $8694C7 |
  JSR.W CODE_FN_869497                      ; $8694C8 |
  LDY.W #$5513                              ; $8694CB |
  PHA                                       ; $8694CE |
  JSL.L CODE_FL_869724                      ; $8694CF |
  PLA                                       ; $8694D3 |
  SED                                       ; $8694D4 |
  CLC                                       ; $8694D5 |
  ADC.L $7007BC                             ; $8694D6 |
  STA.L $7007BC                             ; $8694DA |
  CLD                                       ; $8694DE |
  LDA.L $7E7C02                             ; $8694DF |
  INC A                                     ; $8694E3 |
  BRA CODE_JL_86947C                        ; $8694E4 |

CODE_8694E6:
  LDA.W $1CAC                               ; $8694E6 |
  JSR.W CODE_FN_869497                      ; $8694E9 |
  LDY.W #$5574                              ; $8694EC |
  LSR A                                     ; $8694EF |
  STA.L $7007BE                             ; $8694F0 |
  JSL.L CODE_FL_86973B                      ; $8694F4 |
  LDA.W #$0001                              ; $8694F8 |
  STA.L $7007B8                             ; $8694FB |
  BRL CODE_JL_86947C                        ; $8694FF |

CODE_869502:
  TDC                                       ; $869502 |
  STA.L $7E7C74                             ; $869503 |
  LDA.W #$4000                              ; $869507 |
  STA.W $049A                               ; $86950A |
  STA.W $055A                               ; $86950D |

CODE_869510:
  LDA.L $7E7C02                             ; $869510 |
  INC A                                     ; $869514 |
  STA.L $7E7C02                             ; $869515 |
  JMP.W CODE_JP_869481                      ; $869519 |

CODE_86951C:
  LDA.W $1CAE                               ; $86951C |
  CMP.W #$0002                              ; $86951F |
  BCS CODE_869527                           ; $869522 |
  JMP.W CODE_JP_869481                      ; $869524 |

CODE_869527:
  LDA.W #$005A                              ; $869527 |
  STA.W $1CB0                               ; $86952A |
  BRA CODE_869510                           ; $86952D |

CODE_86952F:
  DEC.W $1CB0                               ; $86952F |
  BEQ CODE_869537                           ; $869532 |
  JMP.W CODE_JP_869481                      ; $869534 |

CODE_869537:
  LDA.W #$0002                              ; $869537 |
  STA.W $1CB4                               ; $86953A |
  INC.W $1CA4                               ; $86953D |
  INC.W $1CA4                               ; $869540 |
  TDC                                       ; $869543 |
  STA.L $7E7C02                             ; $869544 |
  INC A                                     ; $869548 |
  STA.L $7E7C74                             ; $869549 |
  JMP.W CODE_JL_86947C                      ; $86954D |

CODE_FL_869550:
  LDA.B $2E,X                               ; $869550 |
  STA.B $08                                 ; $869552 |
  LDA.B $30,X                               ; $869554 |
  STA.B $0A                                 ; $869556 |
  PHX                                       ; $869558 |
  TYX                                       ; $869559 |
  LDA.B $08                                 ; $86955A |
  ASL A                                     ; $86955C |
  JSL.L CODE_FL_86957C                      ; $86955D |
  JSL.L CODE_FL_86C84F                      ; $869561 |
  SEC                                       ; $869565 |
  SBC.B $08                                 ; $869566 |
  STA.B $09,X                               ; $869568 |
  LDA.B $0A                                 ; $86956A |
  ASL A                                     ; $86956C |
  JSL.L CODE_FL_86957C                      ; $86956D |
  JSL.L CODE_FL_86C849                      ; $869571 |
  SEC                                       ; $869575 |
  SBC.B $0A                                 ; $869576 |
  STA.B $0D,X                               ; $869578 |
  PLX                                       ; $86957A |
  RTL                                       ; $86957B |

CODE_FL_86957C:
  PHY                                       ; $86957C |
  PHA                                       ; $86957D |
  JSL.L CODE_FL_86958B                      ; $86957E |
  PLY                                       ; $869582 |
  JSL.L CODE_FL_808E18                      ; $869583 |
  LDA.B $01                                 ; $869587 |
  PLY                                       ; $869589 |
  RTL                                       ; $86958A |

CODE_FL_86958B:
  PHX                                       ; $86958B |
  SEP #$20                                  ; $86958C |
  LDA.W $1C8E                               ; $86958E |
  XBA                                       ; $869591 |
  LDA.W $1C92                               ; $869592 |
  REP #$20                                  ; $869595 |
  LSR A                                     ; $869597 |
  TAX                                       ; $869598 |
  SEP #$20                                  ; $869599 |
  LDA.B $86                                 ; $86959B |
  ADC.L $808000,X                           ; $86959D |
  XBA                                       ; $8695A1 |
  LDA.B $87                                 ; $8695A2 |
  EOR.L $828000,X                           ; $8695A4 |
  REP #$20                                  ; $8695A8 |
  STA.B $86                                 ; $8695AA |
  INC.W $1C92                               ; $8695AC |
  INC.W $1C92                               ; $8695AF |
  INC.W $1C92                               ; $8695B2 |
  PLX                                       ; $8695B5 |
  RTL                                       ; $8695B6 |

CODE_FL_8695B7:
  LDA.B $0D,X                               ; $8695B7 |
  CMP.W #$FFD0                              ; $8695B9 |
  BCS CODE_8695C3                           ; $8695BC |
  CMP.W #$0110                              ; $8695BE |
  BCS CODE_8695CC                           ; $8695C1 |

CODE_8695C3:
  LDA.B $09,X                               ; $8695C3 |
  CMP.W #$FFD0                              ; $8695C5 |
  BMI CODE_8695CC                           ; $8695C8 |
  SEC                                       ; $8695CA |
  RTL                                       ; $8695CB |

CODE_8695CC:
  CLC                                       ; $8695CC |
  RTL                                       ; $8695CD |

CODE_FL_8695CE:
  TAY                                       ; $8695CE |
  BRA CODE_8695D8                           ; $8695CF |

CODE_FL_8695D1:
  TAY                                       ; $8695D1 |
  JSL.L CODE_FL_86CB5D                      ; $8695D2 |
  BCS CODE_8695E2                           ; $8695D6 |

CODE_8695D8:
  JSL.L CODE_FL_8695EE                      ; $8695D8 |
  BCS CODE_8695E2                           ; $8695DC |
  JML.L CODE_JL_86C9E2                      ; $8695DE |

CODE_8695E2:
  LDX.B $FC                                 ; $8695E2 |
  RTL                                       ; $8695E4 |

  TXY                                       ; $8695E5 |
  JSL.L CODE_FL_8695EE                      ; $8695E6 |
  TYA                                       ; $8695EA |
  TXY                                       ; $8695EB |
  TAX                                       ; $8695EC |
  RTL                                       ; $8695ED |

CODE_FL_8695EE:
  CLC                                       ; $8695EE |
  LDA.W $1B78                               ; $8695EF |
  ADC.W #$00A0                              ; $8695F2 |
  TAX                                       ; $8695F5 |
  LDA.W $1B7A                               ; $8695F6 |
  JML.L CODE_JL_86C953                      ; $8695F9 |

CODE_FL_8695FD:
  JSL.L CODE_FL_8695CE                      ; $8695FD |
  BRA CODE_FL_869607                        ; $869601 |

  JSL.L CODE_FL_8695D1                      ; $869603 |

CODE_FL_869607:
  BCS CODE_869628                           ; $869607 |
  LDA.B $04,X                               ; $869609 |
  ASL A                                     ; $86960B |
  ASL A                                     ; $86960C |
  ASL A                                     ; $86960D |
  LDA.B $08                                 ; $86960E |
  BCC CODE_869615                           ; $869610 |
  EOR.W #$FFFF                              ; $869612 |

CODE_869615:
  ADC.B $09,X                               ; $869615 |
  STA.W $0009,Y                             ; $869617 |
  CLC                                       ; $86961A |
  LDA.B $0A                                 ; $86961B |
  ADC.B $0D,X                               ; $86961D |
  STA.W $000D,Y                             ; $86961F |
  LDA.B $04,X                               ; $869622 |
  STA.W $0004,Y                             ; $869624 |
  CLC                                       ; $869627 |

CODE_869628:
  RTL                                       ; $869628 |

CODE_FL_869629:
  SEC                                       ; $869629 |
  SBC.B $09,X                               ; $86962A |
  BPL CODE_86963A                           ; $86962C |
  EOR.W #$FFFF                              ; $86962E |
  INC A                                     ; $869631 |
  PHA                                       ; $869632 |
  TYA                                       ; $869633 |
  EOR.W #$FFFF                              ; $869634 |
  INC A                                     ; $869637 |
  TAY                                       ; $869638 |
  PLA                                       ; $869639 |

CODE_86963A:
  STY.B $26,X                               ; $86963A |
  RTL                                       ; $86963C |

CODE_FL_86963D:
  SEC                                       ; $86963D |
  SBC.B $0D,X                               ; $86963E |
  BPL CODE_86964E                           ; $869640 |
  EOR.W #$FFFF                              ; $869642 |
  INC A                                     ; $869645 |
  PHA                                       ; $869646 |
  TYA                                       ; $869647 |
  EOR.W #$FFFF                              ; $869648 |
  INC A                                     ; $86964B |
  TAY                                       ; $86964C |
  PLA                                       ; $86964D |

CODE_86964E:
  STY.B $28,X                               ; $86964E |
  RTL                                       ; $869650 |

  JSL.L CODE_FL_869629                      ; $869651 |
  CMP.W #$0004                              ; $869655 |
  BCS CODE_869668                           ; $869658 |
  STZ.B $26,X                               ; $86965A |
  RTL                                       ; $86965C |

  JSL.L CODE_FL_86963D                      ; $86965D |
  CMP.W #$0004                              ; $869661 |
  BCS CODE_869668                           ; $869664 |
  STZ.B $28,X                               ; $869666 |

CODE_869668:
  RTL                                       ; $869668 |

CODE_FL_869669:
  STA.B $00                                 ; $869669 |
  PHX                                       ; $86966B |

CODE_86966C:
  STX.B $FC                                 ; $86966C |
  LDA.B $18,X                               ; $86966E |
  JSL.L CODE_FL_86C97C                      ; $869670 |
  LDA.B $3C,X                               ; $869674 |
  BCS CODE_86969F                           ; $869676 |
  INC A                                     ; $869678 |
  STA.W $003C,Y                             ; $869679 |
  CMP.B $00                                 ; $86967C |
  PHP                                       ; $86967E |
  TDC                                       ; $86967F |
  STA.W $0022,Y                             ; $869680 |
  LDA.B $2C,X                               ; $869683 |
  ADC.W #$001E                              ; $869685 |
  STA.W $002C,Y                             ; $869688 |
  LDA.B $4E,X                               ; $86968B |
  STA.W $004E,Y                             ; $86968D |
  LDA.B $3A,X                               ; $869690 |
  STA.W $003A,Y                             ; $869692 |
  LDA.B $3C,X                               ; $869695 |
  INC A                                     ; $869697 |
  STA.W $003C,Y                             ; $869698 |
  TYX                                       ; $86969B |
  PLP                                       ; $86969C |
  BCC CODE_86966C                           ; $86969D |

CODE_86969F:
  INC A                                     ; $86969F |
  PLX                                       ; $8696A0 |
  STX.B $FC                                 ; $8696A1 |
  RTL                                       ; $8696A3 |

CODE_FL_8696A4:
  LDY.B $40,X                               ; $8696A4 |
  BNE CODE_8696BF                           ; $8696A6 |
  LDY.B $3E,X                               ; $8696A8 |
  BEQ CODE_8696BE                           ; $8696AA |
  TXA                                       ; $8696AC |
  CMP.W $0040,Y                             ; $8696AD |
  BNE CODE_8696E6                           ; $8696B0 |
  LDA.B $18,X                               ; $8696B2 |
  CMP.W $0018,Y                             ; $8696B4 |
  BNE CODE_8696E6                           ; $8696B7 |
  TDC                                       ; $8696B9 |
  STA.W $0040,Y                             ; $8696BA |
  CLC                                       ; $8696BD |

CODE_8696BE:
  RTL                                       ; $8696BE |

CODE_8696BF:
  TXA                                       ; $8696BF |
  CMP.W $003E,Y                             ; $8696C0 |
  BNE CODE_8696E6                           ; $8696C3 |
  LDA.W $0018,Y                             ; $8696C5 |
  CMP.B $18,X                               ; $8696C8 |
  BNE CODE_8696E6                           ; $8696CA |
  LDA.B $3E,X                               ; $8696CC |
  STA.W $003E,Y                             ; $8696CE |
  BEQ CODE_8696E6                           ; $8696D1 |
  TAY                                       ; $8696D3 |
  TXA                                       ; $8696D4 |
  CMP.W $0040,Y                             ; $8696D5 |
  BNE CODE_8696E6                           ; $8696D8 |
  LDA.B $18,X                               ; $8696DA |
  CMP.W $0018,Y                             ; $8696DC |
  BNE CODE_8696E6                           ; $8696DF |
  LDA.B $40,X                               ; $8696E1 |
  STA.W $0040,Y                             ; $8696E3 |

CODE_8696E6:
  CLC                                       ; $8696E6 |
  RTL                                       ; $8696E7 |

CODE_JL_8696E8:
  PHA                                       ; $8696E8 |
  LDA.B $22,X                               ; $8696E9 |
  AND.W #$BFFF                              ; $8696EB |
  LDA.B $09,X                               ; $8696EE |
  CMP.W #$0100                              ; $8696F0 |
  BPL CODE_8696F8                           ; $8696F3 |
  ORA.W #$4000                              ; $8696F5 |

CODE_8696F8:
  STA.B $22,X                               ; $8696F8 |
  PLA                                       ; $8696FA |
  RTL                                       ; $8696FB |

CODE_FL_8696FC:
  JSR.W CODE_FN_869713                      ; $8696FC |
  JSL.L CODE_FL_869703                      ; $8696FF |

CODE_FL_869703:
  PHX                                       ; $869703 |
  PHA                                       ; $869704 |
  PHY                                       ; $869705 |
  PHA                                       ; $869706 |
  JSL.L CODE_FL_809622                      ; $869707 |
  PLA                                       ; $86970B |
  XBA                                       ; $86970C |
  JSR.W CODE_FN_869760                      ; $86970D |
  XBA                                       ; $869710 |
  BRA CODE_86974B                           ; $869711 |

CODE_FN_869713:
  STZ.B $02                                 ; $869713 |
  PHA                                       ; $869715 |
  LDA.B $52                                 ; $869716 |
  CMP.W #$7401                              ; $869718 |
  PLA                                       ; $86971B |
  BCS CODE_86971F                           ; $86971C |
  RTS                                       ; $86971E |

CODE_86971F:
  PLA                                       ; $86971F |
  PHB                                       ; $869720 |
  PLA                                       ; $869721 |
  PLA                                       ; $869722 |
  RTL                                       ; $869723 |

CODE_FL_869724:
  JSR.W CODE_FN_869713                      ; $869724 |
  JSL.L CODE_FL_86972B                      ; $869727 |

CODE_FL_86972B:
  PHX                                       ; $86972B |
  PHA                                       ; $86972C |
  PHY                                       ; $86972D |
  PHA                                       ; $86972E |
  JSL.L CODE_FL_809622                      ; $86972F |
  PLA                                       ; $869733 |
  XBA                                       ; $869734 |
  JSR.W CODE_FN_869778                      ; $869735 |
  XBA                                       ; $869738 |
  BRA CODE_86974B                           ; $869739 |

CODE_FL_86973B:
  JSR.W CODE_FN_869713                      ; $86973B |
  JSL.L CODE_FL_869742                      ; $86973E |

CODE_FL_869742:
  PHX                                       ; $869742 |
  PHA                                       ; $869743 |
  PHY                                       ; $869744 |
  PHA                                       ; $869745 |
  JSL.L CODE_FL_809622                      ; $869746 |
  PLA                                       ; $86974A |

CODE_86974B:
  JSR.W CODE_FN_869760                      ; $86974B |
  JSL.L CODE_FL_809663                      ; $86974E |
  PLA                                       ; $869752 |
  CLC                                       ; $869753 |
  ADC.W #$0020                              ; $869754 |
  TAY                                       ; $869757 |
  LDA.W #$0002                              ; $869758 |
  STA.B $02                                 ; $86975B |
  PLA                                       ; $86975D |
  PLX                                       ; $86975E |
  RTL                                       ; $86975F |

CODE_FN_869760:
  PHA                                       ; $869760 |
  LSR A                                     ; $869761 |
  LSR A                                     ; $869762 |
  LSR A                                     ; $869763 |
  LSR A                                     ; $869764 |
  AND.W #$000F                              ; $869765 |
  ASL A                                     ; $869768 |
  ASL A                                     ; $869769 |
  PHX                                       ; $86976A |
  ADC.B $02                                 ; $86976B |
  TAX                                       ; $86976D |
  LDA.L DATA8_818A49,X                      ; $86976E |
  PLX                                       ; $869772 |
  JSL.L CODE_FL_86978D                      ; $869773 |
  PLA                                       ; $869777 |

CODE_FN_869778:
  PHA                                       ; $869778 |
  AND.W #$000F                              ; $869779 |
  ASL A                                     ; $86977C |
  ASL A                                     ; $86977D |
  PHX                                       ; $86977E |
  ADC.B $02                                 ; $86977F |
  TAX                                       ; $869781 |
  LDA.L DATA8_818A49,X                      ; $869782 |
  PLX                                       ; $869786 |
  JSL.L CODE_FL_86978D                      ; $869787 |
  PLA                                       ; $86978B |
  RTS                                       ; $86978C |

CODE_FL_86978D:
  LDY.B $88                                 ; $86978D |
  BEQ CODE_869794                           ; $86978F |
  LDA.W #$0010                              ; $869791 |

CODE_869794:
  ORA.B $00                                 ; $869794 |
  JML.L CODE_FL_809658                      ; $869796 |

CODE_FL_86979A:
  LDA.W $1CA2                               ; $86979A |
  BEQ CODE_8697CF                           ; $86979D |
  LDA.W #$0019                              ; $86979F |
  STA.B $38,X                               ; $8697A2 |
  LDA.B $36,X                               ; $8697A4 |
  SEP #$20                                  ; $8697A6 |
  SEC                                       ; $8697A8 |
  SBC.B #$02                                ; $8697A9 |
  REP #$20                                  ; $8697AB |
  STA.B $36,X                               ; $8697AD |
  BCS CODE_8697CF                           ; $8697AF |
  AND.W #$FF00                              ; $8697B1 |
  STA.B $36,X                               ; $8697B4 |
  PHB                                       ; $8697B6 |
  PHY                                       ; $8697B7 |
  PEA.W $8787                               ; $8697B8 |
  PLB                                       ; $8697BB |
  PLB                                       ; $8697BC |
  JSL.L CODE_FL_85F9C1                      ; $8697BD |
  LDA.W $0002,Y                             ; $8697C1 |
  AND.W #$00FF                              ; $8697C4 |
  CMP.B $1A,X                               ; $8697C7 |
  BCC CODE_8697CD                           ; $8697C9 |
  STA.B $1A,X                               ; $8697CB |

CODE_8697CD:
  PLY                                       ; $8697CD |
  PLB                                       ; $8697CE |

CODE_8697CF:
  RTL                                       ; $8697CF |

CODE_FN_8697D0:
  STA.B $00                                 ; $8697D0 |
  LDA.B $3C,X                               ; $8697D2 |
  BNE CODE_8697F6                           ; $8697D4 |
  LDA.W #$0380                              ; $8697D6 |
  JSL.L CODE_FL_86C97C                      ; $8697D9 |
  BCS CODE_8697F7                           ; $8697DD |
  STY.B $3A,X                               ; $8697DF |
  LDA.B $00                                 ; $8697E1 |
  JSL.L CODE_FL_869669                      ; $8697E3 |
  LDY.B $3A,X                               ; $8697E7 |
  STA.W $003A,Y                             ; $8697E9 |
  STA.W $003C,Y                             ; $8697EC |
  TDC                                       ; $8697EF |
  STA.W $0034,Y                             ; $8697F0 |
  STA.W $0022,Y                             ; $8697F3 |

CODE_8697F6:
  RTS                                       ; $8697F6 |

CODE_8697F7:
  PLA                                       ; $8697F7 |
  JML.L CODE_FL_86CA36                      ; $8697F8 |

CODE_FN_8697FC:
  LDA.B $3A,X                               ; $8697FC |
  BEQ CODE_869805                           ; $8697FE |
  PHX                                       ; $869800 |
  TAX                                       ; $869801 |
  INC.B $3C,X                               ; $869802 |
  PLX                                       ; $869804 |

CODE_869805:
  RTS                                       ; $869805 |

CODE_FN_869806:
  JSL.L CODE_FL_8696A4                      ; $869806 |
  LDY.B $3A,X                               ; $86980A |
  LDA.B $37,X                               ; $86980C |
  AND.W #$00FF                              ; $86980E |
  CMP.W #$0020                              ; $869811 |
  BNE CODE_86981D                           ; $869814 |
  LDA.W $0042,Y                             ; $869816 |
  DEC A                                     ; $869819 |
  STA.W $0042,Y                             ; $86981A |

CODE_86981D:
  LDA.W $003A,Y                             ; $86981D |
  DEC A                                     ; $869820 |
  STA.W $003A,Y                             ; $869821 |
  BNE CODE_86982A                           ; $869824 |
  JSL.L CODE_FL_86C7D4                      ; $869826 |

CODE_86982A:
  RTS                                       ; $86982A |

CODE_86982B:
  LDA.B $3A,X                               ; $86982B |
  BEQ CODE_869839                           ; $86982D |
  LDA.B $3C,X                               ; $86982F |
  BEQ CODE_869839                           ; $869831 |
  STZ.B $3C,X                               ; $869833 |
  JML.L CODE_FL_86C3F8                      ; $869835 |

CODE_869839:
  LDA.B $42,X                               ; $869839 |
  BNE CODE_869844                           ; $86983B |
  LDA.W #$0004                              ; $86983D |
  JSL.L CODE_FL_B3FDE5                      ; $869840 |

CODE_869844:
  JML.L CODE_FL_86CA36                      ; $869844 |

CODE_869848:
  JSR.W CODE_FN_8697FC                      ; $869848 |
  JSL.L CODE_FL_86C3F8                      ; $86984B |
  PHX                                       ; $86984F |
  ASL A                                     ; $869850 |
  TAX                                       ; $869851 |
  LDA.L PTR16_86985C,X                      ; $869852 |
  PLX                                       ; $869856 |
  STA.B $00                                 ; $869857 |
  JMP.W ($0000)                             ; $869859 |

PTR16_86985C:
  dw CODE_869862                            ; $86985C |
  dw CODE_869896                            ; $86985E |
  dw CODE_8698BC                            ; $869860 |

CODE_869862:
  LDA.B $2C,X                               ; $869862 |
  BNE CODE_869895                           ; $869864 |
  LDA.B $3C,X                               ; $869866 |
  BNE CODE_86987B                           ; $869868 |
  LDA.B $4E,X                               ; $86986A |
  PHX                                       ; $86986C |
  TAX                                       ; $86986D |
  LDA.L DATA8_8698C6,X                      ; $86986E |
  PLX                                       ; $869872 |
  STA.B $4E,X                               ; $869873 |
  LDA.W #$0004                              ; $869875 |
  JSR.W CODE_FN_8697D0                      ; $869878 |

CODE_86987B:
  LDA.W #$8013                              ; $86987B |
  LDY.W #$FF40                              ; $86987E |

CODE_FL_869881:
  STY.B $26,X                               ; $869881 |

CODE_JL_869883:
  JSL.L CODE_FL_86CAEE                      ; $869883 |
  JSL.L CODE_FL_86C63F                      ; $869887 |
  LDA.W #$C000                              ; $86988B |
  STA.B $34,X                               ; $86988E |
  LDA.W #$C000                              ; $869890 |
  STA.B $22,X                               ; $869893 |

CODE_869895:
  RTL                                       ; $869895 |

CODE_869896:
  LDA.B $2C,X                               ; $869896 |
  BNE CODE_8698BB                           ; $869898 |
  LDA.B $4E,X                               ; $86989A |
  PHX                                       ; $86989C |
  TAX                                       ; $86989D |
  LDA.L DATA8_8698C6,X                      ; $86989E |
  TAY                                       ; $8698A2 |
  LDA.L DATA8_8698C7,X                      ; $8698A3 |
  PLX                                       ; $8698A7 |
  STA.B $2C,X                               ; $8698A8 |
  TYA                                       ; $8698AA |
  AND.W #$00FF                              ; $8698AB |
  LDY.W #$0005                              ; $8698AE |
  JSL.L CODE_FL_8AB499                      ; $8698B1 |
  INC.B $4E,X                               ; $8698B5 |
  INC.B $4E,X                               ; $8698B7 |
  INC.B $4E,X                               ; $8698B9 |

CODE_8698BB:
  RTL                                       ; $8698BB |

CODE_8698BC:
  JSR.W CODE_FN_869806                      ; $8698BC |

CODE_8698BF:
  LDA.W #$0001                              ; $8698BF |
  JML.L CODE_JL_B3FC30                      ; $8698C2 |

DATA8_8698C6:
  db $08                                    ; $8698C6 |

DATA8_8698C7:
  db $00,$11,$00,$1A,$00,$26,$00,$10        ; $8698C7 |
  db $50,$00                                ; $8698CF |
  db $04,$1E,$00,$10,$FF,$FF                ; $8698D1 |
  db $10,$50,$00                            ; $8698D7 |
  db $FC,$1E,$00,$10,$FF,$FF                ; $8698DA |
  db $0C,$28,$00,$F4,$28,$00,$0C,$28        ; $8698E0 |
  db $00,$F4,$FF,$FF,$F4,$28,$00,$0C        ; $8698E8 |
  db $28,$00,$F4,$28,$00,$0C,$FF,$FF        ; $8698F0 |

CODE_8698F8:
  JSL.L CODE_FL_86C3F8                      ; $8698F8 |
  PHX                                       ; $8698FC |
  ASL A                                     ; $8698FD |
  TAX                                       ; $8698FE |
  LDA.L PTR16_869909,X                      ; $8698FF |
  PLX                                       ; $869903 |
  STA.B $00                                 ; $869904 |
  JMP.W ($0000)                             ; $869906 |

PTR16_869909:
  dw CODE_86990F                            ; $869909 |
  dw CODE_86991D                            ; $86990B |
  dw CODE_8698BF                            ; $86990D |

CODE_86990F:
  LDA.B $0D,X                               ; $86990F |
  STA.B $3A,X                               ; $869911 |
  LDA.W #$8013                              ; $869913 |
  LDY.W #$FF00                              ; $869916 |
  JML.L CODE_FL_869881                      ; $869919 |

CODE_86991D:
  STZ.B $0C,X                               ; $86991D |
  LDA.B $3A,X                               ; $86991F |
  STA.B $0D,X                               ; $869921 |
  TXA                                       ; $869923 |
  LSR A                                     ; $869924 |
  LSR A                                     ; $869925 |
  LSR A                                     ; $869926 |
  LSR A                                     ; $869927 |
  CLC                                       ; $869928 |
  ADC.B $4E,X                               ; $869929 |
  LSR A                                     ; $86992B |
  LSR A                                     ; $86992C |
  INC.B $4E,X                               ; $86992D |
  LDY.W #$0050                              ; $86992F |
  JML.L CODE_JL_86C50A                      ; $869932 |

CODE_869936:
  JSL.L CODE_FL_86C3F8                      ; $869936 |
  PHX                                       ; $86993A |
  ASL A                                     ; $86993B |
  TAX                                       ; $86993C |
  LDA.L PTR16_869947,X                      ; $86993D |
  PLX                                       ; $869941 |
  STA.B $00                                 ; $869942 |
  JMP.W ($0000)                             ; $869944 |

PTR16_869947:
  dw CODE_869951                            ; $869947 |
  dw CODE_869960                            ; $869949 |
  dw CODE_869975                            ; $86994B |
  dw CODE_869974                            ; $86994D |
  dw CODE_JP_869996                         ; $86994F |

CODE_869951:
  LDA.W #$0303                              ; $869951 |
  STA.B $2A,X                               ; $869954 |
  LDY.W #$FF80                              ; $869956 |
  LDA.W #$8014                              ; $869959 |
  JSL.L CODE_FL_869881                      ; $86995C |

CODE_869960:
  SEC                                       ; $869960 |
  LDA.B $09,X                               ; $869961 |
  SBC.W $0589                               ; $869963 |
  CMP.W #$0090                              ; $869966 |
  BPL CODE_869974                           ; $869969 |
  LDA.W #$8015                              ; $86996B |

CODE_86996E:
  JSL.L CODE_FL_86CAEE                      ; $86996E |
  INC.B $1A,X                               ; $869972 |

CODE_869974:
  RTL                                       ; $869974 |

CODE_869975:
  LDA.B $20,X                               ; $869975 |
  BNE CODE_869974                           ; $869977 |
  LDA.W #$FFE4                              ; $869979 |
  STA.B $08                                 ; $86997C |
  LDA.W #$0004                              ; $86997E |
  STA.B $0A                                 ; $869981 |
  LDA.W #$0010                              ; $869983 |
  LDY.W #$359A                              ; $869986 |
  JSL.L CODE_FL_8699B9                      ; $869989 |
  JSL.L CODE_FL_869607                      ; $86998D |
  LDA.W #$8014                              ; $869991 |
  BRA CODE_86996E                           ; $869994 |

CODE_JP_869996:
  LDY.W #$0000                              ; $869996 |
  BRA CODE_8699A3                           ; $869999 |

CODE_JL_86999B:
  LDY.W #$0002                              ; $86999B |
  BRA CODE_8699A3                           ; $86999E |

CODE_JP_8699A0:
  LDY.W #$0004                              ; $8699A0 |

CODE_8699A3:
  LDA.B $37,X                               ; $8699A3 |
  AND.W #$00FF                              ; $8699A5 |
  CMP.W #$0020                              ; $8699A8 |
  BEQ CODE_8699B2                           ; $8699AB |
  TYA                                       ; $8699AD |
  JSL.L CODE_FL_B3FDE5                      ; $8699AE |

CODE_8699B2:
  LDA.W #$0002                              ; $8699B2 |
  JML.L CODE_JL_B3FC30                      ; $8699B5 |

CODE_FL_8699B9:
  STY.B $10                                 ; $8699B9 |
  PHA                                       ; $8699BB |
  LDA.W #$0384                              ; $8699BC |
  JSL.L CODE_FL_86C9A7                      ; $8699BF |
  PLA                                       ; $8699C3 |
  BCS CODE_8699D8                           ; $8699C4 |
  STA.W $004E,Y                             ; $8699C6 |
  LDA.W $1C5A                               ; $8699C9 |
  ADC.W #$FFF0                              ; $8699CC |
  STA.W $0014,Y                             ; $8699CF |
  LDA.B $10                                 ; $8699D2 |
  STA.W $0000,Y                             ; $8699D4 |
  CLC                                       ; $8699D7 |

CODE_8699D8:
  RTL                                       ; $8699D8 |

CODE_8699D9:
  JSL.L CODE_FL_86C3F8                      ; $8699D9 |
  PHX                                       ; $8699DD |
  ASL A                                     ; $8699DE |
  TAX                                       ; $8699DF |
  LDA.L PTR16_8699EA,X                      ; $8699E0 |
  PLX                                       ; $8699E4 |
  STA.B $00                                 ; $8699E5 |
  JMP.W ($0000)                             ; $8699E7 |

PTR16_8699EA:
  dw CODE_8699F0                            ; $8699EA |
  dw CODE_8699D8                            ; $8699EC |
  dw CODE_869A02                            ; $8699EE |

CODE_8699F0:
  JSL.L CODE_FL_86C63F                      ; $8699F0 |
  LDA.W #$C000                              ; $8699F4 |
  STA.B $34,X                               ; $8699F7 |
  LDY.W #$000C                              ; $8699F9 |
  LDA.B $4E,X                               ; $8699FC |
  JML.L CODE_FL_8AB499                      ; $8699FE |

CODE_869A02:
  JML.L CODE_FL_86CA36                      ; $869A02 |

CODE_869A06:
  JSL.L CODE_FL_86979A                      ; $869A06 |
  JSR.W CODE_FN_869A2A                      ; $869A0A |
  JSL.L CODE_FL_86C3F8                      ; $869A0D |
  PHX                                       ; $869A11 |
  ASL A                                     ; $869A12 |
  TAX                                       ; $869A13 |
  LDA.L PTR16_869A1E,X                      ; $869A14 |
  PLX                                       ; $869A18 |
  STA.B $00                                 ; $869A19 |
  JMP.W ($0000)                             ; $869A1B |

PTR16_869A1E:
  dw CODE_869A4F                            ; $869A1E |
  dw CODE_869A6F                            ; $869A20 |
  dw CODE_869A7A                            ; $869A22 |
  dw CODE_869A79                            ; $869A24 |
  dw CODE_869A83                            ; $869A26 |
  dw CODE_869A92                            ; $869A28 |

CODE_FN_869A2A:
  PHX                                       ; $869A2A |
  LDX.W #$0000                              ; $869A2B |
  LDA.L $7EDAC0                             ; $869A2E |
  BEQ CODE_869A37                           ; $869A32 |
  LDX.W #$0020                              ; $869A34 |

CODE_869A37:
  LDA.L $7EDAE0,X                           ; $869A37 |
  PLX                                       ; $869A3B |
  LDY.B $40,X                               ; $869A3C |
  BNE CODE_869A46                           ; $869A3E |
  CLC                                       ; $869A40 |
  ADC.B $0D,X                               ; $869A41 |
  STA.B $40,X                               ; $869A43 |
  RTS                                       ; $869A45 |

CODE_869A46:
  SEC                                       ; $869A46 |
  EOR.W #$FFFF                              ; $869A47 |
  ADC.B $40,X                               ; $869A4A |
  STA.B $0D,X                               ; $869A4C |
  RTS                                       ; $869A4E |

CODE_869A4F:
  LDA.W #$8016                              ; $869A4F |

CODE_FL_869A52:
  JSL.L CODE_FL_86CAEE                      ; $869A52 |
  JSL.L CODE_FL_86C63F                      ; $869A56 |
  LDA.W #$0038                              ; $869A5A |
  STA.B $14,X                               ; $869A5D |
  LDA.W #$1898                              ; $869A5F |
  STA.B $04,X                               ; $869A62 |
  LDA.W #$0404                              ; $869A64 |
  STA.B $2A,X                               ; $869A67 |
  LDA.W #$8000                              ; $869A69 |
  STA.B $34,X                               ; $869A6C |
  RTL                                       ; $869A6E |

CODE_869A6F:
  LDA.B $09,X                               ; $869A6F |
  CMP.B $4E,X                               ; $869A71 |
  BPL CODE_869A79                           ; $869A73 |
  INC.B $20,X                               ; $869A75 |
  INC.B $1A,X                               ; $869A77 |

CODE_869A79:
  RTL                                       ; $869A79 |

CODE_869A7A:
  LDY.W #$8017                              ; $869A7A |
  LDA.W #$35F6                              ; $869A7D |
  JMP.W CODE_JP_869A9D                      ; $869A80 |

CODE_869A83:
  STZ.B $20,X                               ; $869A83 |
  LDA.W #$3606                              ; $869A85 |
  STA.B $00,X                               ; $869A88 |
  LDA.W #$0008                              ; $869A8A |
  STA.B $2C,X                               ; $869A8D |
  INC.B $1A,X                               ; $869A8F |
  RTL                                       ; $869A91 |

CODE_869A92:
  LDA.B $2C,X                               ; $869A92 |
  BNE CODE_869A79                           ; $869A94 |
  INC.W $1CAC                               ; $869A96 |
  JML.L CODE_JL_86999B                      ; $869A99 |

CODE_JP_869A9D:
  CMP.B $00,X                               ; $869A9D |
  BNE CODE_869AB1                           ; $869A9F |
  INC.B $1A,X                               ; $869AA1 |
  PHY                                       ; $869AA3 |
  LDA.W #$0386                              ; $869AA4 |
  JSL.L CODE_FL_86C9A7                      ; $869AA7 |
  PLA                                       ; $869AAB |
  BCS CODE_869AB1                           ; $869AAC |
  STA.W $003A,Y                             ; $869AAE |

CODE_869AB1:
  RTL                                       ; $869AB1 |

CODE_869AB2:
  JSL.L CODE_FL_86C3F8                      ; $869AB2 |
  PHX                                       ; $869AB6 |
  ASL A                                     ; $869AB7 |
  TAX                                       ; $869AB8 |
  LDA.L PTR16_869AC3,X                      ; $869AB9 |
  PLX                                       ; $869ABD |
  STA.B $00                                 ; $869ABE |
  JMP.W ($0000)                             ; $869AC0 |

PTR16_869AC3:
  dw CODE_869AC9                            ; $869AC3 |
  dw CODE_869AFD                            ; $869AC5 |
  dw CODE_869B1B                            ; $869AC7 |

CODE_869AC9:
  LDA.W #$1090                              ; $869AC9 |
  STA.B $04,X                               ; $869ACC |
  LDY.W #$FEE0                              ; $869ACE |
  SEC                                       ; $869AD1 |
  LDA.B $09,X                               ; $869AD2 |
  SBC.L $000589                             ; $869AD4 |
  BPL CODE_869ADD                           ; $869AD8 |
  LDY.W #$0120                              ; $869ADA |

CODE_869ADD:
  STY.B $26,X                               ; $869ADD |
  LDA.W #$FBE0                              ; $869ADF |
  STA.B $28,X                               ; $869AE2 |
  JSL.L CODE_FL_86C63F                      ; $869AE4 |
  LDA.W #$C000                              ; $869AE8 |
  STA.B $34,X                               ; $869AEB |
  LDA.W #$0404                              ; $869AED |
  STA.B $2A,X                               ; $869AF0 |
  LDA.W #$0030                              ; $869AF2 |
  STA.B $14,X                               ; $869AF5 |
  LDA.B $3A,X                               ; $869AF7 |
  JML.L CODE_FL_86CAEE                      ; $869AF9 |

CODE_869AFD:
  LDA.W #$0020                              ; $869AFD |
  JSL.L CODE_FL_86C831                      ; $869B00 |
  LDA.W #$0303                              ; $869B04 |
  LDY.B $00,X                               ; $869B07 |
  CPY.W #$37DA                              ; $869B09 |
  BEQ CODE_869B18                           ; $869B0C |
  CPY.W #$3578                              ; $869B0E |
  BEQ CODE_869B18                           ; $869B11 |
  CPY.W #$361E                              ; $869B13 |
  BNE CODE_869B1A                           ; $869B16 |

CODE_869B18:
  STA.B $2A,X                               ; $869B18 |

CODE_869B1A:
  RTL                                       ; $869B1A |

CODE_869B1B:
  JSL.L CODE_FL_86C899                      ; $869B1B |
  LDY.W #$0001                              ; $869B1F |
  LDA.B $00,X                               ; $869B22 |
  CPY.W #$37DA                              ; $869B24 |
  BEQ CODE_869B33                           ; $869B27 |
  CPY.W #$3578                              ; $869B29 |
  BEQ CODE_869B33                           ; $869B2C |
  CMP.W #$361E                              ; $869B2E |
  BNE CODE_869B34                           ; $869B31 |

CODE_869B33:
  DEY                                       ; $869B33 |

CODE_869B34:
  TYA                                       ; $869B34 |
  JML.L CODE_JL_B3FC30                      ; $869B35 |

CODE_869B39:
  JSR.W CODE_FN_8697FC                      ; $869B39 |
  JSL.L CODE_FL_86C3F8                      ; $869B3C |
  PHX                                       ; $869B40 |
  ASL A                                     ; $869B41 |
  TAX                                       ; $869B42 |
  LDA.L PTR16_869B4D,X                      ; $869B43 |
  PLX                                       ; $869B47 |
  STA.B $00                                 ; $869B48 |
  JMP.W ($0000)                             ; $869B4A |

PTR16_869B4D:
  dw CODE_869B53                            ; $869B4D |
  dw CODE_869B77                            ; $869B4F |
  dw CODE_869BA8                            ; $869B51 |

CODE_869B53:
  LDA.B $3C,X                               ; $869B53 |
  BNE CODE_869B6D                           ; $869B55 |
  LDA.W #$0003                              ; $869B57 |
  JSR.W CODE_FN_8697D0                      ; $869B5A |
  LDA.B $3A,X                               ; $869B5D |
  PHX                                       ; $869B5F |
  TXY                                       ; $869B60 |
  TAX                                       ; $869B61 |
  LDA.W $004E,Y                             ; $869B62 |
  LDY.W #$0003                              ; $869B65 |
  JSL.L CODE_FL_8AB499                      ; $869B68 |
  PLX                                       ; $869B6C |

CODE_869B6D:
  LDY.W #$0000                              ; $869B6D |
  LDA.W #$8018                              ; $869B70 |
  JSL.L CODE_FL_869881                      ; $869B73 |

CODE_869B77:
  LDA.W $1C38                               ; $869B77 |
  ASL A                                     ; $869B7A |
  ASL A                                     ; $869B7B |
  ASL A                                     ; $869B7C |
  STA.B $00                                 ; $869B7D |
  PHX                                       ; $869B7F |
  LDA.B $3C,X                               ; $869B80 |
  ASL A                                     ; $869B82 |
  TAX                                       ; $869B83 |
  LDA.L DATA16_869BA0,X                     ; $869B84 |
  PLX                                       ; $869B88 |
  SEC                                       ; $869B89 |
  SBC.B $00                                 ; $869B8A |
  AND.W #$01FF                              ; $869B8C |
  LDY.W #$0020                              ; $869B8F |
  JSL.L CODE_FL_8AB51A                      ; $869B92 |
  LDY.B $3A,X                               ; $869B96 |
  JSL.L CODE_FL_8AB509                      ; $869B98 |
  JML.L CODE_JL_8696E8                      ; $869B9C |

DATA16_869BA0:
  dw $0000,$0080,$0100,$0180                ; $869BA0 |

CODE_869BA8:
  JSR.W CODE_FN_869806                      ; $869BA8 |
  LDA.W #$0002                              ; $869BAB |
  JML.L CODE_JL_B3FC30                      ; $869BAE |

CODE_869BB2:
  JSL.L CODE_FL_86C3F8                      ; $869BB2 |
  PHX                                       ; $869BB6 |
  ASL A                                     ; $869BB7 |
  TAX                                       ; $869BB8 |
  LDA.L PTR16_869BC3,X                      ; $869BB9 |
  PLX                                       ; $869BBD |
  STA.B $00                                 ; $869BBE |
  JMP.W ($0000)                             ; $869BC0 |

PTR16_869BC3:
  dw CODE_869BCD                            ; $869BC3 |
  dw CODE_869BE9                            ; $869BC5 |
  dw CODE_869C00                            ; $869BC7 |
  dw CODE_869C39                            ; $869BC9 |
  dw CODE_JP_869996                         ; $869BCB |

CODE_869BCD:
  LDA.W #$00DC                              ; $869BCD |
  STA.B $0D,X                               ; $869BD0 |
  LDA.B $09,X                               ; $869BD2 |
  CMP.B $4E,X                               ; $869BD4 |
  BPL CODE_869BFF                           ; $869BD6 |
  LDA.W #$FB80                              ; $869BD8 |
  STA.B $28,X                               ; $869BDB |

CODE_FL_869BDD:
  LDA.W #$0005                              ; $869BDD |
  STA.B $36,X                               ; $869BE0 |
  LDA.W #$801C                              ; $869BE2 |
  JML.L CODE_JL_869883                      ; $869BE5 |

CODE_869BE9:
  LDA.W #$0010                              ; $869BE9 |
  JSL.L CODE_FL_86C831                      ; $869BEC |
  BIT.B $28,X                               ; $869BF0 |
  BMI CODE_869BFF                           ; $869BF2 |
  JSL.L CODE_FL_86C899                      ; $869BF4 |
  LDA.W #$0028                              ; $869BF8 |
  STA.B $2C,X                               ; $869BFB |
  INC.B $1A,X                               ; $869BFD |

CODE_869BFF:
  RTL                                       ; $869BFF |

CODE_869C00:
  LDA.B $2C,X                               ; $869C00 |
  BEQ CODE_869C11                           ; $869C02 |
  CMP.W #$000A                              ; $869C04 |
  BCS CODE_869BFF                           ; $869C07 |
  LDA.W #$35C8                              ; $869C09 |
  STA.B $00,X                               ; $869C0C |
  STZ.B $20,X                               ; $869C0E |
  RTL                                       ; $869C10 |

CODE_869C11:
  LDA.B $40,X                               ; $869C11 |
  CMP.W #$0020                              ; $869C13 |
  BCS CODE_869C34                           ; $869C16 |
  ADC.W #$0002                              ; $869C18 |
  STA.B $40,X                               ; $869C1B |
  ADC.W #$0008                              ; $869C1D |
  LDY.W #$0000                              ; $869C20 |
  JSL.L CODE_FL_8699B9                      ; $869C23 |
  BCS CODE_869C33                           ; $869C27 |
  PHX                                       ; $869C29 |
  TYX                                       ; $869C2A |
  LDA.W #$801D                              ; $869C2B |
  JSL.L CODE_FL_86CAEE                      ; $869C2E |
  PLX                                       ; $869C32 |

CODE_869C33:
  RTL                                       ; $869C33 |

CODE_869C34:
  INC.B $20,X                               ; $869C34 |
  INC.B $1A,X                               ; $869C36 |
  RTL                                       ; $869C38 |

CODE_869C39:
  LDA.W #$0010                              ; $869C39 |
  JML.L CODE_FL_86C831                      ; $869C3C |

CODE_869C40:
  LDA.B $09,X                               ; $869C40 |
  CMP.W #$FFF0                              ; $869C42 |
  BMI CODE_869C62                           ; $869C45 |
  JSL.L CODE_FL_86C3F8                      ; $869C47 |
  PHX                                       ; $869C4B |
  ASL A                                     ; $869C4C |
  TAX                                       ; $869C4D |
  LDA.L PTR16_869C58,X                      ; $869C4E |
  PLX                                       ; $869C52 |
  STA.B $00                                 ; $869C53 |
  JMP.W ($0000)                             ; $869C55 |

PTR16_869C58:
  dw CODE_869C6A                            ; $869C58 |
  dw CODE_869C7F                            ; $869C5A |
  dw $0000                                  ; $869C5C |
  dw $0000                                  ; $869C5E |
  dw CODE_869CF3                            ; $869C60 |

CODE_869C62:
  JSL.L CODE_FL_8696A4                      ; $869C62 |
  JSL.L CODE_FL_86CA57                      ; $869C66 |

CODE_869C6A:
  LDA.B $3C,X                               ; $869C6A |
  BEQ CODE_869C71                           ; $869C6C |
  JMP.W CODE_JP_869C75                      ; $869C6E |

CODE_869C71:
  LDA.B $0D,X                               ; $869C71 |
  STA.B $3A,X                               ; $869C73 |

CODE_JP_869C75:
  JSL.L CODE_FL_869BDD                      ; $869C75 |
  LDA.W #$8000                              ; $869C79 |
  STA.B $22,X                               ; $869C7C |
  RTL                                       ; $869C7E |

CODE_869C7F:
  LDA.B $0D,X                               ; $869C7F |
  STA.B $18                                 ; $869C81 |
  LDA.B $4E,X                               ; $869C83 |
  LDY.B $3C,X                               ; $869C85 |
  BEQ CODE_869CA0                           ; $869C87 |
  LDA.W #$0010                              ; $869C89 |
  JSL.L CODE_FL_86C831                      ; $869C8C |
  LDA.B $3A,X                               ; $869C90 |
  LDY.B $3E,X                               ; $869C92 |
  BEQ CODE_869CA0                           ; $869C94 |
  SEC                                       ; $869C96 |
  LDA.W $000D,Y                             ; $869C97 |
  SBC.W $0030,Y                             ; $869C9A |
  SBC.W $0030,Y                             ; $869C9D |

CODE_869CA0:
  CMP.B $0D,X                               ; $869CA0 |
  BMI CODE_869CA6                           ; $869CA2 |
  BNE CODE_869CB7                           ; $869CA4 |

CODE_869CA6:
  STA.B $0D,X                               ; $869CA6 |
  CMP.B $18                                 ; $869CA8 |
  BEQ CODE_869CB3                           ; $869CAA |
  LDA.W #$0038                              ; $869CAC |
  JSL.L push_sound_queue                    ; $869CAF |

CODE_869CB3:
  JSL.L CODE_FL_86C899                      ; $869CB3 |

CODE_869CB7:
  LDA.B $3C,X                               ; $869CB7 |
  CMP.W #$0003                              ; $869CB9 |
  BCS CODE_869CF2                           ; $869CBC |
  LDA.B $42,X                               ; $869CBE |
  BNE CODE_869CF2                           ; $869CC0 |
  LDA.B $18,X                               ; $869CC2 |
  JSL.L CODE_FL_86C97C                      ; $869CC4 |
  BCS CODE_869CF2                           ; $869CC8 |
  SEC                                       ; $869CCA |
  LDA.B $0D,X                               ; $869CCB |
  SBC.W #$0040                              ; $869CCD |
  CMP.W #$FFF0                              ; $869CD0 |
  BMI CODE_869CD8                           ; $869CD3 |
  LDA.W #$FFF0                              ; $869CD5 |

CODE_869CD8:
  STA.W $000D,Y                             ; $869CD8 |
  LDA.B $3C,X                               ; $869CDB |
  INC A                                     ; $869CDD |
  STA.W $003C,Y                             ; $869CDE |
  LDA.B $3A,X                               ; $869CE1 |
  STA.W $003A,Y                             ; $869CE3 |
  STX.B $3E,Y                               ; $869CE6 |
  STY.B $40,X                               ; $869CE8 |
  INC.B $42,X                               ; $869CEA |
  LDA.W #$8000                              ; $869CEC |
  STA.W $0022,Y                             ; $869CEF |

CODE_869CF2:
  RTL                                       ; $869CF2 |

CODE_869CF3:
  JSL.L CODE_FL_8696A4                      ; $869CF3 |
  JMP.W CODE_JP_869996                      ; $869CF7 |

CODE_869CFA:
  JSL.L CODE_FL_86979A                      ; $869CFA |
  JSL.L CODE_FL_86C3F8                      ; $869CFE |
  PHX                                       ; $869D02 |
  ASL A                                     ; $869D03 |
  TAX                                       ; $869D04 |
  LDA.L PTR16_869D0F,X                      ; $869D05 |
  PLX                                       ; $869D09 |
  STA.B $00                                 ; $869D0A |
  JMP.W ($0000)                             ; $869D0C |

PTR16_869D0F:
  dw CODE_869D15                            ; $869D0F |
  dw CODE_869D56                            ; $869D11 |
  dw CODE_869D6E                            ; $869D13 |

CODE_869D15:
  LDY.W #$038B                              ; $869D15 |
  LDA.W #$8019                              ; $869D18 |

CODE_FL_869D1B:
  STY.B $08                                 ; $869D1B |
  LDY.W #$FF40                              ; $869D1D |
  STY.B $26,X                               ; $869D20 |
  LDY.W #$0020                              ; $869D22 |
  STY.B $2C,X                               ; $869D25 |
  JSL.L CODE_FL_869A52                      ; $869D27 |
  LDA.W #$1090                              ; $869D2B |
  STA.B $04,X                               ; $869D2E |
  LDA.B $08                                 ; $869D30 |
  JSL.L CODE_FL_86C97C                      ; $869D32 |
  BCS CODE_869D50                           ; $869D36 |
  LDA.B $04,X                               ; $869D38 |
  STA.W $0004,Y                             ; $869D3A |
  TDC                                       ; $869D3D |
  STA.W $0034,Y                             ; $869D3E |
  LDA.B $14,X                               ; $869D41 |
  DEC A                                     ; $869D43 |
  STA.W $0014,Y                             ; $869D44 |
  STY.B $3C,X                               ; $869D47 |
  LDA.B $4E,X                               ; $869D49 |
  STA.W $004E,Y                             ; $869D4B |
  CLC                                       ; $869D4E |
  RTL                                       ; $869D4F |

CODE_869D50:
  JSL.L CODE_FL_86CA36                      ; $869D50 |
  SEC                                       ; $869D54 |
  RTL                                       ; $869D55 |

CODE_869D56:
  LDY.B $3C,X                               ; $869D56 |
  JSL.L CODE_FL_86C7D4                      ; $869D58 |
  LDA.B $2C,X                               ; $869D5C |
  BNE CODE_869D6D                           ; $869D5E |
  LDA.B $26,X                               ; $869D60 |
  EOR.W #$FFFF                              ; $869D62 |
  INC A                                     ; $869D65 |
  STA.B $26,X                               ; $869D66 |
  LDA.W #$0040                              ; $869D68 |
  STA.B $2C,X                               ; $869D6B |

CODE_869D6D:
  RTL                                       ; $869D6D |

CODE_869D6E:
  PHX                                       ; $869D6E |
  LDY.B $3C,X                               ; $869D6F |
  TYX                                       ; $869D71 |
  JSL.L CODE_FL_86CA36                      ; $869D72 |
  PLX                                       ; $869D76 |
  INC.W $1CAC                               ; $869D77 |
  JMP.W CODE_JL_86999B                      ; $869D7A |

CODE_869D7D:
  JSL.L CODE_FL_86C3F8                      ; $869D7D |
  PHX                                       ; $869D81 |
  ASL A                                     ; $869D82 |
  TAX                                       ; $869D83 |
  LDA.L PTR16_869D8E,X                      ; $869D84 |
  PLX                                       ; $869D88 |
  STA.B $00                                 ; $869D89 |
  JMP.W ($0000)                             ; $869D8B |

PTR16_869D8E:
  dw CODE_869D98                            ; $869D8E |
  dw CODE_869DA6                            ; $869D90 |
  dw CODE_869DB0                            ; $869D92 |
  dw CODE_869DBD                            ; $869D94 |
  dw CODE_869DA6                            ; $869D96 |

CODE_869D98:
  LDA.B $20,X                               ; $869D98 |
  BNE CODE_869DA5                           ; $869D9A |
  STZ.B $1E,X                               ; $869D9C |
  LDA.W #$352C                              ; $869D9E |
  STA.B $00,X                               ; $869DA1 |
  INC.B $1A,X                               ; $869DA3 |

CODE_869DA5:
  RTL                                       ; $869DA5 |

CODE_869DA6:
  LDA.W #$0002                              ; $869DA6 |
  STA.B $1A,X                               ; $869DA9 |
  LDA.W #$0096                              ; $869DAB |
  STA.B $2C,X                               ; $869DAE |

CODE_869DB0:
  LDA.B $2C,X                               ; $869DB0 |
  BNE CODE_869DA5                           ; $869DB2 |
  INC.B $1A,X                               ; $869DB4 |
  LDA.W #$801A                              ; $869DB6 |
  JML.L CODE_FL_86CAEE                      ; $869DB9 |

CODE_869DBD:
  LDY.W #$801B                              ; $869DBD |
  LDA.W #$3566                              ; $869DC0 |
  JMP.W CODE_JP_869A9D                      ; $869DC3 |

CODE_869DC6:
  JSR.W CODE_FN_8697FC                      ; $869DC6 |
  JSL.L CODE_FL_86C3F8                      ; $869DC9 |
  PHX                                       ; $869DCD |
  ASL A                                     ; $869DCE |
  TAX                                       ; $869DCF |
  LDA.L PTR16_869DDA,X                      ; $869DD0 |
  PLX                                       ; $869DD4 |
  STA.B $00                                 ; $869DD5 |
  JMP.W ($0000)                             ; $869DD7 |

PTR16_869DDA:
  dw CODE_869DE0                            ; $869DDA |
  dw CODE_869DFC                            ; $869DDC |
  dw CODE_8698BC                            ; $869DDE |

CODE_869DE0:
  LDA.B $2C,X                               ; $869DE0 |
  BNE CODE_869DA5                           ; $869DE2 |
  LDA.B $3C,X                               ; $869DE4 |
  BNE CODE_869DEE                           ; $869DE6 |
  LDA.W #$0004                              ; $869DE8 |
  JSR.W CODE_FN_8697D0                      ; $869DEB |

CODE_869DEE:
  LDA.B $0D,X                               ; $869DEE |
  STA.B $42,X                               ; $869DF0 |
  LDA.W #$801E                              ; $869DF2 |
  LDY.W #$FF60                              ; $869DF5 |
  JML.L CODE_FL_869881                      ; $869DF8 |

CODE_869DFC:
  STZ.B $0C,X                               ; $869DFC |
  LDA.B $42,X                               ; $869DFE |
  STA.B $0D,X                               ; $869E00 |
  LDA.B $4E,X                               ; $869E02 |
  LSR A                                     ; $869E04 |
  LSR A                                     ; $869E05 |
  INC.B $4E,X                               ; $869E06 |
  LDY.W #$0060                              ; $869E08 |
  JML.L CODE_JL_86C50A                      ; $869E0B |

CODE_869E0F:
  JSL.L CODE_FL_86C3F8                      ; $869E0F |
  PHX                                       ; $869E13 |
  ASL A                                     ; $869E14 |
  TAX                                       ; $869E15 |
  LDA.L PTR16_869E20,X                      ; $869E16 |
  PLX                                       ; $869E1A |
  STA.B $00                                 ; $869E1B |
  JMP.W ($0000)                             ; $869E1D |

PTR16_869E20:
  dw CODE_869E26                            ; $869E20 |
  dw CODE_869E48                            ; $869E22 |
  dw CODE_8698BC                            ; $869E24 |

CODE_869E26:
  LDA.B $3C,X                               ; $869E26 |
  BNE CODE_869E38                           ; $869E28 |
  LDA.W #$0002                              ; $869E2A |
  JSR.W CODE_FN_8697D0                      ; $869E2D |
  LDY.B $3A,X                               ; $869E30 |
  LDA.W #$0040                              ; $869E32 |
  STA.W $0028,Y                             ; $869E35 |

CODE_869E38:
  LDA.B $3C,X                               ; $869E38 |
  ASL A                                     ; $869E3A |
  TAY                                       ; $869E3B |
  LDA.W LOOSE_OP_00CE53,Y                   ; $869E3C |
  STA.B $2C,X                               ; $869E3F |
  LDA.W #$801E                              ; $869E41 |
  JML.L CODE_JL_869883                      ; $869E44 |

CODE_869E48:
  LDY.B $3A,X                               ; $869E48 |
  LDA.W $000D,Y                             ; $869E4A |
  STA.B $0D,X                               ; $869E4D |
  LDA.W $003C,Y                             ; $869E4F |
  BNE CODE_869E6C                           ; $869E52 |
  LDA.W $000D,Y                             ; $869E54 |
  CMP.W #$0010                              ; $869E57 |
  BPL CODE_869E61                           ; $869E5A |
  LDA.W #$0040                              ; $869E5C |
  BRA CODE_869E69                           ; $869E5F |

CODE_869E61:
  CMP.W #$0020                              ; $869E61 |
  BMI CODE_869E6C                           ; $869E64 |
  LDA.W #$FFC0                              ; $869E66 |

CODE_869E69:
  STA.W $0028,Y                             ; $869E69 |

CODE_869E6C:
  LDA.B $3C,X                               ; $869E6C |
  ASL A                                     ; $869E6E |
  TAY                                       ; $869E6F |
  LDA.W CODE_00CE59,Y                       ; $869E70 |
  JSL.L CODE_FL_86C849                      ; $869E73 |
  LDA.B $2C,X                               ; $869E77 |
  BNE CODE_869E80                           ; $869E79 |
  LDA.W #$FF60                              ; $869E7B |
  STA.B $26,X                               ; $869E7E |

CODE_869E80:
  JSR.W CODE_FN_8697FC                      ; $869E80 |
  RTL                                       ; $869E83 |

CODE_869E84:
  LDA.B $32,X                               ; $869E84 |
  BPL CODE_869EB5                           ; $869E86 |
  STZ.B $32,X                               ; $869E88 |
  LDA.B $36,X                               ; $869E8A |
  AND.W #$00FF                              ; $869E8C |
  LDY.W #$0004                              ; $869E8F |
  JSL.L CODE_FL_808E65                      ; $869E92 |
  BEQ CODE_869E99                           ; $869E96 |
  INC A                                     ; $869E98 |

CODE_869E99:
  EOR.W #$FFFF                              ; $869E99 |
  SEC                                       ; $869E9C |
  ADC.W #$0004                              ; $869E9D |
  CMP.B $3A,X                               ; $869EA0 |
  BEQ CODE_869EB5                           ; $869EA2 |
  STA.B $3A,X                               ; $869EA4 |
  CLC                                       ; $869EA6 |
  ADC.W #$8023                              ; $869EA7 |
  JSL.L CODE_FL_86CAEE                      ; $869EAA |
  STZ.B $34,X                               ; $869EAE |
  LDA.W #$0002                              ; $869EB0 |
  STA.B $1A,X                               ; $869EB3 |

CODE_869EB5:
  JSL.L CODE_FL_86C3F8                      ; $869EB5 |
  PHX                                       ; $869EB9 |
  ASL A                                     ; $869EBA |
  TAX                                       ; $869EBB |
  LDA.L PTR16_869EC6,X                      ; $869EBC |
  PLX                                       ; $869EC0 |
  STA.B $00                                 ; $869EC1 |
  JMP.W ($0000)                             ; $869EC3 |

PTR16_869EC6:
  dw CODE_869ED0                            ; $869EC6 |
  dw CODE_869F24                            ; $869EC8 |
  dw CODE_869F04                            ; $869ECA |
  dw CODE_869F25                            ; $869ECC |
  dw CODE_869F5D                            ; $869ECE |

CODE_869ED0:
  LDA.W #$038F                              ; $869ED0 |
  JSL.L CODE_FL_8695CE                      ; $869ED3 |
  BCC CODE_869EDC                           ; $869ED7 |
  JMP.W CODE_JP_869F8A                      ; $869ED9 |

CODE_869EDC:
  LDA.B $18,X                               ; $869EDC |
  STA.W $003A,Y                             ; $869EDE |
  STY.B $3C,X                               ; $869EE1 |
  STX.B $3C,Y                               ; $869EE3 |
  LDA.W #$FFFF                              ; $869EE5 |
  STA.W $0014,Y                             ; $869EE8 |
  PHX                                       ; $869EEB |
  TYX                                       ; $869EEC |
  LDA.W #$8020                              ; $869EED |
  JSL.L CODE_FL_86CAEE                      ; $869EF0 |
  PLX                                       ; $869EF4 |
  LDA.W #$0010                              ; $869EF5 |
  STA.B $36,X                               ; $869EF8 |
  LDY.W #$FFE0                              ; $869EFA |
  LDA.W #$801F                              ; $869EFD |
  JML.L CODE_FL_869881                      ; $869F00 |

CODE_869F04:
  LDA.B $20,X                               ; $869F04 |
  BNE CODE_869F24                           ; $869F06 |
  LDA.W #$0030                              ; $869F08 |
  JSL.L push_sound_queue                    ; $869F0B |
  LDA.B $3A,X                               ; $869F0F |
  CMP.W #$0004                              ; $869F11 |
  BCS CODE_869F46                           ; $869F14 |
  ADC.W #$8020                              ; $869F16 |
  JSL.L CODE_FL_86CAEE                      ; $869F19 |
  LDA.W #$C000                              ; $869F1D |
  STA.B $34,X                               ; $869F20 |
  INC.B $1A,X                               ; $869F22 |

CODE_869F24:
  RTL                                       ; $869F24 |

CODE_869F25:
  LDA.B $20,X                               ; $869F25 |
  BNE CODE_869F45                           ; $869F27 |
  LDA.W #$FFE2                              ; $869F29 |
  STA.B $08                                 ; $869F2C |
  LDA.W #$0008                              ; $869F2E |
  STA.B $0A                                 ; $869F31 |
  LDA.W #$0010                              ; $869F33 |
  LDY.W #$372C                              ; $869F36 |
  JSL.L CODE_FL_8699B9                      ; $869F39 |
  JSL.L CODE_FL_869607                      ; $869F3D |
  BCS CODE_869F45                           ; $869F41 |
  INC.B $20,X                               ; $869F43 |

CODE_869F45:
  RTL                                       ; $869F45 |

CODE_869F46:
  STZ.B $1E,X                               ; $869F46 |
  LDA.W #$000D                              ; $869F48 |
  JSL.L push_sound_queue                    ; $869F4B |
  JSL.L CODE_FL_86C899                      ; $869F4F |
  LDA.W #$001E                              ; $869F53 |
  STA.B $2C,X                               ; $869F56 |
  LDA.W #$0004                              ; $869F58 |
  STA.B $1A,X                               ; $869F5B |

CODE_869F5D:
  LDA.B $2C,X                               ; $869F5D |
  BNE CODE_869F64                           ; $869F5F |
  JMP.W CODE_JP_8699A0                      ; $869F61 |

CODE_869F64:
  LDA.W #$0010                              ; $869F64 |
  JSL.L CODE_FL_86C831                      ; $869F67 |
  LDA.B $20,X                               ; $869F6B |
  BNE CODE_869F24                           ; $869F6D |
  LDA.W #$0004                              ; $869F6F |
  STA.B $20,X                               ; $869F72 |
  TDC                                       ; $869F74 |
  JML.L CODE_FL_B3FC10                      ; $869F75 |

CODE_869F79:
  LDY.B $3C,X                               ; $869F79 |
  LDA.W $0018,Y                             ; $869F7B |
  CMP.B $3A,X                               ; $869F7E |
  BNE CODE_JP_869F8A                        ; $869F80 |
  JSL.L CODE_FL_86C89E                      ; $869F82 |
  JML.L CODE_FL_86C3F8                      ; $869F86 |

CODE_JP_869F8A:
  JML.L CODE_FL_86CA36                      ; $869F8A |

CODE_869F8E:
  JSL.L CODE_FL_86979A                      ; $869F8E |
  JSL.L CODE_FL_86C3F8                      ; $869F92 |
  PHX                                       ; $869F96 |
  ASL A                                     ; $869F97 |
  TAX                                       ; $869F98 |
  LDA.L PTR16_869FA3,X                      ; $869F99 |
  PLX                                       ; $869F9D |
  STA.B $00                                 ; $869F9E |
  JMP.W ($0000)                             ; $869FA0 |

PTR16_869FA3:
  dw CODE_869FA9                            ; $869FA3 |
  dw CODE_869D56                            ; $869FA5 |
  dw CODE_869D6E                            ; $869FA7 |

CODE_869FA9:
  LDY.W #$0391                              ; $869FA9 |
  LDA.W #$8028                              ; $869FAC |
  JSL.L CODE_FL_869D1B                      ; $869FAF |
  LDA.W #$1898                              ; $869FB3 |
  STA.B $04,X                               ; $869FB6 |
  LDA.W #$0004                              ; $869FB8 |
  STA.B $36,X                               ; $869FBB |
  RTL                                       ; $869FBD |

CODE_869FBE:
  JSL.L CODE_FL_86C3F8                      ; $869FBE |
  PHX                                       ; $869FC2 |
  ASL A                                     ; $869FC3 |
  TAX                                       ; $869FC4 |
  LDA.L PTR16_869FCF,X                      ; $869FC5 |
  PLX                                       ; $869FC9 |
  STA.B $00                                 ; $869FCA |
  JMP.W ($0000)                             ; $869FCC |

PTR16_869FCF:
  dw CODE_869FD9                            ; $869FCF |
  dw CODE_869FEC                            ; $869FD1 |
  dw CODE_869FF6                            ; $869FD3 |
  dw CODE_86A003                            ; $869FD5 |
  dw CODE_869FEC                            ; $869FD7 |

CODE_869FD9:
  LDA.B $20,X                               ; $869FD9 |
  BNE CODE_869FEB                           ; $869FDB |
  LDA.W #$8029                              ; $869FDD |
  JSL.L CODE_FL_86CAEE                      ; $869FE0 |
  LDA.W #$1898                              ; $869FE4 |
  STA.B $04,X                               ; $869FE7 |
  INC.B $1A,X                               ; $869FE9 |

CODE_869FEB:
  RTL                                       ; $869FEB |

CODE_869FEC:
  LDA.W #$0002                              ; $869FEC |
  STA.B $1A,X                               ; $869FEF |
  LDA.W #$0096                              ; $869FF1 |
  STA.B $2C,X                               ; $869FF4 |

CODE_869FF6:
  LDA.B $2C,X                               ; $869FF6 |
  BNE CODE_869FEB                           ; $869FF8 |
  INC.B $1A,X                               ; $869FFA |
  LDA.W #$802A                              ; $869FFC |
  JML.L CODE_FL_86CAEE                      ; $869FFF |

CODE_86A003:
  LDY.W #$802B                              ; $86A003 |
  LDA.W #$37CA                              ; $86A006 |
  JMP.W CODE_JP_869A9D                      ; $86A009 |

CODE_86A00C:
  LDA.B $1A,X                               ; $86A00C |
  PHX                                       ; $86A00E |
  ASL A                                     ; $86A00F |
  TAX                                       ; $86A010 |
  LDA.L PTR16_86A01B,X                      ; $86A011 |
  PLX                                       ; $86A015 |
  STA.B $00                                 ; $86A016 |
  JMP.W ($0000)                             ; $86A018 |

PTR16_86A01B:
  dw CODE_86A023                            ; $86A01B |
  dw CODE_86A03A                            ; $86A01D |
  dw CODE_86A03D                            ; $86A01F |
  dw CODE_86A045                            ; $86A021 |

CODE_86A023:
  LDA.B $40,X                               ; $86A023 |
  BEQ CODE_86A02A                           ; $86A025 |
  JMP.W CODE_JP_86A0DD                      ; $86A027 |

CODE_86A02A:
  LDA.W $1934                               ; $86A02A |
  BNE CODE_86A032                           ; $86A02D |
  LDA.W #$80A9                              ; $86A02F |

CODE_86A032:
  STA.B $40,X                               ; $86A032 |
  STZ.B $22,X                               ; $86A034 |
  STZ.B $34,X                               ; $86A036 |
  INC.B $1A,X                               ; $86A038 |

CODE_86A03A:
  INC.B $1A,X                               ; $86A03A |
  RTL                                       ; $86A03C |

CODE_86A03D:
  JSL.L CODE_FL_86A046                      ; $86A03D |
  BCC CODE_86A045                           ; $86A041 |
  INC.B $1A,X                               ; $86A043 |

CODE_86A045:
  RTL                                       ; $86A045 |

CODE_FL_86A046:
  CLC                                       ; $86A046 |
  LDA.W $1F30                               ; $86A047 |
  BEQ CODE_86A04F                           ; $86A04A |
  JMP.W CODE_JP_86A956                      ; $86A04C |

CODE_86A04F:
  STZ.W $0498                               ; $86A04F |
  STZ.W $049A                               ; $86A052 |
  STZ.W $0558                               ; $86A055 |
  STZ.W $055A                               ; $86A058 |
  JML.L CODE_FL_8098FD                      ; $86A05B |

DATA16_86A05F:
  dw $9020,$9023,$9026,$9029                ; $86A05F |
  dw $902C,$902F,$9032,$9035                ; $86A067 |
  dw $9039,$903C,$903F,$9042                ; $86A06F |
  dw $9045,$9048,$904F,$9052                ; $86A077 |
  dw $904C,$9055,$905B,$9058                ; $86A07F |
  dw $905F,$9065,$9068,$906C                ; $86A087 |
  dw $906F,$9072,$9062                      ; $86A08F |

CODE_FL_86A095:
  JSL.L CODE_FL_86A09C                      ; $86A095 |
  STZ.B $46,X                               ; $86A099 |
  RTL                                       ; $86A09B |

CODE_FL_86A09C:
  JSL.L CODE_FL_8CFD8F                      ; $86A09C |
  PHX                                       ; $86A0A0 |
  ASL A                                     ; $86A0A1 |
  TAX                                       ; $86A0A2 |
  LDA.L PTR16_86A0AD,X                      ; $86A0A3 |
  PLX                                       ; $86A0A7 |
  STA.B $00                                 ; $86A0A8 |
  JMP.W ($0000)                             ; $86A0AA |

PTR16_86A0AD:
  dw CODE_JP_86A0B5                         ; $86A0AD |
  dw CODE_FL_86A12B                         ; $86A0AF |
  dw CODE_JP_86A159                         ; $86A0B1 |
  dw CODE_FL_86A162                         ; $86A0B3 |

CODE_JP_86A0B5:
  STZ.W $1C8E                               ; $86A0B5 |
  STZ.W $1C90                               ; $86A0B8 |
  TDC                                       ; $86A0BB |
  STA.L $7E7C5E                             ; $86A0BC |
  LDY.W #$0080                              ; $86A0C0 |
  LDA.B $18,X                               ; $86A0C3 |
  CMP.W #$033C                              ; $86A0C5 |
  BEQ CODE_86A0CD                           ; $86A0C8 |
  LDY.W #$0000                              ; $86A0CA |

CODE_86A0CD:
  STY.B $06,X                               ; $86A0CD |
  LDA.B $40,X                               ; $86A0CF |
  BNE CODE_JP_86A0DD                        ; $86A0D1 |
  LDA.W $1934                               ; $86A0D3 |
  BNE CODE_86A0DB                           ; $86A0D6 |
  LDA.W #$80A9                              ; $86A0D8 |

CODE_86A0DB:
  STA.B $40,X                               ; $86A0DB |

CODE_JP_86A0DD:
  STA.B $3C,X                               ; $86A0DD |
  JSR.W CODE_FN_86A0ED                      ; $86A0DF |
  LDA.B $34,X                               ; $86A0E2 |
  ORA.W #$2000                              ; $86A0E4 |
  STA.B $34,X                               ; $86A0E7 |
  JML.L CODE_FL_86C63A                      ; $86A0E9 |

CODE_FN_86A0ED:
  SEC                                       ; $86A0ED |
  LDA.B $18,X                               ; $86A0EE |
  SBC.W #$0333                              ; $86A0F0 |
  PHX                                       ; $86A0F3 |
  ASL A                                     ; $86A0F4 |
  TAX                                       ; $86A0F5 |
  LDA.L DATA16_86A05F,X                     ; $86A0F6 |
  PLX                                       ; $86A0FA |
  STA.B $3A,X                               ; $86A0FB |
  JSL.L CODE_FL_86CAEE                      ; $86A0FD |
  LDA.W #$1090                              ; $86A101 |
  STA.B $04,X                               ; $86A104 |
  JSL.L CODE_FL_8CFF15                      ; $86A106 |
  LDA.B $4E,X                               ; $86A10A |
  SEP #$20                                  ; $86A10C |
  XBA                                       ; $86A10E |
  AND.B #$7F                                ; $86A10F |
  STA.B $02,X                               ; $86A111 |
  STA.B $03,X                               ; $86A113 |
  XBA                                       ; $86A115 |
  REP #$20                                  ; $86A116 |
  AND.W #$00FF                              ; $86A118 |
  BEQ CODE_86A12A                           ; $86A11B |
  BIT.B $4D,X                               ; $86A11D |
  BPL CODE_86A123                           ; $86A11F |
  STZ.B $14,X                               ; $86A121 |

CODE_86A123:
  AND.W #$0003                              ; $86A123 |
  ORA.B $0D,X                               ; $86A126 |
  STA.B $0D,X                               ; $86A128 |

CODE_86A12A:
  RTS                                       ; $86A12A |

CODE_FL_86A12B:
  LDA.B $20,X                               ; $86A12B |
  BNE CODE_86A139                           ; $86A12D |
  JSR.W CODE_FN_86A9D1                      ; $86A12F |
  BCS CODE_86A139                           ; $86A132 |
  LDA.W #$00B4                              ; $86A134 |
  STA.B $20,X                               ; $86A137 |

CODE_86A139:
  LDA.W #$0002                              ; $86A139 |
  STA.B $00                                 ; $86A13C |
  LDA.L $7E7C16                             ; $86A13E |
  BNE CODE_86A158                           ; $86A142 |
  LDA.B $40,X                               ; $86A144 |
  BNE CODE_86A154                           ; $86A146 |
  LDA.W $1C8E                               ; $86A148 |
  BEQ CODE_86A158                           ; $86A14B |
  STA.B $40,X                               ; $86A14D |
  LDY.W $1C90                               ; $86A14F |
  STY.B $48,X                               ; $86A152 |

CODE_86A154:
  JSL.L CODE_FL_85B0D3                      ; $86A154 |

CODE_86A158:
  RTL                                       ; $86A158 |

CODE_JP_86A159:
  INC.B $1A,X                               ; $86A159 |
  LDA.B $3A,X                               ; $86A15B |
  INC A                                     ; $86A15D |
  JML.L CODE_FL_86CAEE                      ; $86A15E |

CODE_FL_86A162:
  JSL.L CODE_FL_86A046                      ; $86A162 |
  BCS CODE_86A1AC                           ; $86A166 |
  LDA.L $7E7C04                             ; $86A168 |
  CMP.W #$0100                              ; $86A16C |
  BEQ CODE_86A1A5                           ; $86A16F |
  BIT.W #$FFFF                              ; $86A171 |
  BEQ CODE_86A184                           ; $86A174 |
  LDA.B $18,X                               ; $86A176 |
  CMP.W #$0344                              ; $86A178 |
  BNE CODE_86A184                           ; $86A17B |
  LDA.W #$0001                              ; $86A17D |
  STA.L $700328                             ; $86A180 |

CODE_86A184:
  LDA.B $20,X                               ; $86A184 |
  BNE CODE_86A1A3                           ; $86A186 |
  LDA.L $7E7C34                             ; $86A188 |
  CMP.W #$0005                              ; $86A18C |
  BCC CODE_86A1A3                           ; $86A18F |
  TDC                                       ; $86A191 |
  STA.L $7E7C34                             ; $86A192 |
  LDA.B $3A,X                               ; $86A196 |
  INC A                                     ; $86A198 |
  CMP.B $1E,X                               ; $86A199 |
  BNE CODE_86A1A1                           ; $86A19B |
  JSL.L CODE_FL_86CAEE                      ; $86A19D |

CODE_86A1A1:
  INC.B $20,X                               ; $86A1A1 |

CODE_86A1A3:
  CLC                                       ; $86A1A3 |
  RTL                                       ; $86A1A4 |

CODE_86A1A5:
  TDC                                       ; $86A1A5 |
  STA.L $7E7C04                             ; $86A1A6 |
  CLC                                       ; $86A1AA |
  RTL                                       ; $86A1AB |

CODE_86A1AC:
  STZ.B $32,X                               ; $86A1AC |
  STZ.W $1C8E                               ; $86A1AE |
  STZ.B $40,X                               ; $86A1B1 |
  LDA.W #$0001                              ; $86A1B3 |
  STA.B $1A,X                               ; $86A1B6 |
  LDA.B $3A,X                               ; $86A1B8 |
  JSL.L CODE_FL_86CAEE                      ; $86A1BA |
  SEC                                       ; $86A1BE |
  RTL                                       ; $86A1BF |

CODE_86A1C0:
  JSL.L CODE_FL_86A1C7                      ; $86A1C0 |
  STZ.B $46,X                               ; $86A1C4 |
  RTL                                       ; $86A1C6 |

CODE_FL_86A1C7:
  JSL.L CODE_FL_8CFD8F                      ; $86A1C7 |
  PHX                                       ; $86A1CB |
  ASL A                                     ; $86A1CC |
  TAX                                       ; $86A1CD |
  LDA.L PTR16_86A1D8,X                      ; $86A1CE |
  PLX                                       ; $86A1D2 |
  STA.B $00                                 ; $86A1D3 |
  JMP.W ($0000)                             ; $86A1D5 |

PTR16_86A1D8:
  dw CODE_86A1DC                            ; $86A1D8 |
  dw CODE_86A158                            ; $86A1DA |

CODE_86A1DC:
  JSR.W CODE_FN_86A0ED                      ; $86A1DC |
  JMP.W CODE_JP_86A719                      ; $86A1DF |

CODE_86A1E2:
  LDA.W #$0080                              ; $86A1E2 |
  STA.B $06,X                               ; $86A1E5 |
  JMP.W CODE_FL_86A095                      ; $86A1E7 |

CODE_86A1EA:
  JSR.W CODE_FN_86A20E                      ; $86A1EA |
  JSL.L CODE_FL_86A095                      ; $86A1ED |
  LDA.L $7E7C04                             ; $86A1F1 |
  BEQ CODE_86A203                           ; $86A1F5 |
  LDY.B $C0                                 ; $86A1F7 |
  CPY.W #$0002                              ; $86A1F9 |
  BEQ CODE_86A204                           ; $86A1FC |
  CPY.W #$0006                              ; $86A1FE |
  BEQ CODE_86A209                           ; $86A201 |

CODE_86A203:
  RTL                                       ; $86A203 |

CODE_86A204:
  STA.L $700312                             ; $86A204 |
  RTL                                       ; $86A208 |

CODE_86A209:
  STA.L $700322                             ; $86A209 |
  RTL                                       ; $86A20D |

CODE_FN_86A20E:
  LDA.B $C0                                 ; $86A20E |
  CMP.W #$0002                              ; $86A210 |
  BEQ CODE_86A220                           ; $86A213 |
  CMP.W #$0003                              ; $86A215 |
  BEQ CODE_86A229                           ; $86A218 |
  CMP.W #$0006                              ; $86A21A |
  BEQ CODE_86A237                           ; $86A21D |
  RTS                                       ; $86A21F |

CODE_86A220:
  LDA.L $700312                             ; $86A220 |
  STA.L $7E7C06                             ; $86A224 |

CODE_86A228:
  RTS                                       ; $86A228 |

CODE_86A229:
  LDA.W #$0705                              ; $86A229 |
  JSL.L CODE_FL_80A634                      ; $86A22C |
  BCS CODE_86A228                           ; $86A230 |
  PLA                                       ; $86A232 |
  JML.L CODE_FL_86CA57                      ; $86A233 |

CODE_86A237:
  LDA.L $700322                             ; $86A237 |
  STA.L $7E7C06                             ; $86A23B |
  RTS                                       ; $86A23F |

CODE_86A240:
  LDA.W #$00C8                              ; $86A240 |
  JSL.L CODE_FL_86A253                      ; $86A243 |
  SEP #$20                                  ; $86A247 |
  LDA.B #$40                                ; $86A249 |
  STA.B $06,X                               ; $86A24B |
  REP #$20                                  ; $86A24D |
  RTL                                       ; $86A24F |

CODE_86A250:
  LDA.W #$0078                              ; $86A250 |

CODE_FL_86A253:
  STA.L $7E7C76                             ; $86A253 |
  LDA.W #$0050                              ; $86A257 |
  STA.L $7E7C78                             ; $86A25A |
  JSR.W CODE_FN_86A3C5                      ; $86A25E |
  JSL.L CODE_FL_8CFD8F                      ; $86A261 |
  JSL.L CODE_FL_86A273                      ; $86A265 |

CODE_FL_86A269:
  LDA.W $1C92                               ; $86A269 |
  BEQ CODE_86A272                           ; $86A26C |
  JSL.L CODE_FL_80A90E                      ; $86A26E |

CODE_86A272:
  RTL                                       ; $86A272 |

CODE_FL_86A273:
  PHX                                       ; $86A273 |
  ASL A                                     ; $86A274 |
  TAX                                       ; $86A275 |
  LDA.L PTR16_86A280,X                      ; $86A276 |
  PLX                                       ; $86A27A |
  STA.B $00                                 ; $86A27B |
  JMP.W ($0000)                             ; $86A27D |

PTR16_86A280:
  dw CODE_JP_86A0B5                         ; $86A280 |
  dw CODE_FL_86A12B                         ; $86A282 |
  dw CODE_86A292                            ; $86A284 |
  dw CODE_86A295                            ; $86A286 |
  dw CODE_86A334                            ; $86A288 |
  dw CODE_86A34A                            ; $86A28A |
  dw CODE_86A35D                            ; $86A28C |
  dw CODE_86A371                            ; $86A28E |
  dw CODE_86A38B                            ; $86A290 |

CODE_86A292:
  JMP.W CODE_JP_86A159                      ; $86A292 |

CODE_86A295:
  JSL.L CODE_FL_86A162                      ; $86A295 |
  LDA.L $7E7C16                             ; $86A299 |
  BEQ CODE_86A2A5                           ; $86A29D |
  LDA.L $7E7C02                             ; $86A29F |
  BNE CODE_86A2A6                           ; $86A2A3 |

CODE_86A2A5:
  RTL                                       ; $86A2A5 |

CODE_86A2A6:
  JSL.L CODE_FL_86A269                      ; $86A2A6 |
  SEC                                       ; $86A2AA |
  LDA.L $7E7C02                             ; $86A2AB |
  SBC.W #$0064                              ; $86A2AF |
  BMI CODE_86A30F                           ; $86A2B2 |
  STA.B $00                                 ; $86A2B4 |
  ASL A                                     ; $86A2B6 |
  ASL A                                     ; $86A2B7 |
  ASL A                                     ; $86A2B8 |
  ADC.B $00                                 ; $86A2B9 |
  LDY.B $18,X                               ; $86A2BB |
  CPY.W #$034D                              ; $86A2BD |
  BNE CODE_86A2C6                           ; $86A2C0 |
  CLC                                       ; $86A2C2 |
  ADC.W #$0014                              ; $86A2C3 |

CODE_86A2C6:
  STA.B $00                                 ; $86A2C6 |
  PHX                                       ; $86A2C8 |
  TAX                                       ; $86A2C9 |
  LDA.L DATA8_84F6A6,X                      ; $86A2CA |
  TAY                                       ; $86A2CE |
  CMP.W #$0110                              ; $86A2CF |
  BNE CODE_86A2DD                           ; $86A2D2 |
  LDA.L $700794                             ; $86A2D4 |
  BEQ CODE_86A2DD                           ; $86A2D8 |
  LDY.W #$012A                              ; $86A2DA |

CODE_86A2DD:
  STY.W $19C4                               ; $86A2DD |
  LDA.L DATA8_84F6A8,X                      ; $86A2E0 |
  STA.W $19BE                               ; $86A2E4 |
  CLC                                       ; $86A2E7 |
  LDA.L DATA8_84F6AA,X                      ; $86A2E8 |
  ADC.W #$0018                              ; $86A2EC |
  STA.W $19C0                               ; $86A2EF |
  LDA.L DATA8_84F6AC,X                      ; $86A2F2 |
  AND.W #$007F                              ; $86A2F6 |
  STA.B $C0                                 ; $86A2F9 |
  LDA.L DATA8_84F6A4,X                      ; $86A2FB |
  PLX                                       ; $86A2FF |
  STA.B $40,X                               ; $86A300 |
  LDA.W #$0114                              ; $86A302 |
  JSL.L CODE_FL_8089BD                      ; $86A305 |
  INC.B $1A,X                               ; $86A309 |
  JML.L CODE_JL_87E3F2                      ; $86A30B |

CODE_86A30F:
  JSL.L CODE_FL_96FBB9                      ; $86A30F |
  TDC                                       ; $86A313 |
  STA.L $7E7C02                             ; $86A314 |
  LDA.W #$0350                              ; $86A318 |
  JSL.L CODE_FL_86C9C5                      ; $86A31B |
  BCS CODE_86A333                           ; $86A31F |
  TDC                                       ; $86A321 |
  STA.W $0022,Y                             ; $86A322 |
  LDA.L $7002EA                             ; $86A325 |
  STA.W $0009,Y                             ; $86A329 |
  LDA.L $7002EC                             ; $86A32C |
  STA.W $000D,Y                             ; $86A330 |

CODE_86A333:
  RTL                                       ; $86A333 |

CODE_86A334:
  JSL.L CODE_FL_87E3F3                      ; $86A334 |
  BCC CODE_86A35C                           ; $86A338 |
  PHX                                       ; $86A33A |
  JSL.L CODE_FL_80C213                      ; $86A33B |
  PLX                                       ; $86A33F |
  INC.B $1A,X                               ; $86A340 |
  JSL.L CODE_FL_8B8030                      ; $86A342 |
  JML.L CODE_JL_87E42E                      ; $86A346 |

CODE_86A34A:
  LDA.W $1F30                               ; $86A34A |
  BNE CODE_86A35C                           ; $86A34D |
  PHX                                       ; $86A34F |
  JSL.L CODE_FL_83B27C                      ; $86A350 |
  PLX                                       ; $86A354 |
  LDA.W #$0030                              ; $86A355 |
  STA.B $2C,X                               ; $86A358 |
  INC.B $1A,X                               ; $86A35A |

CODE_86A35C:
  RTL                                       ; $86A35C |

CODE_86A35D:
  JSL.L CODE_FL_86C70D                      ; $86A35D |
  PHX                                       ; $86A361 |
  JSL.L CODE_FL_80C222                      ; $86A362 |
  PLX                                       ; $86A366 |
  LDA.W #$0114                              ; $86A367 |
  JSL.L CODE_FL_8089BD                      ; $86A36A |
  INC.B $1A,X                               ; $86A36E |
  RTL                                       ; $86A370 |

CODE_86A371:
  JSL.L CODE_FL_87E413                      ; $86A371 |
  BCC CODE_86A35C                           ; $86A375 |
  TDC                                       ; $86A377 |
  STA.L $7E7C02                             ; $86A378 |
  INC.B $1A,X                               ; $86A37C |
  STZ.W $1FAA                               ; $86A37E |
  STZ.B $E4                                 ; $86A381 |
  JSL.L CODE_FL_8B8067                      ; $86A383 |
  JML.L CODE_JL_87E42E                      ; $86A387 |

CODE_86A38B:
  RTL                                       ; $86A38B |

CODE_FN_86A38C:
  PHX                                       ; $86A38C |
  LDA.W #$03FB                              ; $86A38D |
  STA.B $08                                 ; $86A390 |
  LDA.B $40,X                               ; $86A392 |
  STA.B $0A                                 ; $86A394 |
  LDA.B $18,X                               ; $86A396 |
  LDX.W #$FFF7                              ; $86A398 |
  CMP.W #$034D                              ; $86A39B |
  BNE CODE_86A3A8                           ; $86A39E |
  LDA.W #$03E7                              ; $86A3A0 |
  STA.B $08                                 ; $86A3A3 |
  LDX.W #$000B                              ; $86A3A5 |

CODE_86A3A8:
  INC.B $08                                 ; $86A3A8 |
  CLC                                       ; $86A3AA |
  TXA                                       ; $86A3AB |
  ADC.W #$0009                              ; $86A3AC |
  TAX                                       ; $86A3AF |
  LDA.L DATA8_84F6A4,X                      ; $86A3B0 |
  TAY                                       ; $86A3B4 |
  INY                                       ; $86A3B5 |
  BEQ CODE_86A3C0                           ; $86A3B6 |
  CMP.B $0A                                 ; $86A3B8 |
  BNE CODE_86A3A8                           ; $86A3BA |
  PLX                                       ; $86A3BC |
  LDA.B $08                                 ; $86A3BD |
  RTS                                       ; $86A3BF |

CODE_86A3C0:
  PLX                                       ; $86A3C0 |
  STZ.B $08                                 ; $86A3C1 |
  TDC                                       ; $86A3C3 |
  RTS                                       ; $86A3C4 |

CODE_FN_86A3C5:
  STZ.W $1C92                               ; $86A3C5 |
  STZ.B $18                                 ; $86A3C8 |
  JSR.W CODE_FN_86A38C                      ; $86A3CA |
  BEQ CODE_86A3D6                           ; $86A3CD |
  STA.W $1C92                               ; $86A3CF |
  JSL.L CODE_FL_80ABA6                      ; $86A3D2 |

CODE_86A3D6:
  PHX                                       ; $86A3D6 |
  LDA.W #$03FC                              ; $86A3D7 |
  STA.B $0A                                 ; $86A3DA |
  LDA.B $18,X                               ; $86A3DC |
  LDX.W #$FFF7                              ; $86A3DE |
  CMP.W #$034D                              ; $86A3E1 |
  BNE CODE_86A3FB                           ; $86A3E4 |
  LDA.W #$03E8                              ; $86A3E6 |
  STA.B $0A                                 ; $86A3E9 |
  LDX.W #$000B                              ; $86A3EB |
  LDA.L $700780                             ; $86A3EE |
  ORA.B $C0                                 ; $86A3F2 |
  BNE CODE_86A3FB                           ; $86A3F4 |
  LDA.W #$00FF                              ; $86A3F6 |
  BRA CODE_86A426                           ; $86A3F9 |

CODE_86A3FB:
  STZ.B $08                                 ; $86A3FB |

CODE_86A3FD:
  CLC                                       ; $86A3FD |
  TXA                                       ; $86A3FE |
  ADC.W #$0009                              ; $86A3FF |
  STA.B $0C                                 ; $86A402 |
  LDA.B $0A                                 ; $86A404 |
  INC.B $0A                                 ; $86A406 |
  JSL.L CODE_FL_80A634                      ; $86A408 |
  BNE CODE_86A424                           ; $86A40C |
  LDX.B $0C                                 ; $86A40E |
  BCC CODE_86A41D                           ; $86A410 |
  LDA.L DATA8_84F6A6,X                      ; $86A412 |
  CMP.W #$012A                              ; $86A416 |
  BEQ CODE_86A41D                           ; $86A419 |
  INC.B $08                                 ; $86A41B |

CODE_86A41D:
  LDA.L DATA8_84F6A4,X                      ; $86A41D |
  INC A                                     ; $86A421 |
  BNE CODE_86A3FD                           ; $86A422 |

CODE_86A424:
  LDA.B $08                                 ; $86A424 |

CODE_86A426:
  STA.L $7E7C06                             ; $86A426 |
  PLX                                       ; $86A42A |
  RTS                                       ; $86A42B |

CODE_86A42C:
  JSL.L CODE_FL_86C3A3                      ; $86A42C |
  LDA.B $1A,X                               ; $86A430 |
  BNE CODE_86A438                           ; $86A432 |
  JML.L CODE_FL_8CD7CB                      ; $86A434 |

CODE_86A438:
  JSL.L CODE_FL_8CD7DA                      ; $86A438 |
  JSL.L CODE_FL_86C70D                      ; $86A43C |
  JML.L CODE_FL_86CA57                      ; $86A440 |

CODE_86A444:
  JSL.L CODE_FL_86A44B                      ; $86A444 |
  STZ.B $46,X                               ; $86A448 |
  RTL                                       ; $86A44A |

CODE_FL_86A44B:
  JSL.L CODE_FL_8CFD8F                      ; $86A44B |
  PHX                                       ; $86A44F |
  ASL A                                     ; $86A450 |
  TAX                                       ; $86A451 |
  LDA.L PTR16_86A45C,X                      ; $86A452 |
  PLX                                       ; $86A456 |
  STA.B $00                                 ; $86A457 |
  JMP.W ($0000)                             ; $86A459 |

PTR16_86A45C:
  dw CODE_FL_86A466                         ; $86A45C |
  dw CODE_86A46E                            ; $86A45E |
  dw CODE_JP_86A159                         ; $86A460 |
  dw CODE_86A4B0                            ; $86A462 |
  dw CODE_86A478                            ; $86A464 |

CODE_FL_86A466:
  TDC                                       ; $86A466 |
  STA.L $7E7C04                             ; $86A467 |
  JMP.W CODE_JP_86A0B5                      ; $86A46B |

CODE_86A46E:
  JSL.L CODE_FL_86A12B                      ; $86A46E |
  LDA.L $7E7C04                             ; $86A472 |
  BNE CODE_86A479                           ; $86A476 |

CODE_86A478:
  RTL                                       ; $86A478 |

CODE_86A479:
  CMP.W #$0005                              ; $86A479 |
  BCS CODE_86A478                           ; $86A47C |
  PHX                                       ; $86A47E |
  JSL.L CODE_FL_8B80CE                      ; $86A47F |
  JSL.L CODE_FL_86A9F9                      ; $86A483 |
  JSL.L CODE_FL_83852F                      ; $86A487 |
  LDA.B $C0                                 ; $86A48B |
  STA.L $7E7C06                             ; $86A48D |
  LDA.L $7E7C04                             ; $86A491 |
  ASL A                                     ; $86A495 |
  TAX                                       ; $86A496 |
  LDA.L LOOSE_OP_86A4CA,X                   ; $86A497 |
  JSL.L CODE_FL_80E9EA                      ; $86A49B |
  JSL.L CODE_FL_84801F                      ; $86A49F |
  JSL.L CODE_FL_80893F                      ; $86A4A3 |
  STZ.B $E4                                 ; $86A4A7 |
  PLX                                       ; $86A4A9 |
  LDA.W #$0004                              ; $86A4AA |
  STA.B $1A,X                               ; $86A4AD |
  RTL                                       ; $86A4AF |

CODE_86A4B0:
  JSL.L CODE_FL_86A162                      ; $86A4B0 |
  LDA.L $7E7C02                             ; $86A4B4 |
  BEQ CODE_86A4CB                           ; $86A4B8 |
  JSL.L CODE_FL_96FE20                      ; $86A4BA |
  LDA.B $A6                                 ; $86A4BE |
  BEQ CODE_86A4C6                           ; $86A4C0 |
  JSL.L CODE_FL_96FDE2                      ; $86A4C2 |

CODE_86A4C6:
  TDC                                       ; $86A4C6 |
  STA.L $7E7C02                             ; $86A4C7 |

CODE_86A4CB:
  RTL                                       ; $86A4CB |

  dw LOOSE_OP_86F618                        ; $86A4CC |
  dw CODE_86F61C                            ; $86A4CE |
  dw LOOSE_OP_86F620                        ; $86A4D0 |
  dw CODE_86F5D4                            ; $86A4D2 |

CODE_86A4D4:
  JSL.L CODE_FL_86A4DB                      ; $86A4D4 |
  STZ.B $46,X                               ; $86A4D8 |
  RTL                                       ; $86A4DA |

CODE_FL_86A4DB:
  JSL.L CODE_FL_8CFD8F                      ; $86A4DB |
  PHX                                       ; $86A4DF |
  ASL A                                     ; $86A4E0 |
  TAX                                       ; $86A4E1 |
  LDA.L PTR16_86A4EC,X                      ; $86A4E2 |
  PLX                                       ; $86A4E6 |
  STA.B $00                                 ; $86A4E7 |
  JMP.W ($0000)                             ; $86A4E9 |

PTR16_86A4EC:
  dw CODE_86A4F6                            ; $86A4EC |
  dw CODE_86A504                            ; $86A4EE |
  dw CODE_JP_86A159                         ; $86A4F0 |
  dw CODE_86A510                            ; $86A4F2 |
  dw CODE_86A478                            ; $86A4F4 |

CODE_86A4F6:
  JSL.L CODE_FL_86A466                      ; $86A4F6 |
  LDA.W #$0001                              ; $86A4FA |
  STA.L $7E7C5E                             ; $86A4FD |
  STA.B $E4                                 ; $86A501 |
  RTL                                       ; $86A503 |

CODE_86A504:
  JSL.L CODE_FL_86A5AA                      ; $86A504 |
  LDA.B $1A,X                               ; $86A508 |
  INC A                                     ; $86A50A |
  JSL.L CODE_FL_85B065                      ; $86A50B |
  RTL                                       ; $86A50F |

CODE_86A510:
  LDA.B $40,X                               ; $86A510 |
  PHA                                       ; $86A512 |
  JSL.L CODE_FL_86A162                      ; $86A513 |
  PLY                                       ; $86A517 |
  STY.B $40,X                               ; $86A518 |
  BCC CODE_86A58D                           ; $86A51A |
  TDC                                       ; $86A51C |
  STA.L $7E7C08                             ; $86A51D |
  TYA                                       ; $86A521 |
  JSL.L CODE_FL_86A59D                      ; $86A522 |
  BMI CODE_86A58D                           ; $86A526 |
  LDA.L $7E7C04                             ; $86A528 |
  BEQ CODE_86A58D                           ; $86A52C |
  DEC A                                     ; $86A52E |
  BNE CODE_FL_86A58E                        ; $86A52F |
  JSL.L CODE_FL_8483B9                      ; $86A531 |
  LDA.W LOOSE_OP_00CE6B,Y                   ; $86A535 |
  PHX                                       ; $86A538 |
  PHY                                       ; $86A539 |
  JSL.L CODE_FL_80E9EA                      ; $86A53A |
  JSL.L CODE_FL_848000                      ; $86A53E |
  STZ.B $E4                                 ; $86A542 |
  TDC                                       ; $86A544 |
  STA.L $7E7C06                             ; $86A545 |
  LDA.W #$00F0                              ; $86A549 |
  STA.W $1C6C                               ; $86A54C |
  LDA.W #$0170                              ; $86A54F |
  STA.W $1C68                               ; $86A552 |
  PLY                                       ; $86A555 |
  PLX                                       ; $86A556 |
  JSL.L CODE_FL_86A58E                      ; $86A557 |
  LDA.W #$0004                              ; $86A55B |
  STA.B $1A,X                               ; $86A55E |
  LDA.W LOOSE_OP_00CE5F,Y                   ; $86A560 |

CODE_FL_86A563:
  PHY                                       ; $86A563 |
  TAY                                       ; $86A564 |
  LDA.W $0492                               ; $86A565 |
  BIT.W #$0010                              ; $86A568 |
  BNE CODE_86A572                           ; $86A56B |
  CPY.W $0418                               ; $86A56D |
  BEQ CODE_86A578                           ; $86A570 |

CODE_86A572:
  STZ.W $0418                               ; $86A572 |
  STZ.W $0400                               ; $86A575 |

CODE_86A578:
  LDA.W $0552                               ; $86A578 |
  BIT.W #$0010                              ; $86A57B |
  BNE CODE_86A585                           ; $86A57E |
  CPY.W $04D8                               ; $86A580 |
  BEQ CODE_86A58B                           ; $86A583 |

CODE_86A585:
  STZ.W $04D8                               ; $86A585 |
  STZ.W $04C0                               ; $86A588 |

CODE_86A58B:
  TYA                                       ; $86A58B |
  PLY                                       ; $86A58C |

CODE_86A58D:
  RTL                                       ; $86A58D |

CODE_FL_86A58E:
  PHX                                       ; $86A58E |
  LDX.W CODE_00CE71,Y                       ; $86A58F |
  LDA.W #$0001                              ; $86A592 |
  STA.L $700200,X                           ; $86A595 |
  PLX                                       ; $86A599 |
  RTL                                       ; $86A59A |

CODE_FL_86A59B:
  LDA.B $40,X                               ; $86A59B |

CODE_FL_86A59D:
  LDY.W #$0004                              ; $86A59D |

CODE_86A5A0:
  CMP.W CODE_00CE65,Y                       ; $86A5A0 |
  BEQ CODE_86A5A9                           ; $86A5A3 |
  DEY                                       ; $86A5A5 |
  DEY                                       ; $86A5A6 |
  BPL CODE_86A5A0                           ; $86A5A7 |

CODE_86A5A9:
  RTL                                       ; $86A5A9 |

CODE_FL_86A5AA:
  LDA.L $7E7C08                             ; $86A5AA |
  CMP.W #$0063                              ; $86A5AE |
  BCC CODE_86A5B8                           ; $86A5B1 |
  CMP.W #$0067                              ; $86A5B3 |
  BCC CODE_86A5D1                           ; $86A5B6 |

CODE_86A5B8:
  JSL.L CODE_FL_86A59B                      ; $86A5B8 |
  BMI CODE_86A5D1                           ; $86A5BC |
  LDA.W CODE_00CE71,Y                       ; $86A5BE |
  PHX                                       ; $86A5C1 |
  TAX                                       ; $86A5C2 |
  LDA.L $700200,X                           ; $86A5C3 |
  BEQ CODE_86A5CC                           ; $86A5C7 |
  LDA.W #$00FF                              ; $86A5C9 |

CODE_86A5CC:
  STA.L $7E7C06                             ; $86A5CC |
  PLX                                       ; $86A5D0 |

CODE_86A5D1:
  RTL                                       ; $86A5D1 |

CODE_86A5D2:
  JSL.L CODE_FL_86C3F8                      ; $86A5D2 |
  PHX                                       ; $86A5D6 |
  ASL A                                     ; $86A5D7 |
  TAX                                       ; $86A5D8 |
  LDA.L PTR16_86A5E3,X                      ; $86A5D9 |
  PLX                                       ; $86A5DD |
  STA.B $00                                 ; $86A5DE |
  JMP.W ($0000)                             ; $86A5E0 |

PTR16_86A5E3:
  dw CODE_86A5E7                            ; $86A5E3 |
  dw CODE_86A661                            ; $86A5E5 |

CODE_86A5E7:
  INC.B $1A,X                               ; $86A5E7 |
  LDA.B $4E,X                               ; $86A5E9 |
  AND.W #$00FF                              ; $86A5EB |
  CMP.W #$0011                              ; $86A5EE |
  BNE CODE_86A5FA                           ; $86A5F1 |
  DEC.B $4E,X                               ; $86A5F3 |
  LDA.W #$00F0                              ; $86A5F5 |
  STA.B $06,X                               ; $86A5F8 |

CODE_86A5FA:
  LDA.W #$1880                              ; $86A5FA |
  STA.B $34,X                               ; $86A5FD |
  LDA.W #$0006                              ; $86A5FF |
  STA.B $2E,X                               ; $86A602 |
  STA.B $30,X                               ; $86A604 |
  LDA.W #$C000                              ; $86A606 |
  STA.B $22,X                               ; $86A609 |
  LDY.B $4E,X                               ; $86A60B |
  TYA                                       ; $86A60D |
  AND.W #$00FF                              ; $86A60E |
  CMP.W #$0012                              ; $86A611 |
  BEQ CODE_86A624                           ; $86A614 |
  CMP.W #$0010                              ; $86A616 |
  BNE CODE_86A632                           ; $86A619 |
  LDA.W #$0002                              ; $86A61B |
  ORA.B $0D,X                               ; $86A61E |
  STA.B $0D,X                               ; $86A620 |
  BRA CODE_86A632                           ; $86A622 |

CODE_86A624:
  LDA.W #$0100                              ; $86A624 |
  ORA.B $22,X                               ; $86A627 |
  STA.B $22,X                               ; $86A629 |
  LDA.W #$0002                              ; $86A62B |
  ORA.B $09,X                               ; $86A62E |
  STA.B $09,X                               ; $86A630 |

CODE_86A632:
  TYA                                       ; $86A632 |
  SEP #$20                                  ; $86A633 |
  XBA                                       ; $86A635 |
  AND.B #$7F                                ; $86A636 |
  STA.B $02,X                               ; $86A638 |
  STA.B $03,X                               ; $86A63A |
  XBA                                       ; $86A63C |
  REP #$20                                  ; $86A63D |
  PHX                                       ; $86A63F |
  AND.W #$00FF                              ; $86A640 |
  ASL A                                     ; $86A643 |
  TAX                                       ; $86A644 |
  LDA.L DATA16_86A666,X                     ; $86A645 |
  TAY                                       ; $86A649 |
  PLX                                       ; $86A64A |
  CPX.W $1B78                               ; $86A64B |
  BCC CODE_FL_86A65C                        ; $86A64E |
  CPX.W $1B7A                               ; $86A650 |
  BEQ CODE_86A657                           ; $86A653 |
  BCS CODE_FL_86A65C                        ; $86A655 |

CODE_86A657:
  LDA.W #$FFFF                              ; $86A657 |
  STA.B $14,X                               ; $86A65A |

CODE_FL_86A65C:
  TYA                                       ; $86A65C |
  BMI CODE_86A662                           ; $86A65D |
  STA.B $00,X                               ; $86A65F |

CODE_86A661:
  RTL                                       ; $86A661 |

CODE_86A662:
  JML.L CODE_FL_86CAEE                      ; $86A662 |

DATA16_86A666:
  dw $3000,$3008,$300C,$3010                ; $86A666 |
  dw $3012,$3014,$3018,$301A                ; $86A66E |
  dw $301C,$3020,$9038,$320A                ; $86A676 |
  dw $3200,$3200,$3200,$3208                ; $86A67E |
  dw $904B,$904B,$905E,$3318                ; $86A686 |
  dw $331A,$3322,$3200,$320C                ; $86A68E |
  dw $3218,$3220,$3224                      ; $86A696 |

CODE_86A69C:
  JSL.L CODE_FL_86C3F8                      ; $86A69C |
  PHX                                       ; $86A6A0 |
  ASL A                                     ; $86A6A1 |
  TAX                                       ; $86A6A2 |
  LDA.L PTR16_86A6AD,X                      ; $86A6A3 |
  PLX                                       ; $86A6A7 |
  STA.B $00                                 ; $86A6A8 |
  JMP.W ($0000)                             ; $86A6AA |

PTR16_86A6AD:
  dw CODE_86A6B5                            ; $86A6AD |
  dw CODE_86A724                            ; $86A6AF |
  dw CODE_86A72C                            ; $86A6B1 |
  dw CODE_86A73A                            ; $86A6B3 |

CODE_86A6B5:
  JSR.W CODE_FN_86A20E                      ; $86A6B5 |
  LDA.W #$1880                              ; $86A6B8 |
  STA.B $34,X                               ; $86A6BB |
  LDA.W #$C000                              ; $86A6BD |
  STA.B $22,X                               ; $86A6C0 |
  LDA.B $C0                                 ; $86A6C2 |
  AND.W #$00FF                              ; $86A6C4 |
  STA.B $00                                 ; $86A6C7 |
  ASL A                                     ; $86A6C9 |
  ADC.B $00                                 ; $86A6CA |
  ADC.B $4E,X                               ; $86A6CC |
  PHX                                       ; $86A6CE |
  TAX                                       ; $86A6CF |
  LDA.L DATA16_86A788,X                     ; $86A6D0 |
  AND.W #$00FF                              ; $86A6D4 |
  PLX                                       ; $86A6D7 |
  STA.B $4E,X                               ; $86A6D8 |
  LDA.B $4E,X                               ; $86A6DA |
  CMP.W #$0003                              ; $86A6DC |
  BEQ CODE_86A6E6                           ; $86A6DF |
  CMP.W #$0004                              ; $86A6E1 |
  BNE CODE_86A6FC                           ; $86A6E4 |

CODE_86A6E6:
  SEP #$20                                  ; $86A6E6 |
  LDA.B #$46                                ; $86A6E8 |
  STA.B $02,X                               ; $86A6EA |
  STA.B $03,X                               ; $86A6EC |
  REP #$20                                  ; $86A6EE |
  PHX                                       ; $86A6F0 |
  LDA.W #$001C                              ; $86A6F1 |
  LDY.W #$F08C                              ; $86A6F4 |
  JSL.L CODE_FL_80C2BA                      ; $86A6F7 |
  PLX                                       ; $86A6FB |

CODE_86A6FC:
  LDA.B $4E,X                               ; $86A6FC |
  PHX                                       ; $86A6FE |
  AND.W #$00FF                              ; $86A6FF |
  ASL A                                     ; $86A702 |
  ASL A                                     ; $86A703 |
  TAX                                       ; $86A704 |
  LDA.L DATA16_86A742,X                     ; $86A705 |
  TAY                                       ; $86A709 |
  LDA.L DATA16_86A740,X                     ; $86A70A |
  PLX                                       ; $86A70E |
  STA.B $40,X                               ; $86A70F |
  JSL.L CODE_FL_86A65C                      ; $86A711 |
  JSL.L CODE_FL_85B01E                      ; $86A715 |

CODE_JP_86A719:
  LDA.B $34,X                               ; $86A719 |
  ORA.W #$2000                              ; $86A71B |
  STA.B $34,X                               ; $86A71E |
  JML.L CODE_FL_86C63A                      ; $86A720 |

CODE_86A724:
  LDA.W #$0002                              ; $86A724 |
  JSL.L CODE_FL_85B065                      ; $86A727 |
  RTL                                       ; $86A72B |

CODE_86A72C:
  LDA.B $40,X                               ; $86A72C |
  STA.W $1C8E                               ; $86A72E |
  LDA.B ($48,X)                             ; $86A731 |
  STA.W $1C90                               ; $86A733 |
  STZ.B $32,X                               ; $86A736 |
  INC.B $1A,X                               ; $86A738 |

CODE_86A73A:
  LDA.W #$0001                              ; $86A73A |
  STA.B $1A,X                               ; $86A73D |
  RTL                                       ; $86A73F |

DATA16_86A740:
  dw $E59B                                  ; $86A740 |

DATA16_86A742:
  dw $330C,$E534,$3300,$E5DF                ; $86A742 |
  dw $3318,$E754,$3300,$E648                ; $86A74A |
  dw $3312,$E6C4,$332C,$E70D                ; $86A752 |
  dw $334E,$E7C3,$331E,$E80C                ; $86A75A |
  dw $333E,$E853,$3382,$E8C3                ; $86A762 |
  dw $336E,$E90B,$3378,$E94E                ; $86A76A |
  dw $3360,$E993,$339A,$E9D2                ; $86A772 |
  dw $33A8,$EA0F,$338E,$EA54                ; $86A77A |
  dw $33CC,$DDB4,$33B4                      ; $86A782 |

DATA16_86A788:
  dw $0100,$0B02,$0B11,$040B                ; $86A788 |
  dw $1003,$0F0D,$0D0A,$0A07                ; $86A790 |
  dw $050D,$0A08,$0D05,$0609                ; $86A798 |
  dw $1009,$0A0C,$050D                      ; $86A7A0 |

CODE_86A7A6:
  LDA.W #$8001                              ; $86A7A6 |
  STA.B $E4                                 ; $86A7A9 |
  STZ.W $0400                               ; $86A7AB |
  STZ.W $04C0                               ; $86A7AE |
  JSL.L CODE_FL_86C3A3                      ; $86A7B1 |
  JSL.L CODE_FL_97FC80                      ; $86A7B5 |
  LDA.B $1A,X                               ; $86A7B9 |
  PHX                                       ; $86A7BB |
  ASL A                                     ; $86A7BC |
  TAX                                       ; $86A7BD |
  LDA.L PTR16_86A7C8,X                      ; $86A7BE |
  PLX                                       ; $86A7C2 |
  STA.B $00                                 ; $86A7C3 |
  JMP.W ($0000)                             ; $86A7C5 |

PTR16_86A7C8:
  dw CODE_86A7D0                            ; $86A7C8 |
  dw CODE_86A8AB                            ; $86A7CA |
  dw CODE_86A8F6                            ; $86A7CC |
  dw CODE_86A90E                            ; $86A7CE |

CODE_86A7D0:
  LDY.W #$0000                              ; $86A7D0 |
  LDA.W $0418                               ; $86A7D3 |
  BEQ CODE_86A7D9                           ; $86A7D6 |
  INY                                       ; $86A7D8 |

CODE_86A7D9:
  LDA.W $04D8                               ; $86A7D9 |
  BEQ CODE_86A7DF                           ; $86A7DC |
  INY                                       ; $86A7DE |

CODE_86A7DF:
  LDA.B $4E,X                               ; $86A7DF |
  AND.W #$00FF                              ; $86A7E1 |
  BEQ CODE_86A7E9                           ; $86A7E4 |
  JMP.W CODE_JP_86A869                      ; $86A7E6 |

CODE_86A7E9:
  CPY.W #$0002                              ; $86A7E9 |
  BNE CODE_86A7F1                           ; $86A7EC |
  JMP.W CODE_JP_86A887                      ; $86A7EE |

CODE_86A7F1:
  TYA                                       ; $86A7F1 |
  BEQ CODE_86A83B                           ; $86A7F2 |
  LDA.W #$4040                              ; $86A7F4 |
  STA.B $18                                 ; $86A7F7 |
  LDA.W $0418                               ; $86A7F9 |
  BNE CODE_JP_86A806                        ; $86A7FC |
  LDA.W #$4141                              ; $86A7FE |
  STA.B $18                                 ; $86A801 |
  LDA.W $04D8                               ; $86A803 |

CODE_JP_86A806:
  PHA                                       ; $86A806 |
  LDA.W #$00B2                              ; $86A807 |
  JSL.L CODE_FL_86C9C5                      ; $86A80A |
  PLA                                       ; $86A80E |
  BCC CODE_86A812                           ; $86A80F |
  RTL                                       ; $86A811 |

CODE_86A812:
  PHX                                       ; $86A812 |
  PHY                                       ; $86A813 |
  ASL A                                     ; $86A814 |
  TAX                                       ; $86A815 |
  LDA.L LOOSE_OP_86A889,X                   ; $86A816 |
  TAY                                       ; $86A81A |
  PLX                                       ; $86A81B |
  TYA                                       ; $86A81C |
  BMI CODE_86A824                           ; $86A81D |
  LDA.W #$FFFF                              ; $86A81F |
  STA.B $20,X                               ; $86A822 |

CODE_86A824:
  JSL.L CODE_FL_86A65C                      ; $86A824 |
  STZ.B $14,X                               ; $86A828 |
  LDA.W #$FFF8                              ; $86A82A |
  JSL.L CODE_FL_86C849                      ; $86A82D |
  LDA.W #$0060                              ; $86A831 |
  STA.B $06,X                               ; $86A834 |
  LDA.B $18                                 ; $86A836 |
  STA.B $02,X                               ; $86A838 |
  PLX                                       ; $86A83A |

CODE_86A83B:
  PHX                                       ; $86A83B |
  LDA.B $4E,X                               ; $86A83C |
  XBA                                       ; $86A83E |
  AND.W #$00FF                              ; $86A83F |
  ASL A                                     ; $86A842 |
  TAX                                       ; $86A843 |
  LDA.L DATA8_86A89B,X                      ; $86A844 |
  ASL A                                     ; $86A848 |
  ASL A                                     ; $86A849 |
  STA.B $00                                 ; $86A84A |
  LDA.L DATA8_86A8A3,X                      ; $86A84C |
  STA.B $02                                 ; $86A850 |
  LDA.L DATA8_86A893,X                      ; $86A852 |
  PLX                                       ; $86A856 |
  STA.B $00,X                               ; $86A857 |
  LDA.W #$00F0                              ; $86A859 |
  STA.B $2C,X                               ; $86A85C |
  LDA.B $00                                 ; $86A85E |
  STA.B $3A,X                               ; $86A860 |
  LDA.B $02                                 ; $86A862 |
  STA.B $02,X                               ; $86A864 |
  INC.B $1A,X                               ; $86A866 |
  RTL                                       ; $86A868 |

CODE_JP_86A869:
  CPY.W #$0002                              ; $86A869 |
  BNE CODE_JP_86A887                        ; $86A86C |
  LDY.W #$4040                              ; $86A86E |
  STY.B $18                                 ; $86A871 |
  LDY.W #$0400                              ; $86A873 |
  DEC A                                     ; $86A876 |
  BEQ CODE_86A881                           ; $86A877 |
  LDA.W #$4141                              ; $86A879 |
  STA.B $18                                 ; $86A87C |
  LDY.W #$04C0                              ; $86A87E |

CODE_86A881:
  LDA.W $0018,Y                             ; $86A881 |
  JMP.W CODE_JP_86A806                      ; $86A884 |

CODE_JP_86A887:
  JML.L CODE_FL_86CA57                      ; $86A887 |

  db $00,$32,$6B,$90,$3E,$32,$10,$32        ; $86A88B |

DATA8_86A893:
  db $10,$33,$00,$33,$08,$33,$00,$33        ; $86A893 |

DATA8_86A89B:
  db $80,$00,$10,$00,$06,$00,$10,$00        ; $86A89B |

DATA8_86A8A3:
  db $00,$00,$00,$00,$00,$00,$47,$00        ; $86A8A3 |

CODE_86A8AB:
  LDA.W $1F30                               ; $86A8AB |
  BNE CODE_86A91C                           ; $86A8AE |
  LDA.B $4E,X                               ; $86A8B0 |
  AND.W #$00FF                              ; $86A8B2 |
  CMP.W #$0002                              ; $86A8B5 |
  BCS CODE_86A91C                           ; $86A8B8 |
  JSL.L CODE_FL_86A92B                      ; $86A8BA |
  LDA.B $3E,X                               ; $86A8BE |
  BPL CODE_86A8D9                           ; $86A8C0 |
  LDA.W #$0001                              ; $86A8C2 |
  STA.B $E4                                 ; $86A8C5 |
  LDA.B $3A,X                               ; $86A8C7 |
  BEQ CODE_86A8D9                           ; $86A8C9 |
  DEC.B $3A,X                               ; $86A8CB |
  BIT.W #$0003                              ; $86A8CD |
  BNE CODE_86A8D9                           ; $86A8D0 |
  LDA.W #$0001                              ; $86A8D2 |
  JSL.L CODE_FL_86A91D                      ; $86A8D5 |

CODE_86A8D9:
  JSL.L CODE_FL_86A9C1                      ; $86A8D9 |
  BIT.W #$C0C0                              ; $86A8DD |
  BNE CODE_86A8E6                           ; $86A8E0 |
  JSL.L CODE_FL_86C70D                      ; $86A8E2 |

CODE_86A8E6:
  LDA.B $3A,X                               ; $86A8E6 |
  LSR A                                     ; $86A8E8 |
  LSR A                                     ; $86A8E9 |
  JSL.L CODE_FL_86A91D                      ; $86A8EA |
  PHX                                       ; $86A8EE |
  JSL.L CODE_FL_80C213                      ; $86A8EF |
  PLX                                       ; $86A8F3 |
  INC.B $1A,X                               ; $86A8F4 |

CODE_86A8F6:
  LDA.W $1F30                               ; $86A8F6 |
  BEQ CODE_86A91C                           ; $86A8F9 |
  LDA.B $4E,X                               ; $86A8FB |
  CMP.W #$0300                              ; $86A8FD |
  LDA.W #$F5CC                              ; $86A900 |
  BCS CODE_86A908                           ; $86A903 |
  LDA.W #$F614                              ; $86A905 |

CODE_86A908:
  PHX                                       ; $86A908 |
  JSL.L CODE_FL_80E9EA                      ; $86A909 |
  PLX                                       ; $86A90D |

CODE_86A90E:
  PHX                                       ; $86A90E |
  JSL.L CODE_FL_84801F                      ; $86A90F |
  LDA.L $7E7C06                             ; $86A913 |
  STA.B $C0                                 ; $86A917 |
  STZ.B $E4                                 ; $86A919 |
  PLX                                       ; $86A91B |

CODE_86A91C:
  RTL                                       ; $86A91C |

CODE_FL_86A91D:
  LDY.B $3C,X                               ; $86A91D |
  BNE CODE_86A927                           ; $86A91F |
  INC.B $3C,X                               ; $86A921 |
  JML.L CODE_FL_83D1E5                      ; $86A923 |

CODE_86A927:
  JML.L CODE_JL_83D209                      ; $86A927 |

CODE_FL_86A92B:
  LDA.B $3E,X                               ; $86A92B |
  BMI CODE_86A93E                           ; $86A92D |
  INC.B $3E,X                               ; $86A92F |
  TAY                                       ; $86A931 |
  BEQ CODE_86A93F                           ; $86A932 |
  CMP.W #$003C                              ; $86A934 |
  BEQ CODE_86A946                           ; $86A937 |
  CMP.W #$005A                              ; $86A939 |
  BCS CODE_86A94D                           ; $86A93C |

CODE_86A93E:
  RTL                                       ; $86A93E |

CODE_86A93F:
  LDA.W #$0110                              ; $86A93F |
  JML.L CODE_FL_8089BD                      ; $86A942 |

CODE_86A946:
  LDA.W #$0026                              ; $86A946 |
  JML.L push_sound_queue                    ; $86A949 |

CODE_86A94D:
  LDA.W #$FFFF                              ; $86A94D |
  STA.B $3E,X                               ; $86A950 |
  JML.L CODE_FL_80893F                      ; $86A952 |

CODE_JP_86A956:
  STZ.W $0498                               ; $86A956 |
  STZ.W $0558                               ; $86A959 |
  LDA.W $1F30                               ; $86A95C |
  BEQ CODE_86A9B7                           ; $86A95F |
  LDA.W #$8001                              ; $86A961 |
  STA.B $E4                                 ; $86A964 |
  LDA.B $44,X                               ; $86A966 |
  INC.B $44,X                               ; $86A968 |
  CMP.W #$0008                              ; $86A96A |
  BEQ CODE_86A98E                           ; $86A96D |
  BCS CODE_86A9B5                           ; $86A96F |
  LDA.W $0418                               ; $86A971 |
  BEQ CODE_86A98E                           ; $86A974 |
  LDA.W $04D8                               ; $86A976 |
  BEQ CODE_86A98E                           ; $86A979 |
  LDA.W $0492                               ; $86A97B |
  ORA.W $0552                               ; $86A97E |
  BIT.W #$0010                              ; $86A981 |
  BNE CODE_86A98E                           ; $86A984 |
  LDA.W #$0100                              ; $86A986 |
  LDY.W #$0200                              ; $86A989 |
  BRA CODE_86A9A3                           ; $86A98C |

CODE_86A98E:
  LDA.W #$0009                              ; $86A98E |
  STA.B $44,X                               ; $86A991 |
  LDY.W #$0400                              ; $86A993 |
  LDA.L $7E7C08                             ; $86A996 |
  CMP.W #$0175                              ; $86A99A |
  BEQ CODE_86A9A2                           ; $86A99D |
  LDY.W #$0800                              ; $86A99F |

CODE_86A9A2:
  TYA                                       ; $86A9A2 |

CODE_86A9A3:
  PHA                                       ; $86A9A3 |
  LDA.W $0418                               ; $86A9A4 |
  BEQ CODE_86A9AC                           ; $86A9A7 |
  STY.W $0498                               ; $86A9A9 |

CODE_86A9AC:
  PLY                                       ; $86A9AC |
  LDA.W $04D8                               ; $86A9AD |
  BEQ CODE_86A9B5                           ; $86A9B0 |
  STY.W $0558                               ; $86A9B2 |

CODE_86A9B5:
  CLC                                       ; $86A9B5 |
  RTL                                       ; $86A9B6 |

CODE_86A9B7:
  LDA.B $44,X                               ; $86A9B7 |
  BEQ CODE_86A9BD                           ; $86A9B9 |
  STZ.B $E4                                 ; $86A9BB |

CODE_86A9BD:
  STZ.B $44,X                               ; $86A9BD |
  SEC                                       ; $86A9BF |
  RTL                                       ; $86A9C0 |

CODE_FL_86A9C1:
  TDC                                       ; $86A9C1 |
  LDY.W $0418                               ; $86A9C2 |
  BEQ CODE_86A9C9                           ; $86A9C5 |
  ORA.B $30                                 ; $86A9C7 |

CODE_86A9C9:
  LDY.W $04D8                               ; $86A9C9 |
  BEQ CODE_86A9D0                           ; $86A9CC |
  ORA.B $32                                 ; $86A9CE |

CODE_86A9D0:
  RTL                                       ; $86A9D0 |

CODE_FN_86A9D1:
  LDA.B $3A,X                               ; $86A9D1 |
  ASL A                                     ; $86A9D3 |
  TAY                                       ; $86A9D4 |
  SEP #$20                                  ; $86A9D5 |
  PHB                                       ; $86A9D7 |
  PEA.W $8787                               ; $86A9D8 |
  PLB                                       ; $86A9DB |
  PLB                                       ; $86A9DC |
  TDC                                       ; $86A9DD |
  LDA.B $1F,X                               ; $86A9DE |
  LSR A                                     ; $86A9E0 |
  LSR A                                     ; $86A9E1 |
  LSR A                                     ; $86A9E2 |
  PHX                                       ; $86A9E3 |
  TAX                                       ; $86A9E4 |
  REP #$20                                  ; $86A9E5 |
  CLC                                       ; $86A9E7 |
  TYA                                       ; $86A9E8 |
  ADC.W LOOSE_OP_00A403,X                   ; $86A9E9 |
  PLX                                       ; $86A9EC |
  TAY                                       ; $86A9ED |
  LDA.W $0000,Y                             ; $86A9EE |
  CMP.W $0002,Y                             ; $86A9F1 |
  BEQ CODE_86A9F7                           ; $86A9F4 |
  CLC                                       ; $86A9F6 |

CODE_86A9F7:
  PLB                                       ; $86A9F7 |
  RTS                                       ; $86A9F8 |

CODE_FL_86A9F9:
  LDA.B $A6                                 ; $86A9F9 |
  BEQ CODE_86AA0F                           ; $86A9FB |
  JSL.L CODE_FL_83B3D9                      ; $86A9FD |
  LDA.W #$0030                              ; $86AA01 |
  STA.L $7002EA                             ; $86AA04 |
  LDA.W #$00A8                              ; $86AA08 |
  STA.L $7002EC                             ; $86AA0B |

CODE_86AA0F:
  JML.L CODE_FL_83B38E                      ; $86AA0F |

CODE_86AA13:
  JSL.L CODE_FL_86C3F8                      ; $86AA13 |
  LDA.B $1A,X                               ; $86AA17 |
  PHX                                       ; $86AA19 |
  ASL A                                     ; $86AA1A |
  TAX                                       ; $86AA1B |
  LDA.L PTR16_86AA26,X                      ; $86AA1C |
  PLX                                       ; $86AA20 |
  STA.B $00                                 ; $86AA21 |
  JMP.W ($0000)                             ; $86AA23 |

PTR16_86AA26:
  dw CODE_86AA30                            ; $86AA26 |
  dw CODE_86AAFF                            ; $86AA28 |
  dw CODE_86AA83                            ; $86AA2A |
  dw CODE_86AAB2                            ; $86AA2C |
  dw CODE_86AAE8                            ; $86AA2E |

CODE_86AA30:
  JSL.L CODE_FL_86C7AD                      ; $86AA30 |
  LDA.W #$0043                              ; $86AA34 |
  JSL.L CODE_FL_86C9A4                      ; $86AA37 |
  BCS CODE_86AA7F                           ; $86AA3B |
  JSL.L CODE_FL_85AAB6                      ; $86AA3D |
  LDA.B $44,X                               ; $86AA41 |
  STA.B $40,X                               ; $86AA43 |
  LDA.W #$0041                              ; $86AA45 |
  JSL.L CODE_FL_86C9A4                      ; $86AA48 |
  BCS CODE_86AA7F                           ; $86AA4C |
  JSL.L CODE_FL_85AAB6                      ; $86AA4E |
  LDA.B $44,X                               ; $86AA52 |
  STA.B $42,X                               ; $86AA54 |
  LDA.W #$0040                              ; $86AA56 |
  JSL.L CODE_FL_86C9A4                      ; $86AA59 |
  BCS CODE_86AA7F                           ; $86AA5D |
  JSL.L CODE_FL_85AAB6                      ; $86AA5F |
  LDA.B $4E,X                               ; $86AA63 |
  AND.W #$0003                              ; $86AA65 |
  STA.B $3A,X                               ; $86AA68 |
  ASL A                                     ; $86AA6A |
  TAY                                       ; $86AA6B |
  LDA.W LOOSE_OP_00CE77,Y                   ; $86AA6C |
  STA.B $00,X                               ; $86AA6F |
  TYA                                       ; $86AA71 |
  BEQ CODE_86AA7B                           ; $86AA72 |
  LDA.B $04,X                               ; $86AA74 |
  EOR.W #$0020                              ; $86AA76 |
  STA.B $04,X                               ; $86AA79 |

CODE_86AA7B:
  JML.L CODE_FL_86C63F                      ; $86AA7B |

CODE_86AA7F:
  JML.L CODE_FL_86CA36                      ; $86AA7F |

CODE_86AA83:
  JSL.L CODE_FL_86C70D                      ; $86AA83 |
  LDA.B $3A,X                               ; $86AA87 |
  LSR A                                     ; $86AA89 |
  BCC CODE_86AA94                           ; $86AA8A |
  LDY.B $44,X                               ; $86AA8C |
  LDA.W #$0001                              ; $86AA8E |
  STA.W $001A,Y                             ; $86AA91 |

CODE_86AA94:
  LDY.B $44,X                               ; $86AA94 |
  JSR.W CODE_FN_86AAB3                      ; $86AA96 |
  LDY.B $40,X                               ; $86AA99 |
  JSR.W CODE_FN_86AAB3                      ; $86AA9B |
  LDY.B $42,X                               ; $86AA9E |
  LDA.W $0034,Y                             ; $86AAA0 |
  AND.W #$0080                              ; $86AAA3 |
  BEQ CODE_86AAB0                           ; $86AAA6 |
  JSL.L CODE_FL_85A9DB                      ; $86AAA8 |
  JSL.L CODE_FL_85A9D1                      ; $86AAAC |

CODE_86AAB0:
  INC.B $1A,X                               ; $86AAB0 |

CODE_86AAB2:
  RTL                                       ; $86AAB2 |

CODE_FN_86AAB3:
  LDA.W $0034,Y                             ; $86AAB3 |
  AND.W #$0080                              ; $86AAB6 |
  BEQ CODE_86AABF                           ; $86AAB9 |
  JSL.L CODE_FL_85A9DB                      ; $86AABB |

CODE_86AABF:
  RTS                                       ; $86AABF |

CODE_FL_86AAC0:
  LDA.B $44,X                               ; $86AAC0 |
  TAX                                       ; $86AAC2 |
  LDY.B $44,X                               ; $86AAC3 |
  JSR.W CODE_FN_86AAD9                      ; $86AAC5 |
  LDY.B $40,X                               ; $86AAC8 |
  JSR.W CODE_FN_86AAD9                      ; $86AACA |
  LDY.B $42,X                               ; $86AACD |
  JSR.W CODE_FN_86AAD9                      ; $86AACF |
  JSL.L CODE_FL_85A9C7                      ; $86AAD2 |
  LDX.B $FC                                 ; $86AAD6 |
  RTL                                       ; $86AAD8 |

CODE_FN_86AAD9:
  JSL.L CODE_FL_85A9E5                      ; $86AAD9 |
  TDC                                       ; $86AADD |
  STA.W $0032,Y                             ; $86AADE |
  LDA.W #$0018                              ; $86AAE1 |
  STA.W $0038,Y                             ; $86AAE4 |
  RTS                                       ; $86AAE7 |

CODE_86AAE8:
  CLC                                       ; $86AAE8 |
  LDA.B $3A,X                               ; $86AAE9 |
  ADC.B $3C,X                               ; $86AAEB |
  LDY.B $42,X                               ; $86AAED |
  ADC.W #$2000                              ; $86AAEF |
  JSL.L CODE_FL_86CAEE                      ; $86AAF2 |
  LDA.B $3C,X                               ; $86AAF6 |
  BEQ CODE_86AAFF                           ; $86AAF8 |
  LDA.B $3A,X                               ; $86AAFA |
  DEC A                                     ; $86AAFC |
  BRA CODE_86AB02                           ; $86AAFD |

CODE_86AAFF:
  LDA.B $3A,X                               ; $86AAFF |
  INC A                                     ; $86AB01 |

CODE_86AB02:
  AND.W #$0003                              ; $86AB02 |
  STA.B $3A,X                               ; $86AB05 |
  LDY.B $40,X                               ; $86AB07 |
  LDA.W #$0001                              ; $86AB09 |
  STA.W $001A,Y                             ; $86AB0C |
  LDY.B $42,X                               ; $86AB0F |
  LDA.W #$0001                              ; $86AB11 |
  STA.W $001A,Y                             ; $86AB14 |
  LDA.B $3A,X                               ; $86AB17 |
  LSR A                                     ; $86AB19 |
  BCS CODE_86AB24                           ; $86AB1A |
  LDY.B $44,X                               ; $86AB1C |
  LDA.W #$0001                              ; $86AB1E |
  STA.W $001A,Y                             ; $86AB21 |

CODE_86AB24:
  LDA.W #$0014                              ; $86AB24 |
  STA.B $2C,X                               ; $86AB27 |
  LDA.W #$0002                              ; $86AB29 |
  STA.B $1A,X                               ; $86AB2C |
  RTL                                       ; $86AB2E |

CODE_86AB2F:
  JSL.L CODE_FL_85AAC6                      ; $86AB2F |
  JSL.L CODE_FL_86C3B0                      ; $86AB33 |
  LDA.B $1A,X                               ; $86AB37 |
  PHX                                       ; $86AB39 |
  ASL A                                     ; $86AB3A |
  TAX                                       ; $86AB3B |
  LDA.L PTR16_86AB46,X                      ; $86AB3C |
  PLX                                       ; $86AB40 |
  STA.B $00                                 ; $86AB41 |
  JMP.W ($0000)                             ; $86AB43 |

PTR16_86AB46:
  dw CODE_86AB4C                            ; $86AB46 |
  dw CODE_86AB5B                            ; $86AB48 |
  dw CODE_86AB8A                            ; $86AB4A |

CODE_86AB4C:
  LDA.B $34,X                               ; $86AB4C |
  ORA.W #$2888                              ; $86AB4E |
  STA.B $34,X                               ; $86AB51 |
  JSL.L CODE_FL_85A9B7                      ; $86AB53 |
  JML.L CODE_FL_86C63F                      ; $86AB57 |

CODE_86AB5B:
  LDY.W $0044,X                             ; $86AB5B |
  JSL.L CODE_FL_86C89E                      ; $86AB5E |
  LDA.W $003A,Y                             ; $86AB62 |
  ASL A                                     ; $86AB65 |
  ASL A                                     ; $86AB66 |
  ASL A                                     ; $86AB67 |
  TAY                                       ; $86AB68 |
  LDA.W LOOSE_OP_00CE7F,Y                   ; $86AB69 |
  STA.B $2E,X                               ; $86AB6C |
  LDA.W LOOSE_OP_00CE81,Y                   ; $86AB6E |
  STA.B $30,X                               ; $86AB71 |
  LDA.W LOOSE_OP_00CE83,Y                   ; $86AB73 |
  CLC                                       ; $86AB76 |
  ADC.B $09,X                               ; $86AB77 |
  STA.B $09,X                               ; $86AB79 |
  LDA.W LOOSE_OP_00CE85,Y                   ; $86AB7B |
  CLC                                       ; $86AB7E |
  ADC.B $0D,X                               ; $86AB7F |
  ADC.W #$0008                              ; $86AB81 |
  STA.B $0D,X                               ; $86AB84 |
  INC.B $1A,X                               ; $86AB86 |
  RTL                                       ; $86AB88 |

  RTL                                       ; $86AB89 |

CODE_86AB8A:
  LDA.B $32,X                               ; $86AB8A |
  BPL CODE_86ABBD                           ; $86AB8C |
  LDA.W #$000C                              ; $86AB8E |
  JSL.L push_sound_queue                    ; $86AB91 |
  JSL.L CODE_FL_85AB1D                      ; $86AB95 |
  LDA.W $0009,Y                             ; $86AB99 |
  STA.B $00                                 ; $86AB9C |
  LDY.W $0044,X                             ; $86AB9E |
  BCS CODE_86ABC2                           ; $86ABA1 |
  LDA.W $0009,Y                             ; $86ABA3 |
  CMP.B $00                                 ; $86ABA6 |
  BCS CODE_86ABAF                           ; $86ABA8 |
  LDA.W #$0004                              ; $86ABAA |
  BRA CODE_86ABB0                           ; $86ABAD |

CODE_86ABAF:
  TDC                                       ; $86ABAF |

CODE_86ABB0:
  STA.W $003C,Y                             ; $86ABB0 |
  LDA.W #$0004                              ; $86ABB3 |
  STA.W $001A,Y                             ; $86ABB6 |
  JSL.L CODE_FL_86AAC0                      ; $86ABB9 |

CODE_86ABBD:
  STZ.B $32,X                               ; $86ABBD |
  STZ.B $46,X                               ; $86ABBF |
  RTL                                       ; $86ABC1 |

CODE_86ABC2:
  LDA.B $46,X                               ; $86ABC2 |
  BMI CODE_86ABBD                           ; $86ABC4 |
  LDA.W $0009,Y                             ; $86ABC6 |
  CMP.B $00                                 ; $86ABC9 |
  BCS CODE_86ABD0                           ; $86ABCB |
  TDC                                       ; $86ABCD |
  BRA CODE_86ABB0                           ; $86ABCE |

CODE_86ABD0:
  LDA.W #$0004                              ; $86ABD0 |
  BRA CODE_86ABB0                           ; $86ABD3 |

CODE_86ABD5:
  JSL.L CODE_FL_85AAD6                      ; $86ABD5 |
  JSL.L CODE_FL_86C3B0                      ; $86ABD9 |
  LDA.B $1A,X                               ; $86ABDD |
  PHX                                       ; $86ABDF |
  ASL A                                     ; $86ABE0 |
  TAX                                       ; $86ABE1 |
  LDA.L PTR16_86ABEC,X                      ; $86ABE2 |
  PLX                                       ; $86ABE6 |
  STA.B $00                                 ; $86ABE7 |
  JMP.W ($0000)                             ; $86ABE9 |

PTR16_86ABEC:
  dw CODE_86ABF4                            ; $86ABEC |
  dw CODE_86ABFF                            ; $86ABEE |
  dw CODE_86AC6D                            ; $86ABF0 |
  dw CODE_86AC76                            ; $86ABF2 |

CODE_86ABF4:
  LDA.B $34,X                               ; $86ABF4 |
  ORA.W #$3080                              ; $86ABF6 |
  STA.B $34,X                               ; $86ABF9 |
  JML.L CODE_FL_86C63F                      ; $86ABFB |

CODE_86ABFF:
  LDY.W $0044,X                             ; $86ABFF |
  JSL.L CODE_FL_86C89E                      ; $86AC02 |
  LDA.B $09,X                               ; $86AC06 |
  STA.B $18                                 ; $86AC08 |
  LDA.W #$000C                              ; $86AC0A |
  STA.B $2C,X                               ; $86AC0D |
  JSL.L CODE_FL_85A9B7                      ; $86AC0F |
  JSL.L CODE_FL_85A9A7                      ; $86AC13 |
  LDA.W $003A,Y                             ; $86AC17 |
  BNE CODE_86AC24                           ; $86AC1A |
  JSL.L CODE_FL_85A9AF                      ; $86AC1C |
  JSL.L CODE_FL_85A9BF                      ; $86AC20 |

CODE_86AC24:
  LDA.W $003C,Y                             ; $86AC24 |
  BNE CODE_86AC38                           ; $86AC27 |
  LDA.W #$FFD0                              ; $86AC29 |
  CLC                                       ; $86AC2C |
  ADC.B $09,X                               ; $86AC2D |
  STA.B $09,X                               ; $86AC2F |
  LDA.W #$0400                              ; $86AC31 |
  STA.B $26,X                               ; $86AC34 |
  BRA CODE_86AC4F                           ; $86AC36 |

CODE_86AC38:
  LDA.W #$0030                              ; $86AC38 |
  CLC                                       ; $86AC3B |
  ADC.B $09,X                               ; $86AC3C |
  STA.B $09,X                               ; $86AC3E |
  LDA.W #$FC00                              ; $86AC40 |
  STA.B $26,X                               ; $86AC43 |
  LDA.W $003A,Y                             ; $86AC45 |
  CMP.W #$0003                              ; $86AC48 |
  BEQ CODE_86AC6A                           ; $86AC4B |
  BRA CODE_86AC57                           ; $86AC4D |

CODE_86AC4F:
  LDA.W $003A,Y                             ; $86AC4F |
  CMP.W #$0001                              ; $86AC52 |
  BEQ CODE_86AC6A                           ; $86AC55 |

CODE_86AC57:
  LDA.W #$0044                              ; $86AC57 |
  JSL.L CODE_FL_86C9A4                      ; $86AC5A |
  BCS CODE_86AC6A                           ; $86AC5E |
  LDA.B $26,X                               ; $86AC60 |
  STA.W $0026,Y                             ; $86AC62 |
  LDA.B $18                                 ; $86AC65 |
  STA.W $0009,Y                             ; $86AC67 |

CODE_86AC6A:
  INC.B $1A,X                               ; $86AC6A |
  RTL                                       ; $86AC6C |

CODE_86AC6D:
  JSL.L CODE_FL_86C70D                      ; $86AC6D |
  STZ.B $26,X                               ; $86AC71 |
  INC.B $1A,X                               ; $86AC73 |
  RTL                                       ; $86AC75 |

CODE_86AC76:
  LDA.B $32,X                               ; $86AC76 |
  BPL CODE_86AC9D                           ; $86AC78 |
  LDA.W #$000C                              ; $86AC7A |
  JSL.L push_sound_queue                    ; $86AC7D |
  JSL.L CODE_FL_85AB2B                      ; $86AC81 |
  LDY.W $0044,X                             ; $86AC85 |
  BCS CODE_86AC8F                           ; $86AC88 |
  LDA.W #$0004                              ; $86AC8A |
  BRA CODE_86AC90                           ; $86AC8D |

CODE_86AC8F:
  TDC                                       ; $86AC8F |

CODE_86AC90:
  STA.W $003C,Y                             ; $86AC90 |
  LDA.W #$0004                              ; $86AC93 |
  STA.W $001A,Y                             ; $86AC96 |
  JSL.L CODE_FL_86AAC0                      ; $86AC99 |

CODE_86AC9D:
  RTL                                       ; $86AC9D |

CODE_86AC9E:
  JSL.L CODE_FL_85AAE9                      ; $86AC9E |
  JSL.L CODE_FL_86C3B0                      ; $86ACA2 |
  LDA.B $1A,X                               ; $86ACA6 |
  PHX                                       ; $86ACA8 |
  ASL A                                     ; $86ACA9 |
  TAX                                       ; $86ACAA |
  LDA.L PTR16_86ACB5,X                      ; $86ACAB |
  PLX                                       ; $86ACAF |
  STA.B $00                                 ; $86ACB0 |
  JMP.W ($0000)                             ; $86ACB2 |

PTR16_86ACB5:
  dw CODE_86ACBD                            ; $86ACB5 |
  dw CODE_86ACC8                            ; $86ACB7 |
  dw CODE_86AD39                            ; $86ACB9 |
  dw CODE_86AD42                            ; $86ACBB |

CODE_86ACBD:
  LDA.B $34,X                               ; $86ACBD |
  ORA.W #$3080                              ; $86ACBF |
  STA.B $34,X                               ; $86ACC2 |
  JML.L CODE_FL_86C63F                      ; $86ACC4 |

CODE_86ACC8:
  LDY.W $0044,X                             ; $86ACC8 |
  JSL.L CODE_FL_86C89E                      ; $86ACCB |
  LDA.B $09,X                               ; $86ACCF |
  STA.B $18                                 ; $86ACD1 |
  LDA.W #$000C                              ; $86ACD3 |
  STA.B $2C,X                               ; $86ACD6 |
  LDA.W #$0030                              ; $86ACD8 |
  CLC                                       ; $86ACDB |
  ADC.B $0D,X                               ; $86ACDC |
  STA.B $0D,X                               ; $86ACDE |
  JSL.L CODE_FL_85A9A7                      ; $86ACE0 |
  LDA.W $003A,Y                             ; $86ACE4 |
  CMP.W #$0002                              ; $86ACE7 |
  BNE CODE_86ACF0                           ; $86ACEA |
  JSL.L CODE_FL_85A9AF                      ; $86ACEC |

CODE_86ACF0:
  LDA.W $003C,Y                             ; $86ACF0 |
  BNE CODE_86AD04                           ; $86ACF3 |
  LDA.W #$0030                              ; $86ACF5 |
  CLC                                       ; $86ACF8 |
  ADC.B $09,X                               ; $86ACF9 |
  STA.B $09,X                               ; $86ACFB |
  LDA.W #$FC00                              ; $86ACFD |
  STA.B $26,X                               ; $86AD00 |
  BRA CODE_86AD1B                           ; $86AD02 |

CODE_86AD04:
  LDA.W #$FFD0                              ; $86AD04 |
  CLC                                       ; $86AD07 |
  ADC.B $09,X                               ; $86AD08 |
  STA.B $09,X                               ; $86AD0A |
  LDA.W #$0400                              ; $86AD0C |
  STA.B $26,X                               ; $86AD0F |
  LDA.W $003A,Y                             ; $86AD11 |
  CMP.W #$0001                              ; $86AD14 |
  BEQ CODE_86AD36                           ; $86AD17 |
  BRA CODE_86AD23                           ; $86AD19 |

CODE_86AD1B:
  LDA.W $003A,Y                             ; $86AD1B |
  CMP.W #$0003                              ; $86AD1E |
  BEQ CODE_86AD36                           ; $86AD21 |

CODE_86AD23:
  LDA.W #$0044                              ; $86AD23 |
  JSL.L CODE_FL_86C9A4                      ; $86AD26 |
  BCS CODE_86AD36                           ; $86AD2A |
  LDA.B $26,X                               ; $86AD2C |
  STA.W $0026,Y                             ; $86AD2E |
  LDA.B $18                                 ; $86AD31 |
  STA.W $0009,Y                             ; $86AD33 |

CODE_86AD36:
  INC.B $1A,X                               ; $86AD36 |
  RTL                                       ; $86AD38 |

CODE_86AD39:
  JSL.L CODE_FL_86C70D                      ; $86AD39 |
  STZ.B $26,X                               ; $86AD3D |
  INC.B $1A,X                               ; $86AD3F |
  RTL                                       ; $86AD41 |

CODE_86AD42:
  LDA.B $32,X                               ; $86AD42 |
  BPL CODE_86AD69                           ; $86AD44 |
  LDA.W #$000C                              ; $86AD46 |
  JSL.L push_sound_queue                    ; $86AD49 |
  JSL.L CODE_FL_85AB2B                      ; $86AD4D |
  LDY.W $0044,X                             ; $86AD51 |
  BCC CODE_86AD5B                           ; $86AD54 |
  LDA.W #$0004                              ; $86AD56 |
  BRA CODE_86AD5C                           ; $86AD59 |

CODE_86AD5B:
  TDC                                       ; $86AD5B |

CODE_86AD5C:
  STA.W $003C,Y                             ; $86AD5C |
  LDA.W #$0004                              ; $86AD5F |
  STA.W $001A,Y                             ; $86AD62 |
  JSL.L CODE_FL_86AAC0                      ; $86AD65 |

CODE_86AD69:
  RTL                                       ; $86AD69 |

CODE_86AD6A:
  JSL.L CODE_FL_86C3B0                      ; $86AD6A |
  LDA.B $1A,X                               ; $86AD6E |
  PHX                                       ; $86AD70 |
  ASL A                                     ; $86AD71 |
  TAX                                       ; $86AD72 |
  LDA.L PTR16_86AD7D,X                      ; $86AD73 |
  PLX                                       ; $86AD77 |
  STA.B $00                                 ; $86AD78 |
  JMP.W ($0000)                             ; $86AD7A |

PTR16_86AD7D:
  dw CODE_86AD81                            ; $86AD7D |
  dw CODE_86AD91                            ; $86AD7F |

CODE_86AD81:
  LDA.B $34,X                               ; $86AD81 |
  ORA.W #$3080                              ; $86AD83 |
  STA.B $34,X                               ; $86AD86 |
  LDA.W #$000C                              ; $86AD88 |
  STA.B $2C,X                               ; $86AD8B |
  JML.L CODE_FL_86C63F                      ; $86AD8D |

CODE_86AD91:
  JSL.L CODE_FL_86C70D                      ; $86AD91 |
  JML.L CODE_FL_86CA36                      ; $86AD95 |

CODE_86AD99:
  JSL.L CODE_FL_86C3F8                      ; $86AD99 |
  LDA.B $1A,X                               ; $86AD9D |
  PHX                                       ; $86AD9F |
  ASL A                                     ; $86ADA0 |
  TAX                                       ; $86ADA1 |
  LDA.L PTR16_86ADAC,X                      ; $86ADA2 |
  PLX                                       ; $86ADA6 |
  STA.B $00                                 ; $86ADA7 |
  JMP.W ($0000)                             ; $86ADA9 |

PTR16_86ADAC:
  dw CODE_86ADB2                            ; $86ADAC |
  dw CODE_86ADD4                            ; $86ADAE |
  dw CODE_86AE32                            ; $86ADB0 |

CODE_86ADB2:
  JSL.L CODE_FL_86C7AD                      ; $86ADB2 |
  JSL.L CODE_FL_85A8D6                      ; $86ADB6 |
  LDA.W #$2008                              ; $86ADBA |
  JSL.L CODE_FL_86CAEE                      ; $86ADBD |
  JSL.L CODE_FL_85AD48                      ; $86ADC1 |
  JSL.L CODE_FL_85AD50                      ; $86ADC5 |
  LDA.B $34,X                               ; $86ADC9 |
  ORA.W #$B090                              ; $86ADCB |
  STA.B $34,X                               ; $86ADCE |
  JML.L CODE_FL_86C63F                      ; $86ADD0 |

CODE_86ADD4:
  JSL.L CODE_FL_85A893                      ; $86ADD4 |
  JSL.L CODE_FL_85ABAD                      ; $86ADD8 |
  BCC CODE_86ADFC                           ; $86ADDC |
  STZ.B $00,X                               ; $86ADDE |
  LDA.B $4E,X                               ; $86ADE0 |
  AND.W #$0100                              ; $86ADE2 |
  BNE CODE_86ADF0                           ; $86ADE5 |
  LDY.W #$0000                              ; $86ADE7 |
  JSL.L CODE_FL_86AE1D                      ; $86ADEA |
  BCS CODE_86AE1C                           ; $86ADEE |

CODE_86ADF0:
  STZ.B $1E,X                               ; $86ADF0 |
  LDA.B $34,X                               ; $86ADF2 |
  AND.W #$4F7F                              ; $86ADF4 |
  STA.B $34,X                               ; $86ADF7 |
  INC.B $1A,X                               ; $86ADF9 |
  RTL                                       ; $86ADFB |

CODE_86ADFC:
  LDA.W $1C38                               ; $86ADFC |
  AND.W #$0007                              ; $86ADFF |
  BNE CODE_86AE1C                           ; $86AE02 |
  LDA.B $4E,X                               ; $86AE04 |
  AND.W #$0100                              ; $86AE06 |
  BNE CODE_86AE1C                           ; $86AE09 |
  LDA.W $1C38                               ; $86AE0B |
  LSR A                                     ; $86AE0E |
  LSR A                                     ; $86AE0F |
  AND.W #$0006                              ; $86AE10 |
  CLC                                       ; $86AE13 |
  ADC.W #$0002                              ; $86AE14 |
  TAY                                       ; $86AE17 |
  JSL.L CODE_FL_86AE1D                      ; $86AE18 |

CODE_86AE1C:
  RTL                                       ; $86AE1C |

CODE_FL_86AE1D:
  LDA.B $09,X                               ; $86AE1D |
  SEC                                       ; $86AE1F |
  SBC.W #$0010                              ; $86AE20 |
  STA.B $08                                 ; $86AE23 |
  LDA.B $0D,X                               ; $86AE25 |
  SEC                                       ; $86AE27 |
  SBC.W #$0060                              ; $86AE28 |
  STA.B $0A                                 ; $86AE2B |
  TYA                                       ; $86AE2D |
  JML.L CODE_FL_858256                      ; $86AE2E |

CODE_86AE32:
  JSL.L CODE_FL_85ABAD                      ; $86AE32 |
  BCS CODE_86AE48                           ; $86AE36 |
  LDA.W #$2008                              ; $86AE38 |
  JSL.L CODE_FL_86CAEE                      ; $86AE3B |
  LDA.B $34,X                               ; $86AE3F |
  ORA.W #$B080                              ; $86AE41 |
  STA.B $34,X                               ; $86AE44 |
  DEC.B $1A,X                               ; $86AE46 |

CODE_86AE48:
  RTL                                       ; $86AE48 |

CODE_86AE49:
  JSL.L CODE_FL_86C3F8                      ; $86AE49 |
  LDA.B $1A,X                               ; $86AE4D |
  PHX                                       ; $86AE4F |
  ASL A                                     ; $86AE50 |
  TAX                                       ; $86AE51 |
  LDA.L PTR16_86AE5C,X                      ; $86AE52 |
  PLX                                       ; $86AE56 |
  STA.B $00                                 ; $86AE57 |
  JMP.W ($0000)                             ; $86AE59 |

PTR16_86AE5C:
  dw CODE_86AE64                            ; $86AE5C |
  dw CODE_86AE81                            ; $86AE5E |
  dw CODE_86AE85                            ; $86AE60 |
  dw CODE_86AEBB                            ; $86AE62 |

CODE_86AE64:
  JSL.L CODE_FL_86C7AD                      ; $86AE64 |
  JSL.L CODE_FL_85ABAD                      ; $86AE68 |
  LDA.W #$3000                              ; $86AE6C |
  BCC CODE_86AE74                           ; $86AE6F |
  LDA.W #$3010                              ; $86AE71 |

CODE_86AE74:
  STA.B $00,X                               ; $86AE74 |
  LDA.B $34,X                               ; $86AE76 |
  ORA.W #$B880                              ; $86AE78 |
  STA.B $34,X                               ; $86AE7B |
  JML.L CODE_FL_86C63F                      ; $86AE7D |

CODE_86AE81:
  JML.L CODE_FL_85A646                      ; $86AE81 |

CODE_86AE85:
  LDA.B $32,X                               ; $86AE85 |
  BPL CODE_86AEBA                           ; $86AE87 |
  LDA.W #$000C                              ; $86AE89 |
  JSL.L push_sound_queue                    ; $86AE8C |
  JSL.L CODE_FL_85ABAD                      ; $86AE90 |
  BCS CODE_86AEA6                           ; $86AE94 |
  LDA.W #$0000                              ; $86AE96 |
  STA.L $7E7C06                             ; $86AE99 |
  JSL.L CODE_FL_85ABC2                      ; $86AE9D |
  LDA.W #$200A                              ; $86AEA1 |
  BRA CODE_86AEB4                           ; $86AEA4 |

CODE_86AEA6:
  LDA.W #$0001                              ; $86AEA6 |
  STA.L $7E7C06                             ; $86AEA9 |
  JSL.L CODE_FL_85ABD5                      ; $86AEAD |
  LDA.W #$200B                              ; $86AEB1 |

CODE_86AEB4:
  JSL.L CODE_FL_86CAEE                      ; $86AEB4 |
  INC.B $1A,X                               ; $86AEB8 |

CODE_86AEBA:
  RTL                                       ; $86AEBA |

CODE_86AEBB:
  LDA.B $40,X                               ; $86AEBB |
  BEQ CODE_86AEC5                           ; $86AEBD |
  JSL.L CODE_FL_86C239                      ; $86AEBF |
  BCC CODE_86AECD                           ; $86AEC3 |

CODE_86AEC5:
  LDA.B $20,X                               ; $86AEC5 |
  BNE CODE_86AECD                           ; $86AEC7 |
  STZ.B $32,X                               ; $86AEC9 |
  DEC.B $1A,X                               ; $86AECB |

CODE_86AECD:
  RTL                                       ; $86AECD |

CODE_86AECE:
  JSL.L CODE_FL_86C3F8                      ; $86AECE |
  LDA.B $1A,X                               ; $86AED2 |
  PHX                                       ; $86AED4 |
  ASL A                                     ; $86AED5 |
  TAX                                       ; $86AED6 |
  LDA.L PTR16_86AEE1,X                      ; $86AED7 |
  PLX                                       ; $86AEDB |
  STA.B $00                                 ; $86AEDC |
  JMP.W ($0000)                             ; $86AEDE |

PTR16_86AEE1:
  dw CODE_86AEE9                            ; $86AEE1 |
  dw CODE_86AF06                            ; $86AEE3 |
  dw CODE_86AF0A                            ; $86AEE5 |
  dw CODE_86AF29                            ; $86AEE7 |

CODE_86AEE9:
  JSL.L CODE_FL_86C7AD                      ; $86AEE9 |
  JSL.L CODE_FL_85ABAD                      ; $86AEED |
  LDA.W #$3000                              ; $86AEF1 |
  BCC CODE_86AEF9                           ; $86AEF4 |
  LDA.W #$3010                              ; $86AEF6 |

CODE_86AEF9:
  STA.B $00,X                               ; $86AEF9 |
  LDA.B $34,X                               ; $86AEFB |
  ORA.W #$B880                              ; $86AEFD |
  STA.B $34,X                               ; $86AF00 |
  JML.L CODE_FL_86C63F                      ; $86AF02 |

CODE_86AF06:
  JML.L CODE_FL_85A646                      ; $86AF06 |

CODE_86AF0A:
  LDA.B $32,X                               ; $86AF0A |
  BPL CODE_86AF26                           ; $86AF0C |
  JSL.L CODE_FL_85A589                      ; $86AF0E |
  JSL.L CODE_FL_85ABAD                      ; $86AF12 |
  BCS CODE_86AF26                           ; $86AF16 |
  JSL.L CODE_FL_85ABC2                      ; $86AF18 |
  LDA.W #$200A                              ; $86AF1C |
  JSL.L CODE_FL_86CAEE                      ; $86AF1F |
  INC.B $1A,X                               ; $86AF23 |
  RTL                                       ; $86AF25 |

CODE_86AF26:
  STZ.B $32,X                               ; $86AF26 |
  RTL                                       ; $86AF28 |

CODE_86AF29:
  JSL.L CODE_FL_86C239                      ; $86AF29 |
  BCC CODE_86AF31                           ; $86AF2D |
  DEC.B $1A,X                               ; $86AF2F |

CODE_86AF31:
  RTL                                       ; $86AF31 |

CODE_86AF32:
  JSL.L CODE_FL_86C3F8                      ; $86AF32 |
  LDA.B $1A,X                               ; $86AF36 |
  PHX                                       ; $86AF38 |
  ASL A                                     ; $86AF39 |
  TAX                                       ; $86AF3A |
  LDA.L PTR16_86AF45,X                      ; $86AF3B |
  PLX                                       ; $86AF3F |
  STA.B $00                                 ; $86AF40 |
  JMP.W ($0000)                             ; $86AF42 |

PTR16_86AF45:
  dw CODE_86AF4D                            ; $86AF45 |
  dw CODE_86AF06                            ; $86AF47 |
  dw CODE_86AF6E                            ; $86AF49 |
  dw CODE_86AF29                            ; $86AF4B |

CODE_86AF4D:
  JSL.L CODE_FL_86C7AD                      ; $86AF4D |
  JSL.L CODE_FL_85ABE7                      ; $86AF51 |
  LDA.W #$3000                              ; $86AF55 |
  BCC CODE_86AF61                           ; $86AF58 |
  INC.B $1A,X                               ; $86AF5A |
  INC.B $1A,X                               ; $86AF5C |
  LDA.W #$3010                              ; $86AF5E |

CODE_86AF61:
  STA.B $00,X                               ; $86AF61 |
  LDA.B $34,X                               ; $86AF63 |
  ORA.W #$B880                              ; $86AF65 |
  STA.B $34,X                               ; $86AF68 |
  JML.L CODE_FL_86C63F                      ; $86AF6A |

CODE_86AF6E:
  LDA.B $32,X                               ; $86AF6E |
  BPL CODE_86AF89                           ; $86AF70 |
  JSL.L CODE_FL_85A589                      ; $86AF72 |
  JSL.L CODE_FL_85ABE7                      ; $86AF76 |
  BCS CODE_86AF89                           ; $86AF7A |
  JSL.L CODE_FL_85AC15                      ; $86AF7C |
  LDA.W #$200A                              ; $86AF80 |
  JSL.L CODE_FL_86CAEE                      ; $86AF83 |
  INC.B $1A,X                               ; $86AF87 |

CODE_86AF89:
  STZ.B $32,X                               ; $86AF89 |
  RTL                                       ; $86AF8B |

CODE_86AF8C:
  JSL.L CODE_FL_86C3F8                      ; $86AF8C |
  LDA.B $1A,X                               ; $86AF90 |
  PHX                                       ; $86AF92 |
  ASL A                                     ; $86AF93 |
  TAX                                       ; $86AF94 |
  LDA.L PTR16_86AF9F,X                      ; $86AF95 |
  PLX                                       ; $86AF99 |
  STA.B $00                                 ; $86AF9A |
  JMP.W ($0000)                             ; $86AF9C |

PTR16_86AF9F:
  dw CODE_86B7F0                            ; $86AF9F |
  dw CODE_86AFA3                            ; $86AFA1 |

CODE_86AFA3:
  LDA.B $32,X                               ; $86AFA3 |
  BPL CODE_86AFBC                           ; $86AFA5 |
  JSL.L CODE_FL_85A589                      ; $86AFA7 |
  JSL.L CODE_FL_85ABAD                      ; $86AFAB |
  BCS CODE_86AFBC                           ; $86AFAF |
  JSL.L CODE_FL_85ABC2                      ; $86AFB1 |
  LDA.W #$200C                              ; $86AFB5 |
  JSL.L CODE_FL_86CAEE                      ; $86AFB8 |

CODE_86AFBC:
  STZ.B $32,X                               ; $86AFBC |
  RTL                                       ; $86AFBE |

CODE_86AFBF:
  JSL.L CODE_FL_86C3F8                      ; $86AFBF |
  LDA.B $1A,X                               ; $86AFC3 |
  PHX                                       ; $86AFC5 |
  ASL A                                     ; $86AFC6 |
  TAX                                       ; $86AFC7 |
  LDA.L PTR16_86AFD2,X                      ; $86AFC8 |
  PLX                                       ; $86AFCC |
  STA.B $00                                 ; $86AFCD |
  JMP.W ($0000)                             ; $86AFCF |

PTR16_86AFD2:
  dw CODE_86AFDA                            ; $86AFD2 |
  dw CODE_86B045                            ; $86AFD4 |
  dw CODE_86AFF2                            ; $86AFD6 |
  dw CODE_86B062                            ; $86AFD8 |

CODE_86AFDA:
  JSL.L CODE_FL_86C7AD                      ; $86AFDA |
  JSL.L CODE_FL_85ABD5                      ; $86AFDE |
  LDA.W #$3000                              ; $86AFE2 |
  STA.B $00,X                               ; $86AFE5 |
  LDA.B $34,X                               ; $86AFE7 |
  ORA.W #$B880                              ; $86AFE9 |
  STA.B $34,X                               ; $86AFEC |
  JML.L CODE_FL_86C63F                      ; $86AFEE |

CODE_86AFF2:
  LDA.B $32,X                               ; $86AFF2 |
  BPL CODE_86B011                           ; $86AFF4 |
  JSL.L CODE_FL_85A589                      ; $86AFF6 |
  JSL.L CODE_FL_85ABC2                      ; $86AFFA |
  SEP #$20                                  ; $86AFFE |
  LDA.B #$01                                ; $86B000 |
  STA.L $7E8B80                             ; $86B002 |
  REP #$20                                  ; $86B006 |
  LDA.W #$200E                              ; $86B008 |
  JSL.L CODE_FL_86CAEE                      ; $86B00B |
  INC.B $1A,X                               ; $86B00F |

CODE_86B011:
  RTL                                       ; $86B011 |

CODE_86B012:
  JSL.L CODE_FL_86C3F8                      ; $86B012 |
  LDA.B $1A,X                               ; $86B016 |
  PHX                                       ; $86B018 |
  ASL A                                     ; $86B019 |
  TAX                                       ; $86B01A |
  LDA.L PTR16_86B025,X                      ; $86B01B |
  PLX                                       ; $86B01F |
  STA.B $00                                 ; $86B020 |
  JMP.W ($0000)                             ; $86B022 |

PTR16_86B025:
  dw CODE_86B02D                            ; $86B025 |
  dw CODE_86B045                            ; $86B027 |
  dw CODE_86B049                            ; $86B029 |
  dw CODE_86B062                            ; $86B02B |

CODE_86B02D:
  JSL.L CODE_FL_86C7AD                      ; $86B02D |
  JSL.L CODE_FL_85ABD5                      ; $86B031 |
  LDA.W #$3000                              ; $86B035 |
  STA.B $00,X                               ; $86B038 |
  LDA.B $34,X                               ; $86B03A |
  ORA.W #$B880                              ; $86B03C |
  STA.B $34,X                               ; $86B03F |
  JML.L CODE_FL_86C63F                      ; $86B041 |

CODE_86B045:
  JML.L CODE_FL_85A646                      ; $86B045 |

CODE_86B049:
  LDA.B $32,X                               ; $86B049 |
  BPL CODE_86B061                           ; $86B04B |
  LDA.W #$000C                              ; $86B04D |
  JSL.L push_sound_queue                    ; $86B050 |
  JSL.L CODE_FL_85ABC2                      ; $86B054 |
  LDA.W #$200E                              ; $86B058 |
  JSL.L CODE_FL_86CAEE                      ; $86B05B |
  INC.B $1A,X                               ; $86B05F |

CODE_86B061:
  RTL                                       ; $86B061 |

CODE_86B062:
  JSL.L CODE_FL_86C239                      ; $86B062 |
  BCC CODE_86B074                           ; $86B066 |
  LDA.B $20,X                               ; $86B068 |
  BNE CODE_86B074                           ; $86B06A |
  JSL.L CODE_FL_85ABD5                      ; $86B06C |
  STZ.B $32,X                               ; $86B070 |
  DEC.B $1A,X                               ; $86B072 |

CODE_86B074:
  RTL                                       ; $86B074 |

CODE_86B075:
  JSL.L CODE_FL_86C3F8                      ; $86B075 |
  LDA.B $1A,X                               ; $86B079 |
  PHX                                       ; $86B07B |
  ASL A                                     ; $86B07C |
  TAX                                       ; $86B07D |
  LDA.L PTR16_86B088,X                      ; $86B07E |
  PLX                                       ; $86B082 |
  STA.B $00                                 ; $86B083 |
  JMP.W ($0000)                             ; $86B085 |

PTR16_86B088:
  dw CODE_86B08E                            ; $86B088 |
  dw CODE_86B0A6                            ; $86B08A |
  dw CODE_86B062                            ; $86B08C |

CODE_86B08E:
  JSL.L CODE_FL_86C7AD                      ; $86B08E |
  JSL.L CODE_FL_85ABD5                      ; $86B092 |
  LDA.W #$3018                              ; $86B096 |
  STA.B $00,X                               ; $86B099 |
  LDA.B $34,X                               ; $86B09B |
  ORA.W #$B088                              ; $86B09D |
  STA.B $34,X                               ; $86B0A0 |
  JML.L CODE_FL_86C63F                      ; $86B0A2 |

CODE_86B0A6:
  LDA.B $32,X                               ; $86B0A6 |
  BPL CODE_86B0BE                           ; $86B0A8 |
  LDA.W #$000C                              ; $86B0AA |
  JSL.L push_sound_queue                    ; $86B0AD |
  JSL.L CODE_FL_85ABC2                      ; $86B0B1 |
  LDA.W #$200F                              ; $86B0B5 |
  JSL.L CODE_FL_86CAEE                      ; $86B0B8 |
  INC.B $1A,X                               ; $86B0BC |

CODE_86B0BE:
  RTL                                       ; $86B0BE |

CODE_86B0BF:
  JSL.L CODE_FL_86C3F8                      ; $86B0BF |
  LDA.B $1A,X                               ; $86B0C3 |
  PHX                                       ; $86B0C5 |
  ASL A                                     ; $86B0C6 |
  TAX                                       ; $86B0C7 |
  LDA.L PTR16_86B0D2,X                      ; $86B0C8 |
  PLX                                       ; $86B0CC |
  STA.B $00                                 ; $86B0CD |
  JMP.W ($0000)                             ; $86B0CF |

PTR16_86B0D2:
  dw CODE_86B0DA                            ; $86B0D2 |
  dw CODE_86B0E9                            ; $86B0D4 |
  dw CODE_86B0ED                            ; $86B0D6 |
  dw CODE_86B104                            ; $86B0D8 |

CODE_86B0DA:
  JSL.L CODE_FL_85ABD5                      ; $86B0DA |
  LDA.B $34,X                               ; $86B0DE |
  ORA.W #$B880                              ; $86B0E0 |
  STA.B $34,X                               ; $86B0E3 |
  JML.L CODE_FL_86C63F                      ; $86B0E5 |

CODE_86B0E9:
  JML.L CODE_FL_85A646                      ; $86B0E9 |

CODE_86B0ED:
  LDA.B $32,X                               ; $86B0ED |
  BPL CODE_86B104                           ; $86B0EF |
  LDA.W #$000C                              ; $86B0F1 |
  JSL.L push_sound_queue                    ; $86B0F4 |
  JSL.L CODE_FL_85ABAD                      ; $86B0F8 |
  BCS CODE_86B104                           ; $86B0FC |
  JSL.L CODE_FL_85ABC2                      ; $86B0FE |
  INC.B $1A,X                               ; $86B102 |

CODE_86B104:
  RTL                                       ; $86B104 |

CODE_86B105:
  LDA.W #$0036                              ; $86B105 |
  JSL.L CODE_FL_85ABF5                      ; $86B108 |
  LDY.W #$0083                              ; $86B10C |
  BCC CODE_86B114                           ; $86B10F |
  LDY.W #$0046                              ; $86B111 |

CODE_86B114:
  STY.B $18,X                               ; $86B114 |
  RTL                                       ; $86B116 |

CODE_86B117:
  JSL.L CODE_FL_86C3B0                      ; $86B117 |
  PHX                                       ; $86B11B |
  ASL A                                     ; $86B11C |
  TAX                                       ; $86B11D |
  LDA.L PTR16_86B128,X                      ; $86B11E |
  PLX                                       ; $86B122 |
  STA.B $00                                 ; $86B123 |
  JMP.W ($0000)                             ; $86B125 |

PTR16_86B128:
  dw CODE_FL_86B12E                         ; $86B128 |
  dw CODE_86B158                            ; $86B12A |
  dw CODE_FL_86B214                         ; $86B12C |

CODE_FL_86B12E:
  JSL.L CODE_FL_86C7AD                      ; $86B12E |
  JSL.L CODE_FL_85A8D6                      ; $86B132 |
  JSL.L CODE_FL_85AA07                      ; $86B136 |
  LDA.W #$003F                              ; $86B13A |
  STA.B $14,X                               ; $86B13D |
  LDA.W #$3118                              ; $86B13F |
  STA.B $00,X                               ; $86B142 |
  JSL.L CODE_FL_85AD48                      ; $86B144 |
  LDA.B $34,X                               ; $86B148 |
  ORA.W #$3A80                              ; $86B14A |
  STA.B $34,X                               ; $86B14D |
  LDA.W #$0001                              ; $86B14F |
  STA.B $3E,X                               ; $86B152 |
  JML.L CODE_FL_86C63F                      ; $86B154 |

CODE_86B158:
  JML.L CODE_JL_8CF1B7                      ; $86B158 |

CODE_86B15C:
  JSL.L CODE_FL_86C3B0                      ; $86B15C |
  PHX                                       ; $86B160 |
  ASL A                                     ; $86B161 |
  TAX                                       ; $86B162 |
  LDA.L PTR16_86B16D,X                      ; $86B163 |
  PLX                                       ; $86B167 |
  STA.B $00                                 ; $86B168 |
  JMP.W ($0000)                             ; $86B16A |

PTR16_86B16D:
  dw CODE_86B173                            ; $86B16D |
  dw CODE_86B1A1                            ; $86B16F |
  dw CODE_FL_86B214                         ; $86B171 |

CODE_86B173:
  JSL.L CODE_FL_86C7AD                      ; $86B173 |
  JSL.L CODE_FL_85A8D6                      ; $86B177 |
  LDA.B $4E,X                               ; $86B17B |
  AND.W #$0001                              ; $86B17D |
  BNE CODE_86B186                           ; $86B180 |
  JSL.L CODE_FL_85AA07                      ; $86B182 |

CODE_86B186:
  JSL.L CODE_FL_85AD48                      ; $86B186 |
  LDA.W #$002E                              ; $86B18A |
  STA.B $14,X                               ; $86B18D |
  LDA.W #$30AC                              ; $86B18F |
  STA.B $00,X                               ; $86B192 |
  INC.B $3E,X                               ; $86B194 |
  LDA.B $34,X                               ; $86B196 |
  ORA.W #$3A8C                              ; $86B198 |
  STA.B $34,X                               ; $86B19B |
  JML.L CODE_FL_86C63F                      ; $86B19D |

CODE_86B1A1:
  LDA.B $34,X                               ; $86B1A1 |
  ORA.W #$0004                              ; $86B1A3 |
  STA.B $34,X                               ; $86B1A6 |
  LDA.B $28,X                               ; $86B1A8 |
  BPL CODE_86B1C0                           ; $86B1AA |
  JSL.L CODE_FL_858B01                      ; $86B1AC |
  BEQ CODE_86B1C0                           ; $86B1B0 |
  STZ.B $28,X                               ; $86B1B2 |
  JSL.L CODE_FL_85A671                      ; $86B1B4 |
  CLC                                       ; $86B1B8 |
  LDA.B $0D,X                               ; $86B1B9 |
  ADC.B $30,X                               ; $86B1BB |
  STA.B $0D,X                               ; $86B1BD |
  RTL                                       ; $86B1BF |

CODE_86B1C0:
  JSL.L CODE_FL_A8FC80                      ; $86B1C0 |
  LDA.B $46,X                               ; $86B1C4 |
  AND.W #$0100                              ; $86B1C6 |
  BEQ CODE_86B1DB                           ; $86B1C9 |
  LDA.B $3E,X                               ; $86B1CB |
  BNE CODE_86B1DB                           ; $86B1CD |
  LDA.W #$0001                              ; $86B1CF |
  STA.B $3E,X                               ; $86B1D2 |
  LDA.W #$0028                              ; $86B1D4 |
  JSL.L CODE_FL_8089BD                      ; $86B1D7 |

CODE_86B1DB:
  JSL.L CODE_FL_858BB9                      ; $86B1DB |
  BNE CODE_86B1E7                           ; $86B1DF |
  JSL.L CODE_FL_86C82F                      ; $86B1E1 |
  BRA CODE_86B208                           ; $86B1E5 |

CODE_86B1E7:
  LDA.W $1C14                               ; $86B1E7 |
  BEQ CODE_86B204                           ; $86B1EA |
  CLC                                       ; $86B1EC |
  LDA.B $0D,X                               ; $86B1ED |
  ADC.W $1C24                               ; $86B1EF |
  STA.B $0D,X                               ; $86B1F2 |
  LDA.B $3E,X                               ; $86B1F4 |
  BNE CODE_86B204                           ; $86B1F6 |
  LDA.W #$0001                              ; $86B1F8 |
  STA.B $3E,X                               ; $86B1FB |
  LDA.W #$0028                              ; $86B1FD |
  JSL.L CODE_FL_8089BD                      ; $86B200 |

CODE_86B204:
  STZ.B $26,X                               ; $86B204 |
  STZ.B $28,X                               ; $86B206 |

CODE_86B208:
  LDA.B $46,X                               ; $86B208 |
  AND.W #$0200                              ; $86B20A |
  BEQ CODE_86B213                           ; $86B20D |
  INC.B $1A,X                               ; $86B20F |
  STZ.B $3E,X                               ; $86B211 |

CODE_86B213:
  RTL                                       ; $86B213 |

CODE_FL_86B214:
  CLC                                       ; $86B214 |
  LDA.B $2E,X                               ; $86B215 |
  ADC.W #$0002                              ; $86B217 |
  STA.B $2E,X                               ; $86B21A |
  LDY.B $3C,X                               ; $86B21C |
  JSL.L CODE_FL_83CDA4                      ; $86B21E |
  BCS CODE_86B22A                           ; $86B222 |
  DEC.B $1A,X                               ; $86B224 |
  STZ.B $46,X                               ; $86B226 |
  BRA CODE_86B269                           ; $86B228 |

CODE_86B22A:
  JSL.L CODE_FL_838589                      ; $86B22A |
  STZ.B $3A,X                               ; $86B22E |
  JSL.L CODE_FL_A8FC80                      ; $86B230 |
  LDA.B $46,X                               ; $86B234 |
  AND.W #$F178                              ; $86B236 |
  BNE CODE_86B24F                           ; $86B239 |
  LDY.B $3C,X                               ; $86B23B |
  LDA.W $0026,Y                             ; $86B23D |
  STA.B $26,X                               ; $86B240 |
  JSL.L CODE_FL_858BB9                      ; $86B242 |
  PHA                                       ; $86B246 |
  STZ.B $26,X                               ; $86B247 |
  PLA                                       ; $86B249 |
  ORA.W $1C12                               ; $86B24A |
  BEQ CODE_86B262                           ; $86B24D |

CODE_86B24F:
  LDA.B $46,X                               ; $86B24F |
  AND.W #$1000                              ; $86B251 |
  BEQ CODE_86B25D                           ; $86B254 |
  LDA.W #$0003                              ; $86B256 |
  STA.B $3A,X                               ; $86B259 |
  BRA CODE_86B262                           ; $86B25B |

CODE_86B25D:
  LDA.W #$0001                              ; $86B25D |
  STA.B $3A,X                               ; $86B260 |

CODE_86B262:
  LDA.B $46,X                               ; $86B262 |
  AND.W #$0E87                              ; $86B264 |
  STA.B $46,X                               ; $86B267 |

CODE_86B269:
  SEC                                       ; $86B269 |
  LDA.B $2E,X                               ; $86B26A |
  SBC.W #$0002                              ; $86B26C |
  STA.B $2E,X                               ; $86B26F |
  RTL                                       ; $86B271 |

CODE_FL_86B272:
  LDA.B $34,X                               ; $86B272 |
  ORA.W #$0004                              ; $86B274 |
  STA.B $34,X                               ; $86B277 |
  JSL.L CODE_FL_A8FC80                      ; $86B279 |
  LDA.B $46,X                               ; $86B27D |
  AND.W #$0100                              ; $86B27F |
  BEQ CODE_86B28E                           ; $86B282 |
  LDY.B $20                                 ; $86B284 |
  CLC                                       ; $86B286 |
  LDA.W $0010,Y                             ; $86B287 |
  ADC.B $09,X                               ; $86B28A |
  STA.B $09,X                               ; $86B28C |

CODE_86B28E:
  CLC                                       ; $86B28E |
  LDA.B $46,X                               ; $86B28F |
  AND.W #$0200                              ; $86B291 |
  BEQ CODE_86B29B                           ; $86B294 |
  STZ.B $46,X                               ; $86B296 |
  STZ.B $3E,X                               ; $86B298 |
  SEC                                       ; $86B29A |

CODE_86B29B:
  RTL                                       ; $86B29B |

CODE_FL_86B29C:
  LDA.B $46,X                               ; $86B29C |
  AND.W #$0200                              ; $86B29E |
  BNE CODE_86B2A5                           ; $86B2A1 |
  CLC                                       ; $86B2A3 |
  RTL                                       ; $86B2A4 |

CODE_86B2A5:
  LDY.W #$0400                              ; $86B2A5 |
  LDA.B $46,X                               ; $86B2A8 |
  AND.W #$0800                              ; $86B2AA |
  BNE CODE_86B2B2                           ; $86B2AD |
  LDY.W #$04C0                              ; $86B2AF |

CODE_86B2B2:
  LDA.B $3A,X                               ; $86B2B2 |
  STA.B $00                                 ; $86B2B4 |
  LDA.W $0004,Y                             ; $86B2B6 |
  BIT.W #$0020                              ; $86B2B9 |
  BEQ CODE_86B2C6                           ; $86B2BC |
  LDA.B $00                                 ; $86B2BE |
  EOR.W #$FFFF                              ; $86B2C0 |
  INC A                                     ; $86B2C3 |
  STA.B $00                                 ; $86B2C4 |

CODE_86B2C6:
  LDA.W $0009,Y                             ; $86B2C6 |
  CLC                                       ; $86B2C9 |
  ADC.B $00                                 ; $86B2CA |
  STA.B $09,X                               ; $86B2CC |
  LDA.W $000D,Y                             ; $86B2CE |
  CLC                                       ; $86B2D1 |
  ADC.B $3C,X                               ; $86B2D2 |
  STA.B $0D,X                               ; $86B2D4 |
  LDA.B $46,X                               ; $86B2D6 |
  AND.W #$7CFF                              ; $86B2D8 |
  STA.B $46,X                               ; $86B2DB |
  RTL                                       ; $86B2DD |

CODE_86B2DE:
  LDA.B $09,X                               ; $86B2DE |
  PHA                                       ; $86B2E0 |
  LDA.B $0D,X                               ; $86B2E1 |
  PHA                                       ; $86B2E3 |
  JSL.L CODE_FL_86B2FD                      ; $86B2E4 |
  SEC                                       ; $86B2E8 |
  PLA                                       ; $86B2E9 |
  SBC.B $0D,X                               ; $86B2EA |
  EOR.W #$FFFF                              ; $86B2EC |
  INC A                                     ; $86B2EF |
  STA.B $12,X                               ; $86B2F0 |
  SEC                                       ; $86B2F2 |
  PLA                                       ; $86B2F3 |
  SBC.B $09,X                               ; $86B2F4 |
  EOR.W #$FFFF                              ; $86B2F6 |
  INC A                                     ; $86B2F9 |
  STA.B $10,X                               ; $86B2FA |
  RTL                                       ; $86B2FC |

CODE_FL_86B2FD:
  JSL.L CODE_FL_86C424                      ; $86B2FD |
  PHX                                       ; $86B301 |
  ASL A                                     ; $86B302 |
  TAX                                       ; $86B303 |
  LDA.L PTR16_86B30E,X                      ; $86B304 |
  PLX                                       ; $86B308 |
  STA.B $00                                 ; $86B309 |
  JMP.W ($0000)                             ; $86B30B |

PTR16_86B30E:
  dw CODE_86B312                            ; $86B30E |
  dw CODE_JL_86B364                         ; $86B310 |

CODE_86B312:
  JSL.L CODE_FL_86C7AD                      ; $86B312 |
  JSL.L CODE_FL_85A8D6                      ; $86B316 |
  JSL.L CODE_FL_85AD48                      ; $86B31A |
  LDA.W #$30AE                              ; $86B31E |
  STA.B $00,X                               ; $86B321 |
  LDA.B $4E,X                               ; $86B323 |
  AND.W #$0001                              ; $86B325 |
  BEQ CODE_86B32F                           ; $86B328 |
  LDA.W #$3138                              ; $86B32A |
  STA.B $00,X                               ; $86B32D |

CODE_86B32F:
  LDA.B $4E,X                               ; $86B32F |
  AND.W #$0004                              ; $86B331 |
  BNE CODE_86B33A                           ; $86B334 |
  JSL.L CODE_FL_85AA07                      ; $86B336 |

CODE_86B33A:
  JSL.L CODE_FL_85AC74                      ; $86B33A |
  LDA.B $34,X                               ; $86B33E |
  ORA.W #$BC80                              ; $86B340 |
  STA.B $34,X                               ; $86B343 |
  JSL.L CODE_FL_86C63F                      ; $86B345 |
  LDA.B $4E,X                               ; $86B349 |
  AND.W #$0002                              ; $86B34B |
  BEQ CODE_86B361                           ; $86B34E |
  LDA.W #$32D6                              ; $86B350 |
  STA.B $00,X                               ; $86B353 |
  LDA.W #$0040                              ; $86B355 |
  STA.B $30,X                               ; $86B358 |
  LDA.B $34,X                               ; $86B35A |
  AND.W #$FBFF                              ; $86B35C |
  STA.B $34,X                               ; $86B35F |

CODE_86B361:
  INC.B $3E,X                               ; $86B361 |
  RTL                                       ; $86B363 |

CODE_JL_86B364:
  JSL.L CODE_FL_86C82F                      ; $86B364 |
  JSL.L CODE_FL_858BB9                      ; $86B368 |
  BEQ CODE_86B3B0                           ; $86B36C |
  LDA.W $1C12                               ; $86B36E |
  BNE CODE_86B395                           ; $86B371 |
  LDA.B $46,X                               ; $86B373 |
  AND.W #$2000                              ; $86B375 |
  BEQ CODE_86B395                           ; $86B378 |
  LDA.W $1C12                               ; $86B37A |
  BNE CODE_86B395                           ; $86B37D |
  LDA.B $26,X                               ; $86B37F |
  BEQ CODE_86B395                           ; $86B381 |
  INC.B $40,X                               ; $86B383 |
  LDA.B $40,X                               ; $86B385 |
  CMP.W #$0007                              ; $86B387 |
  BCC CODE_86B395                           ; $86B38A |
  STZ.B $40,X                               ; $86B38C |
  LDA.W #$0017                              ; $86B38E |
  JSL.L push_sound_queue                    ; $86B391 |

CODE_86B395:
  LDA.W $1C14                               ; $86B395 |
  BEQ CODE_86B3B0                           ; $86B398 |
  CLC                                       ; $86B39A |
  LDA.B $0D,X                               ; $86B39B |
  ADC.W $1C24                               ; $86B39D |
  STA.B $0D,X                               ; $86B3A0 |
  STZ.B $28,X                               ; $86B3A2 |
  LDA.W $1C24                               ; $86B3A4 |
  BEQ CODE_86B3B0                           ; $86B3A7 |
  LDA.W #$001B                              ; $86B3A9 |
  JSL.L push_sound_queue                    ; $86B3AC |

CODE_86B3B0:
  JSL.L CODE_FL_86C855                      ; $86B3B0 |
  JSL.L CODE_FL_A8FC80                      ; $86B3B4 |
  LDA.B $46,X                               ; $86B3B8 |
  AND.W #$0008                              ; $86B3BA |
  BEQ CODE_86B3C1                           ; $86B3BD |
  STZ.B $40,X                               ; $86B3BF |

CODE_86B3C1:
  LDA.B $46,X                               ; $86B3C1 |
  AND.W #$0100                              ; $86B3C3 |
  BEQ CODE_86B3F3                           ; $86B3C6 |
  LDA.B $46,X                               ; $86B3C8 |
  AND.W #$0040                              ; $86B3CA |
  BNE CODE_86B3F3                           ; $86B3CD |
  LDY.B $20                                 ; $86B3CF |
  CLC                                       ; $86B3D1 |
  LDA.W $0010,Y                             ; $86B3D2 |
  ADC.B $09,X                               ; $86B3D5 |
  STA.B $09,X                               ; $86B3D7 |
  LDA.B $3E,X                               ; $86B3D9 |
  BNE CODE_86B3F5                           ; $86B3DB |
  LDA.B $28,X                               ; $86B3DD |
  BMI CODE_86B3F5                           ; $86B3DF |
  CMP.W #$0080                              ; $86B3E1 |
  BCC CODE_86B3F5                           ; $86B3E4 |
  INC.B $3E,X                               ; $86B3E6 |
  LDA.W #$001B                              ; $86B3E8 |
  JSL.L push_sound_queue                    ; $86B3EB |
  STZ.B $26,X                               ; $86B3EF |
  BRA CODE_86B3F5                           ; $86B3F1 |

CODE_86B3F3:
  STZ.B $3E,X                               ; $86B3F3 |

CODE_86B3F5:
  LDA.B $46,X                               ; $86B3F5 |
  AND.W #$0048                              ; $86B3F7 |
  STA.B $46,X                               ; $86B3FA |
  STZ.B $26,X                               ; $86B3FC |
  RTL                                       ; $86B3FE |

CODE_86B3FF:
  JSL.L CODE_FL_86C424                      ; $86B3FF |
  LDA.B $1A,X                               ; $86B403 |
  PHX                                       ; $86B405 |
  ASL A                                     ; $86B406 |
  TAX                                       ; $86B407 |
  LDA.L PTR16_86B412,X                      ; $86B408 |
  PLX                                       ; $86B40C |
  STA.B $00                                 ; $86B40D |
  JMP.W ($0000)                             ; $86B40F |

PTR16_86B412:
  dw CODE_86B416                            ; $86B412 |
  dw CODE_86B43B                            ; $86B414 |

CODE_86B416:
  JSL.L CODE_FL_86C7AD                      ; $86B416 |
  JSL.L CODE_FL_85A8D6                      ; $86B41A |
  JSL.L CODE_FL_85AD48                      ; $86B41E |
  LDA.W #$3196                              ; $86B422 |
  STA.B $00,X                               ; $86B425 |
  LDA.W #$0001                              ; $86B427 |
  STA.B $3E,X                               ; $86B42A |
  JSL.L CODE_FL_85AA07                      ; $86B42C |
  LDA.B $34,X                               ; $86B430 |
  ORA.W #$B880                              ; $86B432 |
  STA.B $34,X                               ; $86B435 |
  JML.L CODE_FL_86C63F                      ; $86B437 |

CODE_86B43B:
  STZ.B $46,X                               ; $86B43B |
  JSL.L CODE_FL_85AD36                      ; $86B43D |
  JSL.L CODE_FL_A8FC80                      ; $86B441 |
  LDA.B $46,X                               ; $86B445 |
  AND.W #$0100                              ; $86B447 |
  BEQ CODE_86B45C                           ; $86B44A |
  LDA.B $3E,X                               ; $86B44C |
  BNE CODE_86B45C                           ; $86B44E |
  LDA.W #$0001                              ; $86B450 |
  STA.B $3E,X                               ; $86B453 |
  LDA.W #$001B                              ; $86B455 |
  JSL.L push_sound_queue                    ; $86B458 |

CODE_86B45C:
  JSL.L CODE_FL_858B70                      ; $86B45C |
  BNE CODE_86B470                           ; $86B460 |
  JSL.L CODE_FL_86C82F                      ; $86B462 |
  LDA.B $46,X                               ; $86B466 |
  AND.W #$0100                              ; $86B468 |
  BNE CODE_86B46F                           ; $86B46B |
  STZ.B $3E,X                               ; $86B46D |

CODE_86B46F:
  RTL                                       ; $86B46F |

CODE_86B470:
  CLC                                       ; $86B470 |
  LDA.B $0D,X                               ; $86B471 |
  ADC.W $1C24                               ; $86B473 |
  STA.B $0D,X                               ; $86B476 |
  STZ.B $28,X                               ; $86B478 |
  LDA.W $1C24                               ; $86B47A |
  BEQ CODE_86B486                           ; $86B47D |
  LDA.W #$001B                              ; $86B47F |
  JSL.L push_sound_queue                    ; $86B482 |

CODE_86B486:
  RTL                                       ; $86B486 |

CODE_86B487:
  JSL.L CODE_FL_86C3B0                      ; $86B487 |
  PHX                                       ; $86B48B |
  ASL A                                     ; $86B48C |
  TAX                                       ; $86B48D |
  LDA.L PTR16_86B498,X                      ; $86B48E |
  PLX                                       ; $86B492 |
  STA.B $00                                 ; $86B493 |
  JMP.W ($0000)                             ; $86B495 |

PTR16_86B498:
  dw CODE_86B49C                            ; $86B498 |
  dw CODE_86B4BC                            ; $86B49A |

CODE_86B49C:
  JSL.L CODE_FL_86C7AD                      ; $86B49C |
  JSL.L CODE_FL_85A8D6                      ; $86B4A0 |
  JSL.L CODE_FL_85AD48                      ; $86B4A4 |
  LDA.W #$30B6                              ; $86B4A8 |
  STA.B $00,X                               ; $86B4AB |
  JSL.L CODE_FL_85AA07                      ; $86B4AD |
  LDA.B $34,X                               ; $86B4B1 |
  ORA.W #$B880                              ; $86B4B3 |
  STA.B $34,X                               ; $86B4B6 |
  JML.L CODE_FL_86C63F                      ; $86B4B8 |

CODE_86B4BC:
  JSL.L CODE_FL_A8FC80                      ; $86B4BC |
  JSL.L CODE_FL_858BB9                      ; $86B4C0 |
  BNE CODE_86B4CB                           ; $86B4C4 |
  JSL.L CODE_FL_86C82F                      ; $86B4C6 |
  RTL                                       ; $86B4CA |

CODE_86B4CB:
  CLC                                       ; $86B4CB |
  LDA.B $0D,X                               ; $86B4CC |
  ADC.W $1C24                               ; $86B4CE |
  STA.B $0D,X                               ; $86B4D1 |
  STZ.B $28,X                               ; $86B4D3 |
  LDA.W $1C24                               ; $86B4D5 |
  BEQ CODE_86B4E1                           ; $86B4D8 |
  LDA.W #$001B                              ; $86B4DA |
  JSL.L push_sound_queue                    ; $86B4DD |

CODE_86B4E1:
  RTL                                       ; $86B4E1 |

CODE_86B4E2:
  JSL.L CODE_FL_85F885                      ; $86B4E2 |
  JSL.L CODE_FL_86C3B0                      ; $86B4E6 |
  PHX                                       ; $86B4EA |
  ASL A                                     ; $86B4EB |
  TAX                                       ; $86B4EC |
  LDA.L PTR16_86B4F7,X                      ; $86B4ED |
  PLX                                       ; $86B4F1 |
  STA.B $00                                 ; $86B4F2 |
  JMP.W ($0000)                             ; $86B4F4 |

PTR16_86B4F7:
  dw CODE_86B501                            ; $86B4F7 |
  dw CODE_86B518                            ; $86B4F9 |
  dw CODE_86B55B                            ; $86B4FB |
  dw CODE_86B565                            ; $86B4FD |
  dw CODE_86B569                            ; $86B4FF |

CODE_86B501:
  LDA.B $09,X                               ; $86B501 |
  CMP.W #$FFE1                              ; $86B503 |
  BMI CODE_86B517                           ; $86B506 |
  CMP.W #$00E0                              ; $86B508 |
  BPL CODE_86B517                           ; $86B50B |
  LDA.W $1C5E                               ; $86B50D |
  CMP.W #$0004                              ; $86B510 |
  BNE CODE_86B517                           ; $86B513 |
  INC.B $1A,X                               ; $86B515 |

CODE_86B517:
  RTL                                       ; $86B517 |

CODE_86B518:
  LDA.W #$0200                              ; $86B518 |
  SEC                                       ; $86B51B |
  SBC.W $1672                               ; $86B51C |
  STA.B $0A                                 ; $86B51F |
  LDA.B $09,X                               ; $86B521 |
  CLC                                       ; $86B523 |
  ADC.W $1662                               ; $86B524 |
  TAY                                       ; $86B527 |
  AND.W #$FFE0                              ; $86B528 |
  SEC                                       ; $86B52B |
  SBC.W $1662                               ; $86B52C |
  STA.B $08                                 ; $86B52F |
  TYA                                       ; $86B531 |
  LDY.W #$0078                              ; $86B532 |
  BIT.W #$0010                              ; $86B535 |
  BNE CODE_86B53D                           ; $86B538 |
  LDY.W #$007A                              ; $86B53A |

CODE_86B53D:
  TYA                                       ; $86B53D |
  JSL.L CODE_FL_8580F7                      ; $86B53E |
  BCS CODE_86B55A                           ; $86B542 |
  JSL.L CODE_FL_86C7AD                      ; $86B544 |
  JSL.L CODE_FL_85A9EF                      ; $86B548 |
  LDA.W #$31BE                              ; $86B54C |
  STA.B $00,X                               ; $86B54F |
  LDA.W #$0040                              ; $86B551 |
  STA.B $2C,X                               ; $86B554 |
  JML.L CODE_FL_86C63F                      ; $86B556 |

CODE_86B55A:
  RTL                                       ; $86B55A |

CODE_86B55B:
  JSL.L CODE_FL_86C393                      ; $86B55B |
  JSL.L CODE_FL_86C70D                      ; $86B55F |
  INC.B $1A,X                               ; $86B563 |

CODE_86B565:
  JML.L CODE_FL_85A646                      ; $86B565 |

CODE_86B569:
  JML.L CODE_FL_86CA36                      ; $86B569 |

CODE_86B56D:
  JSL.L CODE_FL_85F885                      ; $86B56D |
  JSL.L CODE_FL_86C3F8                      ; $86B571 |
  LDA.B $1A,X                               ; $86B575 |
  PHX                                       ; $86B577 |
  ASL A                                     ; $86B578 |
  TAX                                       ; $86B579 |
  LDA.L PTR16_86B584,X                      ; $86B57A |
  PLX                                       ; $86B57E |
  STA.B $00                                 ; $86B57F |
  JMP.W ($0000)                             ; $86B581 |

PTR16_86B584:
  dw CODE_86B58E                            ; $86B584 |
  dw CODE_86B5B5                            ; $86B586 |
  dw CODE_86B5C6                            ; $86B588 |
  dw CODE_86B5D8                            ; $86B58A |
  dw CODE_86B607                            ; $86B58C |

CODE_86B58E:
  JSL.L CODE_FL_86C7AD                      ; $86B58E |
  LDA.B $04,X                               ; $86B592 |
  AND.W #$6767                              ; $86B594 |
  ORA.W #$1090                              ; $86B597 |
  STA.B $04,X                               ; $86B59A |
  JSL.L CODE_FL_85A9EF                      ; $86B59C |
  LDA.B $34,X                               ; $86B5A0 |
  ORA.W #$0090                              ; $86B5A2 |
  STA.B $34,X                               ; $86B5A5 |
  LDA.W #$31B6                              ; $86B5A7 |
  STA.B $00,X                               ; $86B5AA |
  LDA.W #$0080                              ; $86B5AC |
  STA.B $2C,X                               ; $86B5AF |
  JML.L CODE_FL_86C63F                      ; $86B5B1 |

CODE_86B5B5:
  JSL.L CODE_FL_86C70D                      ; $86B5B5 |
  LDA.W #$0008                              ; $86B5B9 |
  STA.B $2C,X                               ; $86B5BC |
  LDA.W #$0400                              ; $86B5BE |
  STA.B $28,X                               ; $86B5C1 |
  INC.B $1A,X                               ; $86B5C3 |
  RTL                                       ; $86B5C5 |

CODE_86B5C6:
  JSL.L CODE_FL_86C70D                      ; $86B5C6 |
  JSL.L CODE_FL_85A9F7                      ; $86B5CA |
  STZ.B $28,X                               ; $86B5CE |
  LDA.W #$0080                              ; $86B5D0 |
  STA.B $2C,X                               ; $86B5D3 |
  INC.B $1A,X                               ; $86B5D5 |
  RTL                                       ; $86B5D7 |

CODE_86B5D8:
  JSL.L CODE_FL_86C70D                      ; $86B5D8 |
  JSL.L CODE_FL_85A9EF                      ; $86B5DC |
  LDA.W #$0008                              ; $86B5E0 |
  STA.B $2C,X                               ; $86B5E3 |
  LDA.W #$FC00                              ; $86B5E5 |
  STA.B $28,X                               ; $86B5E8 |
  INC.B $1A,X                               ; $86B5EA |
  LDA.B $0D,X                               ; $86B5EC |
  SBC.W #$0020                              ; $86B5EE |
  BMI CODE_86B606                           ; $86B5F1 |
  LDA.B $09,X                               ; $86B5F3 |
  CMP.W #$0010                              ; $86B5F5 |
  BMI CODE_86B606                           ; $86B5F8 |
  CMP.W #$00F0                              ; $86B5FA |
  BPL CODE_86B606                           ; $86B5FD |
  LDA.W #$0038                              ; $86B5FF |
  JSL.L CODE_FL_8089BD                      ; $86B602 |

CODE_86B606:
  RTL                                       ; $86B606 |

CODE_86B607:
  JSL.L CODE_FL_86C70D                      ; $86B607 |
  STZ.B $28,X                               ; $86B60B |
  LDA.W #$0080                              ; $86B60D |
  STA.B $2C,X                               ; $86B610 |
  LDA.W #$0001                              ; $86B612 |
  STA.B $1A,X                               ; $86B615 |
  RTL                                       ; $86B617 |

CODE_86B618:
  LDA.W #$0000                              ; $86B618 |
  BRA CODE_86B63E                           ; $86B61B |

CODE_86B61D:
  LDA.W #$0001                              ; $86B61D |
  BRA CODE_86B63E                           ; $86B620 |

CODE_86B622:
  LDA.W #$0002                              ; $86B622 |
  BRA CODE_86B63E                           ; $86B625 |

CODE_86B627:
  LDA.W #$0003                              ; $86B627 |
  BRA CODE_86B63E                           ; $86B62A |

CODE_86B62C:
  LDA.W #$0004                              ; $86B62C |
  BRA CODE_86B63E                           ; $86B62F |

CODE_86B631:
  LDA.W #$0005                              ; $86B631 |
  BRA CODE_86B63E                           ; $86B634 |

CODE_86B636:
  LDA.W #$0006                              ; $86B636 |
  BRA CODE_86B63E                           ; $86B639 |

CODE_86B63B:
  LDA.W #$0007                              ; $86B63B |

CODE_86B63E:
  STA.B $18                                 ; $86B63E |
  INC.W $19B2                               ; $86B640 |
  LDA.B $1A,X                               ; $86B643 |
  PHX                                       ; $86B645 |
  ASL A                                     ; $86B646 |
  TAX                                       ; $86B647 |
  LDA.L PTR16_86B652,X                      ; $86B648 |
  PLX                                       ; $86B64C |
  STA.B $00                                 ; $86B64D |
  JMP.W ($0000)                             ; $86B64F |

PTR16_86B652:
  dw CODE_86B658                            ; $86B652 |
  dw CODE_86B664                            ; $86B654 |
  dw CODE_86B74B                            ; $86B656 |

CODE_86B658:
  JSL.L CODE_FL_85A5C4                      ; $86B658 |
  LDA.W #$303C                              ; $86B65C |
  STA.B $00,X                               ; $86B65F |
  JMP.W CODE_JP_86B727                      ; $86B661 |

CODE_86B664:
  LDX.B $18                                 ; $86B664 |
  LDA.L $7E8B80,X                           ; $86B666 |
  LDX.B $FC                                 ; $86B66A |
  AND.W #$00FF                              ; $86B66C |
  BEQ CODE_86B678                           ; $86B66F |
  LDA.W #$3030                              ; $86B671 |
  STA.B $00,X                               ; $86B674 |
  INC.B $1A,X                               ; $86B676 |

CODE_86B678:
  RTL                                       ; $86B678 |

CODE_86B679:
  INC.W $19B2                               ; $86B679 |
  LDA.B $1A,X                               ; $86B67C |
  PHX                                       ; $86B67E |
  ASL A                                     ; $86B67F |
  TAX                                       ; $86B680 |
  LDA.L PTR16_86B68B,X                      ; $86B681 |
  PLX                                       ; $86B685 |
  STA.B $00                                 ; $86B686 |
  JMP.W ($0000)                             ; $86B688 |

PTR16_86B68B:
  dw CODE_86B68F                            ; $86B68B |
  dw CODE_86B693                            ; $86B68D |

CODE_86B68F:
  JML.L CODE_FL_86C63F                      ; $86B68F |

CODE_86B693:
  JSL.L CODE_FL_85F741                      ; $86B693 |
  LDA.W $0448                               ; $86B697 |
  BEQ CODE_86B6A0                           ; $86B69A |
  LDA.B $20                                 ; $86B69C |
  BNE CODE_86B6A9                           ; $86B69E |

CODE_86B6A0:
  LDA.W $0508                               ; $86B6A0 |
  BEQ CODE_86B6B3                           ; $86B6A3 |
  LDA.B $22                                 ; $86B6A5 |
  BEQ CODE_86B6B3                           ; $86B6A7 |

CODE_86B6A9:
  LDA.B $4E,X                               ; $86B6A9 |
  JSL.L CODE_FL_80E9E7                      ; $86B6AB |
  JSL.L CODE_FL_848000                      ; $86B6AF |

CODE_86B6B3:
  RTL                                       ; $86B6B3 |

CODE_86B6B4:
  INC.W $19B2                               ; $86B6B4 |
  JSL.L CODE_FL_86C3F8                      ; $86B6B7 |
  LDA.B $1A,X                               ; $86B6BB |
  PHX                                       ; $86B6BD |
  ASL A                                     ; $86B6BE |
  TAX                                       ; $86B6BF |
  LDA.L PTR16_86B6CA,X                      ; $86B6C0 |
  PLX                                       ; $86B6C4 |
  STA.B $00                                 ; $86B6C5 |
  JMP.W ($0000)                             ; $86B6C7 |

PTR16_86B6CA:
  dw CODE_86B6CE                            ; $86B6CA |
  dw CODE_86B735                            ; $86B6CC |

CODE_86B6CE:
  JSL.L CODE_FL_85A5C4                      ; $86B6CE |
  LDA.W #$0060                              ; $86B6D2 |
  STA.B $06,X                               ; $86B6D5 |
  LDA.W #$3054                              ; $86B6D7 |
  STA.B $00,X                               ; $86B6DA |
  BRA CODE_86B72C                           ; $86B6DC |

CODE_86B6DE:
  INC.W $19B2                               ; $86B6DE |
  JSL.L CODE_FL_86C3F8                      ; $86B6E1 |
  LDA.B $1A,X                               ; $86B6E5 |
  PHX                                       ; $86B6E7 |
  ASL A                                     ; $86B6E8 |
  TAX                                       ; $86B6E9 |
  LDA.L PTR16_86B6F4,X                      ; $86B6EA |
  PLX                                       ; $86B6EE |
  STA.B $00                                 ; $86B6EF |
  JMP.W ($0000)                             ; $86B6F1 |

PTR16_86B6F4:
  dw CODE_86B6F8                            ; $86B6F4 |
  dw CODE_86B735                            ; $86B6F6 |

CODE_86B6F8:
  LDA.W #$0020                              ; $86B6F8 |
  STA.B $14,X                               ; $86B6FB |
  LDA.W #$3054                              ; $86B6FD |
  STA.B $00,X                               ; $86B700 |
  BRA CODE_JP_86B727                        ; $86B702 |

CODE_86B704:
  INC.W $19B2                               ; $86B704 |
  JSL.L CODE_FL_86C3F8                      ; $86B707 |
  LDA.B $1A,X                               ; $86B70B |
  PHX                                       ; $86B70D |
  ASL A                                     ; $86B70E |
  TAX                                       ; $86B70F |
  LDA.L PTR16_86B71A,X                      ; $86B710 |
  PLX                                       ; $86B714 |
  STA.B $00                                 ; $86B715 |
  JMP.W ($0000)                             ; $86B717 |

PTR16_86B71A:
  dw CODE_FL_86B71E                         ; $86B71A |
  dw CODE_86B74B                            ; $86B71C |

CODE_FL_86B71E:
  JSL.L CODE_FL_85A5C4                      ; $86B71E |
  LDA.W #$3030                              ; $86B722 |
  STA.B $00,X                               ; $86B725 |

CODE_JP_86B727:
  LDA.W #$0080                              ; $86B727 |
  STA.B $06,X                               ; $86B72A |

CODE_86B72C:
  LDA.W #$0043                              ; $86B72C |
  STA.B $02,X                               ; $86B72F |
  JML.L CODE_FL_86C63F                      ; $86B731 |

CODE_86B735:
  JSL.L CODE_FL_85F741                      ; $86B735 |
  LDY.W $197E                               ; $86B739 |
  BNE CODE_86B741                           ; $86B73C |
  JMP.W CODE_JP_86B7B2                      ; $86B73E |

CODE_86B741:
  LDA.W $0022,Y                             ; $86B741 |
  CMP.W #$0045                              ; $86B744 |
  BEQ CODE_86B77C                           ; $86B747 |
  BRA CODE_86B754                           ; $86B749 |

CODE_86B74B:
  JSL.L CODE_FL_85F741                      ; $86B74B |
  LDY.W $197E                               ; $86B74F |
  BEQ CODE_JP_86B7B2                        ; $86B752 |

CODE_86B754:
  LDA.W $0022,Y                             ; $86B754 |
  CMP.W #$0027                              ; $86B757 |
  BEQ CODE_86B77C                           ; $86B75A |
  LDA.W $0092,Y                             ; $86B75C |
  BIT.W #$00A0                              ; $86B75F |
  BEQ CODE_JP_86B7B2                        ; $86B762 |
  LDA.W $0022,Y                             ; $86B764 |
  CMP.W #$0033                              ; $86B767 |
  BEQ CODE_86B77C                           ; $86B76A |
  LDA.W $0092,Y                             ; $86B76C |
  BIT.W #$0020                              ; $86B76F |
  BEQ CODE_JP_86B7B2                        ; $86B772 |
  LDA.W $0022,Y                             ; $86B774 |
  CMP.W #$0045                              ; $86B777 |
  BNE CODE_JP_86B7B2                        ; $86B77A |

CODE_86B77C:
  CPY.W #$0400                              ; $86B77C |
  BNE CODE_86B786                           ; $86B77F |
  LDA.B $20                                 ; $86B781 |
  BNE CODE_86B78A                           ; $86B783 |
  RTL                                       ; $86B785 |

CODE_86B786:
  LDA.B $22                                 ; $86B786 |
  BEQ CODE_JP_86B7B2                        ; $86B788 |

CODE_86B78A:
  LDA.W $0092,Y                             ; $86B78A |
  BIT.W #$0020                              ; $86B78D |
  BNE CODE_86B7A8                           ; $86B790 |
  JSL.L CODE_FL_83B1E0                      ; $86B792 |
  BNE CODE_86B7A8                           ; $86B796 |
  PHY                                       ; $86B798 |
  TXY                                       ; $86B799 |
  JSL.L CODE_FL_83B38E                      ; $86B79A |
  PLY                                       ; $86B79E |
  TXY                                       ; $86B79F |
  JSL.L CODE_FL_83B1D8                      ; $86B7A0 |
  JSL.L CODE_FL_83B3E0                      ; $86B7A4 |

CODE_86B7A8:
  LDA.B $4E,X                               ; $86B7A8 |
  JSL.L CODE_FL_80E9E7                      ; $86B7AA |
  JSL.L CODE_FL_848000                      ; $86B7AE |

CODE_JP_86B7B2:
  RTL                                       ; $86B7B2 |

CODE_86B7B3:
  INC.W $19B2                               ; $86B7B3 |
  JSL.L CODE_FL_86C3F8                      ; $86B7B6 |
  LDA.B $1A,X                               ; $86B7BA |
  PHX                                       ; $86B7BC |
  ASL A                                     ; $86B7BD |
  TAX                                       ; $86B7BE |
  LDA.L PTR16_86B7C9,X                      ; $86B7BF |
  PLX                                       ; $86B7C3 |
  STA.B $00                                 ; $86B7C4 |
  JMP.W ($0000)                             ; $86B7C6 |

PTR16_86B7C9:
  dw CODE_86B7CD                            ; $86B7C9 |
  dw CODE_86B74B                            ; $86B7CB |

CODE_86B7CD:
  JSL.L CODE_FL_86B71E                      ; $86B7CD |
  LDA.W #$00C0                              ; $86B7D1 |
  STA.B $06,X                               ; $86B7D4 |
  RTL                                       ; $86B7D6 |

CODE_86B7D7:
  JSL.L CODE_FL_86C3F8                      ; $86B7D7 |
  LDA.B $1A,X                               ; $86B7DB |
  PHX                                       ; $86B7DD |
  ASL A                                     ; $86B7DE |
  TAX                                       ; $86B7DF |
  LDA.L PTR16_86B7EA,X                      ; $86B7E0 |
  PLX                                       ; $86B7E4 |
  STA.B $00                                 ; $86B7E5 |
  JMP.W ($0000)                             ; $86B7E7 |

PTR16_86B7EA:
  dw CODE_86B7F0                            ; $86B7EA |
  dw CODE_86B80D                            ; $86B7EC |
  dw CODE_86B835                            ; $86B7EE |

CODE_86B7F0:
  JSL.L CODE_FL_86C7AD                      ; $86B7F0 |
  JSL.L CODE_FL_85ABAD                      ; $86B7F4 |
  LDA.W #$3018                              ; $86B7F8 |
  BCC CODE_86B800                           ; $86B7FB |
  LDA.W #$3028                              ; $86B7FD |

CODE_86B800:
  STA.B $00,X                               ; $86B800 |
  LDA.B $34,X                               ; $86B802 |
  ORA.W #$B088                              ; $86B804 |
  STA.B $34,X                               ; $86B807 |
  JML.L CODE_FL_86C63F                      ; $86B809 |

CODE_86B80D:
  LDA.B $32,X                               ; $86B80D |
  BPL CODE_86B834                           ; $86B80F |
  LDA.W #$000C                              ; $86B811 |
  JSL.L push_sound_queue                    ; $86B814 |
  JSL.L CODE_FL_85ABAD                      ; $86B818 |
  BCS CODE_86B827                           ; $86B81C |
  JSL.L CODE_FL_85ABC2                      ; $86B81E |
  LDA.W #$200C                              ; $86B822 |
  BRA CODE_86B82E                           ; $86B825 |

CODE_86B827:
  JSL.L CODE_FL_85ABD5                      ; $86B827 |
  LDA.W #$200D                              ; $86B82B |

CODE_86B82E:
  JSL.L CODE_FL_86CAEE                      ; $86B82E |
  INC.B $1A,X                               ; $86B832 |

CODE_86B834:
  RTL                                       ; $86B834 |

CODE_86B835:
  JSL.L CODE_FL_86C239                      ; $86B835 |
  BCC CODE_86B843                           ; $86B839 |
  LDA.B $20,X                               ; $86B83B |
  BNE CODE_86B843                           ; $86B83D |
  STZ.B $32,X                               ; $86B83F |
  DEC.B $1A,X                               ; $86B841 |

CODE_86B843:
  RTL                                       ; $86B843 |

CODE_86B844:
  JSL.L CODE_FL_86C3F8                      ; $86B844 |
  LDA.B $1A,X                               ; $86B848 |
  PHX                                       ; $86B84A |
  ASL A                                     ; $86B84B |
  TAX                                       ; $86B84C |
  LDA.L PTR16_86B857,X                      ; $86B84D |
  PLX                                       ; $86B851 |
  STA.B $00                                 ; $86B852 |
  JMP.W ($0000)                             ; $86B854 |

PTR16_86B857:
  dw CODE_86B85D                            ; $86B857 |
  dw CODE_86B87B                            ; $86B859 |
  dw CODE_86B893                            ; $86B85B |

CODE_86B85D:
  JSL.L CODE_FL_86C7AD                      ; $86B85D |
  LDA.W #$2009                              ; $86B861 |
  JSL.L CODE_FL_86CAEE                      ; $86B864 |
  JSL.L CODE_FL_85AD48                      ; $86B868 |
  JSL.L CODE_FL_85AD50                      ; $86B86C |
  LDA.B $34,X                               ; $86B870 |
  ORA.W #$2888                              ; $86B872 |
  STA.B $34,X                               ; $86B875 |
  JML.L CODE_FL_86C63F                      ; $86B877 |

CODE_86B87B:
  JSL.L CODE_FL_85A893                      ; $86B87B |
  JSL.L CODE_FL_85ABAD                      ; $86B87F |
  BCC CODE_86B892                           ; $86B883 |
  STZ.B $00,X                               ; $86B885 |
  STZ.B $1E,X                               ; $86B887 |
  LDA.B $34,X                               ; $86B889 |
  AND.W #$D777                              ; $86B88B |
  STA.B $34,X                               ; $86B88E |
  INC.B $1A,X                               ; $86B890 |

CODE_86B892:
  RTL                                       ; $86B892 |

CODE_86B893:
  LDA.B $4E,X                               ; $86B893 |
  AND.W #$0100                              ; $86B895 |
  BNE CODE_86B8B1                           ; $86B898 |
  JSL.L CODE_FL_85ABAD                      ; $86B89A |
  BCS CODE_86B8B0                           ; $86B89E |
  LDA.W #$2009                              ; $86B8A0 |
  JSL.L CODE_FL_86CAEE                      ; $86B8A3 |
  LDA.B $34,X                               ; $86B8A7 |
  ORA.W #$A888                              ; $86B8A9 |
  STA.B $34,X                               ; $86B8AC |
  DEC.B $1A,X                               ; $86B8AE |

CODE_86B8B0:
  RTL                                       ; $86B8B0 |

CODE_86B8B1:
  JML.L CODE_FL_85ABD5                      ; $86B8B1 |

CODE_86B8B5:
  RTL                                       ; $86B8B5 |

CODE_86B8B6:
  RTL                                       ; $86B8B6 |

CODE_FL_86B8B7:
  JSL.L CODE_FL_85A986                      ; $86B8B7 |
  BCS CODE_86B91E                           ; $86B8BB |

CODE_FL_86B8BD:
  LDA.W #$001E                              ; $86B8BD |
  JSL.L CODE_FL_86C9C5                      ; $86B8C0 |
  BCS CODE_86B91E                           ; $86B8C4 |
  PHY                                       ; $86B8C6 |
  CLC                                       ; $86B8C7 |
  LDA.B $12                                 ; $86B8C8 |
  ADC.W #$0002                              ; $86B8CA |
  STA.B $12                                 ; $86B8CD |
  SEC                                       ; $86B8CF |
  SBC.W #$0018                              ; $86B8D0 |
  BPL CODE_86B8D9                           ; $86B8D3 |
  EOR.W #$FFFF                              ; $86B8D5 |
  INC A                                     ; $86B8D8 |

CODE_86B8D9:
  ASL A                                     ; $86B8D9 |
  STA.B $00                                 ; $86B8DA |
  JSL.L CODE_FL_86C432                      ; $86B8DC |
  AND.W #$000F                              ; $86B8E0 |
  ADC.W #$001C                              ; $86B8E3 |
  SBC.B $00                                 ; $86B8E6 |
  TAY                                       ; $86B8E8 |
  LDA.B $12                                 ; $86B8E9 |
  JSL.L CODE_FL_8AB4B3                      ; $86B8EB |
  PLY                                       ; $86B8EF |
  LDA.B $00                                 ; $86B8F0 |
  STA.W $0026,Y                             ; $86B8F2 |
  LDA.B $02                                 ; $86B8F5 |
  STA.W $0028,Y                             ; $86B8F7 |
  LDA.B $14                                 ; $86B8FA |
  STA.W $0000,Y                             ; $86B8FC |
  LDA.B $16                                 ; $86B8FF |
  JSL.L CODE_FL_86CAE6                      ; $86B901 |
  JSL.L CODE_FL_86C7C4                      ; $86B905 |
  LDA.B $86                                 ; $86B909 |
  AND.W #$0060                              ; $86B90B |
  ORA.W #$9898                              ; $86B90E |
  STA.W $0004,Y                             ; $86B911 |
  LDA.W #$0040                              ; $86B914 |
  STA.W $002C,Y                             ; $86B917 |
  DEC.B $10                                 ; $86B91A |
  BNE CODE_FL_86B8BD                        ; $86B91C |

CODE_86B91E:
  RTL                                       ; $86B91E |

CODE_86B91F:
  LDA.B $0D,X                               ; $86B91F |
  SEC                                       ; $86B921 |
  SBC.W #$0100                              ; $86B922 |
  STA.B $0D,X                               ; $86B925 |
  LDA.W #$005F                              ; $86B927 |
  STA.B $18,X                               ; $86B92A |

CODE_86B92C:
  JSL.L CODE_FL_86C3B0                      ; $86B92C |
  PHX                                       ; $86B930 |
  ASL A                                     ; $86B931 |
  TAX                                       ; $86B932 |
  LDA.L PTR16_86B93D,X                      ; $86B933 |
  PLX                                       ; $86B937 |
  STA.B $00                                 ; $86B938 |
  JMP.W ($0000)                             ; $86B93A |

PTR16_86B93D:
  dw CODE_86B945                            ; $86B93D |
  dw CODE_86B9A0                            ; $86B93F |
  dw CODE_JP_86BA96                         ; $86B941 |
  dw CODE_86BAEF                            ; $86B943 |

CODE_86B945:
  JSL.L CODE_FL_86C7A5                      ; $86B945 |
  LDA.W #$3264                              ; $86B949 |
  STA.B $00,X                               ; $86B94C |

CODE_FL_86B94E:
  JSL.L CODE_FL_86C63F                      ; $86B94E |
  LDA.B $34,X                               ; $86B952 |
  ORA.W #$2880                              ; $86B954 |
  STA.B $34,X                               ; $86B957 |
  LDA.W #$0002                              ; $86B959 |
  STA.B $1A,X                               ; $86B95C |
  LDA.W #$0001                              ; $86B95E |
  STA.W $1C78                               ; $86B961 |
  JSL.L CODE_FL_86C5AE                      ; $86B964 |
  BCS CODE_86B993                           ; $86B968 |
  LDA.L $7E8BB0,X                           ; $86B96A |
  AND.W #$4000                              ; $86B96E |
  BEQ CODE_86B979                           ; $86B971 |
  LDA.W $003A,Y                             ; $86B973 |
  STA.W $0028,Y                             ; $86B976 |

CODE_86B979:
  TYX                                       ; $86B979 |
  JSL.L CODE_FL_808B9C                      ; $86B97A |
  LDA.B $0C                                 ; $86B97E |
  STA.B $09,X                               ; $86B980 |
  LDA.B $0E                                 ; $86B982 |
  STA.B $0D,X                               ; $86B984 |
  LDA.B $18,X                               ; $86B986 |
  CMP.W #$00D2                              ; $86B988 |
  BEQ CODE_86B993                           ; $86B98B |
  LDA.B $0E                                 ; $86B98D |
  JSL.L CODE_FL_86BB64                      ; $86B98F |

CODE_86B993:
  LDX.B $FC                                 ; $86B993 |
  LDA.W $002C,X                             ; $86B995 |
  BNE CODE_86B99F                           ; $86B998 |
  DEC.B $1A,X                               ; $86B99A |
  STZ.W $1C78                               ; $86B99C |

CODE_86B99F:
  RTL                                       ; $86B99F |

CODE_86B9A0:
  LDA.W #$0003                              ; $86B9A0 |
  JSL.L CODE_FL_86BAF0                      ; $86B9A3 |
  LDA.B $40,X                               ; $86B9A7 |
  TAX                                       ; $86B9A9 |
  LDA.L $7E8B80,X                           ; $86B9AA |
  LDX.B $FC                                 ; $86B9AE |
  AND.W #$0001                              ; $86B9B0 |
  BEQ CODE_86B9B8                           ; $86B9B3 |
  JMP.W CODE_JP_86BA45                      ; $86B9B5 |

CODE_86B9B8:
  LDA.B $46,X                               ; $86B9B8 |
  BMI CODE_86B9BF                           ; $86B9BA |
  JMP.W CODE_JP_86BA70                      ; $86B9BC |

CODE_86B9BF:
  LDA.W $1C38                               ; $86B9BF |
  AND.W #$0001                              ; $86B9C2 |
  BNE CODE_86B9E5                           ; $86B9C5 |
  LDA.B $46,X                               ; $86B9C7 |
  AND.W #$0800                              ; $86B9C9 |
  BNE CODE_86B9D1                           ; $86B9CC |
  JMP.W CODE_JP_86BA70                      ; $86B9CE |

CODE_86B9D1:
  LDA.W #$0400                              ; $86B9D1 |
  STA.B $00                                 ; $86B9D4 |
  LDA.W #$04C0                              ; $86B9D6 |
  STA.B $02                                 ; $86B9D9 |
  LDA.B $28                                 ; $86B9DB |
  STA.B $04                                 ; $86B9DD |
  LDA.B $2A                                 ; $86B9DF |
  STA.B $06                                 ; $86B9E1 |
  BRA CODE_86BA01                           ; $86B9E3 |

CODE_86B9E5:
  LDA.B $46,X                               ; $86B9E5 |
  AND.W #$0400                              ; $86B9E7 |
  BNE CODE_86B9EF                           ; $86B9EA |
  JMP.W CODE_JP_86BA70                      ; $86B9EC |

CODE_86B9EF:
  LDA.W #$04C0                              ; $86B9EF |
  STA.B $00                                 ; $86B9F2 |
  LDA.W #$0400                              ; $86B9F4 |
  STA.B $02                                 ; $86B9F7 |
  LDA.B $2A                                 ; $86B9F9 |
  STA.B $04                                 ; $86B9FB |
  LDA.B $28                                 ; $86B9FD |
  STA.B $06                                 ; $86B9FF |

CODE_86BA01:
  LDA.B $46,X                               ; $86BA01 |
  AND.W #$0C00                              ; $86BA03 |
  CMP.W #$0C00                              ; $86BA06 |
  BNE CODE_86BA1D                           ; $86BA09 |
  LDY.B $02                                 ; $86BA0B |
  LDA.W $0009,Y                             ; $86BA0D |
  SBC.B $09,X                               ; $86BA10 |
  BPL CODE_86BA18                           ; $86BA12 |
  EOR.W #$FFFF                              ; $86BA14 |
  INC A                                     ; $86BA17 |

CODE_86BA18:
  CMP.W #$0008                              ; $86BA18 |
  BCS CODE_JP_86BA70                        ; $86BA1B |

CODE_86BA1D:
  LDY.B $00                                 ; $86BA1D |
  LDA.W $0009,Y                             ; $86BA1F |
  SBC.B $09,X                               ; $86BA22 |
  BPL CODE_86BA2A                           ; $86BA24 |
  EOR.W #$FFFF                              ; $86BA26 |
  INC A                                     ; $86BA29 |

CODE_86BA2A:
  CMP.W #$0008                              ; $86BA2A |
  BCS CODE_JP_86BA70                        ; $86BA2D |
  LDA.B $04                                 ; $86BA2F |
  AND.W #$0800                              ; $86BA31 |
  BNE CODE_86BA3F                           ; $86BA34 |
  LDA.B $04                                 ; $86BA36 |
  AND.W #$0400                              ; $86BA38 |
  BNE CODE_86BA4B                           ; $86BA3B |
  BRA CODE_JP_86BA70                        ; $86BA3D |

CODE_86BA3F:
  LDA.B $3A,X                               ; $86BA3F |
  BPL CODE_JP_86BA70                        ; $86BA41 |
  BRA CODE_86BA73                           ; $86BA43 |

CODE_JP_86BA45:
  LDA.B $3A,X                               ; $86BA45 |
  BMI CODE_JP_86BA70                        ; $86BA47 |
  BRA CODE_86BA73                           ; $86BA49 |

CODE_86BA4B:
  LDA.B $3A,X                               ; $86BA4B |
  BMI CODE_JP_86BA70                        ; $86BA4D |
  LDA.B $46,X                               ; $86BA4F |
  AND.W #$0C00                              ; $86BA51 |
  CMP.W #$0C00                              ; $86BA54 |
  BNE CODE_86BA66                           ; $86BA57 |
  LDA.B $06                                 ; $86BA59 |
  AND.W #$0400                              ; $86BA5B |
  BEQ CODE_86BA66                           ; $86BA5E |
  LDY.B $02                                 ; $86BA60 |
  JSL.L CODE_FL_83D186                      ; $86BA62 |

CODE_86BA66:
  LDY.B $00                                 ; $86BA66 |
  JSL.L CODE_FL_83D186                      ; $86BA68 |
  LDA.B $3A,X                               ; $86BA6C |
  BRA CODE_86BA73                           ; $86BA6E |

CODE_JP_86BA70:
  STZ.B $46,X                               ; $86BA70 |
  RTL                                       ; $86BA72 |

CODE_86BA73:
  STA.B $28,X                               ; $86BA73 |
  LDA.B $3C,X                               ; $86BA75 |
  STA.B $2C,X                               ; $86BA77 |
  LDY.B $3E,X                               ; $86BA79 |
  TYX                                       ; $86BA7B |
  LDA.L $7E8BB0,X                           ; $86BA7C |
  ORA.W #$4000                              ; $86BA80 |
  STA.L $7E8BB0,X                           ; $86BA83 |
  LDX.B $FC                                 ; $86BA87 |
  LDA.B $46,X                               ; $86BA89 |
  BPL CODE_86BA91                           ; $86BA8B |
  JSL.L CODE_FL_86C26A                      ; $86BA8D |

CODE_86BA91:
  STZ.B $46,X                               ; $86BA91 |
  INC.B $1A,X                               ; $86BA93 |
  RTL                                       ; $86BA95 |

CODE_JP_86BA96:
  LDA.W #$0001                              ; $86BA96 |
  STA.W $1C78                               ; $86BA99 |
  LDA.W $1C38                               ; $86BA9C |
  AND.W #$0007                              ; $86BA9F |
  BNE CODE_86BAAB                           ; $86BAA2 |
  LDA.W #$0018                              ; $86BAA4 |
  JSL.L push_sound_queue                    ; $86BAA7 |

CODE_86BAAB:
  LDA.W #$0003                              ; $86BAAB |
  JSL.L CODE_FL_86BAF0                      ; $86BAAE |
  LDA.B $46,X                               ; $86BAB2 |
  BPL CODE_86BABA                           ; $86BAB4 |
  JSL.L CODE_FL_86C26A                      ; $86BAB6 |

CODE_86BABA:
  STZ.B $46,X                               ; $86BABA |
  JSL.L CODE_FL_86C70D                      ; $86BABC |
  TDC                                       ; $86BAC0 |
  STA.B $28,X                               ; $86BAC1 |
  LDA.B $3E,X                               ; $86BAC3 |
  TAX                                       ; $86BAC5 |
  LDA.L $7E8BB0,X                           ; $86BAC6 |
  EOR.W #$8000                              ; $86BACA |
  AND.W #$BFFF                              ; $86BACD |
  STA.L $7E8BB0,X                           ; $86BAD0 |
  LDX.B $FC                                 ; $86BAD4 |
  LDA.B $3A,X                               ; $86BAD6 |
  EOR.W #$FFFF                              ; $86BAD8 |
  INC A                                     ; $86BADB |
  STA.B $3A,X                               ; $86BADC |
  DEC.B $1A,X                               ; $86BADE |
  STZ.B $46,X                               ; $86BAE0 |
  STZ.B $E4                                 ; $86BAE2 |
  LDA.B $00,X                               ; $86BAE4 |
  BEQ CODE_86BAEF                           ; $86BAE6 |
  LDA.W #$0019                              ; $86BAE8 |
  JSL.L push_sound_queue                    ; $86BAEB |

CODE_86BAEF:
  RTL                                       ; $86BAEF |

CODE_FL_86BAF0:
  STA.B $00                                 ; $86BAF0 |
  LDA.B $7E                                 ; $86BAF2 |
  CMP.W #$0003                              ; $86BAF4 |
  BNE CODE_86BB00                           ; $86BAF7 |
  LDA.B $3A                                 ; $86BAF9 |
  CMP.W #$000B                              ; $86BAFB |
  BNE CODE_JP_86BB63                        ; $86BAFE |

CODE_86BB00:
  LDA.B $00                                 ; $86BB00 |
  STA.B $1A,X                               ; $86BB02 |
  LDA.B $09,X                               ; $86BB04 |
  STA.B $08                                 ; $86BB06 |
  LDA.B $0D,X                               ; $86BB08 |
  STA.B $00                                 ; $86BB0A |
  SEC                                       ; $86BB0C |
  SBC.B $30,X                               ; $86BB0D |
  BMI CODE_86BB25                           ; $86BB0F |
  CMP.W #$0008                              ; $86BB11 |
  BCC CODE_86BB25                           ; $86BB14 |
  CMP.W #$00D7                              ; $86BB16 |
  BCC CODE_JP_86BB2D                        ; $86BB19 |
  CLC                                       ; $86BB1B |
  LDA.B $00                                 ; $86BB1C |
  ADC.W #$0031                              ; $86BB1E |
  STA.B $00                                 ; $86BB21 |
  BRA CODE_JP_86BB2D                        ; $86BB23 |

CODE_86BB25:
  SEC                                       ; $86BB25 |
  LDA.B $00                                 ; $86BB26 |
  SBC.W #$0031                              ; $86BB28 |
  STA.B $00                                 ; $86BB2B |

CODE_JP_86BB2D:
  LDA.B $00                                 ; $86BB2D |
  STA.B $0D,X                               ; $86BB2F |
  STZ.B $46,X                               ; $86BB31 |
  STA.B $0A                                 ; $86BB33 |
  JSL.L CODE_FL_808AB5                      ; $86BB35 |
  TXY                                       ; $86BB39 |
  LDA.B $3E,X                               ; $86BB3A |
  TAX                                       ; $86BB3C |
  LDA.L $7E8BB0,X                           ; $86BB3D |
  AND.W #$E000                              ; $86BB41 |
  STA.B $00                                 ; $86BB44 |
  LDA.W $002C,Y                             ; $86BB46 |
  AND.W #$1FFF                              ; $86BB49 |
  ORA.B $00                                 ; $86BB4C |
  STA.L $7E8BB0,X                           ; $86BB4E |
  LDA.B $0C                                 ; $86BB52 |
  STA.L $7E8BB2,X                           ; $86BB54 |
  LDA.B $0E                                 ; $86BB58 |
  STA.L $7E8BB4,X                           ; $86BB5A |
  LDX.B $FC                                 ; $86BB5E |
  PHP                                       ; $86BB60 |
  PLA                                       ; $86BB61 |
  PLA                                       ; $86BB62 |

CODE_JP_86BB63:
  RTL                                       ; $86BB63 |

CODE_FL_86BB64:
  STA.B $00                                 ; $86BB64 |
  SEC                                       ; $86BB66 |
  SBC.B $30,X                               ; $86BB67 |
  BMI CODE_86BB7F                           ; $86BB69 |
  CMP.W #$0008                              ; $86BB6B |
  BCC CODE_86BB7F                           ; $86BB6E |
  CMP.W #$00D7                              ; $86BB70 |
  BCC CODE_86BB87                           ; $86BB73 |
  SEC                                       ; $86BB75 |
  LDA.B $00                                 ; $86BB76 |
  SBC.W #$0031                              ; $86BB78 |
  STA.B $00                                 ; $86BB7B |
  BRA CODE_86BB87                           ; $86BB7D |

CODE_86BB7F:
  CLC                                       ; $86BB7F |
  LDA.B $00                                 ; $86BB80 |
  ADC.W #$0031                              ; $86BB82 |
  STA.B $00                                 ; $86BB85 |

CODE_86BB87:
  LDA.B $00                                 ; $86BB87 |
  STA.B $0D,X                               ; $86BB89 |
  RTL                                       ; $86BB8B |

CODE_FL_86BB8C:
  LDA.W $1C78                               ; $86BB8C |
  BEQ CODE_86BBA3                           ; $86BB8F |
  INC.W $1C7A                               ; $86BB91 |
  LDA.W $1C7A                               ; $86BB94 |
  AND.W #$0007                              ; $86BB97 |
  BNE CODE_86BBA3                           ; $86BB9A |
  LDA.W #$0018                              ; $86BB9C |
  JSL.L push_sound_queue                    ; $86BB9F |

CODE_86BBA3:
  RTL                                       ; $86BBA3 |

CODE_86BBA4:
  JSL.L CODE_FL_86C3B0                      ; $86BBA4 |
  PHX                                       ; $86BBA8 |
  ASL A                                     ; $86BBA9 |
  TAX                                       ; $86BBAA |
  LDA.L PTR16_86BBB5,X                      ; $86BBAB |
  PLX                                       ; $86BBAF |
  STA.B $00                                 ; $86BBB0 |
  JMP.W ($0000)                             ; $86BBB2 |

PTR16_86BBB5:
  dw CODE_86BBBB                            ; $86BBB5 |
  dw CODE_86BBF2                            ; $86BBB7 |
  dw CODE_86BC1C                            ; $86BBB9 |

CODE_86BBBB:
  JSL.L CODE_FL_86C7A5                      ; $86BBBB |
  JSL.L CODE_FL_86C63F                      ; $86BBBF |
  JSL.L CODE_FL_86C36A                      ; $86BBC3 |
  LDA.B $34,X                               ; $86BBC7 |
  ORA.W #$2880                              ; $86BBC9 |
  STA.B $34,X                               ; $86BBCC |
  JSL.L CODE_FL_86C5AE                      ; $86BBCE |
  LDX.B $FC                                 ; $86BBD2 |
  LDA.W $003A,X                             ; $86BBD4 |
  STA.W $0028,X                             ; $86BBD7 |
  BCS CODE_86BBED                           ; $86BBDA |
  JSL.L CODE_FL_808B9C                      ; $86BBDC |
  LDA.B $0C                                 ; $86BBE0 |
  STA.B $09,X                               ; $86BBE2 |
  LDA.B $0E                                 ; $86BBE4 |
  STA.B $0D,X                               ; $86BBE6 |
  JSL.L CODE_FL_86BB64                      ; $86BBE8 |
  RTL                                       ; $86BBEC |

CODE_86BBED:
  LDA.B $3C,X                               ; $86BBED |
  STA.B $2C,X                               ; $86BBEF |
  RTL                                       ; $86BBF1 |

CODE_86BBF2:
  LDA.W #$0002                              ; $86BBF2 |
  JSL.L CODE_FL_86BAF0                      ; $86BBF5 |
  JSL.L CODE_FL_86C70D                      ; $86BBF9 |
  LDA.B $3C,X                               ; $86BBFD |
  STA.B $2C,X                               ; $86BBFF |
  LDA.B $28,X                               ; $86BC01 |
  EOR.W #$FFFF                              ; $86BC03 |
  INC A                                     ; $86BC06 |
  STA.B $28,X                               ; $86BC07 |
  LDA.B $3E,X                               ; $86BC09 |
  TAX                                       ; $86BC0B |
  LDA.L $7E8BB0,X                           ; $86BC0C |
  EOR.W #$8000                              ; $86BC10 |
  AND.W #$BFFF                              ; $86BC13 |
  STA.L $7E8BB0,X                           ; $86BC16 |
  LDX.B $FC                                 ; $86BC1A |

CODE_86BC1C:
  RTL                                       ; $86BC1C |

CODE_86BC1D:
  JSL.L CODE_FL_86C3B0                      ; $86BC1D |
  PHX                                       ; $86BC21 |
  ASL A                                     ; $86BC22 |
  TAX                                       ; $86BC23 |
  LDA.L PTR16_86BC2E,X                      ; $86BC24 |
  PLX                                       ; $86BC28 |
  STA.B $00                                 ; $86BC29 |
  JMP.W ($0000)                             ; $86BC2B |

PTR16_86BC2E:
  dw CODE_86BC36                            ; $86BC2E |
  dw CODE_86BC49                            ; $86BC30 |
  dw CODE_86BC88                            ; $86BC32 |
  dw CODE_86BAEF                            ; $86BC34 |

CODE_86BC36:
  JSL.L CODE_FL_86C7A5                      ; $86BC36 |
  LDA.W #$32E6                              ; $86BC3A |
  STA.B $00,X                               ; $86BC3D |
  LDA.W #$8000                              ; $86BC3F |
  STA.B $46,X                               ; $86BC42 |
  JSL.L CODE_FL_86B94E                      ; $86BC44 |
  RTL                                       ; $86BC48 |

CODE_86BC49:
  LDA.W #$0003                              ; $86BC49 |
  JSL.L CODE_FL_86BCD0                      ; $86BC4C |
  LDY.B $3E,X                               ; $86BC50 |
  TYX                                       ; $86BC52 |
  LDA.L $7E8BB0,X                           ; $86BC53 |
  ROL A                                     ; $86BC57 |
  ROL A                                     ; $86BC58 |
  STA.B $00                                 ; $86BC59 |
  LDX.B $FC                                 ; $86BC5B |
  LDA.B $40,X                               ; $86BC5D |
  TAX                                       ; $86BC5F |
  LDA.L $7E8B80,X                           ; $86BC60 |
  LDX.B $FC                                 ; $86BC64 |
  EOR.B $00                                 ; $86BC66 |
  AND.W #$0001                              ; $86BC68 |
  BEQ CODE_86BC87                           ; $86BC6B |
  LDA.B $3A,X                               ; $86BC6D |
  STA.B $28,X                               ; $86BC6F |
  LDA.B $3C,X                               ; $86BC71 |
  STA.B $2C,X                               ; $86BC73 |
  LDY.B $3E,X                               ; $86BC75 |
  TYX                                       ; $86BC77 |
  LDA.L $7E8BB0,X                           ; $86BC78 |
  ORA.W #$4000                              ; $86BC7C |
  STA.L $7E8BB0,X                           ; $86BC7F |
  LDX.B $FC                                 ; $86BC83 |
  INC.B $1A,X                               ; $86BC85 |

CODE_86BC87:
  RTL                                       ; $86BC87 |

CODE_86BC88:
  LDY.B $3E,X                               ; $86BC88 |
  TYX                                       ; $86BC8A |
  LDA.L $7E8BB0,X                           ; $86BC8B |
  ROL A                                     ; $86BC8F |
  ROL A                                     ; $86BC90 |
  STA.B $00                                 ; $86BC91 |
  LDX.B $FC                                 ; $86BC93 |
  LDA.B $40,X                               ; $86BC95 |
  TAX                                       ; $86BC97 |
  LDA.L $7E8B80,X                           ; $86BC98 |
  LDX.B $FC                                 ; $86BC9C |
  EOR.B $00                                 ; $86BC9E |
  AND.W #$0001                              ; $86BCA0 |
  BEQ CODE_86BCAD                           ; $86BCA3 |

CODE_86BCA5:
  LDA.W #$8000                              ; $86BCA5 |
  STA.B $46,X                               ; $86BCA8 |
  JMP.W CODE_JP_86BA96                      ; $86BCAA |

CODE_86BCAD:
  SEC                                       ; $86BCAD |
  LDA.B $3C,X                               ; $86BCAE |
  SBC.B $2C,X                               ; $86BCB0 |
  STA.B $2C,X                               ; $86BCB2 |
  LDA.B $3A,X                               ; $86BCB4 |
  EOR.W #$FFFF                              ; $86BCB6 |
  INC A                                     ; $86BCB9 |
  STA.B $3A,X                               ; $86BCBA |
  STA.B $28,X                               ; $86BCBC |
  LDY.B $3E,X                               ; $86BCBE |
  TYX                                       ; $86BCC0 |
  LDA.L $7E8BB0,X                           ; $86BCC1 |
  EOR.W #$8000                              ; $86BCC5 |
  STA.L $7E8BB0,X                           ; $86BCC8 |
  LDX.B $FC                                 ; $86BCCC |
  BRA CODE_86BCA5                           ; $86BCCE |

CODE_FL_86BCD0:
  STA.B $00                                 ; $86BCD0 |
  LDA.B $7E                                 ; $86BCD2 |
  CMP.W #$0003                              ; $86BCD4 |
  BNE CODE_86BCE3                           ; $86BCD7 |
  LDA.B $3A                                 ; $86BCD9 |
  CMP.W #$000B                              ; $86BCDB |
  BEQ CODE_86BCE3                           ; $86BCDE |
  JMP.W CODE_JP_86BB63                      ; $86BCE0 |

CODE_86BCE3:
  LDA.B $00                                 ; $86BCE3 |
  STA.B $1A,X                               ; $86BCE5 |
  LDA.B $09,X                               ; $86BCE7 |
  STA.B $08                                 ; $86BCE9 |
  LDA.B $0D,X                               ; $86BCEB |
  STA.B $00                                 ; $86BCED |
  JMP.W CODE_JP_86BB2D                      ; $86BCEF |

CODE_86BCF2:
  STZ.B $26,X                               ; $86BCF2 |
  JSL.L CODE_FL_85AD36                      ; $86BCF4 |
  JSL.L CODE_FL_85F885                      ; $86BCF8 |
  JSL.L CODE_FL_86C412                      ; $86BCFC |
  PHX                                       ; $86BD00 |
  ASL A                                     ; $86BD01 |
  TAX                                       ; $86BD02 |
  LDA.L PTR16_86BD0D,X                      ; $86BD03 |
  PLX                                       ; $86BD07 |
  STA.B $00                                 ; $86BD08 |
  JMP.W ($0000)                             ; $86BD0A |

PTR16_86BD0D:
  dw CODE_86BD17                            ; $86BD0D |
  dw CODE_86BD4C                            ; $86BD0F |
  dw CODE_86BD58                            ; $86BD11 |
  dw CODE_86BDAE                            ; $86BD13 |
  dw CODE_86BDCA                            ; $86BD15 |

CODE_86BD17:
  JSL.L CODE_FL_86C7A5                      ; $86BD17 |
  STZ.B $02,X                               ; $86BD1B |
  LDA.W #$327A                              ; $86BD1D |
  STA.B $00,X                               ; $86BD20 |
  LDA.W #$0015                              ; $86BD22 |
  JSL.L CODE_FL_86C9A4                      ; $86BD25 |
  BCS CODE_86BD48                           ; $86BD29 |
  JSL.L CODE_FL_85AAB6                      ; $86BD2B |
  JSL.L CODE_FL_86C7C4                      ; $86BD2F |
  JSL.L CODE_FL_85A9EF                      ; $86BD33 |
  JSL.L CODE_FL_86C63F                      ; $86BD37 |
  LDA.W $1672                               ; $86BD3B |
  ADC.B $0D,X                               ; $86BD3E |
  STA.B $4A,X                               ; $86BD40 |
  LDA.W #$0020                              ; $86BD42 |
  STA.B $2C,X                               ; $86BD45 |
  RTL                                       ; $86BD47 |

CODE_86BD48:
  JML.L CODE_FL_86CA36                      ; $86BD48 |

CODE_86BD4C:
  JSL.L CODE_FL_86C70D                      ; $86BD4C |
  LDA.W #$327A                              ; $86BD50 |
  STA.B $00,X                               ; $86BD53 |
  INC.B $1A,X                               ; $86BD55 |
  RTL                                       ; $86BD57 |

CODE_86BD58:
  JSL.L CODE_FL_86BD6F                      ; $86BD58 |
  JSL.L CODE_FL_85A646                      ; $86BD5C |
  BEQ CODE_86BD6E                           ; $86BD60 |
  LDA.W #$001B                              ; $86BD62 |
  JSL.L push_sound_queue                    ; $86BD65 |
  LDA.W #$0010                              ; $86BD69 |
  STA.B $2C,X                               ; $86BD6C |

CODE_86BD6E:
  RTL                                       ; $86BD6E |

CODE_FL_86BD6F:
  CLC                                       ; $86BD6F |
  LDA.W $1672                               ; $86BD70 |
  ADC.B $0D,X                               ; $86BD73 |
  SEC                                       ; $86BD75 |
  SBC.B $4A,X                               ; $86BD76 |
  ADC.W #$0010                              ; $86BD78 |
  LDY.W #$32C4                              ; $86BD7B |
  CMP.W #$0050                              ; $86BD7E |
  BCS CODE_86BDA6                           ; $86BD81 |
  LDY.W #$32BC                              ; $86BD83 |
  CMP.W #$0040                              ; $86BD86 |
  BCS CODE_86BDA6                           ; $86BD89 |
  LDY.W #$32B6                              ; $86BD8B |
  CMP.W #$0030                              ; $86BD8E |
  BCS CODE_86BDA6                           ; $86BD91 |
  LDY.W #$32B2                              ; $86BD93 |
  CMP.W #$0020                              ; $86BD96 |
  BCS CODE_86BDA6                           ; $86BD99 |
  LDY.W #$32B0                              ; $86BD9B |
  CMP.W #$0010                              ; $86BD9E |
  BCS CODE_86BDA6                           ; $86BDA1 |
  LDY.W #$0000                              ; $86BDA3 |

CODE_86BDA6:
  PHY                                       ; $86BDA6 |
  LDY.B $44,X                               ; $86BDA7 |
  PLA                                       ; $86BDA9 |
  STA.W $0000,Y                             ; $86BDAA |
  RTL                                       ; $86BDAD |

CODE_86BDAE:
  JSL.L CODE_FL_86C393                      ; $86BDAE |
  JSL.L CODE_FL_86C70D                      ; $86BDB2 |
  LDA.W #$FE00                              ; $86BDB6 |
  STA.B $28,X                               ; $86BDB9 |
  LDA.B $4E,X                               ; $86BDBB |
  AND.W #$0001                              ; $86BDBD |
  BNE CODE_86BDC7                           ; $86BDC0 |
  LDA.W #$FF00                              ; $86BDC2 |
  STA.B $28,X                               ; $86BDC5 |

CODE_86BDC7:
  INC.B $1A,X                               ; $86BDC7 |
  RTL                                       ; $86BDC9 |

CODE_86BDCA:
  JSL.L CODE_FL_86BD6F                      ; $86BDCA |
  CLC                                       ; $86BDCE |
  LDA.W $1672                               ; $86BDCF |
  ADC.B $0D,X                               ; $86BDD2 |
  SEC                                       ; $86BDD4 |
  SBC.B $4A,X                               ; $86BDD5 |
  BCS CODE_86BDEF                           ; $86BDD7 |
  EOR.W #$FFFF                              ; $86BDD9 |
  INC A                                     ; $86BDDC |
  CLC                                       ; $86BDDD |
  ADC.B $0D,X                               ; $86BDDE |
  STA.B $0D,X                               ; $86BDE0 |
  LDA.W #$0001                              ; $86BDE2 |
  STA.B $1A,X                               ; $86BDE5 |
  STZ.B $28,X                               ; $86BDE7 |
  LDA.W #$0060                              ; $86BDE9 |
  STA.B $2C,X                               ; $86BDEC |
  RTL                                       ; $86BDEE |

CODE_86BDEF:
  CMP.W #$0004                              ; $86BDEF |
  BCS CODE_86BDF9                           ; $86BDF2 |
  LDA.W #$3294                              ; $86BDF4 |
  STA.B $00,X                               ; $86BDF7 |

CODE_86BDF9:
  RTL                                       ; $86BDF9 |

CODE_86BDFA:
  LDA.B $1A,X                               ; $86BDFA |
  PHX                                       ; $86BDFC |
  ASL A                                     ; $86BDFD |
  TAX                                       ; $86BDFE |
  LDA.L PTR16_86BE09,X                      ; $86BDFF |
  PLX                                       ; $86BE03 |
  STA.B $00                                 ; $86BE04 |
  JMP.W ($0000)                             ; $86BE06 |

PTR16_86BE09:
  dw CODE_86BE0D                            ; $86BE09 |
  dw CODE_86BE2C                            ; $86BE0B |

CODE_86BE0D:
  JSL.L CODE_FL_86C7A5                      ; $86BE0D |
  JSL.L CODE_FL_86C36A                      ; $86BE11 |
  LDA.B $4E,X                               ; $86BE15 |
  AND.W #$0001                              ; $86BE17 |
  BNE CODE_86BE27                           ; $86BE1A |
  LDA.W #$0888                              ; $86BE1C |

CODE_86BE1F:
  ORA.B $34,X                               ; $86BE1F |
  STA.B $34,X                               ; $86BE21 |
  JML.L CODE_FL_86C63F                      ; $86BE23 |

CODE_86BE27:
  LDA.W #$0880                              ; $86BE27 |
  BRA CODE_86BE1F                           ; $86BE2A |

CODE_86BE2C:
  RTL                                       ; $86BE2C |

CODE_86BE2D:
  JSL.L CODE_FL_86C3B0                      ; $86BE2D |
  PHX                                       ; $86BE31 |
  ASL A                                     ; $86BE32 |
  TAX                                       ; $86BE33 |
  LDA.L PTR16_86BE3E,X                      ; $86BE34 |
  PLX                                       ; $86BE38 |
  STA.B $00                                 ; $86BE39 |
  JMP.W ($0000)                             ; $86BE3B |

PTR16_86BE3E:
  dw CODE_86BE46                            ; $86BE3E |
  dw CODE_86BE61                            ; $86BE40 |
  dw CODE_86BE6E                            ; $86BE42 |
  dw CODE_86BE82                            ; $86BE44 |

CODE_86BE46:
  JSL.L CODE_FL_86C7A5                      ; $86BE46 |
  JSL.L CODE_FL_86C36A                      ; $86BE4A |
  LDA.B $0D,X                               ; $86BE4E |
  CLC                                       ; $86BE50 |
  ADC.W $1672                               ; $86BE51 |
  STA.B $3A,X                               ; $86BE54 |
  LDA.B $34,X                               ; $86BE56 |
  ORA.W #$0888                              ; $86BE58 |
  STA.B $34,X                               ; $86BE5B |
  JML.L CODE_FL_86C63F                      ; $86BE5D |

CODE_86BE61:
  LDA.B $46,X                               ; $86BE61 |
  BMI CODE_86BE66                           ; $86BE63 |
  RTL                                       ; $86BE65 |

CODE_86BE66:
  LDA.W #$0040                              ; $86BE66 |
  STA.B $2C,X                               ; $86BE69 |
  INC.B $1A,X                               ; $86BE6B |
  RTL                                       ; $86BE6D |

CODE_86BE6E:
  JSL.L CODE_FL_86C393                      ; $86BE6E |
  JSL.L CODE_FL_86C70D                      ; $86BE72 |
  LDA.W #$0100                              ; $86BE76 |
  STA.B $2C,X                               ; $86BE79 |
  JSL.L CODE_FL_85AA07                      ; $86BE7B |
  INC.B $1A,X                               ; $86BE7F |
  RTL                                       ; $86BE81 |

CODE_86BE82:
  JSL.L CODE_FL_86C82F                      ; $86BE82 |
  JSL.L CODE_FL_86C70D                      ; $86BE86 |
  STZ.B $46,X                               ; $86BE8A |
  STZ.B $28,X                               ; $86BE8C |
  SEC                                       ; $86BE8E |
  LDA.B $3A,X                               ; $86BE8F |
  SBC.W $1672                               ; $86BE91 |
  STA.B $0D,X                               ; $86BE94 |
  DEC.B $1A,X                               ; $86BE96 |
  DEC.B $1A,X                               ; $86BE98 |
  RTL                                       ; $86BE9A |

CODE_86BE9B:
  JSL.L CODE_FL_86C3F8                      ; $86BE9B |
  PHX                                       ; $86BE9F |
  ASL A                                     ; $86BEA0 |
  TAX                                       ; $86BEA1 |
  LDA.L PTR16_86BEAC,X                      ; $86BEA2 |
  PLX                                       ; $86BEA6 |
  STA.B $00                                 ; $86BEA7 |
  JMP.W ($0000)                             ; $86BEA9 |

PTR16_86BEAC:
  dw CODE_86BEB6                            ; $86BEAC |
  dw CODE_86BF07                            ; $86BEAE |
  dw CODE_86BF26                            ; $86BEB0 |
  dw CODE_86BF46                            ; $86BEB2 |
  dw CODE_86BF59                            ; $86BEB4 |

CODE_86BEB6:
  JSL.L CODE_FL_86C7A5                      ; $86BEB6 |
  LDA.W #$3268                              ; $86BEBA |
  STA.B $00,X                               ; $86BEBD |
  LDA.B $4E,X                               ; $86BEBF |
  AND.W #$0001                              ; $86BEC1 |
  BEQ CODE_86BECB                           ; $86BEC4 |
  LDA.W #$30BE                              ; $86BEC6 |
  STA.B $00,X                               ; $86BEC9 |

CODE_86BECB:
  LDA.B $4E,X                               ; $86BECB |
  AND.W #$0002                              ; $86BECD |
  BEQ CODE_86BED6                           ; $86BED0 |
  JSL.L CODE_FL_85AA07                      ; $86BED2 |

CODE_86BED6:
  LDA.W #$B888                              ; $86BED6 |
  STA.B $34,X                               ; $86BED9 |
  LDA.B $4E,X                               ; $86BEDB |
  AND.W #$0008                              ; $86BEDD |
  BNE CODE_86BEFE                           ; $86BEE0 |
  LDA.B $4E,X                               ; $86BEE2 |
  AND.W #$0040                              ; $86BEE4 |
  BNE CODE_86BEF7                           ; $86BEE7 |
  LDA.B $4E,X                               ; $86BEE9 |
  AND.W #$0004                              ; $86BEEB |
  BEQ CODE_86BF03                           ; $86BEEE |
  LDA.W #$A888                              ; $86BEF0 |
  STA.B $34,X                               ; $86BEF3 |
  BRA CODE_86BF03                           ; $86BEF5 |

CODE_86BEF7:
  LDA.W #$B088                              ; $86BEF7 |
  STA.B $34,X                               ; $86BEFA |
  BRA CODE_86BF03                           ; $86BEFC |

CODE_86BEFE:
  LDA.W #$A090                              ; $86BEFE |
  STA.B $34,X                               ; $86BF01 |

CODE_86BF03:
  JML.L CODE_FL_86C63F                      ; $86BF03 |

CODE_86BF07:
  LDA.B $46,X                               ; $86BF07 |
  AND.W #$0087                              ; $86BF09 |
  STA.B $46,X                               ; $86BF0C |
  LDA.B $4E,X                               ; $86BF0E |
  BIT.W #$0010                              ; $86BF10 |
  BEQ CODE_86BF22                           ; $86BF13 |
  LDA.B $0D,X                               ; $86BF15 |
  BMI CODE_86BF1E                           ; $86BF17 |
  CMP.W #$0020                              ; $86BF19 |
  BCS CODE_86BF22                           ; $86BF1C |

CODE_86BF1E:
  JML.L CODE_FL_86CA2D                      ; $86BF1E |

CODE_86BF22:
  JML.L CODE_JL_85AD0B                      ; $86BF22 |

CODE_86BF26:
  LDY.W #$2010                              ; $86BF26 |
  LDA.B $4E,X                               ; $86BF29 |
  AND.W #$0001                              ; $86BF2B |
  BEQ CODE_86BF33                           ; $86BF2E |
  LDY.W #$2011                              ; $86BF30 |

CODE_86BF33:
  TYA                                       ; $86BF33 |
  JSL.L CODE_FL_86CAEE                      ; $86BF34 |
  JSL.L CODE_FL_85A9BF                      ; $86BF38 |
  INC.B $1A,X                               ; $86BF3C |
  LDA.W #$000D                              ; $86BF3E |
  JSL.L push_sound_queue                    ; $86BF41 |
  RTL                                       ; $86BF45 |

CODE_86BF46:
  LDA.B $20,X                               ; $86BF46 |
  BEQ CODE_86BF4B                           ; $86BF48 |
  RTL                                       ; $86BF4A |

CODE_86BF4B:
  LDA.B $4E,X                               ; $86BF4B |
  BIT.W #$0020                              ; $86BF4D |
  BEQ CODE_86BF55                           ; $86BF50 |
  INC.B $1A,X                               ; $86BF52 |
  RTL                                       ; $86BF54 |

CODE_86BF55:
  JML.L CODE_FL_86CA2D                      ; $86BF55 |

CODE_86BF59:
  LDA.B $09,X                               ; $86BF59 |
  AND.W #$00E0                              ; $86BF5B |
  STA.B $08                                 ; $86BF5E |
  LDA.B $0D,X                               ; $86BF60 |
  STA.B $0A                                 ; $86BF62 |
  LDA.W #$0130                              ; $86BF64 |
  JSL.L CODE_FL_858256                      ; $86BF67 |
  BCS CODE_86BF71                           ; $86BF6B |
  JML.L CODE_FL_86CA2D                      ; $86BF6D |

CODE_86BF71:
  RTL                                       ; $86BF71 |

CODE_86BF72:
  JSL.L CODE_FL_86C424                      ; $86BF72 |
  PHX                                       ; $86BF76 |
  ASL A                                     ; $86BF77 |
  TAX                                       ; $86BF78 |
  LDA.L PTR16_86BF83,X                      ; $86BF79 |
  PLX                                       ; $86BF7D |
  STA.B $00                                 ; $86BF7E |
  JMP.W ($0000)                             ; $86BF80 |

PTR16_86BF83:
  dw CODE_86BF8B                            ; $86BF83 |
  dw CODE_86BF9A                            ; $86BF85 |
  dw CODE_86BF9E                            ; $86BF87 |
  dw CODE_86BFA2                            ; $86BF89 |

CODE_86BF8B:
  JSL.L CODE_FL_86C7AD                      ; $86BF8B |
  LDA.B $34,X                               ; $86BF8F |
  ORA.W #$B080                              ; $86BF91 |
  STA.B $34,X                               ; $86BF94 |
  JML.L CODE_FL_86C63F                      ; $86BF96 |

CODE_86BF9A:
  JML.L CODE_JL_85ACC0                      ; $86BF9A |

CODE_86BF9E:
  JML.L CODE_JL_859EC6                      ; $86BF9E |

CODE_86BFA2:
  CLC                                       ; $86BFA2 |
  LDA.B $09,X                               ; $86BFA3 |
  ADC.W #$FFF0                              ; $86BFA5 |
  STA.B $08                                 ; $86BFA8 |
  SEC                                       ; $86BFAA |
  LDA.B $0D,X                               ; $86BFAB |
  SBC.W #$0040                              ; $86BFAD |
  STA.B $0A                                 ; $86BFB0 |
  LDA.W #$0060                              ; $86BFB2 |
  JSL.L CODE_FL_8580F7                      ; $86BFB5 |
  BCC CODE_86BFBC                           ; $86BFB9 |
  RTL                                       ; $86BFBB |

CODE_86BFBC:
  LDA.B $4E,X                               ; $86BFBC |
  AND.W #$0100                              ; $86BFBE |
  BNE CODE_86BFC7                           ; $86BFC1 |
  JML.L CODE_FL_86CA2D                      ; $86BFC3 |

CODE_86BFC7:
  LDA.W #$0010                              ; $86BFC7 |
  JSL.L CODE_FL_85AC8E                      ; $86BFCA |
  JML.L CODE_FL_86CA2D                      ; $86BFCE |

CODE_86BFD2:
  JSL.L CODE_FL_86C424                      ; $86BFD2 |
  PHX                                       ; $86BFD6 |
  ASL A                                     ; $86BFD7 |
  TAX                                       ; $86BFD8 |
  LDA.L PTR16_86BFE3,X                      ; $86BFD9 |
  PLX                                       ; $86BFDD |
  STA.B $00                                 ; $86BFDE |
  JMP.W ($0000)                             ; $86BFE0 |

PTR16_86BFE3:
  dw CODE_86BFEB                            ; $86BFE3 |
  dw CODE_86C016                            ; $86BFE5 |
  dw CODE_86C01A                            ; $86BFE7 |
  dw CODE_86C04E                            ; $86BFE9 |

CODE_86BFEB:
  JSL.L CODE_FL_86C7AD                      ; $86BFEB |
  LDA.B $4E,X                               ; $86BFEF |
  AND.W #$00FF                              ; $86BFF1 |
  LSR A                                     ; $86BFF4 |
  LSR A                                     ; $86BFF5 |
  LSR A                                     ; $86BFF6 |
  TAX                                       ; $86BFF7 |
  LDA.L $7E8B80,X                           ; $86BFF8 |
  LDX.B $FC                                 ; $86BFFC |
  LSR A                                     ; $86BFFE |
  BCS CODE_86C010                           ; $86BFFF |
  JSL.L CODE_FL_85A8DE                      ; $86C001 |
  LDA.B $34,X                               ; $86C005 |
  ORA.W #$B080                              ; $86C007 |
  STA.B $34,X                               ; $86C00A |
  JML.L CODE_FL_86C63F                      ; $86C00C |

CODE_86C010:
  LDA.W #$0003                              ; $86C010 |
  STA.B $1A,X                               ; $86C013 |
  RTL                                       ; $86C015 |

CODE_86C016:
  JML.L CODE_JL_85ACF8                      ; $86C016 |

CODE_86C01A:
  STZ.B $00                                 ; $86C01A |
  JSL.L CODE_FL_85AB2B                      ; $86C01C |
  BCC CODE_86C027                           ; $86C020 |
  LDA.W #$0004                              ; $86C022 |
  STA.B $00                                 ; $86C025 |

CODE_86C027:
  LDA.W #$0004                              ; $86C027 |
  STA.B $10                                 ; $86C02A |
  CLC                                       ; $86C02C |
  LDA.W #$0012                              ; $86C02D |
  ADC.B $00                                 ; $86C030 |
  STA.B $12                                 ; $86C032 |
  LDA.W #$3256                              ; $86C034 |
  STA.B $14                                 ; $86C037 |
  LDA.B $4E,X                               ; $86C039 |
  AND.W #$0100                              ; $86C03B |
  BEQ CODE_86C045                           ; $86C03E |
  LDA.W #$325A                              ; $86C040 |
  STA.B $14                                 ; $86C043 |

CODE_86C045:
  STZ.B $16                                 ; $86C045 |
  JSL.L CODE_FL_86B8B7                      ; $86C047 |
  INC.B $1A,X                               ; $86C04B |
  RTL                                       ; $86C04D |

CODE_86C04E:
  STZ.B $02                                 ; $86C04E |
  CLC                                       ; $86C050 |
  LDA.B $4E,X                               ; $86C051 |
  AND.W #$0007                              ; $86C053 |
  STA.B $00                                 ; $86C056 |
  CMP.W #$0002                              ; $86C058 |
  BNE CODE_86C062                           ; $86C05B |
  LDA.W #$0010                              ; $86C05D |
  STA.B $02                                 ; $86C060 |

CODE_86C062:
  LDA.B $09,X                               ; $86C062 |
  SEC                                       ; $86C064 |
  SBC.W #$0020                              ; $86C065 |
  ADC.B $02                                 ; $86C068 |
  STA.B $08                                 ; $86C06A |
  LDA.B $0D,X                               ; $86C06C |
  SEC                                       ; $86C06E |
  SBC.W #$0040                              ; $86C06F |
  ADC.B $02                                 ; $86C072 |
  STA.B $0A                                 ; $86C074 |
  LDA.B $00                                 ; $86C076 |
  ASL A                                     ; $86C078 |
  ADC.W #$0058                              ; $86C079 |
  JSL.L CODE_FL_8580F7                      ; $86C07C |
  BCC CODE_86C083                           ; $86C080 |
  RTL                                       ; $86C082 |

CODE_86C083:
  LDA.B $4E,X                               ; $86C083 |
  AND.W #$00FF                              ; $86C085 |
  LSR A                                     ; $86C088 |
  LSR A                                     ; $86C089 |
  LSR A                                     ; $86C08A |
  TAX                                       ; $86C08B |
  SEP #$20                                  ; $86C08C |
  LDA.B #$01                                ; $86C08E |
  STA.L $7E8B80,X                           ; $86C090 |
  LDX.B $FC                                 ; $86C094 |
  REP #$20                                  ; $86C096 |
  JML.L CODE_FL_86CA2D                      ; $86C098 |

CODE_86C09C:
  JSL.L CODE_FL_86C3C9                      ; $86C09C |
  PHX                                       ; $86C0A0 |
  ASL A                                     ; $86C0A1 |
  TAX                                       ; $86C0A2 |
  LDA.L PTR16_86C0AD,X                      ; $86C0A3 |
  PLX                                       ; $86C0A7 |
  STA.B $00                                 ; $86C0A8 |
  JMP.W ($0000)                             ; $86C0AA |

PTR16_86C0AD:
  dw CODE_86C0B7                            ; $86C0AD |
  dw CODE_86C106                            ; $86C0AF |
  dw CODE_86C133                            ; $86C0B1 |
  dw CODE_86C1A1                            ; $86C0B3 |
  dw CODE_86C1AC                            ; $86C0B5 |

CODE_86C0B7:
  JSL.L CODE_FL_86C7A5                      ; $86C0B7 |
  JSL.L CODE_FL_86C36A                      ; $86C0BB |
  LDA.B $34,X                               ; $86C0BF |
  ORA.W #$0888                              ; $86C0C1 |
  STA.B $34,X                               ; $86C0C4 |
  JSL.L CODE_FL_86C5AE                      ; $86C0C6 |
  BCS CODE_86C0E8                           ; $86C0CA |
  LDA.L $7E8BB0,X                           ; $86C0CC |
  AND.W #$4000                              ; $86C0D0 |
  BEQ CODE_86C0DB                           ; $86C0D3 |
  LDA.W $003A,Y                             ; $86C0D5 |
  STA.W $0026,Y                             ; $86C0D8 |

CODE_86C0DB:
  TYX                                       ; $86C0DB |
  JSL.L CODE_FL_808B9C                      ; $86C0DC |
  LDA.B $0E                                 ; $86C0E0 |
  STA.B $0D,X                               ; $86C0E2 |
  LDA.B $0C                                 ; $86C0E4 |
  STA.B $09,X                               ; $86C0E6 |

CODE_86C0E8:
  INC.B $1A,X                               ; $86C0E8 |
  LDX.B $FC                                 ; $86C0EA |
  LDA.W $002C,X                             ; $86C0EC |
  BNE CODE_86C0F3                           ; $86C0EF |
  DEC.B $1A,X                               ; $86C0F1 |

CODE_86C0F3:
  LDA.B $4E,X                               ; $86C0F3 |
  AND.W #$0100                              ; $86C0F5 |
  BNE CODE_86C0FE                           ; $86C0F8 |
  JML.L CODE_FL_86C63F                      ; $86C0FA |

CODE_86C0FE:
  STZ.B $00,X                               ; $86C0FE |
  STZ.B $34,X                               ; $86C100 |
  JML.L CODE_FL_86C63F                      ; $86C102 |

CODE_86C106:
  LDA.B $40,X                               ; $86C106 |
  TAX                                       ; $86C108 |
  LDA.L $7E8B80,X                           ; $86C109 |
  LDX.B $FC                                 ; $86C10D |
  AND.W #$0001                              ; $86C10F |
  BEQ CODE_86C132                           ; $86C112 |
  LDA.W $003A,X                             ; $86C114 |
  STA.B $26,X                               ; $86C117 |
  LDA.B $3C,X                               ; $86C119 |
  STA.B $2C,X                               ; $86C11B |
  LDY.B $3E,X                               ; $86C11D |
  TYX                                       ; $86C11F |
  LDA.L $7E8BB0,X                           ; $86C120 |
  ORA.W #$4000                              ; $86C124 |
  STA.L $7E8BB0,X                           ; $86C127 |
  LDX.B $FC                                 ; $86C12B |
  TDC                                       ; $86C12D |
  STA.B $46,X                               ; $86C12E |
  INC.B $1A,X                               ; $86C130 |

CODE_86C132:
  RTL                                       ; $86C132 |

CODE_86C133:
  JSL.L CODE_FL_86C1B0                      ; $86C133 |
  LDA.B $0D,X                               ; $86C137 |
  STA.B $0A                                 ; $86C139 |
  LDA.B $09,X                               ; $86C13B |
  STA.B $08                                 ; $86C13D |
  JSL.L CODE_FL_808AB5                      ; $86C13F |
  TXY                                       ; $86C143 |
  LDA.B $3E,X                               ; $86C144 |
  TAX                                       ; $86C146 |
  LDA.L $7E8BB0,X                           ; $86C147 |
  AND.W #$E000                              ; $86C14B |
  STA.B $00                                 ; $86C14E |
  LDA.W $002C,Y                             ; $86C150 |
  AND.W #$1FFF                              ; $86C153 |
  ORA.B $00                                 ; $86C156 |
  STA.L $7E8BB0,X                           ; $86C158 |
  LDA.B $0C                                 ; $86C15C |
  STA.L $7E8BB2,X                           ; $86C15E |
  LDA.B $0E                                 ; $86C162 |
  STA.L $7E8BB4,X                           ; $86C164 |
  LDX.B $FC                                 ; $86C168 |
  JSL.L CODE_FL_86C70D                      ; $86C16A |
  LDA.W #$0019                              ; $86C16E |
  JSL.L push_sound_queue                    ; $86C171 |
  TDC                                       ; $86C175 |
  STA.B $26,X                               ; $86C176 |
  INC.B $1A,X                               ; $86C178 |
  STZ.B $46,X                               ; $86C17A |
  LDA.B $22,X                               ; $86C17C |
  ORA.W #$4000                              ; $86C17E |
  STA.B $22,X                               ; $86C181 |
  LDA.W #$0020                              ; $86C183 |
  STA.B $2C,X                               ; $86C186 |
  LDA.B $3E,X                               ; $86C188 |
  TAX                                       ; $86C18A |
  TDC                                       ; $86C18B |
  STA.L $7E8BB4,X                           ; $86C18C |
  LDX.B $FC                                 ; $86C190 |
  LDA.B $40,X                               ; $86C192 |
  TAX                                       ; $86C194 |
  TDC                                       ; $86C195 |
  SEP #$20                                  ; $86C196 |
  STA.L $7E8B80,X                           ; $86C198 |
  LDX.B $FC                                 ; $86C19C |
  REP #$20                                  ; $86C19E |
  RTL                                       ; $86C1A0 |

CODE_86C1A1:
  JSL.L CODE_FL_86C393                      ; $86C1A1 |
  JSL.L CODE_FL_86C70D                      ; $86C1A5 |
  INC.B $1A,X                               ; $86C1A9 |
  RTL                                       ; $86C1AB |

CODE_86C1AC:
  JML.L CODE_FL_86C82F                      ; $86C1AC |

CODE_FL_86C1B0:
  LDA.B $09,X                               ; $86C1B0 |
  CMP.W #$0100                              ; $86C1B2 |
  BCS CODE_86C1D6                           ; $86C1B5 |
  LDA.W $1C38                               ; $86C1B7 |
  AND.W #$0007                              ; $86C1BA |
  BNE CODE_86C1D6                           ; $86C1BD |
  LDA.B $4E,X                               ; $86C1BF |
  AND.W #$0100                              ; $86C1C1 |
  BNE CODE_86C1CF                           ; $86C1C4 |
  LDA.W #$0018                              ; $86C1C6 |
  JSL.L push_sound_queue                    ; $86C1C9 |
  BRA CODE_86C1D6                           ; $86C1CD |

CODE_86C1CF:
  LDA.W #$001A                              ; $86C1CF |
  JSL.L push_sound_queue                    ; $86C1D2 |

CODE_86C1D6:
  RTL                                       ; $86C1D6 |

CODE_FL_86C1D7:
  PHX                                       ; $86C1D7 |
  PHY                                       ; $86C1D8 |
  STX.B $FC                                 ; $86C1D9 |
  LDA.W #$0200                              ; $86C1DB |
  JSR.W CODE_FN_86C1EA                      ; $86C1DE |
  LDA.W #$FE00                              ; $86C1E1 |
  JSR.W CODE_FN_86C1EA                      ; $86C1E4 |
  PLY                                       ; $86C1E7 |
  PLX                                       ; $86C1E8 |
  RTL                                       ; $86C1E9 |

CODE_FN_86C1EA:
  STA.B $10                                 ; $86C1EA |
  LDA.W #$001E                              ; $86C1EC |
  JSL.L CODE_FL_86C9C5                      ; $86C1EF |
  BCS CODE_86C214                           ; $86C1F3 |
  TYX                                       ; $86C1F5 |
  LDA.B $10                                 ; $86C1F6 |
  STA.B $26,X                               ; $86C1F8 |
  LDA.W #$FC00                              ; $86C1FA |
  STA.B $28,X                               ; $86C1FD |
  LDA.W #$0012                              ; $86C1FF |
  STA.W $002C,X                             ; $86C202 |
  LDA.W #$DD9A                              ; $86C205 |
  STA.B $00,X                               ; $86C208 |
  LDA.B $10                                 ; $86C20A |
  BPL CODE_86C212                           ; $86C20C |
  JSL.L CODE_FL_86C47E                      ; $86C20E |

CODE_86C212:
  LDX.B $FC                                 ; $86C212 |

CODE_86C214:
  RTS                                       ; $86C214 |

CODE_FL_86C215:
  LDA.B $22,X                               ; $86C215 |
  ORA.W #$0100                              ; $86C217 |
  STA.B $22,X                               ; $86C21A |
  RTL                                       ; $86C21C |

CODE_FL_86C21D:
  LDA.B $22,X                               ; $86C21D |
  AND.W #$FEFF                              ; $86C21F |
  STA.B $22,X                               ; $86C222 |
  RTL                                       ; $86C224 |

CODE_FL_86C225:
  LDA.W $0022,X                             ; $86C225 |
  ORA.W #$0100                              ; $86C228 |
  STA.W $0022,X                             ; $86C22B |
  RTL                                       ; $86C22E |

  LDA.W $0022,Y                             ; $86C22F |
  AND.W #$FEFF                              ; $86C232 |
  STA.W $0022,Y                             ; $86C235 |
  RTL                                       ; $86C238 |

CODE_FL_86C239:
  LDA.B $32,X                               ; $86C239 |
  AND.W #$01FF                              ; $86C23B |
  ASL A                                     ; $86C23E |
  ASL A                                     ; $86C23F |
  ASL A                                     ; $86C240 |
  ASL A                                     ; $86C241 |
  TAY                                       ; $86C242 |
  JSL.L CODE_FL_85AB0B                      ; $86C243 |
  JSL.L CODE_FL_8098E4                      ; $86C247 |
  JML.L CODE_FL_8098FD                      ; $86C24B |

CODE_FL_86C24F:
  PHY                                       ; $86C24F |
  PHB                                       ; $86C250 |
  PEA.W $8787                               ; $86C251 |
  PLB                                       ; $86C254 |
  PLB                                       ; $86C255 |
  LDA.W $0018,Y                             ; $86C256 |
  BEQ CODE_86C267                           ; $86C259 |
  ASL A                                     ; $86C25B |
  TAY                                       ; $86C25C |
  LDA.W CODE_0092C2,Y                       ; $86C25D |
  TAY                                       ; $86C260 |
  LDA.W $0004,Y                             ; $86C261 |
  AND.W #$00FF                              ; $86C264 |

CODE_86C267:
  PLB                                       ; $86C267 |
  PLY                                       ; $86C268 |
  RTL                                       ; $86C269 |

CODE_FL_86C26A:
  LDA.W #$8000                              ; $86C26A |
  STA.B $E4                                 ; $86C26D |
  STZ.W $0498                               ; $86C26F |
  STZ.W $049A                               ; $86C272 |
  STZ.W $0558                               ; $86C275 |
  STZ.W $055A                               ; $86C278 |
  RTL                                       ; $86C27B |

CODE_FL_86C27C:
  LDA.B $46,X                               ; $86C27C |
  AND.W #$0800                              ; $86C27E |
  BEQ CODE_86C286                           ; $86C281 |
  LDY.W #$0400                              ; $86C283 |

CODE_86C286:
  RTL                                       ; $86C286 |

CODE_FL_86C287:
  LDA.B $46,X                               ; $86C287 |
  AND.W #$0400                              ; $86C289 |
  BEQ CODE_86C291                           ; $86C28C |
  LDY.W #$04C0                              ; $86C28E |

CODE_86C291:
  RTL                                       ; $86C291 |

CODE_FL_86C292:
  LDA.W $1C38                               ; $86C292 |
  STA.W $1C28                               ; $86C295 |
  LDA.W #$0002                              ; $86C298 |
  STA.B $0A                                 ; $86C29B |

CODE_FL_86C29D:
  LDA.B $4E,X                               ; $86C29D |
  STA.B $08                                 ; $86C29F |
  LSR A                                     ; $86C2A1 |
  LSR A                                     ; $86C2A2 |
  LSR A                                     ; $86C2A3 |
  LSR A                                     ; $86C2A4 |
  AND.W #$000E                              ; $86C2A5 |
  TAY                                       ; $86C2A8 |
  LDA.W LOOSE_OP_00CF5F,Y                   ; $86C2A9 |
  STA.B $0C                                 ; $86C2AC |
  STY.B $3E,X                               ; $86C2AE |
  LDA.B $0C                                 ; $86C2B0 |
  LSR A                                     ; $86C2B2 |
  STA.B $14                                 ; $86C2B3 |
  STA.B $0E                                 ; $86C2B5 |
  LSR A                                     ; $86C2B7 |
  STA.B $12                                 ; $86C2B8 |
  DEC A                                     ; $86C2BA |
  STA.B $10                                 ; $86C2BB |
  DEC.B $0E                                 ; $86C2BD |
  LDA.W $1C28                               ; $86C2BF |
  BIT.B $12                                 ; $86C2C2 |
  BEQ CODE_86C2CA                           ; $86C2C4 |
  EOR.W #$FFFF                              ; $86C2C6 |
  INC A                                     ; $86C2C9 |

CODE_86C2CA:
  AND.B $0E                                 ; $86C2CA |
  STA.B $0E                                 ; $86C2CC |
  LDA.W $1C28                               ; $86C2CE |
  JSR.W CODE_FN_86C306                      ; $86C2D1 |
  LDA.B $26,X                               ; $86C2D4 |
  JSR.W CODE_FN_86C2F0                      ; $86C2D6 |
  STA.B $26,X                               ; $86C2D9 |
  LDA.B $28,X                               ; $86C2DB |
  JSR.W CODE_FN_86C2F0                      ; $86C2DD |
  STA.B $28,X                               ; $86C2E0 |
  JSL.L CODE_FL_86C855                      ; $86C2E2 |

CODE_FL_86C2E6:
  CLC                                       ; $86C2E6 |
  LDA.W $1C28                               ; $86C2E7 |
  ADC.B $12                                 ; $86C2EA |
  JSR.W CODE_FN_86C306                      ; $86C2EC |

CODE_86C2EF:
  RTL                                       ; $86C2EF |

CODE_FN_86C2F0:
  PHP                                       ; $86C2F0 |
  BPL CODE_86C2F7                           ; $86C2F1 |
  EOR.W #$FFFF                              ; $86C2F3 |
  INC A                                     ; $86C2F6 |

CODE_86C2F7:
  TAY                                       ; $86C2F7 |
  LDA.B $0E                                 ; $86C2F8 |
  JSL.L CODE_FL_808E18                      ; $86C2FA |
  PLP                                       ; $86C2FE |
  BPL CODE_86C305                           ; $86C2FF |
  EOR.W #$FFFF                              ; $86C301 |
  INC A                                     ; $86C304 |

CODE_86C305:
  RTS                                       ; $86C305 |

CODE_FN_86C306:
  LDY.B $08                                 ; $86C306 |
  BIT.B $14                                 ; $86C308 |
  BEQ CODE_86C311                           ; $86C30A |
  TYA                                       ; $86C30C |
  EOR.W #$0010                              ; $86C30D |
  TAY                                       ; $86C310 |

CODE_86C311:
  TYA                                       ; $86C311 |
  LDY.B $0A                                 ; $86C312 |
  JSL.L CODE_FL_8AB499                      ; $86C314 |
  RTS                                       ; $86C318 |

CODE_FL_86C319:
  LDA.W $1C38                               ; $86C319 |
  STA.W $1C28                               ; $86C31C |
  LDA.W #$0002                              ; $86C31F |
  STA.B $0A                                 ; $86C322 |

CODE_FL_86C324:
  LDA.B $4E,X                               ; $86C324 |
  STA.B $08                                 ; $86C326 |
  LDY.B $3E,X                               ; $86C328 |
  LDA.W LOOSE_OP_00CF5F,Y                   ; $86C32A |
  STA.B $0C                                 ; $86C32D |
  LDA.B $0C                                 ; $86C32F |
  LSR A                                     ; $86C331 |
  STA.B $14                                 ; $86C332 |
  LSR A                                     ; $86C334 |
  STA.B $12                                 ; $86C335 |
  DEC A                                     ; $86C337 |
  AND.W $1C28                               ; $86C338 |
  BNE CODE_86C2EF                           ; $86C33B |
  JSL.L CODE_FL_86C2E6                      ; $86C33D |
  RTL                                       ; $86C341 |

  JSL.L CODE_FL_86C34B                      ; $86C342 |
  BCS CODE_86C34A                           ; $86C346 |
  INC.B $1A,X                               ; $86C348 |

CODE_86C34A:
  RTL                                       ; $86C34A |

CODE_FL_86C34B:
  LDY.B $3E,X                               ; $86C34B |
  LDA.W LOOSE_OP_00CF69,Y                   ; $86C34D |
  JML.L CODE_FL_86CB2D                      ; $86C350 |

  LDA.W $1C6C                               ; $86C354 |
  BMI CODE_86C365                           ; $86C357 |
  LDA.W $1C6C                               ; $86C359 |
  CMP.B $0D,X                               ; $86C35C |
  BCS CODE_86C369                           ; $86C35E |
  STA.B $0D,X                               ; $86C360 |
  STZ.B $28,X                               ; $86C362 |
  RTL                                       ; $86C364 |

CODE_86C365:
  STZ.B $0D,X                               ; $86C365 |
  STZ.B $28,X                               ; $86C367 |

CODE_86C369:
  RTL                                       ; $86C369 |

CODE_FL_86C36A:
  LDA.B $8E                                 ; $86C36A |
  CMP.W #$0018                              ; $86C36C |
  BCS CODE_86C377                           ; $86C36F |
  LDA.W #$325C                              ; $86C371 |
  STA.B $00,X                               ; $86C374 |
  RTL                                       ; $86C376 |

CODE_86C377:
  CMP.W #$0027                              ; $86C377 |
  BCS CODE_86C382                           ; $86C37A |
  LDA.W #$3260                              ; $86C37C |
  STA.B $00,X                               ; $86C37F |
  RTL                                       ; $86C381 |

CODE_86C382:
  CMP.W #$0046                              ; $86C382 |
  BCS CODE_86C38D                           ; $86C385 |
  LDA.W #$32E6                              ; $86C387 |
  STA.B $00,X                               ; $86C38A |
  RTL                                       ; $86C38C |

CODE_86C38D:
  LDA.W #$3576                              ; $86C38D |
  STA.B $00,X                               ; $86C390 |
  RTL                                       ; $86C392 |

CODE_FL_86C393:
  LDA.W $1C38                               ; $86C393 |
  AND.W #$0001                              ; $86C396 |
  ASL A                                     ; $86C399 |
  ASL A                                     ; $86C39A |
  DEC A                                     ; $86C39B |
  DEC A                                     ; $86C39C |
  CLC                                       ; $86C39D |
  ADC.B $09,X                               ; $86C39E |
  STA.B $09,X                               ; $86C3A0 |
  RTL                                       ; $86C3A2 |

CODE_FL_86C3A3:
  LDA.B $38,X                               ; $86C3A3 |
  BEQ CODE_86C3A9                           ; $86C3A5 |
  DEC.B $38,X                               ; $86C3A7 |

CODE_86C3A9:
  LDA.B $2C,X                               ; $86C3A9 |
  BEQ CODE_86C3AF                           ; $86C3AB |
  DEC.B $2C,X                               ; $86C3AD |

CODE_86C3AF:
  RTL                                       ; $86C3AF |

CODE_FL_86C3B0:
  JSL.L CODE_FL_86C3A3                      ; $86C3B0 |
  JSL.L CODE_FL_86C855                      ; $86C3B4 |
  LDA.B $1A,X                               ; $86C3B8 |
  RTL                                       ; $86C3BA |

CODE_FL_86C3BB:
  LDA.B $46,X                               ; $86C3BB |
  BPL CODE_FL_86C3F8                        ; $86C3BD |
  JSL.L CODE_FL_97FC80                      ; $86C3BF |
  JSL.L CODE_FL_86C3A3                      ; $86C3C3 |
  BRA CODE_86C3D1                           ; $86C3C7 |

CODE_FL_86C3C9:
  LDA.B $46,X                               ; $86C3C9 |
  BPL CODE_FL_86C3B0                        ; $86C3CB |
  JSL.L CODE_FL_86C3A3                      ; $86C3CD |

CODE_86C3D1:
  LDA.B $09,X                               ; $86C3D1 |
  STA.B $00                                 ; $86C3D3 |
  LDA.B $0D,X                               ; $86C3D5 |
  STA.B $02                                 ; $86C3D7 |
  JSL.L CODE_FL_86C855                      ; $86C3D9 |
  SEC                                       ; $86C3DD |
  LDA.B $09,X                               ; $86C3DE |
  SBC.B $00                                 ; $86C3E0 |
  STA.B $10,X                               ; $86C3E2 |
  SEC                                       ; $86C3E4 |
  LDA.B $0D,X                               ; $86C3E5 |
  SBC.B $02                                 ; $86C3E7 |
  STA.B $12,X                               ; $86C3E9 |
  LDA.B $1A,X                               ; $86C3EB |
  RTL                                       ; $86C3ED |

CODE_FL_86C3EE:
  LDA.B $46,X                               ; $86C3EE |
  BPL CODE_FL_86C407                        ; $86C3F0 |
  JSL.L CODE_FL_97FC80                      ; $86C3F2 |
  BRA CODE_86C3D1                           ; $86C3F6 |

CODE_FL_86C3F8:
  JSL.L CODE_FL_86C3A3                      ; $86C3F8 |
  JSL.L CODE_FL_86C855                      ; $86C3FC |
  JSL.L CODE_FL_97FC80                      ; $86C400 |
  LDA.B $1A,X                               ; $86C404 |
  RTL                                       ; $86C406 |

CODE_FL_86C407:
  JSL.L CODE_FL_86C855                      ; $86C407 |
  JSL.L CODE_FL_97FC80                      ; $86C40B |
  LDA.B $1A,X                               ; $86C40F |
  RTL                                       ; $86C411 |

CODE_FL_86C412:
  JSL.L CODE_FL_86C3A3                      ; $86C412 |
  JSL.L CODE_FL_97FC80                      ; $86C416 |
  LDA.B $1A,X                               ; $86C41A |
  RTL                                       ; $86C41C |

CODE_FL_86C41D:
  JSL.L CODE_FL_86C855                      ; $86C41D |
  LDA.B $1A,X                               ; $86C421 |
  RTL                                       ; $86C423 |

CODE_FL_86C424:
  JSL.L CODE_FL_86C3A3                      ; $86C424 |
  LDA.B $1A,X                               ; $86C428 |
  RTL                                       ; $86C42A |

CODE_FL_86C42B:
  JSL.L CODE_FL_97FC80                      ; $86C42B |
  LDA.B $1A,X                               ; $86C42F |
  RTL                                       ; $86C431 |

CODE_FL_86C432:
  LDA.B $86                                 ; $86C432 |
  ASL A                                     ; $86C434 |
  ADC.B $86                                 ; $86C435 |
  ASL A                                     ; $86C437 |
  ASL A                                     ; $86C438 |
  ASL A                                     ; $86C439 |
  SBC.B $86                                 ; $86C43A |
  ADC.W $1C38                               ; $86C43C |
  EOR.B $86                                 ; $86C43F |
  STA.B $86                                 ; $86C441 |
  RTL                                       ; $86C443 |

CODE_FL_86C444:
  LDX.B $DC                                 ; $86C444 |
  LDA.B $18,X                               ; $86C446 |
  BEQ CODE_86C465                           ; $86C448 |
  LDX.B $DE                                 ; $86C44A |
  LDA.B $18,X                               ; $86C44C |
  BEQ CODE_86C460                           ; $86C44E |
  LDA.B $86                                 ; $86C450 |
  LSR A                                     ; $86C452 |
  LDA.W #$00DC                              ; $86C453 |
  BCC CODE_86C45B                           ; $86C456 |
  LDA.W #$00DE                              ; $86C458 |

CODE_86C45B:
  LDX.B $FC                                 ; $86C45B |
  STA.B $48,X                               ; $86C45D |
  RTL                                       ; $86C45F |

CODE_86C460:
  LDA.W #$00DC                              ; $86C460 |
  BRA CODE_86C45B                           ; $86C463 |

CODE_86C465:
  LDA.W #$00DE                              ; $86C465 |
  BRA CODE_86C45B                           ; $86C468 |

  LDA.B $28,X                               ; $86C46A |
  STA.B $00                                 ; $86C46C |
  LDA.B $04,X                               ; $86C46E |
  AND.W #$BFBF                              ; $86C470 |
  LDY.B $00                                 ; $86C473 |
  BPL CODE_JL_86C49B                        ; $86C475 |
  ORA.W #$4040                              ; $86C477 |
  JML.L CODE_JL_86C49B                      ; $86C47A |

CODE_FL_86C47E:
  LDA.B $04,X                               ; $86C47E |
  EOR.W #$2020                              ; $86C480 |
  STA.B $04,X                               ; $86C483 |
  RTL                                       ; $86C485 |

CODE_FL_86C486:
  LDA.B ($48,X)                             ; $86C486 |
  TAY                                       ; $86C488 |

CODE_FL_86C489:
  CLC                                       ; $86C489 |
  LDA.B $09,X                               ; $86C48A |
  BMI CODE_86C491                           ; $86C48C |
  CMP.W $0009,Y                             ; $86C48E |

CODE_86C491:
  LDA.B $04,X                               ; $86C491 |
  AND.W #$DFDF                              ; $86C493 |
  BCS CODE_JL_86C49B                        ; $86C496 |
  ORA.W #$2020                              ; $86C498 |

CODE_JL_86C49B:
  STA.B $04,X                               ; $86C49B |
  RTL                                       ; $86C49D |

  LDA.B $86                                 ; $86C49E |
  CMP.W #$8000                              ; $86C4A0 |
  BRA CODE_86C491                           ; $86C4A3 |

CODE_FL_86C4A5:
  LDX.B $DC                                 ; $86C4A5 |
  LDA.B $18,X                               ; $86C4A7 |
  BEQ CODE_86C465                           ; $86C4A9 |
  LDX.B $DE                                 ; $86C4AB |
  LDA.B $18,X                               ; $86C4AD |
  BEQ CODE_86C460                           ; $86C4AF |
  LDX.B $FC                                 ; $86C4B1 |
  LDY.B $DC                                 ; $86C4B3 |
  LDA.W $0009,Y                             ; $86C4B5 |
  SEC                                       ; $86C4B8 |
  SBC.B $09,X                               ; $86C4B9 |
  BPL CODE_86C4C1                           ; $86C4BB |
  EOR.W #$FFFF                              ; $86C4BD |
  INC A                                     ; $86C4C0 |

CODE_86C4C1:
  STA.B $00                                 ; $86C4C1 |
  LDY.B $DE                                 ; $86C4C3 |
  LDA.W $0009,Y                             ; $86C4C5 |
  SEC                                       ; $86C4C8 |
  SBC.B $09,X                               ; $86C4C9 |
  BPL CODE_86C4D1                           ; $86C4CB |
  EOR.W #$FFFF                              ; $86C4CD |
  INC A                                     ; $86C4D0 |

CODE_86C4D1:
  CMP.B $00                                 ; $86C4D1 |
  BCS CODE_86C4DB                           ; $86C4D3 |
  LDA.W #$00DE                              ; $86C4D5 |
  STA.B $48,X                               ; $86C4D8 |
  RTL                                       ; $86C4DA |

CODE_86C4DB:
  LDA.W #$00DC                              ; $86C4DB |
  STA.B $48,X                               ; $86C4DE |
  RTL                                       ; $86C4E0 |

CODE_FL_86C4E1:
  LDA.B $26,X                               ; $86C4E1 |
  LSR A                                     ; $86C4E3 |
  LSR A                                     ; $86C4E4 |
  EOR.B $04,X                               ; $86C4E5 |
  AND.W #$2000                              ; $86C4E7 |
  BNE CODE_86C4F0                           ; $86C4EA |
  JSL.L CODE_FL_86CB71                      ; $86C4EC |

CODE_86C4F0:
  RTL                                       ; $86C4F0 |

CODE_FL_86C4F1:
  LDA.B $26,X                               ; $86C4F1 |
  STA.B $00                                 ; $86C4F3 |
  LDA.B $04,X                               ; $86C4F5 |
  AND.W #$DFDF                              ; $86C4F7 |
  LDY.B $00                                 ; $86C4FA |
  BMI CODE_JL_86C49B                        ; $86C4FC |
  ORA.W #$2020                              ; $86C4FE |
  BRA CODE_JL_86C49B                        ; $86C501 |

CODE_FL_86C503:
  TXA                                       ; $86C503 |
  LSR A                                     ; $86C504 |
  LSR A                                     ; $86C505 |
  LSR A                                     ; $86C506 |
  ADC.W $1C38                               ; $86C507 |

CODE_JL_86C50A:
  JSL.L CODE_FL_8AB4FC                      ; $86C50A |
  CLC                                       ; $86C50E |
  LDA.B $00                                 ; $86C50F |
  JMP.W CODE_FL_86C872                      ; $86C511 |

CODE_FL_86C514:
  TXA                                       ; $86C514 |
  LSR A                                     ; $86C515 |
  LSR A                                     ; $86C516 |
  LSR A                                     ; $86C517 |
  LSR A                                     ; $86C518 |
  ADC.W $1C38                               ; $86C519 |

CODE_JL_86C51C:
  JSL.L CODE_FL_8AB4FC                      ; $86C51C |
  CLC                                       ; $86C520 |
  LDA.B $00                                 ; $86C521 |
  JMP.W CODE_FL_86C85B                      ; $86C523 |

CODE_FL_86C526:
  JSL.L CODE_FL_86C55C                      ; $86C526 |
  PHA                                       ; $86C52A |
  LDA.B $04,X                               ; $86C52B |
  AND.W #$2000                              ; $86C52D |
  ASL A                                     ; $86C530 |
  ASL A                                     ; $86C531 |
  ASL A                                     ; $86C532 |
  PLA                                       ; $86C533 |
  BCS CODE_86C53A                           ; $86C534 |
  EOR.W #$FFFF                              ; $86C536 |
  INC A                                     ; $86C539 |

CODE_86C53A:
  RTL                                       ; $86C53A |

CODE_FL_86C53B:
  LDY.B $DC                                 ; $86C53B |
  LDA.W $0009,Y                             ; $86C53D |
  SEC                                       ; $86C540 |
  SBC.B $09,X                               ; $86C541 |
  BPL CODE_86C549                           ; $86C543 |
  EOR.W #$FFFF                              ; $86C545 |
  INC A                                     ; $86C548 |

CODE_86C549:
  STA.B $00                                 ; $86C549 |
  LDY.B $DE                                 ; $86C54B |
  LDA.W $0009,Y                             ; $86C54D |
  SEC                                       ; $86C550 |
  SBC.B $09,X                               ; $86C551 |
  BPL CODE_86C559                           ; $86C553 |
  EOR.W #$FFFF                              ; $86C555 |
  INC A                                     ; $86C558 |

CODE_86C559:
  ORA.B $00                                 ; $86C559 |
  RTL                                       ; $86C55B |

CODE_FL_86C55C:
  LDA.B ($48,X)                             ; $86C55C |
  TAY                                       ; $86C55E |
  LDA.W $0009,Y                             ; $86C55F |
  SEC                                       ; $86C562 |
  SBC.B $09,X                               ; $86C563 |
  RTL                                       ; $86C565 |

CODE_FL_86C566:
  LDA.B ($48,X)                             ; $86C566 |
  TAY                                       ; $86C568 |
  LDA.W $000D,Y                             ; $86C569 |
  SEC                                       ; $86C56C |
  SBC.W #$0010                              ; $86C56D |
  SBC.B $0D,X                               ; $86C570 |
  RTL                                       ; $86C572 |

CODE_FL_86C573:
  LDA.B ($48,X)                             ; $86C573 |
  TAY                                       ; $86C575 |
  LDA.W $000D,Y                             ; $86C576 |
  SEC                                       ; $86C579 |
  SBC.B $0D,X                               ; $86C57A |
  RTL                                       ; $86C57C |

CODE_FL_86C57D:
  LDA.W #$0042                              ; $86C57D |
  BRA CODE_86C599                           ; $86C580 |

CODE_FL_86C582:
  LDA.W #$0043                              ; $86C582 |
  BRA CODE_86C599                           ; $86C585 |

CODE_FL_86C587:
  LDA.W #$0044                              ; $86C587 |
  BRA CODE_86C599                           ; $86C58A |

CODE_FL_86C58C:
  LDA.W #$0045                              ; $86C58C |
  BRA CODE_86C599                           ; $86C58F |

CODE_FL_86C591:
  LDA.W #$0046                              ; $86C591 |
  BRA CODE_86C599                           ; $86C594 |

CODE_FL_86C596:
  LDA.W #$0047                              ; $86C596 |

CODE_86C599:
  STA.B $02,X                               ; $86C599 |
  RTL                                       ; $86C59B |

  LDA.B $26,X                               ; $86C59C |
  CMP.W #$8000                              ; $86C59E |
  ROR A                                     ; $86C5A1 |
  STA.B $26,X                               ; $86C5A2 |
  RTL                                       ; $86C5A4 |

  LDA.B $28,X                               ; $86C5A5 |
  CMP.W #$8000                              ; $86C5A7 |
  ROR A                                     ; $86C5AA |
  STA.B $28,X                               ; $86C5AB |
  RTL                                       ; $86C5AD |

CODE_FL_86C5AE:
  LDA.B $22,X                               ; $86C5AE |
  AND.W #$BFFF                              ; $86C5B0 |
  ORA.W #$1000                              ; $86C5B3 |
  STA.B $22,X                               ; $86C5B6 |
  JSL.L CODE_FL_85AC74                      ; $86C5B8 |
  LDA.B $4E,X                               ; $86C5BC |
  AND.W #$00FF                              ; $86C5BE |
  ASL A                                     ; $86C5C1 |
  ASL A                                     ; $86C5C2 |
  ASL A                                     ; $86C5C3 |
  TAY                                       ; $86C5C4 |
  LDA.W LOOSE_OP_00CE9F,Y                   ; $86C5C5 |
  STA.B $3A,X                               ; $86C5C8 |
  LDA.W LOOSE_OP_00CEA1,Y                   ; $86C5CA |
  STA.B $3C,X                               ; $86C5CD |
  LDA.W CODE_00CEA3,Y                       ; $86C5CF |
  STA.B $40,X                               ; $86C5D2 |
  LDA.W CODE_00CEA5,Y                       ; $86C5D4 |
  STA.B $3E,X                               ; $86C5D7 |
  TXY                                       ; $86C5D9 |
  TAX                                       ; $86C5DA |
  LDA.L $7E8BB4,X                           ; $86C5DB |
  BNE CODE_86C60D                           ; $86C5DF |
  LDX.B $FC                                 ; $86C5E1 |
  LDA.B $4E,X                               ; $86C5E3 |
  AND.W #$0100                              ; $86C5E5 |
  BEQ CODE_86C5F2                           ; $86C5E8 |
  JSL.L CODE_FL_86CA36                      ; $86C5EA |
  PHB                                       ; $86C5EE |
  PLA                                       ; $86C5EF |
  PLA                                       ; $86C5F0 |
  RTL                                       ; $86C5F1 |

CODE_86C5F2:
  LDA.B $09,X                               ; $86C5F2 |
  STA.B $08                                 ; $86C5F4 |
  LDA.B $0D,X                               ; $86C5F6 |
  STA.B $0A                                 ; $86C5F8 |
  JSL.L CODE_FL_808AB5                      ; $86C5FA |
  TYX                                       ; $86C5FE |
  LDA.B $0C                                 ; $86C5FF |
  STA.L $7E8BB2,X                           ; $86C601 |
  LDA.B $0E                                 ; $86C605 |
  STA.L $7E8BB4,X                           ; $86C607 |
  SEC                                       ; $86C60B |
  RTL                                       ; $86C60C |

CODE_86C60D:
  LDA.L $7E8BB0,X                           ; $86C60D |
  BPL CODE_86C61D                           ; $86C611 |
  LDA.W $003A,Y                             ; $86C613 |
  EOR.W #$FFFF                              ; $86C616 |
  INC A                                     ; $86C619 |
  STA.W $003A,Y                             ; $86C61A |

CODE_86C61D:
  LDA.L $7E8BB0,X                           ; $86C61D |
  AND.W #$1FFF                              ; $86C621 |
  STA.W $002C,Y                             ; $86C624 |
  LDA.L $7E8BB2,X                           ; $86C627 |
  STA.B $08                                 ; $86C62B |
  LDA.L $7E8BB4,X                           ; $86C62D |
  STA.B $0A                                 ; $86C631 |
  CLC                                       ; $86C633 |
  RTL                                       ; $86C634 |

  db $00,$78,$24,$C0,$AE                    ; $86C635 |

CODE_FL_86C63A:
  LDA.W #$0020                              ; $86C63A |
  STA.B $42,X                               ; $86C63D |

CODE_FL_86C63F:
  JSL.L CODE_FL_85F9C1                      ; $86C63F |
  LDA.W $0003,Y                             ; $86C643 |
  AND.W #$00FF                              ; $86C646 |
  ASL A                                     ; $86C649 |
  ASL A                                     ; $86C64A |
  ASL A                                     ; $86C64B |
  ASL A                                     ; $86C64C |
  STA.B $4C,X                               ; $86C64D |
  SEP #$20                                  ; $86C64F |
  LDA.W $0000,Y                             ; $86C651 |
  STA.B $2E,X                               ; $86C654 |
  LDA.W $0001,Y                             ; $86C656 |
  STA.B $30,X                               ; $86C659 |
  REP #$20                                  ; $86C65B |
  INC.B $1A,X                               ; $86C65D |
  CLC                                       ; $86C65F |
  LDA.W $1662                               ; $86C660 |
  ADC.B $09,X                               ; $86C663 |
  STA.B $4A,X                               ; $86C665 |
  RTL                                       ; $86C667 |

CODE_FL_86C668:
  PHA                                       ; $86C668 |
  STZ.B $20                                 ; $86C669 |
  LDA.B ($48,X)                             ; $86C66B |
  TAY                                       ; $86C66D |
  LDA.W $0009,Y                             ; $86C66E |
  STA.B $00                                 ; $86C671 |
  LDA.W $000D,Y                             ; $86C673 |
  SEC                                       ; $86C676 |
  SBC.W #$0010                              ; $86C677 |
  STA.B $02                                 ; $86C67A |
  JSL.L CODE_FL_8AB426                      ; $86C67C |
  PLY                                       ; $86C680 |
  CLC                                       ; $86C681 |
  ADC.B $20                                 ; $86C682 |
  STA.B $20                                 ; $86C684 |
  JML.L CODE_FL_8AB499                      ; $86C686 |

CODE_FL_86C68A:
  PHA                                       ; $86C68A |
  TYA                                       ; $86C68B |
  AND.W $1C38                               ; $86C68C |
  BEQ CODE_86C693                           ; $86C68F |
  PLA                                       ; $86C691 |
  RTL                                       ; $86C692 |

CODE_86C693:
  LDA.B ($48,X)                             ; $86C693 |
  TAY                                       ; $86C695 |
  LDA.W $0009,Y                             ; $86C696 |
  STA.B $00                                 ; $86C699 |
  LDA.W $000D,Y                             ; $86C69B |
  STA.B $02                                 ; $86C69E |
  JSL.L CODE_FL_8AB426                      ; $86C6A0 |
  PLY                                       ; $86C6A4 |
  JML.L CODE_FL_8AB499                      ; $86C6A5 |

CODE_FL_86C6A9:
  LDA.B ($48,X)                             ; $86C6A9 |
  TAY                                       ; $86C6AB |
  LDA.W $000D,Y                             ; $86C6AC |
  SEC                                       ; $86C6AF |
  SBC.W #$0010                              ; $86C6B0 |
  SBC.B $0D,X                               ; $86C6B3 |
  BPL CODE_86C6BB                           ; $86C6B5 |
  EOR.W #$FFFF                              ; $86C6B7 |
  INC A                                     ; $86C6BA |

CODE_86C6BB:
  STA.B $00                                 ; $86C6BB |
  LDA.W $0009,Y                             ; $86C6BD |
  SEC                                       ; $86C6C0 |
  SBC.B $09,X                               ; $86C6C1 |
  BPL CODE_86C6C9                           ; $86C6C3 |
  EOR.W #$FFFF                              ; $86C6C5 |
  INC A                                     ; $86C6C8 |

CODE_86C6C9:
  ORA.B $00                                 ; $86C6C9 |
  RTL                                       ; $86C6CB |

  LDY.B $4E,X                               ; $86C6CC |
  BPL CODE_JL_86C6D9                        ; $86C6CE |
  LDY.W #$0400                              ; $86C6D0 |
  JSL.L CODE_FL_86CA87                      ; $86C6D3 |
  BCS CODE_86C712                           ; $86C6D7 |

CODE_JL_86C6D9:
  LDA.B $4E,X                               ; $86C6D9 |
  AND.W #$01FF                              ; $86C6DB |
  STA.B $4E,X                               ; $86C6DE |
  RTL                                       ; $86C6E0 |

  LDY.B $4E,X                               ; $86C6E1 |
  BPL CODE_JL_86C6D9                        ; $86C6E3 |
  LDY.B $3C,X                               ; $86C6E5 |
  BNE CODE_86C700                           ; $86C6E7 |
  STA.B $3E,X                               ; $86C6E9 |
  LDY.W #$0400                              ; $86C6EB |
  JSL.L CODE_FL_86CA87                      ; $86C6EE |
  BCS CODE_86C712                           ; $86C6F2 |
  INC.B $3C,X                               ; $86C6F4 |
  LDA.B $3E,X                               ; $86C6F6 |
  CLC                                       ; $86C6F8 |
  ADC.W #$0400                              ; $86C6F9 |
  STA.B $3E,X                               ; $86C6FC |
  BRA CODE_86C712                           ; $86C6FE |

CODE_86C700:
  LDA.B $3E,X                               ; $86C700 |
  LDY.W #$0400                              ; $86C702 |
  JSL.L CODE_FL_86CA7E                      ; $86C705 |
  BCS CODE_86C712                           ; $86C709 |
  BRA CODE_JL_86C6D9                        ; $86C70B |

CODE_FL_86C70D:
  LDA.B $2C,X                               ; $86C70D |
  BNE CODE_86C712                           ; $86C70F |
  RTL                                       ; $86C711 |

CODE_86C712:
  PHP                                       ; $86C712 |
  PLA                                       ; $86C713 |
  PLA                                       ; $86C714 |

CODE_86C715:
  RTL                                       ; $86C715 |

  BIT.B $32,X                               ; $86C716 |
  BMI CODE_86C715                           ; $86C718 |
  LDA.B $2C,X                               ; $86C71A |
  BNE CODE_86C712                           ; $86C71C |
  RTL                                       ; $86C71E |

CODE_FL_86C71F:
  PHA                                       ; $86C71F |
  JSL.L CODE_FL_86C486                      ; $86C720 |
  PLA                                       ; $86C724 |
  JML.L CODE_FL_86C887                      ; $86C725 |

  TAY                                       ; $86C729 |
  LDA.B $04,X                               ; $86C72A |
  EOR.W #$2000                              ; $86C72C |
  STA.B $04,X                               ; $86C72F |
  AND.W #$2000                              ; $86C731 |
  BEQ CODE_86C73C                           ; $86C734 |
  TYA                                       ; $86C736 |
  EOR.W #$FFFF                              ; $86C737 |
  INC A                                     ; $86C73A |
  TAY                                       ; $86C73B |

CODE_86C73C:
  TYA                                       ; $86C73C |
  STA.B $26,X                               ; $86C73D |
  TAY                                       ; $86C73F |
  LDA.B $86                                 ; $86C740 |
  BMI CODE_86C74A                           ; $86C742 |
  TYA                                       ; $86C744 |
  EOR.W #$FFFF                              ; $86C745 |
  INC A                                     ; $86C748 |
  TAY                                       ; $86C749 |

CODE_86C74A:
  TYA                                       ; $86C74A |
  STA.B $28,X                               ; $86C74B |
  RTL                                       ; $86C74D |

CODE_86C74E:
  LDA.W $1662                               ; $86C74E |
  ADC.B $09,X                               ; $86C751 |
  SBC.B $4A,X                               ; $86C753 |
  STA.B $02                                 ; $86C755 |
  BRA CODE_86C74E                           ; $86C757 |

CODE_FL_86C759:
  STA.B $00                                 ; $86C759 |
  LDA.W $1662                               ; $86C75B |
  ADC.B $09,X                               ; $86C75E |
  SBC.B $4A,X                               ; $86C760 |
  STA.B $02                                 ; $86C762 |
  BPL CODE_86C76A                           ; $86C764 |
  EOR.W #$FFFF                              ; $86C766 |
  INC A                                     ; $86C769 |

CODE_86C76A:
  CMP.B $00                                 ; $86C76A |
  BCC CODE_86C78A                           ; $86C76C |
  LDA.B $26,X                               ; $86C76E |
  BPL CODE_86C776                           ; $86C770 |
  EOR.W #$FFFF                              ; $86C772 |
  INC A                                     ; $86C775 |

CODE_86C776:
  LDY.B $02                                 ; $86C776 |
  BPL CODE_86C780                           ; $86C778 |
  STA.B $26,X                               ; $86C77A |
  JML.L CODE_FL_86C4F1                      ; $86C77C |

CODE_86C780:
  EOR.W #$FFFF                              ; $86C780 |
  INC A                                     ; $86C783 |
  STA.B $26,X                               ; $86C784 |
  JML.L CODE_FL_86C4F1                      ; $86C786 |

CODE_86C78A:
  RTL                                       ; $86C78A |

  LDA.B $09,X                               ; $86C78B |
  CMP.W #$0010                              ; $86C78D |
  BCS CODE_86C798                           ; $86C790 |
  LDA.W #$0010                              ; $86C792 |
  STA.B $09,X                               ; $86C795 |
  RTL                                       ; $86C797 |

CODE_86C798:
  LDA.B $09,X                               ; $86C798 |
  CMP.W #$00F0                              ; $86C79A |
  BCC CODE_86C7A4                           ; $86C79D |
  LDA.W #$00F0                              ; $86C79F |
  STA.B $09,X                               ; $86C7A2 |

CODE_86C7A4:
  RTL                                       ; $86C7A4 |

CODE_FL_86C7A5:
  JSL.L CODE_FL_86C7AD                      ; $86C7A5 |
  JML.L CODE_JL_86C6D9                      ; $86C7A9 |

CODE_FL_86C7AD:
  LDA.B $4E,X                               ; $86C7AD |
  AND.W #$0E00                              ; $86C7AF |
  XBA                                       ; $86C7B2 |
  LSR A                                     ; $86C7B3 |
  CLC                                       ; $86C7B4 |
  ADC.W #$0040                              ; $86C7B5 |
  STA.B $02,X                               ; $86C7B8 |
  LDA.B $4E,X                               ; $86C7BA |
  AND.W #$7000                              ; $86C7BC |
  ASL A                                     ; $86C7BF |
  XBA                                       ; $86C7C0 |
  STA.B $06,X                               ; $86C7C1 |
  RTL                                       ; $86C7C3 |

CODE_FL_86C7C4:
  LDA.B $04,X                               ; $86C7C4 |
  STA.W $0004,Y                             ; $86C7C6 |
  LDA.B $06,X                               ; $86C7C9 |
  STA.W $0006,Y                             ; $86C7CB |
  LDA.B $02,X                               ; $86C7CE |
  STA.W $0002,Y                             ; $86C7D0 |
  RTL                                       ; $86C7D3 |

CODE_FL_86C7D4:
  LDA.B $09,X                               ; $86C7D4 |
  STA.W $0009,Y                             ; $86C7D6 |
  LDA.B $0D,X                               ; $86C7D9 |
  STA.W $000D,Y                             ; $86C7DB |
  RTL                                       ; $86C7DE |

CODE_FL_86C7DF:
  LDA.B $02,X                               ; $86C7DF |
  AND.W #$007F                              ; $86C7E1 |
  STA.B $02,X                               ; $86C7E4 |
  RTL                                       ; $86C7E6 |

CODE_FL_86C7E7:
  LDA.B $02,X                               ; $86C7E7 |
  ORA.W #$0080                              ; $86C7E9 |
  STA.B $02,X                               ; $86C7EC |
  RTL                                       ; $86C7EE |

  STA.B $00                                 ; $86C7EF |
  LDA.B $26,X                               ; $86C7F1 |
  BPL CODE_86C7F9                           ; $86C7F3 |
  EOR.W #$FFFF                              ; $86C7F5 |
  INC A                                     ; $86C7F8 |

CODE_86C7F9:
  CMP.B $00                                 ; $86C7F9 |
  BCS CODE_86C7FE                           ; $86C7FB |
  RTL                                       ; $86C7FD |

CODE_86C7FE:
  LDA.B $00                                 ; $86C7FE |
  BIT.B $26,X                               ; $86C800 |
  BPL CODE_86C808                           ; $86C802 |
  EOR.W #$FFFF                              ; $86C804 |
  INC A                                     ; $86C807 |

CODE_86C808:
  STA.B $26,X                               ; $86C808 |
  RTL                                       ; $86C80A |

  STA.B $00                                 ; $86C80B |
  LDA.B $28,X                               ; $86C80D |
  BPL CODE_86C815                           ; $86C80F |
  EOR.W #$FFFF                              ; $86C811 |
  INC A                                     ; $86C814 |

CODE_86C815:
  CMP.B $00                                 ; $86C815 |
  BCS CODE_86C81A                           ; $86C817 |
  RTL                                       ; $86C819 |

CODE_86C81A:
  LDA.B $00                                 ; $86C81A |
  BIT.B $28,X                               ; $86C81C |
  BPL CODE_86C824                           ; $86C81E |
  EOR.W #$FFFF                              ; $86C820 |
  INC A                                     ; $86C823 |

CODE_86C824:
  STA.B $28,X                               ; $86C824 |
  RTL                                       ; $86C826 |

CODE_FL_86C827:
  LDA.B $4A,X                               ; $86C827 |
  CLC                                       ; $86C829 |
  ADC.B $26,X                               ; $86C82A |
  STA.B $26,X                               ; $86C82C |
  RTL                                       ; $86C82E |

CODE_FL_86C82F:
  LDA.B $4C,X                               ; $86C82F |

CODE_FL_86C831:
  CLC                                       ; $86C831 |
  ADC.B $28,X                               ; $86C832 |
  STA.B $28,X                               ; $86C834 |
  RTL                                       ; $86C836 |

  LDA.B $4C,X                               ; $86C837 |
  CLC                                       ; $86C839 |
  ADC.B $28,X                               ; $86C83A |
  BMI CODE_86C846                           ; $86C83C |
  CMP.W #$0400                              ; $86C83E |
  BCC CODE_86C846                           ; $86C841 |
  LDA.W #$0400                              ; $86C843 |

CODE_86C846:
  STA.B $28,X                               ; $86C846 |
  RTL                                       ; $86C848 |

CODE_FL_86C849:
  CLC                                       ; $86C849 |
  ADC.B $0D,X                               ; $86C84A |
  STA.B $0D,X                               ; $86C84C |
  RTL                                       ; $86C84E |

CODE_FL_86C84F:
  CLC                                       ; $86C84F |
  ADC.B $09,X                               ; $86C850 |
  STA.B $09,X                               ; $86C852 |
  RTL                                       ; $86C854 |

CODE_FL_86C855:
  JSL.L CODE_FL_86C870                      ; $86C855 |

CODE_FL_86C859:
  LDA.B $26,X                               ; $86C859 |

CODE_FL_86C85B:
  CLC                                       ; $86C85B |
  BPL CODE_86C867                           ; $86C85C |
  ADC.B $08,X                               ; $86C85E |
  STA.B $08,X                               ; $86C860 |
  BCS CODE_86C86F                           ; $86C862 |
  DEC.B $0A,X                               ; $86C864 |
  RTL                                       ; $86C866 |

CODE_86C867:
  ADC.B $08,X                               ; $86C867 |
  STA.B $08,X                               ; $86C869 |
  BCC CODE_86C86F                           ; $86C86B |
  INC.B $0A,X                               ; $86C86D |

CODE_86C86F:
  RTL                                       ; $86C86F |

CODE_FL_86C870:
  LDA.B $28,X                               ; $86C870 |

CODE_FL_86C872:
  CLC                                       ; $86C872 |
  BPL CODE_86C87E                           ; $86C873 |
  ADC.B $0C,X                               ; $86C875 |
  STA.B $0C,X                               ; $86C877 |
  BCS CODE_86C86F                           ; $86C879 |
  DEC.B $0E,X                               ; $86C87B |
  RTL                                       ; $86C87D |

CODE_86C87E:
  ADC.B $0C,X                               ; $86C87E |
  STA.B $0C,X                               ; $86C880 |
  BCC CODE_86C86F                           ; $86C882 |
  INC.B $0E,X                               ; $86C884 |
  RTL                                       ; $86C886 |

CODE_FL_86C887:
  TAY                                       ; $86C887 |
  LDA.B $04,X                               ; $86C888 |
  AND.W #$2000                              ; $86C88A |
  BEQ CODE_86C895                           ; $86C88D |
  TYA                                       ; $86C88F |
  EOR.W #$FFFF                              ; $86C890 |
  INC A                                     ; $86C893 |
  TAY                                       ; $86C894 |

CODE_86C895:
  TYA                                       ; $86C895 |
  STA.B $26,X                               ; $86C896 |
  RTL                                       ; $86C898 |

CODE_FL_86C899:
  STZ.B $28,X                               ; $86C899 |
  STZ.B $26,X                               ; $86C89B |
  RTL                                       ; $86C89D |

CODE_FL_86C89E:
  JSL.L CODE_FL_86C8AD                      ; $86C89E |
  LDA.W $000A,Y                             ; $86C8A2 |
  STA.B $0A,X                               ; $86C8A5 |
  LDA.W $0008,Y                             ; $86C8A7 |
  STA.B $08,X                               ; $86C8AA |
  RTL                                       ; $86C8AC |

CODE_FL_86C8AD:
  LDA.W $000E,Y                             ; $86C8AD |
  STA.B $0E,X                               ; $86C8B0 |
  LDA.W $000C,Y                             ; $86C8B2 |
  STA.B $0C,X                               ; $86C8B5 |
  RTL                                       ; $86C8B7 |

DATA16_86C8B8:
  dw $0B70,$0BC0,$0C10,$0C60                ; $86C8B8 |
  dw $0CB0,$0D00,$0D50,$0DA0                ; $86C8C0 |
  dw $0DF0,$0E40,$0E90,$0EE0                ; $86C8C8 |
  dw $0F30,$0F80,$0FD0,$1020                ; $86C8D0 |
  dw $1070,$10C0,$1110,$1160                ; $86C8D8 |
  dw $1200,$1250,$12A0,$12F0                ; $86C8E0 |
  dw $1340,$1390,$13E0,$1430                ; $86C8E8 |
  dw $1480,$14D0,$1520,$1570                ; $86C8F0 |
  dw $15C0,$1610,$1660,$16B0                ; $86C8F8 |
  dw $1700,$1750,$17A0,$17F0                ; $86C900 |

CODE_FL_86C908:
  CMP.W #$001D                              ; $86C908 |
  BEQ CODE_86C944                           ; $86C90B |
  CMP.W #$001E                              ; $86C90D |
  BEQ CODE_86C933                           ; $86C910 |
  CMP.W #$001F                              ; $86C912 |
  BEQ CODE_86C922                           ; $86C915 |
  PHX                                       ; $86C917 |
  ASL A                                     ; $86C918 |
  TAX                                       ; $86C919 |
  LDA.L DATA16_86C8B8,X                     ; $86C91A |
  TAY                                       ; $86C91E |
  PLX                                       ; $86C91F |
  CLC                                       ; $86C920 |
  RTL                                       ; $86C921 |

CODE_86C922:
  TXY                                       ; $86C922 |
  JSL.L CODE_FL_86C92B                      ; $86C923 |
  TYA                                       ; $86C927 |
  TXY                                       ; $86C928 |
  TAX                                       ; $86C929 |
  RTL                                       ; $86C92A |

CODE_FL_86C92B:
  LDX.W $1B78                               ; $86C92B |
  LDA.W $1B7A                               ; $86C92E |
  BRA CODE_JL_86C953                        ; $86C931 |

CODE_86C933:
  TXY                                       ; $86C933 |
  JSL.L CODE_FL_86C93C                      ; $86C934 |
  TYA                                       ; $86C938 |
  TXY                                       ; $86C939 |
  TAX                                       ; $86C93A |
  RTL                                       ; $86C93B |

CODE_FL_86C93C:
  LDX.W $1B74                               ; $86C93C |
  LDA.W $1B76                               ; $86C93F |
  BRA CODE_JL_86C953                        ; $86C942 |

CODE_86C944:
  TXY                                       ; $86C944 |
  JSL.L CODE_FL_86C94D                      ; $86C945 |
  TYA                                       ; $86C949 |
  TXY                                       ; $86C94A |
  TAX                                       ; $86C94B |
  RTL                                       ; $86C94C |

CODE_FL_86C94D:
  LDX.W $1B70                               ; $86C94D |
  LDA.W $1B72                               ; $86C950 |

CODE_JL_86C953:
  PHY                                       ; $86C953 |
  LDY.B $00                                 ; $86C954 |
  STA.B $00                                 ; $86C956 |
  CLC                                       ; $86C958 |

CODE_86C959:
  LDA.B $18,X                               ; $86C959 |
  BEQ CODE_86C967                           ; $86C95B |
  LDA.B $16,X                               ; $86C95D |
  CPX.B $00                                 ; $86C95F |
  BCS CODE_86C967                           ; $86C961 |
  TAX                                       ; $86C963 |
  BNE CODE_86C959                           ; $86C964 |
  SEC                                       ; $86C966 |

CODE_86C967:
  STY.B $00                                 ; $86C967 |
  PLY                                       ; $86C969 |
  RTL                                       ; $86C96A |

  LDX.W #$0B70                              ; $86C96B |

CODE_FL_86C96E:
  TAY                                       ; $86C96E |

CODE_86C96F:
  LDA.B $18,X                               ; $86C96F |
  BEQ CODE_JL_86C9E2                        ; $86C971 |
  LDA.B $16,X                               ; $86C973 |
  TAX                                       ; $86C975 |
  BNE CODE_86C96F                           ; $86C976 |
  SEC                                       ; $86C978 |

CODE_86C979:
  LDX.B $FC                                 ; $86C979 |
  RTL                                       ; $86C97B |

CODE_FL_86C97C:
  TAY                                       ; $86C97C |
  BRA CODE_86C986                           ; $86C97D |

CODE_FL_86C97F:
  TAY                                       ; $86C97F |
  JSL.L CODE_FL_86CB5D                      ; $86C980 |
  BCS CODE_86C979                           ; $86C984 |

CODE_86C986:
  JSL.L CODE_FL_86C94D                      ; $86C986 |
  BCS CODE_86C979                           ; $86C98A |
  BRA CODE_JL_86C9E2                        ; $86C98C |

  JSL.L CODE_FL_86C97C                      ; $86C98E |
  BRA CODE_86C998                           ; $86C992 |

  JSL.L CODE_FL_86C97F                      ; $86C994 |

CODE_86C998:
  BCS CODE_86C979                           ; $86C998 |
  LDA.W $0022,Y                             ; $86C99A |
  ORA.W #$0100                              ; $86C99D |
  STA.W $0022,Y                             ; $86C9A0 |
  RTL                                       ; $86C9A3 |

CODE_FL_86C9A4:
  TAY                                       ; $86C9A4 |
  BRA CODE_86C9AE                           ; $86C9A5 |

CODE_FL_86C9A7:
  TAY                                       ; $86C9A7 |
  JSL.L CODE_FL_86CB5D                      ; $86C9A8 |
  BCS CODE_86C979                           ; $86C9AC |

CODE_86C9AE:
  JSL.L CODE_FL_86C93C                      ; $86C9AE |
  BCS CODE_86C979                           ; $86C9B2 |
  BRA CODE_JL_86C9E2                        ; $86C9B4 |

CODE_FL_86C9B6:
  JSL.L CODE_FL_86C9A4                      ; $86C9B6 |
  BRA CODE_86C998                           ; $86C9BA |

  JSL.L CODE_FL_86C9A7                      ; $86C9BC |
  BRA CODE_86C998                           ; $86C9C0 |

CODE_FL_86C9C2:
  TAY                                       ; $86C9C2 |
  BRA CODE_86C9CC                           ; $86C9C3 |

CODE_FL_86C9C5:
  TAY                                       ; $86C9C5 |
  JSL.L CODE_FL_86CB5D                      ; $86C9C6 |
  BCS CODE_86C979                           ; $86C9CA |

CODE_86C9CC:
  JSL.L CODE_FL_86C92B                      ; $86C9CC |
  BCS CODE_86C979                           ; $86C9D0 |
  BRA CODE_JL_86C9E2                        ; $86C9D2 |

CODE_FL_86C9D4:
  JSL.L CODE_FL_86C9C2                      ; $86C9D4 |
  BRA CODE_86C998                           ; $86C9D8 |

CODE_FL_86C9DA:
  JSL.L CODE_FL_86C9C5                      ; $86C9DA |
  BRA CODE_86C998                           ; $86C9DE |

CODE_FL_86C9E0:
  TYX                                       ; $86C9E0 |
  TAY                                       ; $86C9E1 |

CODE_JL_86C9E2:
  JSL.L CODE_FL_86CA57                      ; $86C9E2 |
  TYA                                       ; $86C9E6 |
  STA.B $18,X                               ; $86C9E7 |
  LDA.W #$C000                              ; $86C9E9 |
  STA.B $22,X                               ; $86C9EC |
  LDY.B $FC                                 ; $86C9EE |
  JSL.L CODE_FL_86C89E                      ; $86C9F0 |
  TXA                                       ; $86C9F4 |
  TYX                                       ; $86C9F5 |
  TAY                                       ; $86C9F6 |
  CLC                                       ; $86C9F7 |
  RTL                                       ; $86C9F8 |

  LDY.W $1B70                               ; $86C9F9 |
  LDA.W $1B72                               ; $86C9FC |
  BRA CODE_86CA0F                           ; $86C9FF |

  LDY.W $1B74                               ; $86CA01 |
  LDA.W $1B76                               ; $86CA04 |
  BRA CODE_86CA0F                           ; $86CA07 |

CODE_FL_86CA09:
  LDY.W $1B78                               ; $86CA09 |
  LDA.W $1B7A                               ; $86CA0C |

CODE_86CA0F:
  PHX                                       ; $86CA0F |
  LDX.B $00                                 ; $86CA10 |
  PHX                                       ; $86CA12 |
  TYX                                       ; $86CA13 |
  STA.B $00                                 ; $86CA14 |

CODE_86CA16:
  LDA.B $18,X                               ; $86CA16 |
  BEQ CODE_86CA1E                           ; $86CA18 |
  JSL.L CODE_FL_86CA36                      ; $86CA1A |

CODE_86CA1E:
  LDA.B $16,X                               ; $86CA1E |
  CMP.B $00                                 ; $86CA20 |
  BPL CODE_86CA27                           ; $86CA22 |
  TAX                                       ; $86CA24 |
  BNE CODE_86CA16                           ; $86CA25 |

CODE_86CA27:
  PLX                                       ; $86CA27 |
  STX.B $00                                 ; $86CA28 |
  PLX                                       ; $86CA2A |
  CLC                                       ; $86CA2B |
  RTL                                       ; $86CA2C |

CODE_FL_86CA2D:
  LDA.B $24,X                               ; $86CA2D |
  BPL CODE_86CA3B                           ; $86CA2F |
  TDC                                       ; $86CA31 |
  STA.B $24,X                               ; $86CA32 |
  BRA CODE_FL_86CA57                        ; $86CA34 |

CODE_FL_86CA36:
  LDA.B $24,X                               ; $86CA36 |
  ORA.W #$4000                              ; $86CA38 |

CODE_86CA3B:
  STA.B $24,X                               ; $86CA3B |
  BEQ CODE_FL_86CA57                        ; $86CA3D |
  ASL A                                     ; $86CA3F |
  ASL A                                     ; $86CA40 |
  LDA.B $24,X                               ; $86CA41 |
  AND.W #$3FFF                              ; $86CA43 |
  PHX                                       ; $86CA46 |
  TAX                                       ; $86CA47 |
  SEP #$20                                  ; $86CA48 |
  LDA.W $1C3A                               ; $86CA4A |
  BCC CODE_86CA50                           ; $86CA4D |
  TDC                                       ; $86CA4F |

CODE_86CA50:
  STA.L $7E8500,X                           ; $86CA50 |
  REP #$20                                  ; $86CA54 |
  PLX                                       ; $86CA56 |

CODE_FL_86CA57:
  JSL.L CODE_FL_808F2C                      ; $86CA57 |
  BIT.W $1C3E                               ; $86CA5B |
  BMI CODE_86CA65                           ; $86CA5E |
  LDA.W $1C5A                               ; $86CA60 |
  STA.B $14,X                               ; $86CA63 |

CODE_86CA65:
  LDA.W $1C58                               ; $86CA65 |
  STA.B $04,X                               ; $86CA68 |
  LDA.W #$0800                              ; $86CA6A |
  STA.B $02,X                               ; $86CA6D |
  LDA.B $90                                 ; $86CA6F |
  CMP.W #$0003                              ; $86CA71 |
  BNE CODE_86CA7B                           ; $86CA74 |
  LDA.W #$0303                              ; $86CA76 |
  STA.B $2A,X                               ; $86CA79 |

CODE_86CA7B:
  INC.B $36,X                               ; $86CA7B |
  RTL                                       ; $86CA7D |

CODE_FL_86CA7E:
  PHA                                       ; $86CA7E |
  LDA.W #$0020                              ; $86CA7F |
  STA.B $00                                 ; $86CA82 |
  PLA                                       ; $86CA84 |
  BRA CODE_86CA89                           ; $86CA85 |

CODE_FL_86CA87:
  STZ.B $00                                 ; $86CA87 |

CODE_86CA89:
  STZ.B $20,X                               ; $86CA89 |
  PHY                                       ; $86CA8B |
  LDY.W $19AA                               ; $86CA8C |
  BEQ CODE_86CA94                           ; $86CA8F |
  PLY                                       ; $86CA91 |
  SEC                                       ; $86CA92 |
  RTL                                       ; $86CA93 |

CODE_86CA94:
  STA.L PTR16_008480                        ; $86CA94 |
  LDA.W #$007F                              ; $86CA98 |

CODE_86CA9B:
  STA.L LOOSE_OP_0084C0                     ; $86CA9B |
  PLA                                       ; $86CA9F |
  STA.L LOOSE_OP_008400                     ; $86CAA0 |
  TDC                                       ; $86CAA4 |
  SEP #$20                                  ; $86CAA5 |
  CLC                                       ; $86CAA7 |
  LDA.B $00                                 ; $86CAA8 |
  ADC.B $06,X                               ; $86CAAA |
  REP #$20                                  ; $86CAAC |
  ASL A                                     ; $86CAAE |
  ASL A                                     ; $86CAAF |
  ASL A                                     ; $86CAB0 |
  ASL A                                     ; $86CAB1 |
  ORA.W #$7000                              ; $86CAB2 |
  STA.L CODE_008440                         ; $86CAB5 |
  TDC                                       ; $86CAB9 |
  STA.L LOOSE_OP_008402                     ; $86CABA |
  LDA.W #$0002                              ; $86CABE |
  STA.W $19AA                               ; $86CAC1 |
  RTL                                       ; $86CAC4 |

  STZ.B $00                                 ; $86CAC5 |
  STZ.B $20,X                               ; $86CAC7 |
  PHY                                       ; $86CAC9 |
  LDY.W $19AA                               ; $86CACA |
  BEQ CODE_86CAD2                           ; $86CACD |
  PLY                                       ; $86CACF |
  SEC                                       ; $86CAD0 |
  RTL                                       ; $86CAD1 |

CODE_86CAD2:
  STA.L PTR16_008480                        ; $86CAD2 |
  LDA.W #$0098                              ; $86CAD6 |
  BRA CODE_86CA9B                           ; $86CAD9 |

CODE_FL_86CADB:
  CMP.B $00,X                               ; $86CADB |
  BNE CODE_86CAE5                           ; $86CADD |
  LDA.W $1C3C                               ; $86CADF |
  CMP.W #$0001                              ; $86CAE2 |

CODE_86CAE5:
  RTL                                       ; $86CAE5 |

CODE_FL_86CAE6:
  PHX                                       ; $86CAE6 |
  TYX                                       ; $86CAE7 |
  JSL.L CODE_FL_86CAEE                      ; $86CAE8 |
  PLX                                       ; $86CAEC |
  RTL                                       ; $86CAED |

CODE_FL_86CAEE:
  LSR.B $22,X                               ; $86CAEE |
  ASL.B $22,X                               ; $86CAF0 |
  STZ.B $1C,X                               ; $86CAF2 |
  STA.B $1E,X                               ; $86CAF4 |
  LDA.W #$0001                              ; $86CAF6 |
  STA.B $20,X                               ; $86CAF9 |
  RTL                                       ; $86CAFB |

CODE_JL_86CAFC:
  LDA.B $00,X                               ; $86CAFC |
  ORA.B $20,X                               ; $86CAFE |
  BEQ CODE_86CB07                           ; $86CB00 |
  RTL                                       ; $86CB02 |

  LDA.B $20,X                               ; $86CB03 |
  BNE CODE_86CB09                           ; $86CB05 |

CODE_86CB07:
  INC.B $1A,X                               ; $86CB07 |

CODE_86CB09:
  RTL                                       ; $86CB09 |

  JSL.L CODE_FL_86CB11                      ; $86CB0A |
  BCS CODE_86CB07                           ; $86CB0E |
  RTL                                       ; $86CB10 |

CODE_FL_86CB11:
  LDA.B $0D,X                               ; $86CB11 |
  CMP.W #$FFD0                              ; $86CB13 |
  BCS CODE_86CB1D                           ; $86CB16 |
  CMP.W #$0110                              ; $86CB18 |
  BCS CODE_86CB2B                           ; $86CB1B |

CODE_86CB1D:
  LDA.B $09,X                               ; $86CB1D |
  CMP.W #$FFD0                              ; $86CB1F |
  BCS CODE_86CB2A                           ; $86CB22 |
  CMP.W #$0130                              ; $86CB24 |
  BCS CODE_86CB2B                           ; $86CB27 |
  SEC                                       ; $86CB29 |

CODE_86CB2A:
  RTL                                       ; $86CB2A |

CODE_86CB2B:
  CLC                                       ; $86CB2B |
  RTL                                       ; $86CB2C |

CODE_FL_86CB2D:
  STA.B $08                                 ; $86CB2D |
  CLC                                       ; $86CB2F |
  EOR.W #$FFFF                              ; $86CB30 |
  ADC.W #$0101                              ; $86CB33 |
  STA.B $0A                                 ; $86CB36 |
  LDA.B $0D,X                               ; $86CB38 |
  CMP.B $08                                 ; $86CB3A |
  BCS CODE_86CB42                           ; $86CB3C |
  CMP.B $0A                                 ; $86CB3E |
  BCS CODE_86CB4E                           ; $86CB40 |

CODE_86CB42:
  LDA.B $09,X                               ; $86CB42 |
  CMP.B $08                                 ; $86CB44 |
  BCS CODE_86CB4D                           ; $86CB46 |
  CMP.B $0A                                 ; $86CB48 |
  BCS CODE_86CB4E                           ; $86CB4A |
  SEC                                       ; $86CB4C |

CODE_86CB4D:
  RTL                                       ; $86CB4D |

CODE_86CB4E:
  CLC                                       ; $86CB4E |
  RTL                                       ; $86CB4F |

CODE_FL_86CB50:
  STA.B $08                                 ; $86CB50 |
  CLC                                       ; $86CB52 |
  EOR.W #$FFFF                              ; $86CB53 |
  ADC.W #$0101                              ; $86CB56 |
  STA.B $0A                                 ; $86CB59 |
  BRA CODE_86CB42                           ; $86CB5B |

CODE_FL_86CB5D:
  LDA.B $09,X                               ; $86CB5D |
  CMP.W #$0110                              ; $86CB5F |
  BCS CODE_86CB4D                           ; $86CB62 |
  LDA.B $0D,X                               ; $86CB64 |
  CMP.W #$00D0                              ; $86CB66 |
  RTL                                       ; $86CB69 |

CODE_FL_86CB6A:
  LDA.B $04,X                               ; $86CB6A |
  EOR.W #$2020                              ; $86CB6C |
  STA.B $04,X                               ; $86CB6F |

CODE_FL_86CB71:
  LDA.B $26,X                               ; $86CB71 |
  EOR.W #$FFFF                              ; $86CB73 |
  INC A                                     ; $86CB76 |
  STA.B $26,X                               ; $86CB77 |
  RTL                                       ; $86CB79 |

CODE_FL_86CB7A:
  LDA.B $28,X                               ; $86CB7A |
  EOR.W #$FFFF                              ; $86CB7C |
  INC A                                     ; $86CB7F |
  STA.B $28,X                               ; $86CB80 |
  RTL                                       ; $86CB82 |

CODE_FL_86CB83:
  AND.W #$00FF                              ; $86CB83 |
  PHX                                       ; $86CB86 |
  SEP #$20                                  ; $86CB87 |
  PHA                                       ; $86CB89 |
  LSR A                                     ; $86CB8A |
  LSR A                                     ; $86CB8B |
  LSR A                                     ; $86CB8C |
  LSR A                                     ; $86CB8D |
  TAX                                       ; $86CB8E |
  PLA                                       ; $86CB8F |
  AND.B #$0F                                ; $86CB90 |
  ORA.L DATA8_86CB9A,X                      ; $86CB92 |
  REP #$20                                  ; $86CB96 |
  PLX                                       ; $86CB98 |
  RTL                                       ; $86CB99 |

DATA8_86CB9A:
  db $00,$0A,$14,$1E,$28,$32,$3C,$46        ; $86CB9A |
  db $50,$5A                                ; $86CBA2 |
  PHX                                       ; $86CBA4 |
  PHA                                       ; $86CBA5 |
  XBA                                       ; $86CBA6 |
  JSL.L CODE_FL_86CB83                      ; $86CBA7 |
  ASL A                                     ; $86CBAB |
  ASL A                                     ; $86CBAC |
  PHA                                       ; $86CBAD |
  ASL A                                     ; $86CBAE |
  ASL A                                     ; $86CBAF |
  ASL A                                     ; $86CBB0 |
  PHA                                       ; $86CBB1 |
  ASL A                                     ; $86CBB2 |
  ADC.B $01,S                               ; $86CBB3 |
  ADC.B $03,S                               ; $86CBB5 |
  PLX                                       ; $86CBB7 |
  PLX                                       ; $86CBB8 |
  TAX                                       ; $86CBB9 |
  PLA                                       ; $86CBBA |
  PHX                                       ; $86CBBB |
  JSL.L CODE_FL_86CB83                      ; $86CBBC |
  ADC.B $01,S                               ; $86CBC0 |
  PLX                                       ; $86CBC2 |
  PLX                                       ; $86CBC3 |
  RTL                                       ; $86CBC4 |

  PHX                                       ; $86CBC5 |
  PHY                                       ; $86CBC6 |
  TSX                                       ; $86CBC7 |
  STA.B $00                                 ; $86CBC8 |
  STZ.B $02                                 ; $86CBCA |
  CLC                                       ; $86CBCC |
  SED                                       ; $86CBCD |
  LDA.W #$0001                              ; $86CBCE |
  LDY.W #$000E                              ; $86CBD1 |

CODE_86CBD4:
  PHA                                       ; $86CBD4 |
  LSR.B $00                                 ; $86CBD5 |
  BCC CODE_86CBDE                           ; $86CBD7 |
  CLC                                       ; $86CBD9 |
  ADC.B $02                                 ; $86CBDA |
  STA.B $02                                 ; $86CBDC |

CODE_86CBDE:
  LDA.B $01,S                               ; $86CBDE |
  ADC.B $01,S                               ; $86CBE0 |
  DEY                                       ; $86CBE2 |
  BPL CODE_86CBD4                           ; $86CBE3 |
  CLD                                       ; $86CBE5 |
  TXS                                       ; $86CBE6 |
  PLY                                       ; $86CBE7 |
  PLX                                       ; $86CBE8 |
  LDA.B $02                                 ; $86CBE9 |
  RTL                                       ; $86CBEB |

CODE_86CBEC:
  LDA.B $1A,X                               ; $86CBEC |
  CMP.W #$0002                              ; $86CBEE |
  BCC CODE_86CBFA                           ; $86CBF1 |
  LDA.B $92                                 ; $86CBF3 |
  ORA.W #$0011                              ; $86CBF5 |
  STA.B $92                                 ; $86CBF8 |

CODE_86CBFA:
  JSL.L CODE_FL_85F7C9                      ; $86CBFA |
  JSL.L CODE_FL_8CFD8F                      ; $86CBFE |
  PHX                                       ; $86CC02 |
  ASL A                                     ; $86CC03 |
  TAX                                       ; $86CC04 |
  LDA.L PTR16_86CC0F,X                      ; $86CC05 |
  PLX                                       ; $86CC09 |
  STA.B $00                                 ; $86CC0A |
  JMP.W ($0000)                             ; $86CC0C |

PTR16_86CC0F:
  dw CODE_86CC21                            ; $86CC0F |
  dw CODE_86CC48                            ; $86CC11 |
  dw CODE_86CC65                            ; $86CC13 |
  dw CODE_86CC99                            ; $86CC15 |
  dw CODE_86CD05                            ; $86CC17 |
  dw CODE_86CDDD                            ; $86CC19 |
  dw CODE_86CE69                            ; $86CC1B |
  dw CODE_86CE8E                            ; $86CC1D |
  dw CODE_86CE9E                            ; $86CC1F |

CODE_86CC21:
  LDA.L $700758                             ; $86CC21 |
  CMP.W #$0008                              ; $86CC25 |
  BNE CODE_86CC44                           ; $86CC28 |
  JSL.L CODE_FL_86C7AD                      ; $86CC2A |
  JSL.L CODE_FL_86C444                      ; $86CC2E |
  JSL.L CODE_FL_8CFF1E                      ; $86CC32 |
  LDA.W #$0008                              ; $86CC36 |
  STA.B $36,X                               ; $86CC39 |
  LDA.W #$3D74                              ; $86CC3B |
  STA.B $00,X                               ; $86CC3E |
  JML.L CODE_FL_86C63A                      ; $86CC40 |

CODE_86CC44:
  JML.L CODE_FL_86CA2D                      ; $86CC44 |

CODE_86CC48:
  LDA.B $09,X                               ; $86CC48 |
  CMP.W #$00E0                              ; $86CC4A |
  BCS CODE_86CC64                           ; $86CC4D |
  LDA.W #$8000                              ; $86CC4F |
  STA.B $E4                                 ; $86CC52 |
  LDA.B $92                                 ; $86CC54 |
  ORA.W #$0011                              ; $86CC56 |
  STA.B $92                                 ; $86CC59 |
  LDY.W #$0094                              ; $86CC5B |
  JSL.L CODE_FL_808993                      ; $86CC5E |
  INC.B $1A,X                               ; $86CC62 |

CODE_86CC64:
  RTL                                       ; $86CC64 |

CODE_86CC65:
  LDA.W #$057C                              ; $86CC65 |
  JSL.L CODE_FL_8CF9DB                      ; $86CC68 |
  CMP.W #$0001                              ; $86CC6C |
  BEQ CODE_86CC87                           ; $86CC6F |
  LDA.W #$1307                              ; $86CC71 |
  JSL.L CODE_FL_809934                      ; $86CC74 |
  BCC CODE_86CC98                           ; $86CC78 |
  LDA.W #$057C                              ; $86CC7A |
  PHX                                       ; $86CC7D |
  TAX                                       ; $86CC7E |
  LDA.W #$0001                              ; $86CC7F |
  STA.L $700200,X                           ; $86CC82 |
  PLX                                       ; $86CC86 |

CODE_86CC87:
  JSL.L CODE_FL_85A9B7                      ; $86CC87 |
  JSL.L CODE_FL_85A9EF                      ; $86CC8B |
  STZ.B $E4                                 ; $86CC8F |
  INC.B $3C,X                               ; $86CC91 |
  LDA.W #$0004                              ; $86CC93 |
  STA.B $1A,X                               ; $86CC96 |

CODE_86CC98:
  RTL                                       ; $86CC98 |

CODE_86CC99:
  LDA.B $3A,X                               ; $86CC99 |
  PHX                                       ; $86CC9B |
  ASL A                                     ; $86CC9C |
  TAX                                       ; $86CC9D |
  LDA.L PTR16_86CCA8,X                      ; $86CC9E |
  PLX                                       ; $86CCA2 |
  STA.B $00                                 ; $86CCA3 |
  JMP.W ($0000)                             ; $86CCA5 |

PTR16_86CCA8:
  dw CODE_86CCAE                            ; $86CCA8 |
  dw CODE_86CCCF                            ; $86CCAA |
  dw CODE_86CCEA                            ; $86CCAC |

CODE_86CCAE:
  LDA.B $44,X                               ; $86CCAE |
  BNE CODE_86CCBB                           ; $86CCB0 |
  LDA.W #$00BC                              ; $86CCB2 |
  JSL.L CODE_FL_8089BD                      ; $86CCB5 |
  INC.B $44,X                               ; $86CCB9 |

CODE_86CCBB:
  LDA.W #$202D                              ; $86CCBB |
  JSL.L CODE_FL_86CAEE                      ; $86CCBE |
  LDA.W #$0080                              ; $86CCC2 |
  STA.B $2A,X                               ; $86CCC5 |
  LDA.W #$0004                              ; $86CCC7 |
  STA.B $4C,X                               ; $86CCCA |
  INC.B $3A,X                               ; $86CCCC |
  RTL                                       ; $86CCCE |

CODE_86CCCF:
  JSL.L CODE_FL_83FD72                      ; $86CCCF |
  LDA.B $11,X                               ; $86CCD3 |
  CMP.W #$0008                              ; $86CCD5 |
  BCS CODE_86CCE9                           ; $86CCD8 |
  LDA.W #$0008                              ; $86CCDA |
  STA.B $11,X                               ; $86CCDD |
  LDA.B $2C,X                               ; $86CCDF |
  BNE CODE_86CCE7                           ; $86CCE1 |
  INC.B $3A,X                               ; $86CCE3 |
  BRA CODE_86CCE9                           ; $86CCE5 |

CODE_86CCE7:
  STZ.B $3A,X                               ; $86CCE7 |

CODE_86CCE9:
  RTL                                       ; $86CCE9 |

CODE_86CCEA:
  LDA.W #$00BC                              ; $86CCEA |
  JSL.L CODE_FL_8089BD                      ; $86CCED |
  LDA.W #$FE00                              ; $86CCF1 |
  JSL.L CODE_FL_86C887                      ; $86CCF4 |
  LDA.W #$0200                              ; $86CCF8 |
  STA.B $2A,X                               ; $86CCFB |
  LDA.W #$0020                              ; $86CCFD |
  STA.B $4C,X                               ; $86CD00 |
  INC.B $1A,X                               ; $86CD02 |
  RTL                                       ; $86CD04 |

CODE_86CD05:
  LDA.B $3C,X                               ; $86CD05 |
  PHX                                       ; $86CD07 |
  ASL A                                     ; $86CD08 |
  TAX                                       ; $86CD09 |
  LDA.L PTR16_86CD14,X                      ; $86CD0A |
  PLX                                       ; $86CD0E |
  STA.B $00                                 ; $86CD0F |
  JMP.W ($0000)                             ; $86CD11 |

PTR16_86CD14:
  dw CODE_86CD1A                            ; $86CD14 |
  dw CODE_86CD42                            ; $86CD16 |
  dw CODE_86CD5E                            ; $86CD18 |

CODE_86CD1A:
  JSL.L CODE_FL_85B28B                      ; $86CD1A |
  JSL.L CODE_FL_85B27E                      ; $86CD1E |
  JSL.L CODE_FL_85B273                      ; $86CD22 |
  BCC CODE_86CD41                           ; $86CD26 |
  STZ.B $26,X                               ; $86CD28 |
  LDA.W #$0038                              ; $86CD2A |
  JSL.L push_sound_queue                    ; $86CD2D |
  LDA.W #$8006                              ; $86CD31 |
  JSL.L CODE_FL_B3FE45                      ; $86CD34 |
  LDA.W #$202B                              ; $86CD38 |
  JSL.L CODE_FL_86CAEE                      ; $86CD3B |
  INC.B $3C,X                               ; $86CD3F |

CODE_86CD41:
  RTL                                       ; $86CD41 |

CODE_86CD42:
  LDA.B $20,X                               ; $86CD42 |
  BNE CODE_86CD5D                           ; $86CD44 |
  LDA.W #$0005                              ; $86CD46 |
  STA.B $4A,X                               ; $86CD49 |
  JSL.L CODE_FL_86C486                      ; $86CD4B |
  LDA.W #$3D74                              ; $86CD4F |
  STA.B $00,X                               ; $86CD52 |
  LDA.W #$202C                              ; $86CD54 |
  JSL.L CODE_FL_86CAEE                      ; $86CD57 |
  INC.B $3C,X                               ; $86CD5B |

CODE_86CD5D:
  RTL                                       ; $86CD5D |

CODE_86CD5E:
  LDA.B $00,X                               ; $86CD5E |
  CMP.W #$3DE0                              ; $86CD60 |
  BNE CODE_86CDD4                           ; $86CD63 |
  LDA.W #$002C                              ; $86CD65 |
  JSL.L CODE_FL_8089BD                      ; $86CD68 |
  STZ.B $00                                 ; $86CD6C |
  LDA.W #$0002                              ; $86CD6E |
  STA.B $02                                 ; $86CD71 |

CODE_86CD73:
  LDA.B $00                                 ; $86CD73 |
  ASL A                                     ; $86CD75 |
  ASL A                                     ; $86CD76 |
  TAY                                       ; $86CD77 |
  PHB                                       ; $86CD78 |
  PHK                                       ; $86CD79 |
  PLB                                       ; $86CD7A |
  LDA.W LOOSE_OP_00CDD7,Y                   ; $86CD7B |
  PLB                                       ; $86CD7E |
  STA.B $0A                                 ; $86CD7F |
  PHB                                       ; $86CD81 |
  PHK                                       ; $86CD82 |
  PLB                                       ; $86CD83 |
  LDA.W CODE_00CDD5,Y                       ; $86CD84 |
  PLB                                       ; $86CD87 |
  STA.B $04                                 ; $86CD88 |
  LDA.W #$FE00                              ; $86CD8A |
  STA.B $06                                 ; $86CD8D |
  LDA.B $04,X                               ; $86CD8F |
  AND.W #$2020                              ; $86CD91 |
  BEQ CODE_86CDA6                           ; $86CD94 |
  LDA.B $04                                 ; $86CD96 |
  EOR.W #$FFFF                              ; $86CD98 |
  INC A                                     ; $86CD9B |
  STA.B $04                                 ; $86CD9C |
  LDA.B $06                                 ; $86CD9E |
  EOR.W #$FFFF                              ; $86CDA0 |
  INC A                                     ; $86CDA3 |
  STA.B $06                                 ; $86CDA4 |

CODE_86CDA6:
  LDA.B $04                                 ; $86CDA6 |
  STA.B $08                                 ; $86CDA8 |
  STZ.B $0E                                 ; $86CDAA |
  LDA.B $06                                 ; $86CDAC |
  JSL.L CODE_FL_85AB39                      ; $86CDAE |
  BCS CODE_86CDD4                           ; $86CDB2 |
  JSL.L CODE_FL_85A958                      ; $86CDB4 |
  BCS CODE_86CDD4                           ; $86CDB8 |
  INC.B $00                                 ; $86CDBA |
  DEC.B $02                                 ; $86CDBC |
  BNE CODE_86CD73                           ; $86CDBE |
  DEC.B $4A,X                               ; $86CDC0 |
  BNE CODE_86CDD4                           ; $86CDC2 |
  LDA.W #$0080                              ; $86CDC4 |
  STA.B $2C,X                               ; $86CDC7 |
  STZ.B $3A,X                               ; $86CDC9 |
  STZ.B $3C,X                               ; $86CDCB |
  STZ.B $44,X                               ; $86CDCD |
  LDA.W #$0003                              ; $86CDCF |
  STA.B $1A,X                               ; $86CDD2 |

CODE_86CDD4:
  RTL                                       ; $86CDD4 |

  dw $0000                                  ; $86CDD5 |
  dw EMPTY_86FFEC                           ; $86CDD7 |
  dw EMPTY_86FFE8                           ; $86CDD9 |
  dw EMPTY_86FFEC                           ; $86CDDB |

CODE_86CDDD:
  JSL.L CODE_FL_85A89B                      ; $86CDDD |
  LDA.B $3E,X                               ; $86CDE1 |
  PHX                                       ; $86CDE3 |
  ASL A                                     ; $86CDE4 |
  TAX                                       ; $86CDE5 |
  LDA.L PTR16_86CDF0,X                      ; $86CDE6 |
  PLX                                       ; $86CDEA |
  STA.B $00                                 ; $86CDEB |
  JMP.W ($0000)                             ; $86CDED |

PTR16_86CDF0:
  dw CODE_86CDF6                            ; $86CDF0 |
  dw CODE_86CE1D                            ; $86CDF2 |
  dw CODE_86CE47                            ; $86CDF4 |

CODE_86CDF6:
  LDA.B $40,X                               ; $86CDF6 |
  BNE CODE_86CE00                           ; $86CDF8 |
  JSL.L CODE_FL_85A5A7                      ; $86CDFA |
  INC.B $40,X                               ; $86CDFE |

CODE_86CE00:
  STZ.B $26,X                               ; $86CE00 |
  JSL.L CODE_FL_83FD72                      ; $86CE02 |
  JSL.L CODE_FL_85B273                      ; $86CE06 |
  BCC CODE_86CE1C                           ; $86CE0A |
  LDA.W #$0040                              ; $86CE0C |
  STA.B $38,X                               ; $86CE0F |
  LDA.W #$202B                              ; $86CE11 |
  JSL.L CODE_FL_86CAEE                      ; $86CE14 |
  STZ.B $40,X                               ; $86CE18 |
  INC.B $3E,X                               ; $86CE1A |

CODE_86CE1C:
  RTL                                       ; $86CE1C |

CODE_86CE1D:
  LDA.B $20,X                               ; $86CE1D |
  BNE CODE_86CE46                           ; $86CE1F |
  LDA.W #$00BC                              ; $86CE21 |
  JSL.L CODE_FL_8089BD                      ; $86CE24 |
  LDA.W #$3D96                              ; $86CE28 |
  STA.B $00,X                               ; $86CE2B |
  STZ.B $1E,X                               ; $86CE2D |
  LDA.W #$0008                              ; $86CE2F |
  STA.B $11,X                               ; $86CE32 |
  JSL.L CODE_FL_86C486                      ; $86CE34 |
  LDA.W #$FC00                              ; $86CE38 |
  JSL.L CODE_FL_86C887                      ; $86CE3B |
  LDA.W #$0020                              ; $86CE3F |
  STA.B $2C,X                               ; $86CE42 |
  INC.B $3E,X                               ; $86CE44 |

CODE_86CE46:
  RTL                                       ; $86CE46 |

CODE_86CE47:
  JSL.L CODE_FL_85B2EC                      ; $86CE47 |
  BNE CODE_86CE51                           ; $86CE4B |
  JSL.L CODE_FL_86C70D                      ; $86CE4D |

CODE_86CE51:
  JSL.L CODE_FL_86C7AD                      ; $86CE51 |
  JSL.L CODE_FL_86C486                      ; $86CE55 |
  STZ.B $26,X                               ; $86CE59 |
  STZ.B $3A,X                               ; $86CE5B |
  STZ.B $3C,X                               ; $86CE5D |
  STZ.B $3E,X                               ; $86CE5F |
  STZ.B $44,X                               ; $86CE61 |
  LDA.W #$0003                              ; $86CE63 |
  STA.B $1A,X                               ; $86CE66 |
  RTL                                       ; $86CE68 |

CODE_86CE69:
  JSL.L CODE_FL_85A9F7                      ; $86CE69 |
  JSL.L CODE_FL_85A9BF                      ; $86CE6D |
  LDA.W #$000D                              ; $86CE71 |
  JSL.L push_sound_queue                    ; $86CE74 |
  JSL.L CODE_FL_8CFAF3                      ; $86CE78 |
  STZ.B $00,X                               ; $86CE7C |
  STZ.B $1E,X                               ; $86CE7E |
  STZ.B $26,X                               ; $86CE80 |
  STZ.B $28,X                               ; $86CE82 |
  STZ.B $2A,X                               ; $86CE84 |
  LDA.W #$0010                              ; $86CE86 |
  STA.B $2C,X                               ; $86CE89 |
  INC.B $1A,X                               ; $86CE8B |
  RTL                                       ; $86CE8D |

CODE_86CE8E:
  JSL.L CODE_FL_86C70D                      ; $86CE8E |
  LDA.W #$0020                              ; $86CE92 |
  STA.B $2C,X                               ; $86CE95 |
  JSL.L CODE_FL_80893F                      ; $86CE97 |
  INC.B $1A,X                               ; $86CE9B |
  RTL                                       ; $86CE9D |

CODE_86CE9E:
  JSL.L CODE_FL_86C70D                      ; $86CE9E |
  LDY.W #$00C8                              ; $86CEA2 |
  JSL.L CODE_FL_808993                      ; $86CEA5 |
  LDA.W #$057C                              ; $86CEA9 |
  JSL.L CODE_FL_8CF9C3                      ; $86CEAC |
  LDA.L $700758                             ; $86CEB0 |
  INC A                                     ; $86CEB4 |
  STA.L $700758                             ; $86CEB5 |
  STZ.B $92                                 ; $86CEB9 |
  JML.L CODE_FL_86CA2D                      ; $86CEBB |

CODE_86CEBF:
  JSL.L CODE_FL_85F7C9                      ; $86CEBF |
  JSL.L CODE_FL_8CFD8F                      ; $86CEC3 |
  PHX                                       ; $86CEC7 |
  ASL A                                     ; $86CEC8 |
  TAX                                       ; $86CEC9 |
  LDA.L PTR16_86CED4,X                      ; $86CECA |
  PLX                                       ; $86CECE |
  STA.B $00                                 ; $86CECF |
  JMP.W ($0000)                             ; $86CED1 |

PTR16_86CED4:
  dw CODE_86CEDE                            ; $86CED4 |
  dw CODE_86CEF7                            ; $86CED6 |
  dw CODE_86CF74                            ; $86CED8 |
  dw CODE_86D04B                            ; $86CEDA |
  dw CODE_JP_86D0E9                         ; $86CEDC |

CODE_86CEDE:
  JSL.L CODE_FL_86C7AD                      ; $86CEDE |
  JSL.L CODE_FL_8CFF1E                      ; $86CEE2 |
  JSL.L CODE_FL_85A9B7                      ; $86CEE6 |
  JSL.L CODE_FL_85A9EF                      ; $86CEEA |
  LDA.W #$0003                              ; $86CEEE |
  STA.B $36,X                               ; $86CEF1 |
  JML.L CODE_FL_86C63A                      ; $86CEF3 |

CODE_86CEF7:
  LDA.B $3A,X                               ; $86CEF7 |
  PHX                                       ; $86CEF9 |
  ASL A                                     ; $86CEFA |
  TAX                                       ; $86CEFB |
  LDA.L PTR16_86CF06,X                      ; $86CEFC |
  PLX                                       ; $86CF00 |
  STA.B $00                                 ; $86CF01 |
  JMP.W ($0000)                             ; $86CF03 |

PTR16_86CF06:
  dw CODE_86CF0C                            ; $86CF06 |
  dw CODE_86CF2D                            ; $86CF08 |
  dw CODE_86CF55                            ; $86CF0A |

CODE_86CF0C:
  LDA.B $44,X                               ; $86CF0C |
  BNE CODE_86CF19                           ; $86CF0E |
  LDA.W #$00BC                              ; $86CF10 |
  JSL.L CODE_FL_8089BD                      ; $86CF13 |
  INC.B $44,X                               ; $86CF17 |

CODE_86CF19:
  LDA.W #$202D                              ; $86CF19 |
  JSL.L CODE_FL_86CAEE                      ; $86CF1C |
  LDA.W #$0080                              ; $86CF20 |
  STA.B $2A,X                               ; $86CF23 |
  LDA.W #$0004                              ; $86CF25 |
  STA.B $4C,X                               ; $86CF28 |
  INC.B $3A,X                               ; $86CF2A |
  RTL                                       ; $86CF2C |

CODE_86CF2D:
  JSL.L CODE_FL_83FD80                      ; $86CF2D |
  LDA.B $11,X                               ; $86CF31 |
  CMP.W #$0008                              ; $86CF33 |
  BCS CODE_86CF54                           ; $86CF36 |
  LDA.W #$0008                              ; $86CF38 |
  STA.B $11,X                               ; $86CF3B |
  LDA.B $2C,X                               ; $86CF3D |
  BNE CODE_86CF52                           ; $86CF3F |
  JSL.L CODE_FL_86C444                      ; $86CF41 |
  JSL.L CODE_FL_8CFE8B                      ; $86CF45 |
  CMP.W #$0040                              ; $86CF49 |
  BCS CODE_86CF52                           ; $86CF4C |
  INC.B $3A,X                               ; $86CF4E |
  BRA CODE_86CF54                           ; $86CF50 |

CODE_86CF52:
  STZ.B $3A,X                               ; $86CF52 |

CODE_86CF54:
  RTL                                       ; $86CF54 |

CODE_86CF55:
  LDA.W #$00BC                              ; $86CF55 |
  JSL.L CODE_FL_8089BD                      ; $86CF58 |
  JSL.L CODE_FL_86C486                      ; $86CF5C |
  LDA.W #$0006                              ; $86CF60 |
  JSL.L CODE_FL_85B3A9                      ; $86CF63 |
  LDA.W #$0200                              ; $86CF67 |
  STA.B $2A,X                               ; $86CF6A |
  LDA.W #$0020                              ; $86CF6C |
  STA.B $4C,X                               ; $86CF6F |
  INC.B $1A,X                               ; $86CF71 |
  RTL                                       ; $86CF73 |

CODE_86CF74:
  LDA.B $3C,X                               ; $86CF74 |
  PHX                                       ; $86CF76 |
  ASL A                                     ; $86CF77 |
  TAX                                       ; $86CF78 |
  LDA.L PTR16_86CF83,X                      ; $86CF79 |
  PLX                                       ; $86CF7D |
  STA.B $00                                 ; $86CF7E |
  JMP.W ($0000)                             ; $86CF80 |

PTR16_86CF83:
  dw CODE_86CF89                            ; $86CF83 |
  dw CODE_86CFB8                            ; $86CF85 |
  dw CODE_86CFD4                            ; $86CF87 |

CODE_86CF89:
  JSL.L CODE_FL_83FD80                      ; $86CF89 |
  LDA.W $1C12                               ; $86CF8D |
  BEQ CODE_86CF96                           ; $86CF90 |
  STZ.B $26,X                               ; $86CF92 |
  STZ.B $28,X                               ; $86CF94 |

CODE_86CF96:
  JSL.L CODE_FL_85B273                      ; $86CF96 |
  BCC CODE_86CFB7                           ; $86CF9A |
  LDA.W #$0038                              ; $86CF9C |
  JSL.L push_sound_queue                    ; $86CF9F |
  STZ.B $26,X                               ; $86CFA3 |
  STZ.B $28,X                               ; $86CFA5 |
  LDA.W #$8006                              ; $86CFA7 |
  JSL.L CODE_FL_B3FE45                      ; $86CFAA |
  LDA.W #$202B                              ; $86CFAE |
  JSL.L CODE_FL_86CAEE                      ; $86CFB1 |
  INC.B $3C,X                               ; $86CFB5 |

CODE_86CFB7:
  RTL                                       ; $86CFB7 |

CODE_86CFB8:
  LDA.B $20,X                               ; $86CFB8 |
  BNE CODE_86CFD3                           ; $86CFBA |
  LDA.W #$0005                              ; $86CFBC |
  STA.B $4A,X                               ; $86CFBF |
  JSL.L CODE_FL_86C486                      ; $86CFC1 |
  LDA.W #$3D74                              ; $86CFC5 |
  STA.B $00,X                               ; $86CFC8 |
  LDA.W #$202C                              ; $86CFCA |
  JSL.L CODE_FL_86CAEE                      ; $86CFCD |
  INC.B $3C,X                               ; $86CFD1 |

CODE_86CFD3:
  RTL                                       ; $86CFD3 |

CODE_86CFD4:
  LDA.B $00,X                               ; $86CFD4 |
  CMP.W #$3DE0                              ; $86CFD6 |
  BNE CODE_86D04A                           ; $86CFD9 |
  LDA.W #$002C                              ; $86CFDB |
  JSL.L CODE_FL_8089BD                      ; $86CFDE |
  STZ.B $00                                 ; $86CFE2 |
  LDA.W #$0002                              ; $86CFE4 |
  STA.B $02                                 ; $86CFE7 |

CODE_86CFE9:
  LDA.B $00                                 ; $86CFE9 |
  ASL A                                     ; $86CFEB |
  ASL A                                     ; $86CFEC |
  TAY                                       ; $86CFED |
  PHB                                       ; $86CFEE |
  PHK                                       ; $86CFEF |
  PLB                                       ; $86CFF0 |
  LDA.W LOOSE_OP_00CDD7,Y                   ; $86CFF1 |
  PLB                                       ; $86CFF4 |
  STA.B $0A                                 ; $86CFF5 |
  PHB                                       ; $86CFF7 |
  PHK                                       ; $86CFF8 |
  PLB                                       ; $86CFF9 |
  LDA.W CODE_00CDD5,Y                       ; $86CFFA |
  PLB                                       ; $86CFFD |
  STA.B $04                                 ; $86CFFE |
  LDA.W #$FE00                              ; $86D000 |
  STA.B $06                                 ; $86D003 |
  LDA.B $04,X                               ; $86D005 |
  AND.W #$2020                              ; $86D007 |
  BEQ CODE_86D01C                           ; $86D00A |
  LDA.B $04                                 ; $86D00C |
  EOR.W #$FFFF                              ; $86D00E |
  INC A                                     ; $86D011 |
  STA.B $04                                 ; $86D012 |
  LDA.B $06                                 ; $86D014 |
  EOR.W #$FFFF                              ; $86D016 |
  INC A                                     ; $86D019 |
  STA.B $06                                 ; $86D01A |

CODE_86D01C:
  LDA.B $04                                 ; $86D01C |
  STA.B $08                                 ; $86D01E |
  STZ.B $0E                                 ; $86D020 |
  LDA.B $06                                 ; $86D022 |
  JSL.L CODE_FL_85AB40                      ; $86D024 |
  BCS CODE_86D04A                           ; $86D028 |
  JSL.L CODE_FL_85A958                      ; $86D02A |
  BCS CODE_86D04A                           ; $86D02E |
  INC.B $00                                 ; $86D030 |
  DEC.B $02                                 ; $86D032 |
  BNE CODE_86CFE9                           ; $86D034 |
  DEC.B $4A,X                               ; $86D036 |
  BNE CODE_86D04A                           ; $86D038 |
  LDA.W #$0080                              ; $86D03A |
  STA.B $2C,X                               ; $86D03D |
  STZ.B $3A,X                               ; $86D03F |
  STZ.B $3C,X                               ; $86D041 |
  STZ.B $44,X                               ; $86D043 |
  LDA.W #$0001                              ; $86D045 |
  STA.B $1A,X                               ; $86D048 |

CODE_86D04A:
  RTL                                       ; $86D04A |

CODE_86D04B:
  LDA.B $37,X                               ; $86D04B |
  AND.W #$00FF                              ; $86D04D |
  CMP.W #$000E                              ; $86D050 |
  BNE CODE_86D058                           ; $86D053 |
  JMP.W CODE_JP_86D0E9                      ; $86D055 |

CODE_86D058:
  JSL.L CODE_FL_85A89B                      ; $86D058 |
  LDA.B $3E,X                               ; $86D05C |
  PHX                                       ; $86D05E |
  ASL A                                     ; $86D05F |
  TAX                                       ; $86D060 |
  LDA.L PTR16_86D06B,X                      ; $86D061 |
  PLX                                       ; $86D065 |
  STA.B $00                                 ; $86D066 |
  JMP.W ($0000)                             ; $86D068 |

PTR16_86D06B:
  dw CODE_86D071                            ; $86D06B |
  dw CODE_86D09A                            ; $86D06D |
  dw CODE_86D0C4                            ; $86D06F |

CODE_86D071:
  LDA.B $40,X                               ; $86D071 |
  BNE CODE_86D07B                           ; $86D073 |
  JSL.L CODE_FL_85A5A7                      ; $86D075 |
  INC.B $40,X                               ; $86D079 |

CODE_86D07B:
  STZ.B $26,X                               ; $86D07B |
  STZ.B $28,X                               ; $86D07D |
  JSL.L CODE_FL_83FD80                      ; $86D07F |
  JSL.L CODE_FL_85B273                      ; $86D083 |
  BCC CODE_86D099                           ; $86D087 |
  LDA.W #$0040                              ; $86D089 |
  STA.B $38,X                               ; $86D08C |
  LDA.W #$202B                              ; $86D08E |
  JSL.L CODE_FL_86CAEE                      ; $86D091 |
  STZ.B $40,X                               ; $86D095 |
  INC.B $3E,X                               ; $86D097 |

CODE_86D099:
  RTL                                       ; $86D099 |

CODE_86D09A:
  LDA.B $20,X                               ; $86D09A |
  BNE CODE_86D0C3                           ; $86D09C |
  LDA.W #$3D96                              ; $86D09E |
  STA.B $00,X                               ; $86D0A1 |
  STZ.B $1E,X                               ; $86D0A3 |
  LDA.W #$0008                              ; $86D0A5 |
  STA.B $11,X                               ; $86D0A8 |
  JSL.L CODE_FL_86C486                      ; $86D0AA |
  LDA.W #$00BC                              ; $86D0AE |
  JSL.L CODE_FL_8089BD                      ; $86D0B1 |
  LDA.W #$FC00                              ; $86D0B5 |
  JSL.L CODE_FL_86C887                      ; $86D0B8 |
  LDA.W #$0010                              ; $86D0BC |
  STA.B $2C,X                               ; $86D0BF |
  INC.B $3E,X                               ; $86D0C1 |

CODE_86D0C3:
  RTL                                       ; $86D0C3 |

CODE_86D0C4:
  JSL.L CODE_FL_83FD80                      ; $86D0C4 |
  LDA.W $1C12                               ; $86D0C8 |
  BNE CODE_86D0D1                           ; $86D0CB |
  JSL.L CODE_FL_86C70D                      ; $86D0CD |

CODE_86D0D1:
  JSL.L CODE_FL_86C7AD                      ; $86D0D1 |
  JSL.L CODE_FL_86C486                      ; $86D0D5 |
  STZ.B $26,X                               ; $86D0D9 |
  STZ.B $3A,X                               ; $86D0DB |
  STZ.B $3C,X                               ; $86D0DD |
  STZ.B $3E,X                               ; $86D0DF |
  STZ.B $44,X                               ; $86D0E1 |
  LDA.W #$0001                              ; $86D0E3 |
  STA.B $1A,X                               ; $86D0E6 |
  RTL                                       ; $86D0E8 |

CODE_JP_86D0E9:
  LDA.W #$0221                              ; $86D0E9 |
  JSL.L CODE_FL_86C9A7                      ; $86D0EC |
  JSL.L CODE_FL_8CFAF3                      ; $86D0F0 |
  LDA.W #$000D                              ; $86D0F4 |
  JSL.L push_sound_queue                    ; $86D0F7 |
  JML.L CODE_FL_86CA36                      ; $86D0FB |

CODE_86D0FF:
  JSL.L CODE_FL_85F7C9                      ; $86D0FF |
  JSL.L CODE_FL_8CFD8F                      ; $86D103 |
  PHX                                       ; $86D107 |
  ASL A                                     ; $86D108 |
  TAX                                       ; $86D109 |
  LDA.L PTR16_86D114,X                      ; $86D10A |
  PLX                                       ; $86D10E |
  STA.B $00                                 ; $86D10F |
  JMP.W ($0000)                             ; $86D111 |

PTR16_86D114:
  dw CODE_86D11E                            ; $86D114 |
  dw CODE_86D156                            ; $86D116 |
  dw CODE_86D1CD                            ; $86D118 |
  dw CODE_86D25E                            ; $86D11A |
  dw CODE_JP_86D2FE                         ; $86D11C |

CODE_86D11E:
  LDA.W #$01C4                              ; $86D11E |
  JSL.L CODE_FL_86C9A4                      ; $86D121 |
  BCS CODE_86D155                           ; $86D125 |
  JSL.L CODE_FL_85AAB6                      ; $86D127 |
  LDA.W #$0002                              ; $86D12B |
  STA.W $003A,Y                             ; $86D12E |
  LDA.W #$0003                              ; $86D131 |
  STA.W $003C,Y                             ; $86D134 |
  JSL.L CODE_FL_86C7AD                      ; $86D137 |
  JSL.L CODE_FL_8CFF1E                      ; $86D13B |
  JSL.L CODE_FL_85A9B7                      ; $86D13F |
  JSL.L CODE_FL_85A9EF                      ; $86D143 |
  LDA.W #$0003                              ; $86D147 |
  STA.B $36,X                               ; $86D14A |
  LDA.W #$0080                              ; $86D14C |
  STA.B $2C,X                               ; $86D14F |
  JML.L CODE_FL_86C63A                      ; $86D151 |

CODE_86D155:
  RTL                                       ; $86D155 |

CODE_86D156:
  LDA.B $3A,X                               ; $86D156 |
  PHX                                       ; $86D158 |
  ASL A                                     ; $86D159 |
  TAX                                       ; $86D15A |
  LDA.L PTR16_86D165,X                      ; $86D15B |
  PLX                                       ; $86D15F |
  STA.B $00                                 ; $86D160 |
  JMP.W ($0000)                             ; $86D162 |

PTR16_86D165:
  dw CODE_86D16B                            ; $86D165 |
  dw CODE_86D18C                            ; $86D167 |
  dw CODE_86D1B4                            ; $86D169 |

CODE_86D16B:
  LDA.B $46,X                               ; $86D16B |
  BNE CODE_86D178                           ; $86D16D |
  LDA.W #$00BC                              ; $86D16F |
  JSL.L CODE_FL_8089BD                      ; $86D172 |
  INC.B $46,X                               ; $86D176 |

CODE_86D178:
  LDA.W #$202A                              ; $86D178 |
  JSL.L CODE_FL_86CAEE                      ; $86D17B |
  LDA.W #$0080                              ; $86D17F |
  STA.B $2A,X                               ; $86D182 |
  LDA.W #$0004                              ; $86D184 |
  STA.B $4C,X                               ; $86D187 |
  INC.B $3A,X                               ; $86D189 |
  RTL                                       ; $86D18B |

CODE_86D18C:
  JSL.L CODE_FL_83FD80                      ; $86D18C |
  LDA.B $11,X                               ; $86D190 |
  CMP.W #$0008                              ; $86D192 |
  BCS CODE_86D1B3                           ; $86D195 |
  LDA.W #$0008                              ; $86D197 |
  STA.B $11,X                               ; $86D19A |
  LDA.B $2C,X                               ; $86D19C |
  BNE CODE_86D1B1                           ; $86D19E |
  JSL.L CODE_FL_86C444                      ; $86D1A0 |
  JSL.L CODE_FL_8CFE8B                      ; $86D1A4 |
  CMP.W #$0090                              ; $86D1A8 |
  BCS CODE_86D1B1                           ; $86D1AB |
  INC.B $3A,X                               ; $86D1AD |
  BRA CODE_86D1B3                           ; $86D1AF |

CODE_86D1B1:
  STZ.B $3A,X                               ; $86D1B1 |

CODE_86D1B3:
  RTL                                       ; $86D1B3 |

CODE_86D1B4:
  LDA.W #$00BC                              ; $86D1B4 |
  JSL.L CODE_FL_8089BD                      ; $86D1B7 |
  STZ.B $4C,X                               ; $86D1BB |
  STZ.B $2A,X                               ; $86D1BD |
  JSL.L CODE_FL_86C486                      ; $86D1BF |
  LDA.W #$0006                              ; $86D1C3 |
  JSL.L CODE_FL_85B3A9                      ; $86D1C6 |
  INC.B $1A,X                               ; $86D1CA |
  RTL                                       ; $86D1CC |

CODE_86D1CD:
  LDA.B $3C,X                               ; $86D1CD |
  PHX                                       ; $86D1CF |
  ASL A                                     ; $86D1D0 |
  TAX                                       ; $86D1D1 |
  LDA.L PTR16_86D1DC,X                      ; $86D1D2 |
  PLX                                       ; $86D1D6 |
  STA.B $00                                 ; $86D1D7 |
  JMP.W ($0000)                             ; $86D1D9 |

PTR16_86D1DC:
  dw CODE_86D1E4                            ; $86D1DC |
  dw CODE_86D209                            ; $86D1DE |
  dw CODE_86D22B                            ; $86D1E0 |
  dw CODE_86D242                            ; $86D1E2 |

CODE_86D1E4:
  JSL.L CODE_FL_83FD80                      ; $86D1E4 |
  LDA.W $1C12                               ; $86D1E8 |
  BNE CODE_86D1F6                           ; $86D1EB |
  JSL.L CODE_FL_8CFE8B                      ; $86D1ED |
  CMP.W #$0018                              ; $86D1F1 |
  BCS CODE_86D208                           ; $86D1F4 |

CODE_86D1F6:
  STZ.B $26,X                               ; $86D1F6 |
  STZ.B $28,X                               ; $86D1F8 |
  LDA.W #$3BC8                              ; $86D1FA |
  STA.B $00,X                               ; $86D1FD |
  STZ.B $1E,X                               ; $86D1FF |
  LDA.W #$0020                              ; $86D201 |
  STA.B $4C,X                               ; $86D204 |
  INC.B $3C,X                               ; $86D206 |

CODE_86D208:
  RTL                                       ; $86D208 |

CODE_86D209:
  JSL.L CODE_FL_83FD80                      ; $86D209 |
  JSL.L CODE_FL_85B273                      ; $86D20D |
  BCC CODE_86D22A                           ; $86D211 |
  LDA.W #$0038                              ; $86D213 |
  JSL.L push_sound_queue                    ; $86D216 |
  LDA.W #$8006                              ; $86D21A |
  JSL.L CODE_FL_B3FE45                      ; $86D21D |
  LDA.W #$2028                              ; $86D221 |
  JSL.L CODE_FL_86CAEE                      ; $86D224 |
  INC.B $3C,X                               ; $86D228 |

CODE_86D22A:
  RTL                                       ; $86D22A |

CODE_86D22B:
  LDA.B $20,X                               ; $86D22B |
  BNE CODE_86D241                           ; $86D22D |
  JSL.L CODE_FL_86C486                      ; $86D22F |
  LDA.W #$3BC8                              ; $86D233 |
  STA.B $00,X                               ; $86D236 |
  LDA.W #$2029                              ; $86D238 |
  JSL.L CODE_FL_86CAEE                      ; $86D23B |
  INC.B $3C,X                               ; $86D23F |

CODE_86D241:
  RTL                                       ; $86D241 |

CODE_86D242:
  LDA.B $20,X                               ; $86D242 |
  BNE CODE_86D25D                           ; $86D244 |
  LDA.W #$3BC8                              ; $86D246 |
  STA.B $00,X                               ; $86D249 |
  STZ.B $1E,X                               ; $86D24B |
  LDA.W #$0080                              ; $86D24D |
  STA.B $2C,X                               ; $86D250 |
  STZ.B $3A,X                               ; $86D252 |
  STZ.B $3C,X                               ; $86D254 |
  STZ.B $46,X                               ; $86D256 |
  LDA.W #$0001                              ; $86D258 |
  STA.B $1A,X                               ; $86D25B |

CODE_86D25D:
  RTL                                       ; $86D25D |

CODE_86D25E:
  LDA.B $37,X                               ; $86D25E |
  AND.W #$00FF                              ; $86D260 |
  CMP.W #$000E                              ; $86D263 |
  BNE CODE_86D26B                           ; $86D266 |
  JMP.W CODE_JP_86D2FE                      ; $86D268 |

CODE_86D26B:
  JSL.L CODE_FL_85A89B                      ; $86D26B |
  LDA.B $3E,X                               ; $86D26F |
  PHX                                       ; $86D271 |
  ASL A                                     ; $86D272 |
  TAX                                       ; $86D273 |
  LDA.L PTR16_86D27E,X                      ; $86D274 |
  PLX                                       ; $86D278 |
  STA.B $00                                 ; $86D279 |
  JMP.W ($0000)                             ; $86D27B |

PTR16_86D27E:
  dw CODE_86D284                            ; $86D27E |
  dw CODE_86D2AD                            ; $86D280 |
  dw CODE_86D2D7                            ; $86D282 |

CODE_86D284:
  LDA.B $40,X                               ; $86D284 |
  BNE CODE_86D28E                           ; $86D286 |
  JSL.L CODE_FL_85A5A7                      ; $86D288 |
  INC.B $40,X                               ; $86D28C |

CODE_86D28E:
  STZ.B $26,X                               ; $86D28E |
  STZ.B $28,X                               ; $86D290 |
  JSL.L CODE_FL_83FD80                      ; $86D292 |
  JSL.L CODE_FL_85B273                      ; $86D296 |
  BCC CODE_86D2AC                           ; $86D29A |
  LDA.W #$0040                              ; $86D29C |
  STA.B $38,X                               ; $86D29F |
  LDA.W #$2028                              ; $86D2A1 |
  JSL.L CODE_FL_86CAEE                      ; $86D2A4 |
  STZ.B $40,X                               ; $86D2A8 |
  INC.B $3E,X                               ; $86D2AA |

CODE_86D2AC:
  RTL                                       ; $86D2AC |

CODE_86D2AD:
  LDA.B $20,X                               ; $86D2AD |
  BNE CODE_86D2D6                           ; $86D2AF |
  LDA.W #$3BFC                              ; $86D2B1 |
  STA.B $00,X                               ; $86D2B4 |
  STZ.B $1E,X                               ; $86D2B6 |
  LDA.W #$0008                              ; $86D2B8 |
  STA.B $11,X                               ; $86D2BB |
  JSL.L CODE_FL_86C486                      ; $86D2BD |
  LDA.W #$00BC                              ; $86D2C1 |
  JSL.L CODE_FL_8089BD                      ; $86D2C4 |
  LDA.W #$FC00                              ; $86D2C8 |
  JSL.L CODE_FL_86C887                      ; $86D2CB |
  LDA.W #$0010                              ; $86D2CF |
  STA.B $2C,X                               ; $86D2D2 |
  INC.B $3E,X                               ; $86D2D4 |

CODE_86D2D6:
  RTL                                       ; $86D2D6 |

CODE_86D2D7:
  JSL.L CODE_FL_83FD80                      ; $86D2D7 |
  LDA.W $1C12                               ; $86D2DB |
  BNE CODE_86D2E4                           ; $86D2DE |
  JSL.L CODE_FL_86C70D                      ; $86D2E0 |

CODE_86D2E4:
  JSL.L CODE_FL_86C7AD                      ; $86D2E4 |
  JSL.L CODE_FL_86C486                      ; $86D2E8 |
  STZ.B $26,X                               ; $86D2EC |
  STZ.B $28,X                               ; $86D2EE |
  STZ.B $3A,X                               ; $86D2F0 |
  STZ.B $3C,X                               ; $86D2F2 |
  STZ.B $3E,X                               ; $86D2F4 |
  STZ.B $46,X                               ; $86D2F6 |
  LDA.W #$0001                              ; $86D2F8 |
  STA.B $1A,X                               ; $86D2FB |
  RTL                                       ; $86D2FD |

CODE_JP_86D2FE:
  LDA.W #$0221                              ; $86D2FE |
  JSL.L CODE_FL_86C9A7                      ; $86D301 |
  JSL.L CODE_FL_8CFAF3                      ; $86D305 |
  LDA.W #$000D                              ; $86D309 |
  JSL.L push_sound_queue                    ; $86D30C |
  JML.L CODE_FL_86CA36                      ; $86D310 |

CODE_86D314:
  JSL.L CODE_FL_85F7C9                      ; $86D314 |
  JSL.L CODE_FL_8CFD8F                      ; $86D318 |
  PHX                                       ; $86D31C |
  ASL A                                     ; $86D31D |
  TAX                                       ; $86D31E |
  LDA.L PTR16_86D329,X                      ; $86D31F |
  PLX                                       ; $86D323 |
  STA.B $00                                 ; $86D324 |
  JMP.W ($0000)                             ; $86D326 |

PTR16_86D329:
  dw CODE_86D335                            ; $86D329 |
  dw CODE_86D355                            ; $86D32B |
  dw CODE_86D37D                            ; $86D32D |
  dw CODE_86D40C                            ; $86D32F |
  dw CODE_86D472                            ; $86D331 |
  dw CODE_86D490                            ; $86D333 |

CODE_86D335:
  JSL.L CODE_FL_86C7A5                      ; $86D335 |
  JSL.L CODE_FL_8CFF15                      ; $86D339 |
  JSL.L CODE_FL_85A9B7                      ; $86D33D |
  JSL.L CODE_FL_85A9EF                      ; $86D341 |
  LDA.W #$105A                              ; $86D345 |
  JSL.L CODE_FL_86CAEE                      ; $86D348 |
  LDA.W #$0080                              ; $86D34C |
  STA.B $2C,X                               ; $86D34F |
  JML.L CODE_FL_86C63A                      ; $86D351 |

CODE_86D355:
  JSL.L CODE_FL_8CFE8B                      ; $86D355 |
  CMP.W #$0050                              ; $86D359 |
  BCS CODE_86D361                           ; $86D35C |
  JMP.W CODE_JP_86D404                      ; $86D35E |

CODE_86D361:
  JSL.L CODE_FL_86C70D                      ; $86D361 |
  LDA.W #$3C6E                              ; $86D365 |
  STA.B $00,X                               ; $86D368 |
  STZ.B $1E,X                               ; $86D36A |
  STZ.B $20,X                               ; $86D36C |
  CLC                                       ; $86D36E |
  LDA.W $1C38                               ; $86D36F |
  AND.W #$0007                              ; $86D372 |
  ADC.W #$0001                              ; $86D375 |
  STA.B $3C,X                               ; $86D378 |
  INC.B $1A,X                               ; $86D37A |
  RTL                                       ; $86D37C |

CODE_86D37D:
  LDA.B $3A,X                               ; $86D37D |
  PHX                                       ; $86D37F |
  ASL A                                     ; $86D380 |
  TAX                                       ; $86D381 |
  LDA.L PTR16_86D38C,X                      ; $86D382 |
  PLX                                       ; $86D386 |
  STA.B $00                                 ; $86D387 |
  JMP.W ($0000)                             ; $86D389 |

PTR16_86D38C:
  dw CODE_86D392                            ; $86D38C |
  dw CODE_86D3C6                            ; $86D38E |
  dw CODE_86D3E5                            ; $86D390 |

CODE_86D392:
  JSL.L CODE_FL_86C444                      ; $86D392 |
  JSL.L CODE_FL_8CFE8B                      ; $86D396 |
  CMP.W #$0050                              ; $86D39A |
  BCC CODE_86D406                           ; $86D39D |
  LDA.B $20,X                               ; $86D39F |
  BNE CODE_86D3C5                           ; $86D3A1 |
  LDA.B $3C,X                               ; $86D3A3 |
  BEQ CODE_86D3B5                           ; $86D3A5 |
  LDA.W #$3C7A                              ; $86D3A7 |
  STA.B $00,X                               ; $86D3AA |
  LDA.W #$0008                              ; $86D3AC |
  STA.B $2C,X                               ; $86D3AF |
  INC.B $3A,X                               ; $86D3B1 |
  BRA CODE_86D3C5                           ; $86D3B3 |

CODE_86D3B5:
  LDA.W #$105A                              ; $86D3B5 |
  JSL.L CODE_FL_86CAEE                      ; $86D3B8 |
  LDA.W #$0080                              ; $86D3BC |
  STA.B $2C,X                               ; $86D3BF |
  STZ.B $26,X                               ; $86D3C1 |
  DEC.B $1A,X                               ; $86D3C3 |

CODE_86D3C5:
  RTL                                       ; $86D3C5 |

CODE_86D3C6:
  JSL.L CODE_FL_86C70D                      ; $86D3C6 |
  LDA.W #$0007                              ; $86D3CA |
  JSL.L push_sound_queue                    ; $86D3CD |
  LDA.W #$0200                              ; $86D3D1 |
  STA.B $2A,X                               ; $86D3D4 |
  LDA.W #$FF80                              ; $86D3D6 |
  JSL.L CODE_FL_8CFE29                      ; $86D3D9 |
  LDA.W #$3C82                              ; $86D3DD |
  STA.B $00,X                               ; $86D3E0 |
  INC.B $3A,X                               ; $86D3E2 |
  RTL                                       ; $86D3E4 |

CODE_86D3E5:
  JSL.L CODE_FL_85B291                      ; $86D3E5 |
  JSL.L CODE_FL_86C4F1                      ; $86D3E9 |
  JSL.L CODE_FL_85B273                      ; $86D3ED |
  BCC CODE_86D403                           ; $86D3F1 |
  DEC.B $3C,X                               ; $86D3F3 |
  LDA.W #$0040                              ; $86D3F5 |
  STA.B $4C,X                               ; $86D3F8 |
  LDA.W #$105B                              ; $86D3FA |
  JSL.L CODE_FL_86CAEE                      ; $86D3FD |
  STZ.B $3A,X                               ; $86D401 |

CODE_86D403:
  RTL                                       ; $86D403 |

CODE_JP_86D404:
  STZ.B $20,X                               ; $86D404 |

CODE_86D406:
  LDA.W #$0003                              ; $86D406 |
  STA.B $1A,X                               ; $86D409 |
  RTL                                       ; $86D40B |

CODE_86D40C:
  LDA.B $3A,X                               ; $86D40C |
  PHX                                       ; $86D40E |
  ASL A                                     ; $86D40F |
  TAX                                       ; $86D410 |
  LDA.L PTR16_86D41B,X                      ; $86D411 |
  PLX                                       ; $86D415 |
  STA.B $00                                 ; $86D416 |
  JMP.W ($0000)                             ; $86D418 |

PTR16_86D41B:
  dw CODE_86D421                            ; $86D41B |
  dw CODE_86D432                            ; $86D41D |
  dw CODE_86D455                            ; $86D41F |

CODE_86D421:
  LDA.B $20,X                               ; $86D421 |
  BNE CODE_86D431                           ; $86D423 |
  LDA.W #$3C9A                              ; $86D425 |
  STA.B $00,X                               ; $86D428 |
  LDA.W #$0008                              ; $86D42A |
  STA.B $2C,X                               ; $86D42D |
  INC.B $3A,X                               ; $86D42F |

CODE_86D431:
  RTL                                       ; $86D431 |

CODE_86D432:
  JSL.L CODE_FL_86C70D                      ; $86D432 |
  LDA.W #$0007                              ; $86D436 |
  JSL.L push_sound_queue                    ; $86D439 |
  LDA.W #$0200                              ; $86D43D |
  STA.B $2A,X                               ; $86D440 |
  JSL.L CODE_FL_86C4A5                      ; $86D442 |
  LDA.W #$0004                              ; $86D446 |
  JSL.L CODE_FL_85B3A9                      ; $86D449 |
  LDA.W #$3C9E                              ; $86D44D |
  STA.B $00,X                               ; $86D450 |
  INC.B $3A,X                               ; $86D452 |
  RTL                                       ; $86D454 |

CODE_86D455:
  JSL.L CODE_FL_85B291                      ; $86D455 |
  JSL.L CODE_FL_86C4F1                      ; $86D459 |
  JSL.L CODE_FL_85B273                      ; $86D45D |
  BCC CODE_86D471                           ; $86D461 |
  LDA.W #$0040                              ; $86D463 |
  STA.B $4C,X                               ; $86D466 |
  LDA.W #$105C                              ; $86D468 |
  JSL.L CODE_FL_86CAEE                      ; $86D46B |
  STZ.B $3A,X                               ; $86D46F |

CODE_86D471:
  RTL                                       ; $86D471 |

CODE_86D472:
  JSL.L CODE_FL_85A9BF                      ; $86D472 |
  JSL.L CODE_FL_85A9F7                      ; $86D476 |
  LDA.W #$3C92                              ; $86D47A |
  STA.B $00,X                               ; $86D47D |
  STZ.B $1E,X                               ; $86D47F |
  LDA.W #$8000                              ; $86D481 |
  JSL.L CODE_FL_85AA0F                      ; $86D484 |
  JSL.L CODE_FL_85A5A7                      ; $86D488 |
  JML.L CODE_JL_8CFEC2                      ; $86D48C |

CODE_86D490:
  JSL.L CODE_FL_8CFEF6                      ; $86D490 |
  BPL CODE_86D49E                           ; $86D494 |
  JSL.L CODE_FL_85A939                      ; $86D496 |
  JML.L CODE_FL_86CA2D                      ; $86D49A |

CODE_86D49E:
  RTL                                       ; $86D49E |

CODE_86D49F:
  JSL.L CODE_FL_85F7C9                      ; $86D49F |
  JSL.L CODE_FL_8CFD8F                      ; $86D4A3 |
  PHX                                       ; $86D4A7 |
  ASL A                                     ; $86D4A8 |
  TAX                                       ; $86D4A9 |
  LDA.L PTR16_86D4B4,X                      ; $86D4AA |
  PLX                                       ; $86D4AE |
  STA.B $00                                 ; $86D4AF |
  JMP.W ($0000)                             ; $86D4B1 |

PTR16_86D4B4:
  dw CODE_86D4BE                            ; $86D4B4 |
  dw CODE_86D4E9                            ; $86D4B6 |
  dw CODE_86D4FB                            ; $86D4B8 |
  dw CODE_86D546                            ; $86D4BA |
  dw CODE_86D555                            ; $86D4BC |

CODE_86D4BE:
  JSL.L CODE_FL_85A9B7                      ; $86D4BE |
  JSL.L CODE_FL_85A9EF                      ; $86D4C2 |
  LDA.W #$0200                              ; $86D4C6 |
  STA.B $2A,X                               ; $86D4C9 |
  LDA.W #$3CA8                              ; $86D4CB |
  STA.B $00,X                               ; $86D4CE |
  LDA.W #$01D8                              ; $86D4D0 |
  JSL.L CODE_FL_86C9C5                      ; $86D4D3 |
  BCS CODE_86D4E8                           ; $86D4D7 |
  TXA                                       ; $86D4D9 |
  STA.W $003A,Y                             ; $86D4DA |
  TYA                                       ; $86D4DD |
  STA.B $3A,X                               ; $86D4DE |
  JSL.L CODE_FL_86C7C4                      ; $86D4E0 |
  JML.L CODE_FL_86C63A                      ; $86D4E4 |

CODE_86D4E8:
  RTL                                       ; $86D4E8 |

CODE_86D4E9:
  JSL.L CODE_FL_83FD80                      ; $86D4E9 |
  LDA.B $2A,X                               ; $86D4ED |
  BNE CODE_86D4FA                           ; $86D4EF |
  LDA.W #$105F                              ; $86D4F1 |
  JSL.L CODE_FL_86CAEE                      ; $86D4F4 |
  INC.B $1A,X                               ; $86D4F8 |

CODE_86D4FA:
  RTL                                       ; $86D4FA |

CODE_86D4FB:
  LDA.B $20,X                               ; $86D4FB |
  BEQ CODE_86D53C                           ; $86D4FD |
  LDA.B $00,X                               ; $86D4FF |
  CMP.W #$3CB8                              ; $86D501 |
  BNE CODE_86D545                           ; $86D504 |
  LDA.B $20,X                               ; $86D506 |
  CMP.W #$0001                              ; $86D508 |
  BNE CODE_86D545                           ; $86D50B |
  JSL.L CODE_FL_86C444                      ; $86D50D |
  LDA.W #$0006                              ; $86D511 |
  JSL.L CODE_FL_85B3A9                      ; $86D514 |
  STZ.B $08                                 ; $86D518 |
  LDA.W #$FFF0                              ; $86D51A |
  STA.B $0A                                 ; $86D51D |
  LDA.B $28,X                               ; $86D51F |
  STA.B $0E                                 ; $86D521 |
  LDA.B $26,X                               ; $86D523 |
  STZ.B $26,X                               ; $86D525 |
  STZ.B $28,X                               ; $86D527 |
  JSL.L CODE_FL_85AB39                      ; $86D529 |
  BCS CODE_86D538                           ; $86D52D |
  LDA.W #$002C                              ; $86D52F |
  JSL.L CODE_FL_8089BD                      ; $86D532 |
  BRA CODE_86D545                           ; $86D536 |

CODE_86D538:
  INC.B $20,X                               ; $86D538 |
  BRA CODE_86D545                           ; $86D53A |

CODE_86D53C:
  LDA.W #$3CA8                              ; $86D53C |
  STA.B $00,X                               ; $86D53F |
  STZ.B $1E,X                               ; $86D541 |
  INC.B $1A,X                               ; $86D543 |

CODE_86D545:
  RTL                                       ; $86D545 |

CODE_86D546:
  JSL.L CODE_FL_83FD80                      ; $86D546 |
  JSL.L CODE_FL_85B273                      ; $86D54A |
  BCC CODE_86D554                           ; $86D54E |
  JML.L CODE_FL_86CA36                      ; $86D550 |

CODE_86D554:
  RTL                                       ; $86D554 |

CODE_86D555:
  LDY.B $44,X                               ; $86D555 |
  LDA.W #$0001                              ; $86D557 |
  STA.W $003A,Y                             ; $86D55A |
  LDA.W #$0000                              ; $86D55D |
  JSL.L CODE_FL_85AA0F                      ; $86D560 |
  JSL.L CODE_FL_85A939                      ; $86D564 |
  JML.L CODE_FL_86CA2D                      ; $86D568 |

CODE_86D56C:
  JSL.L CODE_FL_8CFD8F                      ; $86D56C |
  PHX                                       ; $86D570 |
  ASL A                                     ; $86D571 |
  TAX                                       ; $86D572 |
  LDA.L PTR16_86D57D,X                      ; $86D573 |
  PLX                                       ; $86D577 |
  STA.B $00                                 ; $86D578 |
  JMP.W ($0000)                             ; $86D57A |

PTR16_86D57D:
  dw CODE_86D587                            ; $86D57D |
  dw CODE_86D593                            ; $86D57F |
  dw CODE_86D5BD                            ; $86D581 |
  dw CODE_86D5FC                            ; $86D583 |
  dw CODE_86D615                            ; $86D585 |

CODE_86D587:
  JSL.L CODE_FL_86C7A5                      ; $86D587 |
  JSL.L CODE_FL_86C444                      ; $86D58B |
  JML.L CODE_FL_86C63A                      ; $86D58F |

CODE_86D593:
  JSL.L CODE_FL_86C70D                      ; $86D593 |
  JSL.L CODE_FL_86C4A5                      ; $86D597 |
  LDA.B $4E,X                               ; $86D59B |
  BNE CODE_86D5AA                           ; $86D59D |
  LDA.B ($48,X)                             ; $86D59F |
  TAY                                       ; $86D5A1 |
  SEC                                       ; $86D5A2 |
  LDA.W $000D,Y                             ; $86D5A3 |
  SBC.B $0D,X                               ; $86D5A6 |
  BMI CODE_86D5BC                           ; $86D5A8 |

CODE_86D5AA:
  JSL.L CODE_FL_8CFE8B                      ; $86D5AA |
  CMP.W #$0080                              ; $86D5AE |
  BCS CODE_86D5BC                           ; $86D5B1 |
  LDA.W #$105D                              ; $86D5B3 |
  JSL.L CODE_FL_86CAEE                      ; $86D5B6 |
  INC.B $1A,X                               ; $86D5BA |

CODE_86D5BC:
  RTL                                       ; $86D5BC |

CODE_86D5BD:
  LDA.B $20,X                               ; $86D5BD |
  BNE CODE_86D5CC                           ; $86D5BF |
  LDA.W #$3CCA                              ; $86D5C1 |
  STA.B $00,X                               ; $86D5C4 |
  STZ.B $1E,X                               ; $86D5C6 |
  INC.B $1A,X                               ; $86D5C8 |
  BRA CODE_86D5FB                           ; $86D5CA |

CODE_86D5CC:
  LDA.B $00,X                               ; $86D5CC |
  CMP.W #$3CCE                              ; $86D5CE |
  BNE CODE_86D5FB                           ; $86D5D1 |
  LDA.B $20,X                               ; $86D5D3 |
  CMP.W #$0001                              ; $86D5D5 |
  BNE CODE_86D5FB                           ; $86D5D8 |
  LDA.W #$01D6                              ; $86D5DA |
  JSL.L CODE_FL_86C9A7                      ; $86D5DD |
  BCS CODE_86D5F9                           ; $86D5E1 |
  JSL.L CODE_FL_86C7C4                      ; $86D5E3 |
  JSL.L CODE_FL_85AAB6                      ; $86D5E7 |
  LDA.B $48,X                               ; $86D5EB |
  STA.W $0048,Y                             ; $86D5ED |
  LDA.W #$00B0                              ; $86D5F0 |
  JSL.L CODE_FL_8089BD                      ; $86D5F3 |
  BRA CODE_86D5FB                           ; $86D5F7 |

CODE_86D5F9:
  INC.B $20,X                               ; $86D5F9 |

CODE_86D5FB:
  RTL                                       ; $86D5FB |

CODE_86D5FC:
  LDA.B $3A,X                               ; $86D5FC |
  BNE CODE_86D611                           ; $86D5FE |
  LDY.B $44,X                               ; $86D600 |
  LDA.W $0044,Y                             ; $86D602 |
  BNE CODE_86D610                           ; $86D605 |
  LDA.W #$105E                              ; $86D607 |
  JSL.L CODE_FL_86CAEE                      ; $86D60A |
  INC.B $1A,X                               ; $86D60E |

CODE_86D610:
  RTL                                       ; $86D610 |

CODE_86D611:
  JML.L CODE_FL_86CA36                      ; $86D611 |

CODE_86D615:
  LDA.B $20,X                               ; $86D615 |
  BNE CODE_86D623                           ; $86D617 |
  LDA.W #$0080                              ; $86D619 |
  STA.B $2C,X                               ; $86D61C |
  LDA.W #$0001                              ; $86D61E |
  STA.B $1A,X                               ; $86D621 |

CODE_86D623:
  RTL                                       ; $86D623 |

CODE_86D624:
  JSL.L CODE_FL_8CFD8F                      ; $86D624 |
  PHX                                       ; $86D628 |
  ASL A                                     ; $86D629 |
  TAX                                       ; $86D62A |
  LDA.L PTR16_86D635,X                      ; $86D62B |
  PLX                                       ; $86D62F |
  STA.B $00                                 ; $86D630 |
  JMP.W ($0000)                             ; $86D632 |

PTR16_86D635:
  dw CODE_86D639                            ; $86D635 |
  dw CODE_86D643                            ; $86D637 |

CODE_86D639:
  LDA.W #$1060                              ; $86D639 |
  JSL.L CODE_FL_86CAEE                      ; $86D63C |
  INC.B $1A,X                               ; $86D640 |
  RTL                                       ; $86D642 |

CODE_86D643:
  LDY.B $3A,X                               ; $86D643 |
  LDA.W $003A,Y                             ; $86D645 |
  BEQ CODE_86D650                           ; $86D648 |
  LDA.W $0011,Y                             ; $86D64A |
  STA.B $11,X                               ; $86D64D |
  RTL                                       ; $86D64F |

CODE_86D650:
  JML.L CODE_FL_86CA36                      ; $86D650 |

CODE_86D654:
  JSL.L CODE_FL_85F7C9                      ; $86D654 |
  JSL.L CODE_FL_8CFD8F                      ; $86D658 |
  PHX                                       ; $86D65C |
  ASL A                                     ; $86D65D |
  TAX                                       ; $86D65E |
  LDA.L PTR16_86D669,X                      ; $86D65F |
  PLX                                       ; $86D663 |
  STA.B $00                                 ; $86D664 |
  JMP.W ($0000)                             ; $86D666 |

PTR16_86D669:
  dw CODE_86D673                            ; $86D669 |
  dw CODE_86D693                            ; $86D66B |
  dw CODE_86D704                            ; $86D66D |
  dw CODE_86D755                            ; $86D66F |
  dw CODE_86D778                            ; $86D671 |

CODE_86D673:
  JSL.L CODE_FL_86C7A5                      ; $86D673 |
  JSL.L CODE_FL_8CFF15                      ; $86D677 |
  JSL.L CODE_FL_85A9EF                      ; $86D67B |
  JSL.L CODE_FL_85A9B7                      ; $86D67F |
  LDA.W #$1061                              ; $86D683 |
  JSL.L CODE_FL_86CAEE                      ; $86D686 |
  LDA.W #$0020                              ; $86D68A |
  STA.B $11,X                               ; $86D68D |
  JML.L CODE_FL_86C63A                      ; $86D68F |

CODE_86D693:
  LDA.B $3A,X                               ; $86D693 |
  PHX                                       ; $86D695 |
  ASL A                                     ; $86D696 |
  TAX                                       ; $86D697 |
  LDA.L PTR16_86D6A2,X                      ; $86D698 |
  PLX                                       ; $86D69C |
  STA.B $00                                 ; $86D69D |
  JMP.W ($0000)                             ; $86D69F |

PTR16_86D6A2:
  dw CODE_86D6A6                            ; $86D6A2 |
  dw CODE_86D6B3                            ; $86D6A4 |

CODE_86D6A6:
  LDA.W #$0040                              ; $86D6A6 |
  STA.B $2A,X                               ; $86D6A9 |
  LDA.W #$0004                              ; $86D6AB |
  STA.B $4C,X                               ; $86D6AE |
  INC.B $3A,X                               ; $86D6B0 |
  RTL                                       ; $86D6B2 |

CODE_86D6B3:
  LDA.B $2C,X                               ; $86D6B3 |
  BNE CODE_86D6EF                           ; $86D6B5 |
  JSL.L CODE_FL_86C444                      ; $86D6B7 |
  LDA.B ($48,X)                             ; $86D6BB |
  TAY                                       ; $86D6BD |
  SEC                                       ; $86D6BE |
  LDA.W $000D,Y                             ; $86D6BF |
  SBC.B $0D,X                               ; $86D6C2 |
  BMI CODE_86D6EF                           ; $86D6C4 |
  JSL.L CODE_FL_86C55C                      ; $86D6C6 |
  BPL CODE_86D6D0                           ; $86D6CA |
  EOR.W #$FFFF                              ; $86D6CC |
  INC A                                     ; $86D6CF |

CODE_86D6D0:
  CMP.W #$0060                              ; $86D6D0 |
  BCS CODE_86D6EF                           ; $86D6D3 |
  LDA.W #$1062                              ; $86D6D5 |
  JSL.L CODE_FL_86CAEE                      ; $86D6D8 |
  STZ.B $2A,X                               ; $86D6DC |
  LDA.W #$0020                              ; $86D6DE |
  STA.B $4C,X                               ; $86D6E1 |
  LDA.W #$0004                              ; $86D6E3 |
  JSL.L CODE_FL_85B3A9                      ; $86D6E6 |
  STZ.B $3A,X                               ; $86D6EA |
  INC.B $1A,X                               ; $86D6EC |
  RTL                                       ; $86D6EE |

CODE_86D6EF:
  JSL.L CODE_FL_83FD80                      ; $86D6EF |
  LDA.B $04,X                               ; $86D6F3 |
  ORA.W #$1898                              ; $86D6F5 |
  STA.B $04,X                               ; $86D6F8 |
  LDA.B $11,X                               ; $86D6FA |
  CMP.W #$0020                              ; $86D6FC |
  BCS CODE_86D703                           ; $86D6FF |
  DEC.B $3A,X                               ; $86D701 |

CODE_86D703:
  RTL                                       ; $86D703 |

CODE_86D704:
  LDA.B $3C,X                               ; $86D704 |
  PHX                                       ; $86D706 |
  ASL A                                     ; $86D707 |
  TAX                                       ; $86D708 |
  LDA.L PTR16_86D713,X                      ; $86D709 |
  PLX                                       ; $86D70D |
  STA.B $00                                 ; $86D70E |
  JMP.W ($0000)                             ; $86D710 |

PTR16_86D713:
  dw CODE_86D717                            ; $86D713 |
  dw CODE_86D73A                            ; $86D715 |

CODE_86D717:
  JSL.L CODE_FL_83FD80                      ; $86D717 |
  LDA.B $04,X                               ; $86D71B |
  ORA.W #$1898                              ; $86D71D |
  STA.B $04,X                               ; $86D720 |
  LDA.B $11,X                               ; $86D722 |
  CMP.W #$0010                              ; $86D724 |
  BCS CODE_86D739                           ; $86D727 |
  STZ.B $2A,X                               ; $86D729 |
  STZ.B $4C,X                               ; $86D72B |
  LDA.W #$0010                              ; $86D72D |
  STA.B $11,X                               ; $86D730 |
  LDA.W #$0010                              ; $86D732 |
  STA.B $2C,X                               ; $86D735 |
  INC.B $3C,X                               ; $86D737 |

CODE_86D739:
  RTL                                       ; $86D739 |

CODE_86D73A:
  JSL.L CODE_FL_86C70D                      ; $86D73A |
  LDA.W #$1061                              ; $86D73E |
  JSL.L CODE_FL_86CAEE                      ; $86D741 |
  STZ.B $2A,X                               ; $86D745 |
  LDA.W #$FFF0                              ; $86D747 |
  STA.B $4C,X                               ; $86D74A |
  JSL.L CODE_FL_86CB7A                      ; $86D74C |
  STZ.B $3C,X                               ; $86D750 |
  INC.B $1A,X                               ; $86D752 |
  RTL                                       ; $86D754 |

CODE_86D755:
  JSL.L CODE_FL_83FD80                      ; $86D755 |
  LDA.B $04,X                               ; $86D759 |
  ORA.W #$1898                              ; $86D75B |
  STA.B $04,X                               ; $86D75E |
  LDA.B $11,X                               ; $86D760 |
  CMP.W #$0020                              ; $86D762 |
  BCC CODE_86D777                           ; $86D765 |
  STZ.B $26,X                               ; $86D767 |
  STZ.B $28,X                               ; $86D769 |
  STZ.B $2A,X                               ; $86D76B |
  LDA.W #$0040                              ; $86D76D |
  STA.B $2C,X                               ; $86D770 |
  LDA.W #$0001                              ; $86D772 |
  STA.B $1A,X                               ; $86D775 |

CODE_86D777:
  RTL                                       ; $86D777 |

CODE_86D778:
  LDA.W #$8000                              ; $86D778 |
  JSL.L CODE_FL_85AA0F                      ; $86D77B |
  JSL.L CODE_FL_85A939                      ; $86D77F |
  JML.L CODE_FL_86CA2D                      ; $86D783 |

CODE_86D787:
  JSL.L CODE_FL_8CFD8F                      ; $86D787 |
  PHX                                       ; $86D78B |
  ASL A                                     ; $86D78C |
  TAX                                       ; $86D78D |
  LDA.L PTR16_86D798,X                      ; $86D78E |
  PLX                                       ; $86D792 |
  STA.B $00                                 ; $86D793 |
  JMP.W ($0000)                             ; $86D795 |

PTR16_86D798:
  dw CODE_86D7AC                            ; $86D798 |
  dw CODE_86D7D9                            ; $86D79A |
  dw CODE_86D838                            ; $86D79C |
  dw CODE_86D880                            ; $86D79E |
  dw CODE_86D906                            ; $86D7A0 |
  dw CODE_86D938                            ; $86D7A2 |
  dw CODE_86D9C2                            ; $86D7A4 |
  dw CODE_86DA42                            ; $86D7A6 |
  dw CODE_86DA5A                            ; $86D7A8 |
  dw CODE_86DA8C                            ; $86D7AA |

CODE_86D7AC:
  JSL.L CODE_FL_86C7A5                      ; $86D7AC |
  JSL.L CODE_FL_85AC48                      ; $86D7B0 |
  LDA.W #$1076                              ; $86D7B4 |
  JSL.L CODE_FL_86CAEE                      ; $86D7B7 |
  LDA.B $04,X                               ; $86D7BB |
  ORA.W #$1898                              ; $86D7BD |
  STA.B $04,X                               ; $86D7C0 |
  STZ.W $1C92                               ; $86D7C2 |
  LDA.W #$0001                              ; $86D7C5 |
  STA.W $1C94                               ; $86D7C8 |
  LDA.W #$0040                              ; $86D7CB |
  STA.B $11,X                               ; $86D7CE |
  LDA.W #$0040                              ; $86D7D0 |
  STA.B $2C,X                               ; $86D7D3 |
  JML.L CODE_FL_86C63A                      ; $86D7D5 |

CODE_86D7D9:
  LDA.W $1C8E                               ; $86D7D9 |
  BEQ CODE_86D7FF                           ; $86D7DC |
  LDA.W #$3D6C                              ; $86D7DE |
  STA.B $00,X                               ; $86D7E1 |
  LDA.W $1C90                               ; $86D7E3 |
  BEQ CODE_86D7EF                           ; $86D7E6 |
  LDA.W #$FE80                              ; $86D7E8 |
  STA.B $26,X                               ; $86D7EB |
  BRA CODE_86D7F4                           ; $86D7ED |

CODE_86D7EF:
  LDA.W #$0180                              ; $86D7EF |
  STA.B $26,X                               ; $86D7F2 |

CODE_86D7F4:
  LDA.W #$0200                              ; $86D7F4 |
  STA.B $2A,X                               ; $86D7F7 |
  STZ.W $1C94                               ; $86D7F9 |
  INC.B $1A,X                               ; $86D7FC |
  RTL                                       ; $86D7FE |

CODE_86D7FF:
  LDA.B $40,X                               ; $86D7FF |
  PHX                                       ; $86D801 |
  ASL A                                     ; $86D802 |
  TAX                                       ; $86D803 |
  LDA.L PTR16_86D80E,X                      ; $86D804 |
  PLX                                       ; $86D808 |
  STA.B $00                                 ; $86D809 |
  JMP.W ($0000)                             ; $86D80B |

PTR16_86D80E:
  dw CODE_86D812                            ; $86D80E |
  dw CODE_86D825                            ; $86D810 |

CODE_86D812:
  JSL.L CODE_FL_86C70D                      ; $86D812 |
  LDA.W #$3D2A                              ; $86D816 |
  STA.B $00,X                               ; $86D819 |
  STZ.B $1E,X                               ; $86D81B |
  LDA.W #$0080                              ; $86D81D |
  STA.B $2C,X                               ; $86D820 |
  INC.B $40,X                               ; $86D822 |
  RTL                                       ; $86D824 |

CODE_86D825:
  JSL.L CODE_FL_86C70D                      ; $86D825 |
  LDA.W #$1076                              ; $86D829 |
  JSL.L CODE_FL_86CAEE                      ; $86D82C |
  LDA.W #$0040                              ; $86D830 |
  STA.B $2C,X                               ; $86D833 |
  STZ.B $40,X                               ; $86D835 |
  RTL                                       ; $86D837 |

CODE_86D838:
  LDA.B $3A,X                               ; $86D838 |
  PHX                                       ; $86D83A |
  ASL A                                     ; $86D83B |
  TAX                                       ; $86D83C |
  LDA.L PTR16_86D847,X                      ; $86D83D |
  PLX                                       ; $86D841 |
  STA.B $00                                 ; $86D842 |
  JMP.W ($0000)                             ; $86D844 |

PTR16_86D847:
  dw CODE_86D84B                            ; $86D847 |
  dw CODE_86D866                            ; $86D849 |

CODE_86D84B:
  JSL.L CODE_FL_8CFEF6                      ; $86D84B |
  BPL CODE_86D865                           ; $86D84F |
  STZ.B $26,X                               ; $86D851 |
  JSL.L CODE_FL_8CFF15                      ; $86D853 |
  LDA.B $04,X                               ; $86D857 |
  AND.W #$F7F7                              ; $86D859 |
  STA.B $04,X                               ; $86D85C |
  LDA.W #$0020                              ; $86D85E |
  STA.B $2C,X                               ; $86D861 |
  INC.B $3A,X                               ; $86D863 |

CODE_86D865:
  RTL                                       ; $86D865 |

CODE_86D866:
  JSL.L CODE_FL_86C70D                      ; $86D866 |
  LDA.W #$1074                              ; $86D86A |
  JSL.L CODE_FL_86CAEE                      ; $86D86D |
  LDA.W #$3D5A                              ; $86D871 |
  STA.B $00,X                               ; $86D874 |
  LDA.W #$0002                              ; $86D876 |
  STA.B $3E,X                               ; $86D879 |
  STZ.B $3A,X                               ; $86D87B |
  INC.B $1A,X                               ; $86D87D |
  RTL                                       ; $86D87F |

CODE_86D880:
  LDA.B $3C,X                               ; $86D880 |
  PHX                                       ; $86D882 |
  ASL A                                     ; $86D883 |
  TAX                                       ; $86D884 |
  LDA.L PTR16_86D88F,X                      ; $86D885 |
  PLX                                       ; $86D889 |
  STA.B $00                                 ; $86D88A |
  JMP.W ($0000)                             ; $86D88C |

PTR16_86D88F:
  dw CODE_86D893                            ; $86D88F |
  dw CODE_86D8CF                            ; $86D891 |

CODE_86D893:
  LDA.B $20,X                               ; $86D893 |
  BNE CODE_86D8CE                           ; $86D895 |
  LDA.B $09,X                               ; $86D897 |
  CMP.W #$0090                              ; $86D899 |
  BCS CODE_86D8A3                           ; $86D89C |
  LDA.W #$001A                              ; $86D89E |
  BRA CODE_86D8A6                           ; $86D8A1 |

CODE_86D8A3:
  LDA.W #$0016                              ; $86D8A3 |

CODE_86D8A6:
  LDY.W #$0008                              ; $86D8A6 |
  JSL.L CODE_FL_8AB4B3                      ; $86D8A9 |
  LDA.B $00                                 ; $86D8AD |
  STA.B $26,X                               ; $86D8AF |
  LDA.B $02                                 ; $86D8B1 |
  STA.B $28,X                               ; $86D8B3 |
  JSL.L CODE_FL_86C4F1                      ; $86D8B5 |
  LDA.W #$0400                              ; $86D8B9 |
  STA.B $2A,X                               ; $86D8BC |
  LDA.W #$0040                              ; $86D8BE |
  STA.B $4C,X                               ; $86D8C1 |
  JSL.L CODE_FL_85A9B7                      ; $86D8C3 |
  LDA.W #$3D66                              ; $86D8C7 |
  STA.B $00,X                               ; $86D8CA |
  INC.B $3C,X                               ; $86D8CC |

CODE_86D8CE:
  RTL                                       ; $86D8CE |

CODE_86D8CF:
  JSL.L CODE_FL_8CFEF6                      ; $86D8CF |
  BPL CODE_86D905                           ; $86D8D3 |
  LDA.W #$0007                              ; $86D8D5 |
  JSL.L push_sound_queue                    ; $86D8D8 |
  STZ.B $26,X                               ; $86D8DC |
  STZ.B $28,X                               ; $86D8DE |
  STZ.B $3C,X                               ; $86D8E0 |
  LDA.W #$1075                              ; $86D8E2 |
  JSL.L CODE_FL_86CAEE                      ; $86D8E5 |
  LDA.W #$3D60                              ; $86D8E9 |
  STA.B $00,X                               ; $86D8EC |
  DEC.B $3E,X                               ; $86D8EE |
  BNE CODE_86D905                           ; $86D8F0 |
  LDA.W #$1076                              ; $86D8F2 |
  JSL.L CODE_FL_86CAEE                      ; $86D8F5 |
  LDA.W #$3D60                              ; $86D8F9 |
  STA.B $00,X                               ; $86D8FC |
  LDA.W #$0040                              ; $86D8FE |
  STA.B $2C,X                               ; $86D901 |
  INC.B $1A,X                               ; $86D903 |

CODE_86D905:
  RTL                                       ; $86D905 |

CODE_86D906:
  JSL.L CODE_FL_86C70D                      ; $86D906 |
  LDA.W $1C38                               ; $86D90A |
  LDY.W #$0003                              ; $86D90D |
  JSL.L CODE_FL_808E65                      ; $86D910 |
  STY.W $1C92                               ; $86D914 |
  TYA                                       ; $86D917 |
  ASL A                                     ; $86D918 |
  TAY                                       ; $86D919 |
  PHB                                       ; $86D91A |
  PHK                                       ; $86D91B |
  PLB                                       ; $86D91C |
  LDA.W LOOSE_OP_00D932,Y                   ; $86D91D |
  PLB                                       ; $86D920 |
  STA.B $3E,X                               ; $86D921 |
  LDA.W #$1074                              ; $86D923 |
  JSL.L CODE_FL_86CAEE                      ; $86D926 |
  LDA.W #$3D5A                              ; $86D92A |
  STA.B $00,X                               ; $86D92D |
  INC.B $1A,X                               ; $86D92F |
  RTL                                       ; $86D931 |

  db $02,$00,$04,$00,$04,$00                ; $86D932 |

CODE_86D938:
  LDA.B $3C,X                               ; $86D938 |
  PHX                                       ; $86D93A |
  ASL A                                     ; $86D93B |
  TAX                                       ; $86D93C |
  LDA.L PTR16_86D947,X                      ; $86D93D |
  PLX                                       ; $86D941 |
  STA.B $00                                 ; $86D942 |
  JMP.W ($0000)                             ; $86D944 |

PTR16_86D947:
  dw CODE_86D94B                            ; $86D947 |
  dw CODE_86D980                            ; $86D949 |

CODE_86D94B:
  LDA.B $20,X                               ; $86D94B |
  BNE CODE_86D97F                           ; $86D94D |
  LDA.W $1C92                               ; $86D94F |
  ASL A                                     ; $86D952 |
  TAY                                       ; $86D953 |
  PHB                                       ; $86D954 |
  PHK                                       ; $86D955 |
  PLB                                       ; $86D956 |
  LDA.W LOOSE_OP_00D9BC,Y                   ; $86D957 |
  PLB                                       ; $86D95A |
  LDY.W #$0004                              ; $86D95B |
  JSL.L CODE_FL_8AB4B3                      ; $86D95E |
  LDA.B $00                                 ; $86D962 |
  STA.B $26,X                               ; $86D964 |
  LDA.B $02                                 ; $86D966 |
  STA.B $28,X                               ; $86D968 |
  JSL.L CODE_FL_86C4F1                      ; $86D96A |
  LDA.W #$0400                              ; $86D96E |
  STA.B $2A,X                               ; $86D971 |
  LDA.W #$0040                              ; $86D973 |
  STA.B $4C,X                               ; $86D976 |
  LDA.W #$3D66                              ; $86D978 |
  STA.B $00,X                               ; $86D97B |
  INC.B $3C,X                               ; $86D97D |

CODE_86D97F:
  RTL                                       ; $86D97F |

CODE_86D980:
  JSL.L CODE_FL_8CFEF6                      ; $86D980 |
  BPL CODE_86D9BB                           ; $86D984 |
  LDA.W #$0007                              ; $86D986 |
  JSL.L push_sound_queue                    ; $86D989 |
  STZ.B $26,X                               ; $86D98D |
  STZ.B $28,X                               ; $86D98F |
  STZ.B $3C,X                               ; $86D991 |
  LDA.W #$1075                              ; $86D993 |
  JSL.L CODE_FL_86CAEE                      ; $86D996 |
  LDA.W #$3D60                              ; $86D99A |
  STA.B $00,X                               ; $86D99D |
  DEC.B $3E,X                               ; $86D99F |
  BNE CODE_86D9BB                           ; $86D9A1 |
  LDA.W #$3D2A                              ; $86D9A3 |
  STA.B $00,X                               ; $86D9A6 |
  STZ.B $1E,X                               ; $86D9A8 |
  SEP #$20                                  ; $86D9AA |
  STZ.B $14,X                               ; $86D9AC |
  REP #$20                                  ; $86D9AE |
  JSL.L CODE_FL_85A9BF                      ; $86D9B0 |
  LDA.W #$0100                              ; $86D9B4 |
  STA.B $2C,X                               ; $86D9B7 |
  INC.B $1A,X                               ; $86D9B9 |

CODE_86D9BB:
  RTL                                       ; $86D9BB |

  db $08,$00,$04,$00,$0C,$00                ; $86D9BC |

CODE_86D9C2:
  LDA.B $3A,X                               ; $86D9C2 |
  PHX                                       ; $86D9C4 |
  ASL A                                     ; $86D9C5 |
  TAX                                       ; $86D9C6 |
  LDA.L PTR16_86D9D1,X                      ; $86D9C7 |
  PLX                                       ; $86D9CB |
  STA.B $00                                 ; $86D9CC |
  JMP.W ($0000)                             ; $86D9CE |

PTR16_86D9D1:
  dw CODE_86D9D7                            ; $86D9D1 |
  dw CODE_86DA06                            ; $86D9D3 |
  dw CODE_86DA19                            ; $86D9D5 |

CODE_86D9D7:
  JSL.L CODE_FL_86C70D                      ; $86D9D7 |
  LDA.W #$0040                              ; $86D9DB |
  STA.B $11,X                               ; $86D9DE |
  SEC                                       ; $86D9E0 |
  LDA.W #$00C0                              ; $86D9E1 |
  SBC.W $1672                               ; $86D9E4 |
  STA.B $0D,X                               ; $86D9E7 |
  LDA.W $1C92                               ; $86D9E9 |
  ASL A                                     ; $86D9EC |
  TAY                                       ; $86D9ED |
  PHB                                       ; $86D9EE |
  PHK                                       ; $86D9EF |
  PLB                                       ; $86D9F0 |
  LDA.W LOOSE_OP_00DA3C,Y                   ; $86D9F1 |
  PLB                                       ; $86D9F4 |
  STA.B $09,X                               ; $86D9F5 |
  LDA.B $04,X                               ; $86D9F7 |
  ORA.W #$1898                              ; $86D9F9 |
  STA.B $04,X                               ; $86D9FC |
  LDA.W #$0010                              ; $86D9FE |
  STA.B $2C,X                               ; $86DA01 |
  INC.B $3A,X                               ; $86DA03 |
  RTL                                       ; $86DA05 |

CODE_86DA06:
  JSL.L CODE_FL_86C70D                      ; $86DA06 |
  LDA.W #$1076                              ; $86DA0A |
  JSL.L CODE_FL_86CAEE                      ; $86DA0D |
  LDA.W #$0080                              ; $86DA11 |
  STA.B $2C,X                               ; $86DA14 |
  INC.B $3A,X                               ; $86DA16 |
  RTL                                       ; $86DA18 |

CODE_86DA19:
  JSL.L CODE_FL_86C70D                      ; $86DA19 |
  LDA.W #$0080                              ; $86DA1D |
  STA.B $2C,X                               ; $86DA20 |
  LDA.W #$3D2A                              ; $86DA22 |
  STA.B $00,X                               ; $86DA25 |
  STZ.B $1E,X                               ; $86DA27 |
  INC.W $1C94                               ; $86DA29 |
  STZ.W $1C8E                               ; $86DA2C |
  STZ.W $1C90                               ; $86DA2F |
  STZ.B $3A,X                               ; $86DA32 |
  LDA.W #$0001                              ; $86DA34 |
  STA.B $40,X                               ; $86DA37 |
  STA.B $1A,X                               ; $86DA39 |
  RTL                                       ; $86DA3B |

  db $90,$00,$F0,$00,$30,$00                ; $86DA3C |

CODE_86DA42:
  STZ.B $1E,X                               ; $86DA42 |
  LDA.W #$3D42                              ; $86DA44 |
  STA.B $00,X                               ; $86DA47 |
  JSL.L CODE_FL_85A5A7                      ; $86DA49 |
  JSL.L CODE_FL_85A9BF                      ; $86DA4D |
  LDA.W #$0080                              ; $86DA51 |
  STA.B $4C,X                               ; $86DA54 |
  JML.L CODE_JL_8CFEC2                      ; $86DA56 |

CODE_86DA5A:
  JSL.L CODE_FL_85B291                      ; $86DA5A |
  JSL.L CODE_FL_85B273                      ; $86DA5E |
  BCC CODE_86DA8B                           ; $86DA62 |
  STZ.B $26,X                               ; $86DA64 |
  STZ.B $28,X                               ; $86DA66 |
  LDA.W #$1077                              ; $86DA68 |
  JSL.L CODE_FL_86CAEE                      ; $86DA6B |
  LDA.W #$0217                              ; $86DA6F |
  JSL.L CODE_FL_86C9C5                      ; $86DA72 |
  LDA.W #$0080                              ; $86DA76 |
  STA.B $2C,X                               ; $86DA79 |
  STA.W $002C,Y                             ; $86DA7B |
  JSL.L CODE_FL_86C7C4                      ; $86DA7E |
  LDA.W #$0114                              ; $86DA82 |
  JSL.L CODE_FL_8089BD                      ; $86DA85 |
  INC.B $1A,X                               ; $86DA89 |

CODE_86DA8B:
  RTL                                       ; $86DA8B |

CODE_86DA8C:
  LDA.B $46,X                               ; $86DA8C |
  PHX                                       ; $86DA8E |
  ASL A                                     ; $86DA8F |
  TAX                                       ; $86DA90 |
  LDA.L PTR16_86DA9B,X                      ; $86DA91 |
  PLX                                       ; $86DA95 |
  STA.B $00                                 ; $86DA96 |
  JMP.W ($0000)                             ; $86DA98 |

PTR16_86DA9B:
  dw CODE_86DAA1                            ; $86DA9B |
  dw CODE_86DAC1                            ; $86DA9D |
  dw CODE_86DAF4                            ; $86DA9F |

CODE_86DAA1:
  JSL.L CODE_FL_86C70D                      ; $86DAA1 |
  LDA.W #$1074                              ; $86DAA5 |
  JSL.L CODE_FL_86CAEE                      ; $86DAA8 |
  LDA.W #$3D5A                              ; $86DAAC |
  STA.B $00,X                               ; $86DAAF |
  LDA.W #$01B8                              ; $86DAB1 |
  JSL.L CODE_FL_86C9A7                      ; $86DAB4 |
  LDA.W #$0006                              ; $86DAB8 |
  STA.W $004E,Y                             ; $86DABB |
  INC.B $46,X                               ; $86DABE |
  RTL                                       ; $86DAC0 |

CODE_86DAC1:
  LDA.B $20,X                               ; $86DAC1 |
  BNE CODE_86DAF3                           ; $86DAC3 |
  LDA.W #$0008                              ; $86DAC5 |
  JSL.L CODE_FL_85B3A9                      ; $86DAC8 |
  JSL.L CODE_FL_86CB71                      ; $86DACC |
  JSL.L CODE_FL_86CB7A                      ; $86DAD0 |
  JSL.L CODE_FL_86C4F1                      ; $86DAD4 |
  LDA.W #$0400                              ; $86DAD8 |
  STA.B $2A,X                               ; $86DADB |
  LDA.W #$0040                              ; $86DADD |
  STA.B $4C,X                               ; $86DAE0 |
  LDA.B $04,X                               ; $86DAE2 |
  AND.W #$6767                              ; $86DAE4 |
  ORA.W #$1090                              ; $86DAE7 |
  STA.B $04,X                               ; $86DAEA |
  LDA.W #$3D66                              ; $86DAEC |
  STA.B $00,X                               ; $86DAEF |
  INC.B $46,X                               ; $86DAF1 |

CODE_86DAF3:
  RTL                                       ; $86DAF3 |

CODE_86DAF4:
  JSL.L CODE_FL_8CFEF6                      ; $86DAF4 |
  BPL CODE_86DB16                           ; $86DAF8 |
  LDA.W #$0007                              ; $86DAFA |
  JSL.L push_sound_queue                    ; $86DAFD |
  STZ.B $26,X                               ; $86DB01 |
  STZ.B $28,X                               ; $86DB03 |
  LDA.W #$1075                              ; $86DB05 |
  JSL.L CODE_FL_86CAEE                      ; $86DB08 |
  LDA.W #$3D60                              ; $86DB0C |
  STA.B $00,X                               ; $86DB0F |
  LDA.W #$0001                              ; $86DB11 |
  STA.B $46,X                               ; $86DB14 |

CODE_86DB16:
  RTL                                       ; $86DB16 |

CODE_86DB17:
  JSL.L CODE_FL_86C412                      ; $86DB17 |
  PHX                                       ; $86DB1B |
  ASL A                                     ; $86DB1C |
  TAX                                       ; $86DB1D |
  LDA.L PTR16_86DB28,X                      ; $86DB1E |
  PLX                                       ; $86DB22 |
  STA.B $00                                 ; $86DB23 |
  JMP.W ($0000)                             ; $86DB25 |

PTR16_86DB28:
  dw CODE_86DB2C                            ; $86DB28 |
  dw CODE_86DB3B                            ; $86DB2A |

CODE_86DB2C:
  LDA.W #$1078                              ; $86DB2C |
  JSL.L CODE_FL_86CAEE                      ; $86DB2F |
  LDA.W #$0018                              ; $86DB33 |
  STA.B $11,X                               ; $86DB36 |
  INC.B $1A,X                               ; $86DB38 |
  RTL                                       ; $86DB3A |

CODE_86DB3B:
  JSL.L CODE_FL_86C70D                      ; $86DB3B |
  JML.L CODE_FL_86CA36                      ; $86DB3F |

CODE_86DB43:
  LDA.B $1A,X                               ; $86DB43 |
  PHX                                       ; $86DB45 |
  ASL A                                     ; $86DB46 |
  TAX                                       ; $86DB47 |
  LDA.L PTR16_86DB52,X                      ; $86DB48 |
  PLX                                       ; $86DB4C |
  STA.B $00                                 ; $86DB4D |
  JMP.W ($0000)                             ; $86DB4F |

PTR16_86DB52:
  dw CODE_86DB5A                            ; $86DB52 |
  dw CODE_86DB64                            ; $86DB54 |
  dw CODE_86DB77                            ; $86DB56 |
  dw CODE_86DBA1                            ; $86DB58 |

CODE_86DB5A:
  STZ.W $1C8E                               ; $86DB5A |
  STZ.W $1C90                               ; $86DB5D |
  JML.L CODE_FL_86C63A                      ; $86DB60 |

CODE_86DB64:
  LDA.W $1C92                               ; $86DB64 |
  CMP.B $4E,X                               ; $86DB67 |
  BNE CODE_86DB76                           ; $86DB69 |
  LDA.W $1C94                               ; $86DB6B |
  BEQ CODE_86DB76                           ; $86DB6E |
  JSL.L CODE_FL_85B00E                      ; $86DB70 |
  INC.B $1A,X                               ; $86DB74 |

CODE_86DB76:
  RTL                                       ; $86DB76 |

CODE_86DB77:
  LDA.B $32,X                               ; $86DB77 |
  AND.W #$8000                              ; $86DB79 |
  BEQ CODE_86DB9C                           ; $86DB7C |
  LDA.B $37,X                               ; $86DB7E |
  AND.W #$00FF                              ; $86DB80 |
  CMP.W #$000E                              ; $86DB83 |
  BNE CODE_86DB9C                           ; $86DB86 |
  JSL.L CODE_FL_85B016                      ; $86DB88 |
  LDA.W #$001B                              ; $86DB8C |
  JSL.L push_sound_queue                    ; $86DB8F |
  LDA.W #$0038                              ; $86DB93 |
  JSL.L push_sound_queue                    ; $86DB96 |
  INC.B $1A,X                               ; $86DB9A |

CODE_86DB9C:
  STZ.B $32,X                               ; $86DB9C |
  STZ.B $38,X                               ; $86DB9E |
  RTL                                       ; $86DBA0 |

CODE_86DBA1:
  LDA.B $4E,X                               ; $86DBA1 |
  BEQ CODE_86DBAC                           ; $86DBA3 |
  CMP.W #$0001                              ; $86DBA5 |
  BEQ CODE_86DBB2                           ; $86DBA8 |
  BRA CODE_86DBB5                           ; $86DBAA |

CODE_86DBAC:
  JSL.L CODE_FL_85AB2B                      ; $86DBAC |
  BCC CODE_86DBB5                           ; $86DBB0 |

CODE_86DBB2:
  INC.W $1C90                               ; $86DBB2 |

CODE_86DBB5:
  INC.W $1C8E                               ; $86DBB5 |
  LDA.W #$0001                              ; $86DBB8 |
  STA.B $1A,X                               ; $86DBBB |
  RTL                                       ; $86DBBD |

CODE_86DBBE:
  JSL.L CODE_FL_85F885                      ; $86DBBE |
  JSL.L CODE_FL_86C3F8                      ; $86DBC2 |
  PHX                                       ; $86DBC6 |
  ASL A                                     ; $86DBC7 |
  TAX                                       ; $86DBC8 |
  LDA.L PTR16_86DBD3,X                      ; $86DBC9 |
  PLX                                       ; $86DBCD |
  STA.B $00                                 ; $86DBCE |
  JMP.W ($0000)                             ; $86DBD0 |

PTR16_86DBD3:
  dw CODE_86DBE3                            ; $86DBD3 |
  dw CODE_86DC29                            ; $86DBD5 |
  dw CODE_86DC2E                            ; $86DBD7 |
  dw CODE_86DC61                            ; $86DBD9 |
  dw CODE_86DC79                            ; $86DBDB |
  dw CODE_86DC8D                            ; $86DBDD |
  dw CODE_86DCB4                            ; $86DBDF |
  dw CODE_86DCBB                            ; $86DBE1 |

CODE_86DBE3:
  JSL.L CODE_FL_86C7A5                      ; $86DBE3 |
  JSL.L CODE_FL_86C444                      ; $86DBE7 |
  JSL.L CODE_FL_85A845                      ; $86DBEB |
  LDA.W #$0072                              ; $86DBEF |
  JSL.L CODE_FL_86C9A4                      ; $86DBF2 |
  BCS CODE_86DC25                           ; $86DBF6 |
  JSL.L CODE_FL_85AAB6                      ; $86DBF8 |
  JSL.L CODE_FL_86C7C4                      ; $86DBFC |
  LDA.W #$0053                              ; $86DC00 |
  JSL.L CODE_FL_86CAEE                      ; $86DC03 |
  JSL.L CODE_FL_86C486                      ; $86DC07 |
  LDA.W #$FF00                              ; $86DC0B |
  JSL.L CODE_FL_86C887                      ; $86DC0E |
  JSL.L CODE_FL_85A9B7                      ; $86DC12 |
  JSL.L CODE_FL_85A9EF                      ; $86DC16 |
  LDA.B $34,X                               ; $86DC1A |
  ORA.W #$0102                              ; $86DC1C |
  STA.B $34,X                               ; $86DC1F |
  JML.L CODE_FL_86C63F                      ; $86DC21 |

CODE_86DC25:
  JML.L CODE_FL_86CA36                      ; $86DC25 |

CODE_86DC29:
  JSL.L CODE_FL_85A646                      ; $86DC29 |
  RTL                                       ; $86DC2D |

CODE_86DC2E:
  JSL.L CODE_FL_86C55C                      ; $86DC2E |
  BPL CODE_86DC38                           ; $86DC32 |
  EOR.W #$FFFF                              ; $86DC34 |
  INC A                                     ; $86DC37 |

CODE_86DC38:
  CMP.W #$0018                              ; $86DC38 |
  BCS CODE_86DC5D                           ; $86DC3B |
  LDA.B $2C,X                               ; $86DC3D |
  BNE CODE_86DC5D                           ; $86DC3F |
  LDA.W #$0054                              ; $86DC41 |
  JSL.L CODE_FL_86CAEE                      ; $86DC44 |
  JSL.L CODE_FL_86C486                      ; $86DC48 |
  LDY.B $44,X                               ; $86DC4C |
  LDA.B $04,X                               ; $86DC4E |
  STA.W $0004,Y                             ; $86DC50 |
  STZ.B $26,X                               ; $86DC53 |
  STZ.B $28,X                               ; $86DC55 |
  LDA.W #$0003                              ; $86DC57 |
  STA.B $1A,X                               ; $86DC5A |
  RTL                                       ; $86DC5C |

CODE_86DC5D:
  JML.L CODE_FL_85A695                      ; $86DC5D |

CODE_86DC61:
  LDA.B $1C,X                               ; $86DC61 |
  CMP.W #$000C                              ; $86DC63 |
  BNE CODE_86DC78                           ; $86DC66 |
  LDA.W #$38A0                              ; $86DC68 |
  STA.B $00,X                               ; $86DC6B |
  STZ.B $1E,X                               ; $86DC6D |
  LDA.W #$00C0                              ; $86DC6F |
  JSL.L CODE_FL_8089BD                      ; $86DC72 |
  INC.B $1A,X                               ; $86DC76 |

CODE_86DC78:
  RTL                                       ; $86DC78 |

CODE_86DC79:
  LDY.B $44,X                               ; $86DC79 |
  LDA.W $001A,Y                             ; $86DC7B |
  CMP.W #$0001                              ; $86DC7E |
  BNE CODE_86DC8C                           ; $86DC81 |
  LDA.W #$0055                              ; $86DC83 |
  JSL.L CODE_FL_86CAEE                      ; $86DC86 |
  INC.B $1A,X                               ; $86DC8A |

CODE_86DC8C:
  RTL                                       ; $86DC8C |

CODE_86DC8D:
  LDA.B $1C,X                               ; $86DC8D |
  CMP.W #$0009                              ; $86DC8F |
  BNE CODE_86DCB3                           ; $86DC92 |
  LDA.B $20,X                               ; $86DC94 |
  CMP.W #$0001                              ; $86DC96 |
  BNE CODE_86DCB3                           ; $86DC99 |
  LDA.W #$0053                              ; $86DC9B |
  JSL.L CODE_FL_86CAEE                      ; $86DC9E |
  LDA.W #$FF00                              ; $86DCA2 |
  JSL.L CODE_FL_86C887                      ; $86DCA5 |
  LDA.W #$0020                              ; $86DCA9 |
  STA.B $2C,X                               ; $86DCAC |
  LDA.W #$0002                              ; $86DCAE |
  STA.B $1A,X                               ; $86DCB1 |

CODE_86DCB3:
  RTL                                       ; $86DCB3 |

CODE_86DCB4:
  LDA.W #$A000                              ; $86DCB4 |
  JML.L CODE_JL_85AAAA                      ; $86DCB7 |

CODE_86DCBB:
  LDA.W #$38AE                              ; $86DCBB |
  LDY.W #$38B0                              ; $86DCBE |
  JML.L CODE_JL_85AE70                      ; $86DCC1 |

CODE_86DCC5:
  LDA.B $3A,X                               ; $86DCC5 |
  STA.B $10                                 ; $86DCC7 |
  LDA.W #$0004                              ; $86DCC9 |
  STA.B $0E                                 ; $86DCCC |
  STZ.B $0A                                 ; $86DCCE |
  STZ.B $0C                                 ; $86DCD0 |
  JSL.L CODE_FL_85F8A1                      ; $86DCD2 |
  JSL.L CODE_FL_85AAC6                      ; $86DCD6 |
  JSL.L CODE_FL_86C3F8                      ; $86DCDA |
  PHX                                       ; $86DCDE |
  ASL A                                     ; $86DCDF |
  TAX                                       ; $86DCE0 |
  LDA.L PTR16_86DCEB,X                      ; $86DCE1 |
  PLX                                       ; $86DCE5 |
  STA.B $00                                 ; $86DCE6 |
  JMP.W ($0000)                             ; $86DCE8 |

PTR16_86DCEB:
  dw CODE_86DCF5                            ; $86DCEB |
  dw CODE_86DCFD                            ; $86DCED |
  dw CODE_86DD37                            ; $86DCEF |
  dw CODE_86DD7E                            ; $86DCF1 |
  dw CODE_86DD8C                            ; $86DCF3 |

CODE_86DCF5:
  JSL.L CODE_FL_85A9EF                      ; $86DCF5 |
  JML.L CODE_FL_86C63F                      ; $86DCF9 |

CODE_86DCFD:
  STZ.B $00,X                               ; $86DCFD |
  LDY.B $44,X                               ; $86DCFF |
  JSL.L CODE_FL_86C89E                      ; $86DD01 |
  LDA.W $001A,Y                             ; $86DD05 |
  CMP.W #$0004                              ; $86DD08 |
  BEQ CODE_86DD24                           ; $86DD0B |
  LDA.W $0000,Y                             ; $86DD0D |
  CMP.W #$388E                              ; $86DD10 |
  BNE CODE_86DD36                           ; $86DD13 |
  LDA.W #$38B2                              ; $86DD15 |
  STA.B $00,X                               ; $86DD18 |
  LDA.B $0D,X                               ; $86DD1A |
  SEC                                       ; $86DD1C |
  SBC.W #$001C                              ; $86DD1D |
  STA.B $0D,X                               ; $86DD20 |
  BRA CODE_86DD36                           ; $86DD22 |

CODE_86DD24:
  LDA.W #$0056                              ; $86DD24 |
  JSL.L CODE_FL_86CAEE                      ; $86DD27 |
  JSL.L CODE_FL_85A5D0                      ; $86DD2B |
  LDA.W #$0010                              ; $86DD2F |
  STA.B $3A,X                               ; $86DD32 |
  INC.B $1A,X                               ; $86DD34 |

CODE_86DD36:
  RTL                                       ; $86DD36 |

CODE_86DD37:
  LDA.B $1C,X                               ; $86DD37 |
  CMP.W #$0018                              ; $86DD39 |
  BEQ CODE_86DD6F                           ; $86DD3C |
  LDA.B $20,X                               ; $86DD3E |
  CMP.W #$0002                              ; $86DD40 |
  BEQ CODE_86DD56                           ; $86DD43 |
  LDA.B $1C,X                               ; $86DD45 |
  CMP.W #$0015                              ; $86DD47 |
  BEQ CODE_86DD7D                           ; $86DD4A |
  LDA.B $0D,X                               ; $86DD4C |
  SEC                                       ; $86DD4E |
  SBC.W #$0010                              ; $86DD4F |
  STA.B $0D,X                               ; $86DD52 |
  BRA CODE_86DD7D                           ; $86DD54 |

CODE_86DD56:
  LDA.B $1C,X                               ; $86DD56 |
  CMP.W #$0003                              ; $86DD58 |
  BEQ CODE_86DD7D                           ; $86DD5B |
  LDA.B $0D,X                               ; $86DD5D |
  CLC                                       ; $86DD5F |
  ADC.W #$0010                              ; $86DD60 |
  STA.B $0D,X                               ; $86DD63 |
  LDA.B $3A,X                               ; $86DD65 |
  CLC                                       ; $86DD67 |
  ADC.W #$0010                              ; $86DD68 |
  STA.B $3A,X                               ; $86DD6B |
  BRA CODE_86DD7D                           ; $86DD6D |

CODE_86DD6F:
  LDA.W #$390A                              ; $86DD6F |
  STA.B $00,X                               ; $86DD72 |
  STZ.B $1E,X                               ; $86DD74 |
  LDA.W #$0080                              ; $86DD76 |
  STA.B $2C,X                               ; $86DD79 |
  INC.B $1A,X                               ; $86DD7B |

CODE_86DD7D:
  RTL                                       ; $86DD7D |

CODE_86DD7E:
  JSL.L CODE_FL_86C70D                      ; $86DD7E |
  LDA.W #$0057                              ; $86DD82 |
  JSL.L CODE_FL_86CAEE                      ; $86DD85 |
  INC.B $1A,X                               ; $86DD89 |
  RTL                                       ; $86DD8B |

CODE_86DD8C:
  LDA.B $1C,X                               ; $86DD8C |
  CMP.W #$0003                              ; $86DD8E |
  BEQ CODE_86DDA2                           ; $86DD91 |
  LDA.B $20,X                               ; $86DD93 |
  CMP.W #$0001                              ; $86DD95 |
  BEQ CODE_86DDA2                           ; $86DD98 |
  LDA.B $3A,X                               ; $86DD9A |
  SEC                                       ; $86DD9C |
  SBC.W #$0010                              ; $86DD9D |
  STA.B $3A,X                               ; $86DDA0 |

CODE_86DDA2:
  LDA.B $1C,X                               ; $86DDA2 |
  CMP.W #$0018                              ; $86DDA4 |
  BNE CODE_86DDB2                           ; $86DDA7 |
  STZ.B $00,X                               ; $86DDA9 |
  STZ.B $1E,X                               ; $86DDAB |
  LDA.W #$0001                              ; $86DDAD |
  STA.B $1A,X                               ; $86DDB0 |

CODE_86DDB2:
  RTL                                       ; $86DDB2 |

CODE_86DDB3:
  JSL.L CODE_FL_85F885                      ; $86DDB3 |
  JSL.L CODE_FL_86C3F8                      ; $86DDB7 |
  PHX                                       ; $86DDBB |
  ASL A                                     ; $86DDBC |
  TAX                                       ; $86DDBD |
  LDA.L PTR16_86DDC8,X                      ; $86DDBE |
  PLX                                       ; $86DDC2 |
  STA.B $00                                 ; $86DDC3 |
  JMP.W ($0000)                             ; $86DDC5 |

PTR16_86DDC8:
  dw CODE_86DDD6                            ; $86DDC8 |
  dw CODE_86DE13                            ; $86DDCA |
  dw CODE_86DE2A                            ; $86DDCC |
  dw CODE_86DE7A                            ; $86DDCE |
  dw CODE_86DE95                            ; $86DDD0 |
  dw CODE_86DEB5                            ; $86DDD2 |
  dw CODE_86DEBC                            ; $86DDD4 |

CODE_86DDD6:
  JSL.L CODE_FL_86C7A5                      ; $86DDD6 |
  JSL.L CODE_FL_86C444                      ; $86DDDA |
  LDA.W #$3830                              ; $86DDDE |
  STA.B $00,X                               ; $86DDE1 |
  STZ.B $1E,X                               ; $86DDE3 |
  JSL.L CODE_FL_86C486                      ; $86DDE5 |
  LDA.W #$FA00                              ; $86DDE9 |
  STA.B $28,X                               ; $86DDEC |
  LDA.W #$0080                              ; $86DDEE |
  STA.B $4C,X                               ; $86DDF1 |
  LDA.W #$0003                              ; $86DDF3 |
  STA.B $3A,X                               ; $86DDF6 |
  LDA.W $1672                               ; $86DDF8 |
  CLC                                       ; $86DDFB |
  ADC.B $0D,X                               ; $86DDFC |
  STA.B $3C,X                               ; $86DDFE |
  JSL.L CODE_FL_85A9B7                      ; $86DE00 |
  JSL.L CODE_FL_85A9EF                      ; $86DE04 |
  LDA.B $34,X                               ; $86DE08 |
  ORA.W #$0102                              ; $86DE0A |
  STA.B $34,X                               ; $86DE0D |
  JML.L CODE_FL_86C63F                      ; $86DE0F |

CODE_86DE13:
  LDA.B $28,X                               ; $86DE13 |
  CLC                                       ; $86DE15 |
  ADC.B $4C,X                               ; $86DE16 |
  STA.B $28,X                               ; $86DE18 |
  BPL CODE_86DE1E                           ; $86DE1A |
  BRA CODE_86DE29                           ; $86DE1C |

CODE_86DE1E:
  LDA.W #$0058                              ; $86DE1E |
  JSL.L CODE_FL_86CAEE                      ; $86DE21 |
  STZ.B $28,X                               ; $86DE25 |
  INC.B $1A,X                               ; $86DE27 |

CODE_86DE29:
  RTL                                       ; $86DE29 |

CODE_86DE2A:
  LDA.B $00,X                               ; $86DE2A |
  CMP.W #$3844                              ; $86DE2C |
  BNE CODE_86DE69                           ; $86DE2F |
  LDA.B $20,X                               ; $86DE31 |
  CMP.W #$0001                              ; $86DE33 |
  BNE CODE_86DE69                           ; $86DE36 |
  LDA.B $3A,X                               ; $86DE38 |
  BEQ CODE_86DE69                           ; $86DE3A |
  ASL A                                     ; $86DE3C |
  ASL A                                     ; $86DE3D |
  ASL A                                     ; $86DE3E |
  STA.B $00                                 ; $86DE3F |
  LDA.W #$006E                              ; $86DE41 |
  JSL.L CODE_FL_86C9A7                      ; $86DE44 |
  BCS CODE_86DE79                           ; $86DE48 |
  JSL.L CODE_FL_86C7C4                      ; $86DE4A |
  JSL.L CODE_FL_86C7D4                      ; $86DE4E |
  LDA.W $000D,Y                             ; $86DE52 |
  SEC                                       ; $86DE55 |
  SBC.B $00                                 ; $86DE56 |
  STA.W $000D,Y                             ; $86DE58 |
  LDA.B $04,X                               ; $86DE5B |
  STA.W $0004,Y                             ; $86DE5D |
  DEC.B $3A,X                               ; $86DE60 |
  LDA.W #$0024                              ; $86DE62 |
  JSL.L CODE_FL_8089BD                      ; $86DE65 |

CODE_86DE69:
  LDA.B $1C,X                               ; $86DE69 |
  CMP.W #$0024                              ; $86DE6B |
  BNE CODE_86DE79                           ; $86DE6E |
  LDA.W #$3830                              ; $86DE70 |
  STA.B $00,X                               ; $86DE73 |
  STZ.B $1E,X                               ; $86DE75 |
  INC.B $1A,X                               ; $86DE77 |

CODE_86DE79:
  RTL                                       ; $86DE79 |

CODE_86DE7A:
  LDA.B $28,X                               ; $86DE7A |
  CLC                                       ; $86DE7C |
  ADC.B $4C,X                               ; $86DE7D |
  STA.B $28,X                               ; $86DE7F |
  LDA.W $1672                               ; $86DE81 |
  CLC                                       ; $86DE84 |
  ADC.B $0D,X                               ; $86DE85 |
  CMP.B $3C,X                               ; $86DE87 |
  BCC CODE_86DE94                           ; $86DE89 |
  LDA.W #$0080                              ; $86DE8B |
  STA.B $2C,X                               ; $86DE8E |
  STZ.B $28,X                               ; $86DE90 |
  INC.B $1A,X                               ; $86DE92 |

CODE_86DE94:
  RTL                                       ; $86DE94 |

CODE_86DE95:
  LDA.B $3C,X                               ; $86DE95 |
  SEC                                       ; $86DE97 |
  SBC.W $1672                               ; $86DE98 |
  STA.B $0D,X                               ; $86DE9B |
  JSL.L CODE_FL_86C70D                      ; $86DE9D |
  JSL.L CODE_FL_86C486                      ; $86DEA1 |
  LDA.W #$FA00                              ; $86DEA5 |
  STA.B $28,X                               ; $86DEA8 |
  LDA.W #$0003                              ; $86DEAA |
  STA.B $3A,X                               ; $86DEAD |
  LDA.W #$0001                              ; $86DEAF |
  STA.B $1A,X                               ; $86DEB2 |
  RTL                                       ; $86DEB4 |

CODE_86DEB5:
  LDA.W #$A000                              ; $86DEB5 |
  JML.L CODE_JL_85AAAA                      ; $86DEB8 |

CODE_86DEBC:
  LDA.W #$3850                              ; $86DEBC |
  LDY.W #$3854                              ; $86DEBF |
  JML.L CODE_JL_85AE70                      ; $86DEC2 |

CODE_86DEC6:
  JSL.L CODE_FL_85F885                      ; $86DEC6 |
  JSL.L CODE_FL_86C3F8                      ; $86DECA |
  PHX                                       ; $86DECE |
  ASL A                                     ; $86DECF |
  TAX                                       ; $86DED0 |
  LDA.L PTR16_86DEDB,X                      ; $86DED1 |
  PLX                                       ; $86DED5 |
  STA.B $00                                 ; $86DED6 |
  JMP.W ($0000)                             ; $86DED8 |

PTR16_86DEDB:
  dw CODE_86DEDF                            ; $86DEDB |
  dw CODE_86DEFD                            ; $86DEDD |

CODE_86DEDF:
  LDA.W #$0059                              ; $86DEDF |
  JSL.L CODE_FL_86CAEE                      ; $86DEE2 |
  LDA.W #$FE00                              ; $86DEE6 |
  JSL.L CODE_FL_86C887                      ; $86DEE9 |
  JSL.L CODE_FL_85A9EF                      ; $86DEED |
  JSL.L CODE_FL_85A8CE                      ; $86DEF1 |
  JSL.L CODE_FL_85A5CA                      ; $86DEF5 |
  JML.L CODE_FL_86C63F                      ; $86DEF9 |

CODE_86DEFD:
  RTL                                       ; $86DEFD |

CODE_86DEFE:
  JSL.L CODE_FL_85F885                      ; $86DEFE |
  JSL.L CODE_FL_86C3F8                      ; $86DF02 |
  PHX                                       ; $86DF06 |
  ASL A                                     ; $86DF07 |
  TAX                                       ; $86DF08 |
  LDA.L PTR16_86DF13,X                      ; $86DF09 |
  PLX                                       ; $86DF0D |
  STA.B $00                                 ; $86DF0E |
  JMP.W ($0000)                             ; $86DF10 |

PTR16_86DF13:
  dw CODE_86DF25                            ; $86DF13 |
  dw CODE_86DF4F                            ; $86DF15 |
  dw CODE_86DF54                            ; $86DF17 |
  dw CODE_86DF90                            ; $86DF19 |
  dw CODE_86DFA5                            ; $86DF1B |
  dw CODE_86DFAC                            ; $86DF1D |
  dw CODE_86DFB6                            ; $86DF1F |
  dw CODE_86DFBA                            ; $86DF21 |
  dw CODE_86DFC5                            ; $86DF23 |

CODE_86DF25:
  JSL.L CODE_FL_86C7A5                      ; $86DF25 |
  JSL.L CODE_FL_86C444                      ; $86DF29 |
  JSL.L CODE_FL_85A845                      ; $86DF2D |

CODE_JP_86DF31:
  LDA.W #$005A                              ; $86DF31 |
  JSL.L CODE_FL_86CAEE                      ; $86DF34 |
  JSL.L CODE_FL_86C486                      ; $86DF38 |
  JSL.L CODE_FL_85A9B7                      ; $86DF3C |
  JSL.L CODE_FL_85A9EF                      ; $86DF40 |
  LDA.B $34,X                               ; $86DF44 |
  ORA.W #$0102                              ; $86DF46 |
  STA.B $34,X                               ; $86DF49 |
  JML.L CODE_FL_86C63F                      ; $86DF4B |

CODE_86DF4F:
  JSL.L CODE_FL_85A646                      ; $86DF4F |
  RTL                                       ; $86DF53 |

CODE_86DF54:
  LDA.B $1C,X                               ; $86DF54 |
  CMP.W #$0015                              ; $86DF56 |
  BNE CODE_86DF6B                           ; $86DF59 |
  LDA.W #$3596                              ; $86DF5B |
  STA.B $00,X                               ; $86DF5E |
  STZ.B $1E,X                               ; $86DF60 |
  LDA.W #$0080                              ; $86DF62 |
  STA.B $2C,X                               ; $86DF65 |
  INC.B $1A,X                               ; $86DF67 |
  BRA CODE_86DF8F                           ; $86DF69 |

CODE_86DF6B:
  LDA.B $00,X                               ; $86DF6B |
  CMP.W #$35B2                              ; $86DF6D |
  BNE CODE_86DF8F                           ; $86DF70 |
  LDA.B $20,X                               ; $86DF72 |
  CMP.W #$0001                              ; $86DF74 |
  BNE CODE_86DF8F                           ; $86DF77 |
  LDA.W #$0078                              ; $86DF79 |
  JSL.L CODE_FL_86C9A7                      ; $86DF7C |
  BCS CODE_86DF8F                           ; $86DF80 |
  JSL.L CODE_FL_86C7C4                      ; $86DF82 |
  JSL.L CODE_FL_86C7D4                      ; $86DF86 |
  LDA.B $04,X                               ; $86DF8A |
  STA.W $0004,Y                             ; $86DF8C |

CODE_86DF8F:
  RTL                                       ; $86DF8F |

CODE_86DF90:
  JSL.L CODE_FL_86C486                      ; $86DF90 |
  JSL.L CODE_FL_86C70D                      ; $86DF94 |
  LDA.W #$005A                              ; $86DF98 |
  JSL.L CODE_FL_86CAEE                      ; $86DF9B |
  LDA.W #$0001                              ; $86DF9F |
  STA.B $1A,X                               ; $86DFA2 |
  RTL                                       ; $86DFA4 |

CODE_86DFA5:
  LDA.W #$A000                              ; $86DFA5 |
  JML.L CODE_JL_85AAAA                      ; $86DFA8 |

CODE_86DFAC:
  LDA.W #$35EA                              ; $86DFAC |
  LDY.W #$35F0                              ; $86DFAF |
  JML.L CODE_JL_85AE70                      ; $86DFB2 |

CODE_86DFB6:
  JML.L CODE_FL_85A8F4                      ; $86DFB6 |

CODE_86DFBA:
  JSL.L CODE_FL_85A84D                      ; $86DFBA |
  JSL.L CODE_FL_86C70D                      ; $86DFBE |
  INC.B $1A,X                               ; $86DFC2 |
  RTL                                       ; $86DFC4 |

CODE_86DFC5:
  JSL.L CODE_FL_85A927                      ; $86DFC5 |
  STZ.B $1A,X                               ; $86DFC9 |
  JMP.W CODE_JP_86DF31                      ; $86DFCB |

CODE_86DFCE:
  JSL.L CODE_FL_85F885                      ; $86DFCE |
  JSL.L CODE_FL_86C3F8                      ; $86DFD2 |
  PHX                                       ; $86DFD6 |
  ASL A                                     ; $86DFD7 |
  TAX                                       ; $86DFD8 |
  LDA.L PTR16_86DFE3,X                      ; $86DFD9 |
  PLX                                       ; $86DFDD |
  STA.B $00                                 ; $86DFDE |
  JMP.W ($0000)                             ; $86DFE0 |

PTR16_86DFE3:
  dw CODE_86DFEB                            ; $86DFE3 |
  dw CODE_86E026                            ; $86DFE5 |
  dw CODE_86E02B                            ; $86DFE7 |
  dw CODE_86E05D                            ; $86DFE9 |

CODE_86DFEB:
  LDA.W #$005B                              ; $86DFEB |
  JSL.L CODE_FL_86CAEE                      ; $86DFEE |
  LDA.B $04,X                               ; $86DFF2 |
  AND.W #$2020                              ; $86DFF4 |
  BNE CODE_86E006                           ; $86DFF7 |
  LDA.W #$0001                              ; $86DFF9 |
  STA.B $4A,X                               ; $86DFFC |
  LDA.B $09,X                               ; $86DFFE |
  SEC                                       ; $86E000 |
  SBC.W #$0010                              ; $86E001 |
  BRA CODE_86E011                           ; $86E004 |

CODE_86E006:
  LDA.W #$FFFF                              ; $86E006 |
  STA.B $4A,X                               ; $86E009 |
  LDA.B $09,X                               ; $86E00B |
  CLC                                       ; $86E00D |
  ADC.W #$0010                              ; $86E00E |

CODE_86E011:
  STA.B $09,X                               ; $86E011 |
  LDA.W #$FE80                              ; $86E013 |
  JSL.L CODE_FL_86C887                      ; $86E016 |
  JSL.L CODE_FL_85A9EF                      ; $86E01A |
  JSL.L CODE_FL_85A9B7                      ; $86E01E |
  JML.L CODE_FL_86C63F                      ; $86E022 |

CODE_86E026:
  JSL.L CODE_FL_85A646                      ; $86E026 |
  RTL                                       ; $86E02A |

CODE_86E02B:
  LDA.B $04,X                               ; $86E02B |
  AND.W #$2020                              ; $86E02D |
  BNE CODE_86E03D                           ; $86E030 |
  LDA.W #$0001                              ; $86E032 |
  STA.B $4A,X                               ; $86E035 |
  LDA.B $26,X                               ; $86E037 |
  BPL CODE_86E04E                           ; $86E039 |
  BRA CODE_86E046                           ; $86E03B |

CODE_86E03D:
  LDA.W #$FFFF                              ; $86E03D |
  STA.B $4A,X                               ; $86E040 |
  LDA.B $26,X                               ; $86E042 |
  BMI CODE_86E04E                           ; $86E044 |

CODE_86E046:
  JSL.L CODE_FL_86C827                      ; $86E046 |
  JML.L CODE_JL_85AE2E                      ; $86E04A |

CODE_86E04E:
  LDA.W #$3582                              ; $86E04E |
  STA.B $00,X                               ; $86E051 |
  STZ.B $1E,X                               ; $86E053 |
  LDA.W #$0020                              ; $86E055 |
  STA.B $38,X                               ; $86E058 |
  INC.B $1A,X                               ; $86E05A |
  RTL                                       ; $86E05C |

CODE_86E05D:
  STZ.B $26,X                               ; $86E05D |
  JSL.L CODE_FL_85A89B                      ; $86E05F |
  LDA.B $38,X                               ; $86E063 |
  BNE CODE_86E06F                           ; $86E065 |
  JSL.L CODE_FL_85A986                      ; $86E067 |
  JML.L CODE_FL_86CA2D                      ; $86E06B |

CODE_86E06F:
  RTL                                       ; $86E06F |

CODE_86E070:
  JSL.L CODE_FL_85F885                      ; $86E070 |
  JSL.L CODE_FL_86C3F8                      ; $86E074 |
  PHX                                       ; $86E078 |
  ASL A                                     ; $86E079 |
  TAX                                       ; $86E07A |
  LDA.L PTR16_86E085,X                      ; $86E07B |
  PLX                                       ; $86E07F |
  STA.B $00                                 ; $86E080 |
  JMP.W ($0000)                             ; $86E082 |

PTR16_86E085:
  dw CODE_86E093                            ; $86E085 |
  dw CODE_86E0C5                            ; $86E087 |
  dw CODE_86E0DD                            ; $86E089 |
  dw CODE_86E0FE                            ; $86E08B |
  dw CODE_86E112                            ; $86E08D |
  dw CODE_86E125                            ; $86E08F |
  dw CODE_86E12C                            ; $86E091 |

CODE_86E093:
  JSL.L CODE_FL_86C7A5                      ; $86E093 |
  JSL.L CODE_FL_86C444                      ; $86E097 |
  LDA.W #$005C                              ; $86E09B |
  JSL.L CODE_FL_86CAEE                      ; $86E09E |
  JSL.L CODE_FL_86C486                      ; $86E0A2 |
  LDA.W #$0002                              ; $86E0A6 |
  JSL.L CODE_FL_85B3A9                      ; $86E0A9 |
  LDA.W #$0002                              ; $86E0AD |
  STA.B $36,X                               ; $86E0B0 |
  JSL.L CODE_FL_85A9B7                      ; $86E0B2 |
  JSL.L CODE_FL_85A9EF                      ; $86E0B6 |
  LDA.B $34,X                               ; $86E0BA |
  ORA.W #$0002                              ; $86E0BC |
  STA.B $34,X                               ; $86E0BF |
  JML.L CODE_FL_86C63F                      ; $86E0C1 |

CODE_86E0C5:
  JSL.L CODE_FL_86C486                      ; $86E0C5 |
  LDA.B $3A,X                               ; $86E0C9 |
  BNE CODE_86E0D2                           ; $86E0CB |
  LDA.W #$0002                              ; $86E0CD |
  BRA CODE_86E0D5                           ; $86E0D0 |

CODE_86E0D2:
  LDA.W #$0004                              ; $86E0D2 |

CODE_86E0D5:
  LDY.W #$0040                              ; $86E0D5 |
  JSL.L CODE_FL_86C68A                      ; $86E0D8 |
  RTL                                       ; $86E0DC |

CODE_86E0DD:
  LDA.W #$38AE                              ; $86E0DD |
  STA.B $00,X                               ; $86E0E0 |
  STZ.B $1E,X                               ; $86E0E2 |
  STZ.B $28,X                               ; $86E0E4 |
  LDA.W #$0100                              ; $86E0E6 |
  JSL.L CODE_FL_86C887                      ; $86E0E9 |
  LDA.W #$0020                              ; $86E0ED |
  STA.B $38,X                               ; $86E0F0 |
  LDA.W #$0010                              ; $86E0F2 |
  STA.B $2C,X                               ; $86E0F5 |
  JSL.L CODE_FL_85A5A7                      ; $86E0F7 |
  INC.B $1A,X                               ; $86E0FB |
  RTL                                       ; $86E0FD |

CODE_86E0FE:
  JSL.L CODE_FL_86C70D                      ; $86E0FE |
  JSL.L CODE_FL_85A939                      ; $86E102 |
  STZ.B $00,X                               ; $86E106 |
  STZ.B $26,X                               ; $86E108 |
  LDA.W #$0008                              ; $86E10A |
  STA.B $2C,X                               ; $86E10D |
  INC.B $1A,X                               ; $86E10F |
  RTL                                       ; $86E111 |

CODE_86E112:
  JSL.L CODE_FL_86C70D                      ; $86E112 |
  INC.B $3A,X                               ; $86E116 |
  LDA.W #$005D                              ; $86E118 |
  JSL.L CODE_FL_86CAEE                      ; $86E11B |
  LDA.W #$0001                              ; $86E11F |
  STA.B $1A,X                               ; $86E122 |
  RTL                                       ; $86E124 |

CODE_86E125:
  LDA.W #$A000                              ; $86E125 |
  JML.L CODE_JL_85AAAA                      ; $86E128 |

CODE_86E12C:
  LDA.W #$38CE                              ; $86E12C |
  LDY.W #$38D2                              ; $86E12F |
  JML.L CODE_JL_85AE70                      ; $86E132 |

CODE_86E136:
  JSL.L CODE_FL_85F885                      ; $86E136 |
  JSL.L CODE_FL_86C3F8                      ; $86E13A |
  PHX                                       ; $86E13E |
  ASL A                                     ; $86E13F |
  TAX                                       ; $86E140 |
  LDA.L PTR16_86E14B,X                      ; $86E141 |
  PLX                                       ; $86E145 |
  STA.B $00                                 ; $86E146 |
  JMP.W ($0000)                             ; $86E148 |

PTR16_86E14B:
  dw CODE_86E157                            ; $86E14B |
  dw CODE_86E181                            ; $86E14D |
  dw CODE_86E186                            ; $86E14F |
  dw CODE_86E1C9                            ; $86E151 |
  dw CODE_86E1DE                            ; $86E153 |
  dw CODE_86E1E5                            ; $86E155 |

CODE_86E157:
  JSL.L CODE_FL_86C7A5                      ; $86E157 |
  JSL.L CODE_FL_86C444                      ; $86E15B |
  JSL.L CODE_FL_85A845                      ; $86E15F |
  LDA.W #$005E                              ; $86E163 |
  JSL.L CODE_FL_86CAEE                      ; $86E166 |
  JSL.L CODE_FL_86C486                      ; $86E16A |
  JSL.L CODE_FL_85A9B7                      ; $86E16E |
  JSL.L CODE_FL_85A9EF                      ; $86E172 |
  LDA.B $34,X                               ; $86E176 |
  ORA.W #$0102                              ; $86E178 |
  STA.B $34,X                               ; $86E17B |
  JML.L CODE_FL_86C63F                      ; $86E17D |

CODE_86E181:
  JSL.L CODE_FL_85A646                      ; $86E181 |
  RTL                                       ; $86E185 |

CODE_86E186:
  LDA.B $1C,X                               ; $86E186 |
  CMP.W #$0030                              ; $86E188 |
  BNE CODE_86E19D                           ; $86E18B |
  LDA.W #$387C                              ; $86E18D |
  STA.B $00,X                               ; $86E190 |
  STZ.B $1E,X                               ; $86E192 |
  LDA.W #$0040                              ; $86E194 |
  STA.B $2C,X                               ; $86E197 |
  INC.B $1A,X                               ; $86E199 |
  BRA CODE_86E1C8                           ; $86E19B |

CODE_86E19D:
  LDA.B $00,X                               ; $86E19D |
  CMP.W #$38BC                              ; $86E19F |
  BNE CODE_86E1C8                           ; $86E1A2 |
  LDA.B $20,X                               ; $86E1A4 |
  CMP.W #$0001                              ; $86E1A6 |
  BNE CODE_86E1C8                           ; $86E1A9 |
  LDA.W #$007B                              ; $86E1AB |
  JSL.L CODE_FL_86C9A7                      ; $86E1AE |
  BCS CODE_86E1C8                           ; $86E1B2 |
  JSL.L CODE_FL_86C7C4                      ; $86E1B4 |
  JSL.L CODE_FL_86C7D4                      ; $86E1B8 |
  LDA.B $04,X                               ; $86E1BC |
  STA.W $0004,Y                             ; $86E1BE |
  LDA.W #$00AC                              ; $86E1C1 |
  JSL.L CODE_FL_8089BD                      ; $86E1C4 |

CODE_86E1C8:
  RTL                                       ; $86E1C8 |

CODE_86E1C9:
  JSL.L CODE_FL_86C486                      ; $86E1C9 |
  JSL.L CODE_FL_86C70D                      ; $86E1CD |
  LDA.W #$005E                              ; $86E1D1 |
  JSL.L CODE_FL_86CAEE                      ; $86E1D4 |
  LDA.W #$0001                              ; $86E1D8 |
  STA.B $1A,X                               ; $86E1DB |
  RTL                                       ; $86E1DD |

CODE_86E1DE:
  LDA.W #$A000                              ; $86E1DE |
  JML.L CODE_JL_85AAAA                      ; $86E1E1 |

CODE_86E1E5:
  LDA.W #$3992                              ; $86E1E5 |
  LDY.W #$39A2                              ; $86E1E8 |
  JML.L CODE_JL_85AE70                      ; $86E1EB |

CODE_86E1EF:
  JSL.L CODE_FL_85F885                      ; $86E1EF |
  JSL.L CODE_FL_86C3F8                      ; $86E1F3 |
  PHX                                       ; $86E1F7 |
  ASL A                                     ; $86E1F8 |
  TAX                                       ; $86E1F9 |
  LDA.L PTR16_86E204,X                      ; $86E1FA |
  PLX                                       ; $86E1FE |
  STA.B $00                                 ; $86E1FF |
  JMP.W ($0000)                             ; $86E201 |

PTR16_86E204:
  dw CODE_86E20A                            ; $86E204 |
  dw CODE_86E229                            ; $86E206 |
  dw CODE_86E269                            ; $86E208 |

CODE_86E20A:
  LDA.W #$3970                              ; $86E20A |
  STA.B $00,X                               ; $86E20D |
  STZ.B $1E,X                               ; $86E20F |
  LDA.W #$FD00                              ; $86E211 |
  JSL.L CODE_FL_86C887                      ; $86E214 |
  LDA.W #$FA00                              ; $86E218 |
  STA.B $28,X                               ; $86E21B |
  JSL.L CODE_FL_85A8CE                      ; $86E21D |
  JSL.L CODE_FL_85A9EF                      ; $86E221 |
  JML.L CODE_FL_86C63F                      ; $86E225 |

CODE_86E229:
  JSL.L CODE_FL_85A5F2                      ; $86E229 |
  BEQ CODE_86E233                           ; $86E22D |
  STZ.B $26,X                               ; $86E22F |
  BRA CODE_86E268                           ; $86E231 |

CODE_86E233:
  STZ.B $00                                 ; $86E233 |
  LDA.B $28,X                               ; $86E235 |
  BPL CODE_86E23D                           ; $86E237 |
  EOR.W #$FFFF                              ; $86E239 |
  INC A                                     ; $86E23C |

CODE_86E23D:
  CMP.W #$0300                              ; $86E23D |
  BCS CODE_86E24C                           ; $86E240 |
  CMP.W #$0100                              ; $86E242 |
  BCC CODE_86E25D                           ; $86E245 |
  LDA.W #$0002                              ; $86E247 |
  STA.B $00                                 ; $86E24A |

CODE_86E24C:
  LDA.B $28,X                               ; $86E24C |
  BMI CODE_86E255                           ; $86E24E |
  LDA.W #$0006                              ; $86E250 |
  BRA CODE_86E258                           ; $86E253 |

CODE_86E255:
  LDA.W #$0002                              ; $86E255 |

CODE_86E258:
  CLC                                       ; $86E258 |
  ADC.B $00                                 ; $86E259 |
  STA.B $00                                 ; $86E25B |

CODE_86E25D:
  LDY.B $00                                 ; $86E25D |
  LDA.W LOOSE_OP_00CF7B,Y                   ; $86E25F |
  CLC                                       ; $86E262 |
  ADC.W #$387C                              ; $86E263 |
  STA.B $00,X                               ; $86E266 |

CODE_86E268:
  RTL                                       ; $86E268 |

CODE_86E269:
  JSL.L CODE_FL_85A986                      ; $86E269 |
  JML.L CODE_FL_86CA36                      ; $86E26D |

CODE_86E271:
  JSL.L CODE_FL_85F885                      ; $86E271 |
  JSL.L CODE_FL_86C3F8                      ; $86E275 |
  PHX                                       ; $86E279 |
  ASL A                                     ; $86E27A |
  TAX                                       ; $86E27B |
  LDA.L PTR16_86E286,X                      ; $86E27C |
  PLX                                       ; $86E280 |
  STA.B $00                                 ; $86E281 |
  JMP.W ($0000)                             ; $86E283 |

PTR16_86E286:
  dw CODE_86E294                            ; $86E286 |
  dw CODE_86E2F1                            ; $86E288 |
  dw CODE_86E31D                            ; $86E28A |
  dw CODE_86E349                            ; $86E28C |
  dw CODE_86E368                            ; $86E28E |
  dw CODE_86E37B                            ; $86E290 |
  dw CODE_86E386                            ; $86E292 |

CODE_86E294:
  JSL.L CODE_FL_86C7A5                      ; $86E294 |
  JSL.L CODE_FL_86C444                      ; $86E298 |
  JSL.L CODE_FL_85A845                      ; $86E29C |

CODE_JP_86E2A0:
  LDA.B $4E,X                               ; $86E2A0 |
  AND.W #$0001                              ; $86E2A2 |
  BEQ CODE_86E2B7                           ; $86E2A5 |
  LDA.B $34,X                               ; $86E2A7 |
  ORA.W #$8002                              ; $86E2A9 |
  STA.B $34,X                               ; $86E2AC |
  LDA.W #$0060                              ; $86E2AE |
  JSL.L CODE_FL_86CAEE                      ; $86E2B1 |
  BRA CODE_86E2DC                           ; $86E2B5 |

CODE_86E2B7:
  CLC                                       ; $86E2B7 |
  LDA.W $1662                               ; $86E2B8 |
  ADC.B $09,X                               ; $86E2BB |
  ADC.W #$0010                              ; $86E2BD |
  STA.B $3A,X                               ; $86E2C0 |
  CLC                                       ; $86E2C2 |
  LDA.W $1662                               ; $86E2C3 |
  ADC.B $09,X                               ; $86E2C6 |
  SEC                                       ; $86E2C8 |
  SBC.W #$0010                              ; $86E2C9 |
  STA.B $3C,X                               ; $86E2CC |
  LDA.B $34,X                               ; $86E2CE |
  ORA.W #$8102                              ; $86E2D0 |
  STA.B $34,X                               ; $86E2D3 |
  LDA.W #$005F                              ; $86E2D5 |
  JSL.L CODE_FL_86CAEE                      ; $86E2D8 |

CODE_86E2DC:
  STZ.B $32,X                               ; $86E2DC |
  JSL.L CODE_FL_86C486                      ; $86E2DE |
  LDA.W #$FF00                              ; $86E2E2 |
  JSL.L CODE_FL_86C71F                      ; $86E2E5 |
  JSL.L CODE_FL_85A9EF                      ; $86E2E9 |
  JML.L CODE_FL_86C63F                      ; $86E2ED |

CODE_86E2F1:
  LDA.B $4E,X                               ; $86E2F1 |
  AND.W #$0001                              ; $86E2F3 |
  BEQ CODE_86E303                           ; $86E2F6 |
  JSL.L CODE_FL_85A607                      ; $86E2F8 |
  LDA.W $1C12                               ; $86E2FC |
  BNE CODE_FL_86E311                        ; $86E2FF |
  BRA CODE_86E31C                           ; $86E301 |

CODE_86E303:
  CLC                                       ; $86E303 |
  LDA.W $1662                               ; $86E304 |
  ADC.B $09,X                               ; $86E307 |
  CMP.B $3A,X                               ; $86E309 |
  BCS CODE_FL_86E311                        ; $86E30B |
  CMP.B $3C,X                               ; $86E30D |
  BCS CODE_86E31C                           ; $86E30F |

CODE_FL_86E311:
  JSL.L CODE_FL_86C47E                      ; $86E311 |
  LDA.W #$FF00                              ; $86E315 |
  JSL.L CODE_FL_86C887                      ; $86E318 |

CODE_86E31C:
  RTL                                       ; $86E31C |

CODE_86E31D:
  LDA.B $4E,X                               ; $86E31D |
  BIT.W #$0001                              ; $86E31F |
  BEQ CODE_86E342                           ; $86E322 |
  BIT.W #$0002                              ; $86E324 |
  BEQ CODE_86E336                           ; $86E327 |
  JSL.L CODE_FL_85AB2B                      ; $86E329 |
  ROR A                                     ; $86E32D |
  EOR.B $26,X                               ; $86E32E |
  BMI CODE_86E336                           ; $86E330 |
  JSL.L CODE_FL_86E311                      ; $86E332 |

CODE_86E336:
  STZ.B $32,X                               ; $86E336 |
  JSL.L CODE_FL_85A5A7                      ; $86E338 |
  LDA.W #$0001                              ; $86E33C |
  STA.B $1A,X                               ; $86E33F |
  RTL                                       ; $86E341 |

CODE_86E342:
  LDA.W #$A000                              ; $86E342 |
  JML.L CODE_JL_85AAAA                      ; $86E345 |

CODE_86E349:
  LDA.B $4E,X                               ; $86E349 |
  AND.W #$0001                              ; $86E34B |
  BEQ CODE_86E35D                           ; $86E34E |
  STZ.B $32,X                               ; $86E350 |
  JSL.L CODE_FL_85A5A7                      ; $86E352 |
  LDA.W #$0001                              ; $86E356 |
  STA.B $1A,X                               ; $86E359 |
  BRA CODE_86E367                           ; $86E35B |

CODE_86E35D:
  LDA.W #$3B34                              ; $86E35D |
  LDY.W #$3B40                              ; $86E360 |
  JML.L CODE_JL_85AE70                      ; $86E363 |

CODE_86E367:
  RTL                                       ; $86E367 |

CODE_86E368:
  JSL.L CODE_FL_85A8F4                      ; $86E368 |
  LDA.B $4E,X                               ; $86E36C |
  AND.W #$0001                              ; $86E36E |
  BEQ CODE_86E37A                           ; $86E371 |
  LDA.B $34,X                               ; $86E373 |
  AND.W #$7FFF                              ; $86E375 |
  STA.B $34,X                               ; $86E378 |

CODE_86E37A:
  RTL                                       ; $86E37A |

CODE_86E37B:
  JSL.L CODE_FL_85A84D                      ; $86E37B |
  JSL.L CODE_FL_86C70D                      ; $86E37F |
  INC.B $1A,X                               ; $86E383 |
  RTL                                       ; $86E385 |

CODE_86E386:
  JSL.L CODE_FL_85A927                      ; $86E386 |
  STZ.B $1A,X                               ; $86E38A |
  JMP.W CODE_JP_86E2A0                      ; $86E38C |

CODE_86E38F:
  JSL.L CODE_FL_85F885                      ; $86E38F |
  LDA.W #$0003                              ; $86E393 |
  JSL.L CODE_FL_85AFA9                      ; $86E396 |
  JSL.L CODE_FL_86C3F8                      ; $86E39A |
  PHX                                       ; $86E39E |
  ASL A                                     ; $86E39F |
  TAX                                       ; $86E3A0 |
  LDA.L PTR16_86E3AB,X                      ; $86E3A1 |
  PLX                                       ; $86E3A5 |
  STA.B $00                                 ; $86E3A6 |
  JMP.W ($0000)                             ; $86E3A8 |

PTR16_86E3AB:
  dw CODE_86E3B9                            ; $86E3AB |
  dw CODE_86E3FC                            ; $86E3AD |
  dw CODE_86E45B                            ; $86E3AF |
  dw CODE_86E524                            ; $86E3B1 |
  dw CODE_86E557                            ; $86E3B3 |
  dw CODE_86E5B3                            ; $86E3B5 |
  dw CODE_86E5CD                            ; $86E3B7 |

CODE_86E3B9:
  JSL.L CODE_FL_86C7A5                      ; $86E3B9 |
  LDA.B $02,X                               ; $86E3BD |
  STA.B $42,X                               ; $86E3BF |
  JSL.L CODE_FL_86C582                      ; $86E3C1 |
  JSL.L CODE_FL_85A845                      ; $86E3C5 |

CODE_JL_86E3C9:
  JSL.L CODE_FL_86C444                      ; $86E3C9 |
  LDA.W #$0061                              ; $86E3CD |
  JSL.L CODE_FL_86CAEE                      ; $86E3D0 |
  JSL.L CODE_FL_86C486                      ; $86E3D4 |
  LDA.W #$FF00                              ; $86E3D8 |
  JSL.L CODE_FL_86C71F                      ; $86E3DB |
  LDA.W $1C6C                               ; $86E3DF |
  STA.B $3E,X                               ; $86E3E2 |
  LDA.W $1C6A                               ; $86E3E4 |
  STA.B $40,X                               ; $86E3E7 |
  JSL.L CODE_FL_85A9B7                      ; $86E3E9 |
  JSL.L CODE_FL_85A9EF                      ; $86E3ED |
  LDA.B $34,X                               ; $86E3F1 |
  ORA.W #$0102                              ; $86E3F3 |
  STA.B $34,X                               ; $86E3F6 |
  JML.L CODE_FL_86C63F                      ; $86E3F8 |

CODE_86E3FC:
  JSL.L CODE_FL_86C566                      ; $86E3FC |
  BPL CODE_86E406                           ; $86E400 |
  EOR.W #$FFFF                              ; $86E402 |
  INC A                                     ; $86E405 |

CODE_86E406:
  CMP.W #$0030                              ; $86E406 |
  BCS CODE_86E432                           ; $86E409 |
  JSL.L CODE_FL_86C55C                      ; $86E40B |
  BPL CODE_86E415                           ; $86E40F |
  EOR.W #$FFFF                              ; $86E411 |
  INC A                                     ; $86E414 |

CODE_86E415:
  CMP.W #$0040                              ; $86E415 |
  BCS CODE_86E432                           ; $86E418 |
  LDA.B $2C,X                               ; $86E41A |
  BNE CODE_86E432                           ; $86E41C |
  STZ.B $26,X                               ; $86E41E |
  JSL.L CODE_FL_86C486                      ; $86E420 |
  LDA.W #$0020                              ; $86E424 |
  STA.B $2C,X                               ; $86E427 |
  STZ.B $3C,X                               ; $86E429 |
  LDA.W #$0002                              ; $86E42B |
  STA.B $1A,X                               ; $86E42E |
  BRA CODE_86E45A                           ; $86E430 |

CODE_86E432:
  LDA.B $3E,X                               ; $86E432 |
  STA.B $00                                 ; $86E434 |
  LDA.B $40,X                               ; $86E436 |
  STA.B $02                                 ; $86E438 |
  JSL.L CODE_FL_85AFDF                      ; $86E43A |
  LDA.B $00                                 ; $86E43E |
  STA.B $3E,X                               ; $86E440 |
  LDA.B $02                                 ; $86E442 |
  STA.B $40,X                               ; $86E444 |
  JSL.L CODE_FL_85A607                      ; $86E446 |
  LDA.W $1C12                               ; $86E44A |
  BEQ CODE_86E45A                           ; $86E44D |
  JSL.L CODE_FL_86C47E                      ; $86E44F |
  LDA.W #$FF00                              ; $86E453 |
  JSL.L CODE_FL_86C887                      ; $86E456 |

CODE_86E45A:
  RTL                                       ; $86E45A |

CODE_86E45B:
  LDA.B $3E,X                               ; $86E45B |
  STA.B $00                                 ; $86E45D |
  LDA.B $40,X                               ; $86E45F |
  STA.B $02                                 ; $86E461 |
  JSL.L CODE_FL_85AFDF                      ; $86E463 |
  LDA.B $00                                 ; $86E467 |
  STA.B $3E,X                               ; $86E469 |
  LDA.B $02                                 ; $86E46B |
  STA.B $40,X                               ; $86E46D |
  LDA.B $3C,X                               ; $86E46F |
  BNE CODE_86E480                           ; $86E471 |
  JSL.L CODE_FL_86C70D                      ; $86E473 |
  INC.B $3C,X                               ; $86E477 |
  LDA.W #$0062                              ; $86E479 |
  JSL.L CODE_FL_86CAEE                      ; $86E47C |

CODE_86E480:
  JSL.L CODE_FL_86C582                      ; $86E480 |
  LDA.B $00,X                               ; $86E484 |
  CMP.W #$37E0                              ; $86E486 |
  BEQ CODE_86E48E                           ; $86E489 |
  JMP.W CODE_JP_86E523                      ; $86E48B |

CODE_86E48E:
  LDA.B $42,X                               ; $86E48E |
  STA.B $02,X                               ; $86E490 |
  LDA.B $3A,X                               ; $86E492 |
  BEQ CODE_86E499                           ; $86E494 |
  JMP.W CODE_JP_86E501                      ; $86E496 |

CODE_86E499:
  INC.B $3A,X                               ; $86E499 |
  LDA.W #$0004                              ; $86E49B |
  STA.B $08                                 ; $86E49E |
  STZ.B $0A                                 ; $86E4A0 |
  LDA.W #$0034                              ; $86E4A2 |
  JSL.L push_sound_queue                    ; $86E4A5 |

CODE_86E4A9:
  LDA.W #$0074                              ; $86E4A9 |
  JSL.L CODE_FL_86C9A7                      ; $86E4AC |
  BCC CODE_86E4B5                           ; $86E4B0 |
  JMP.W CODE_JP_86E523                      ; $86E4B2 |

CODE_86E4B5:
  JSL.L CODE_FL_86C7C4                      ; $86E4B5 |
  LDA.W $0004,Y                             ; $86E4B9 |
  AND.W #$9F9F                              ; $86E4BC |
  STA.W $0004,Y                             ; $86E4BF |
  JSL.L CODE_FL_86C7D4                      ; $86E4C2 |
  PHY                                       ; $86E4C6 |
  LDY.W #$0008                              ; $86E4C7 |
  LDA.B $08                                 ; $86E4CA |
  JSL.L CODE_FL_8AB4B3                      ; $86E4CC |
  PLY                                       ; $86E4D0 |
  LDA.B $00                                 ; $86E4D1 |
  STA.W $0026,Y                             ; $86E4D3 |
  LDA.B $02                                 ; $86E4D6 |
  STA.W $0028,Y                             ; $86E4D8 |
  PHX                                       ; $86E4DB |
  LDX.B $0A                                 ; $86E4DC |
  LDA.W CODE_00CF73,X                       ; $86E4DE |
  CLC                                       ; $86E4E1 |
  ADC.W #$37BC                              ; $86E4E2 |
  STA.W $0000,Y                             ; $86E4E5 |
  PLX                                       ; $86E4E8 |
  INC.B $0A                                 ; $86E4E9 |
  INC.B $0A                                 ; $86E4EB |
  LDA.B $08                                 ; $86E4ED |
  CLC                                       ; $86E4EF |
  ADC.W #$0008                              ; $86E4F0 |
  STA.B $08                                 ; $86E4F3 |
  CMP.W #$0024                              ; $86E4F5 |
  BNE CODE_86E4A9                           ; $86E4F8 |
  LDA.W #$0080                              ; $86E4FA |
  STA.B $2C,X                               ; $86E4FD |
  BRA CODE_JP_86E523                        ; $86E4FF |

CODE_JP_86E501:
  JSL.L CODE_FL_86C70D                      ; $86E501 |
  LDA.W #$0061                              ; $86E505 |
  JSL.L CODE_FL_86CAEE                      ; $86E508 |
  JSL.L CODE_FL_86C582                      ; $86E50C |
  LDA.W #$FF00                              ; $86E510 |
  JSL.L CODE_FL_86C887                      ; $86E513 |
  STZ.B $3A,X                               ; $86E517 |
  LDA.W #$0080                              ; $86E519 |
  STA.B $2C,X                               ; $86E51C |
  LDA.W #$0001                              ; $86E51E |
  STA.B $1A,X                               ; $86E521 |

CODE_JP_86E523:
  RTL                                       ; $86E523 |

CODE_86E524:
  STZ.B $26,X                               ; $86E524 |
  LDA.W #$0008                              ; $86E526 |
  STA.B $20                                 ; $86E529 |

CODE_86E52B:
  CLC                                       ; $86E52B |
  LDA.B $0D,X                               ; $86E52C |
  ADC.W #$0008                              ; $86E52E |
  STA.B $0D,X                               ; $86E531 |
  CMP.W #$00D0                              ; $86E533 |
  BCC CODE_86E53B                           ; $86E536 |
  JMP.W CODE_JP_86E553                      ; $86E538 |

CODE_86E53B:
  DEC.B $20                                 ; $86E53B |
  BEQ CODE_JP_86E553                        ; $86E53D |
  JSL.L CODE_FL_858AF1                      ; $86E53F |
  BEQ CODE_86E52B                           ; $86E543 |
  JSL.L CODE_FL_85A671                      ; $86E545 |
  LDA.W #$0063                              ; $86E549 |
  JSL.L CODE_FL_86CAEE                      ; $86E54C |
  INC.B $1A,X                               ; $86E550 |
  RTL                                       ; $86E552 |

CODE_JP_86E553:
  JML.L CODE_FL_86CA36                      ; $86E553 |

CODE_86E557:
  JSL.L CODE_FL_86C582                      ; $86E557 |
  LDA.B $00,X                               ; $86E55B |
  CMP.W #$37FC                              ; $86E55D |
  BNE CODE_86E58F                           ; $86E560 |
  LDA.B $42,X                               ; $86E562 |
  STA.B $02,X                               ; $86E564 |
  LDA.B $20,X                               ; $86E566 |
  CMP.W #$0001                              ; $86E568 |
  BNE CODE_86E587                           ; $86E56B |
  LDA.W #$FFF8                              ; $86E56D |
  JSL.L CODE_FL_86CB2D                      ; $86E570 |
  BCC CODE_86E57D                           ; $86E574 |
  LDA.W #$00F4                              ; $86E576 |
  JSL.L CODE_FL_8089BD                      ; $86E579 |

CODE_86E57D:
  LDA.B $0C,X                               ; $86E57D |
  CLC                                       ; $86E57F |
  ADC.W #$0400                              ; $86E580 |
  STA.B $0C,X                               ; $86E583 |
  BRA CODE_86E58F                           ; $86E585 |

CODE_86E587:
  LDA.B $0C,X                               ; $86E587 |
  SEC                                       ; $86E589 |
  SBC.W #$0080                              ; $86E58A |
  STA.B $0C,X                               ; $86E58D |

CODE_86E58F:
  LDA.W $1C6C                               ; $86E58F |
  BMI CODE_86E5AC                           ; $86E592 |
  LDA.B $30,X                               ; $86E594 |
  ASL A                                     ; $86E596 |
  STA.B $00                                 ; $86E597 |
  SEC                                       ; $86E599 |
  LDA.B $0D,X                               ; $86E59A |
  SBC.B $00                                 ; $86E59C |
  BMI CODE_86E5A7                           ; $86E59E |
  CMP.W $1C6C                               ; $86E5A0 |
  BCC CODE_86E5B2                           ; $86E5A3 |
  BRA CODE_86E5AC                           ; $86E5A5 |

CODE_86E5A7:
  CMP.W $1C6C                               ; $86E5A7 |
  BCS CODE_86E5B2                           ; $86E5AA |

CODE_86E5AC:
  STZ.B $1A,X                               ; $86E5AC |
  JML.L CODE_JL_86E3C9                      ; $86E5AE |

CODE_86E5B2:
  RTL                                       ; $86E5B2 |

CODE_86E5B3:
  LDA.B $4E,X                               ; $86E5B3 |
  BEQ CODE_86E5C6                           ; $86E5B5 |
  LDA.W #$00D5                              ; $86E5B7 |
  JSL.L CODE_FL_86C9A7                      ; $86E5BA |
  JSL.L CODE_FL_85A71F                      ; $86E5BE |
  JML.L CODE_FL_86CA2D                      ; $86E5C2 |

CODE_86E5C6:
  LDA.W #$A000                              ; $86E5C6 |
  JML.L CODE_JL_85AAAA                      ; $86E5C9 |

CODE_86E5CD:
  LDA.B $4E,X                               ; $86E5CD |
  BEQ CODE_86E5DB                           ; $86E5CF |
  LDA.W #$3804                              ; $86E5D1 |
  LDY.W #$380A                              ; $86E5D4 |
  JML.L CODE_JL_85AE65                      ; $86E5D7 |

CODE_86E5DB:
  LDA.W #$3804                              ; $86E5DB |
  LDY.W #$380A                              ; $86E5DE |
  JML.L CODE_JL_85AE70                      ; $86E5E1 |

CODE_86E5E5:
  JSL.L CODE_FL_85F885                      ; $86E5E5 |
  JSL.L CODE_FL_86C3F8                      ; $86E5E9 |
  PHX                                       ; $86E5ED |
  ASL A                                     ; $86E5EE |
  TAX                                       ; $86E5EF |
  LDA.L PTR16_86E5FA,X                      ; $86E5F0 |
  PLX                                       ; $86E5F4 |
  STA.B $00                                 ; $86E5F5 |
  JMP.W ($0000)                             ; $86E5F7 |

PTR16_86E5FA:
  dw CODE_86E5FE                            ; $86E5FA |
  dw CODE_86E60A                            ; $86E5FC |

CODE_86E5FE:
  JSL.L CODE_FL_85A9EF                      ; $86E5FE |
  JSL.L CODE_FL_85A8CE                      ; $86E602 |
  JML.L CODE_FL_86C63F                      ; $86E606 |

CODE_86E60A:
  RTL                                       ; $86E60A |

CODE_86E60B:
  JSL.L CODE_FL_85F885                      ; $86E60B |
  JSL.L CODE_FL_85FDDA                      ; $86E60F |
  LDA.W #$0004                              ; $86E613 |
  JSL.L CODE_FL_85B02A                      ; $86E616 |
  JSL.L CODE_FL_86C3F8                      ; $86E61A |
  PHX                                       ; $86E61E |
  ASL A                                     ; $86E61F |
  TAX                                       ; $86E620 |
  LDA.L PTR16_86E62B,X                      ; $86E621 |
  PLX                                       ; $86E625 |
  STA.B $00                                 ; $86E626 |
  JMP.W ($0000)                             ; $86E628 |

PTR16_86E62B:
  dw CODE_86E635                            ; $86E62B |
  dw CODE_86E64E                            ; $86E62D |
  dw CODE_86E66E                            ; $86E62F |
  dw CODE_86E67F                            ; $86E631 |
  dw CODE_86E69D                            ; $86E633 |

CODE_86E635:
  JSL.L CODE_FL_86C7A5                      ; $86E635 |
  JSL.L CODE_FL_86C444                      ; $86E639 |
  LDA.W #$3B52                              ; $86E63D |
  STA.B $00,X                               ; $86E640 |
  JSL.L CODE_FL_85A9B7                      ; $86E642 |
  JSL.L CODE_FL_85A9EF                      ; $86E646 |
  JML.L CODE_FL_86C63F                      ; $86E64A |

CODE_86E64E:
  JSL.L CODE_FL_85A5F2                      ; $86E64E |
  BEQ CODE_86E656                           ; $86E652 |
  BRA CODE_86E666                           ; $86E654 |

CODE_86E656:
  LDA.B $4E,X                               ; $86E656 |
  AND.W #$0001                              ; $86E658 |
  BEQ CODE_86E66D                           ; $86E65B |
  LDA.W $1C6C                               ; $86E65D |
  CMP.B $0D,X                               ; $86E660 |
  BCS CODE_86E66D                           ; $86E662 |
  INC.B $1A,X                               ; $86E664 |

CODE_86E666:
  LDA.W #$0064                              ; $86E666 |
  JSL.L CODE_FL_86CAEE                      ; $86E669 |

CODE_86E66D:
  RTL                                       ; $86E66D |

CODE_86E66E:
  LDA.B $4E,X                               ; $86E66E |
  AND.W #$0001                              ; $86E670 |
  BEQ CODE_86E67E                           ; $86E673 |
  LDA.B $30,X                               ; $86E675 |
  LSR A                                     ; $86E677 |
  CLC                                       ; $86E678 |
  ADC.W $1C6C                               ; $86E679 |
  STA.B $0D,X                               ; $86E67C |

CODE_86E67E:
  RTL                                       ; $86E67E |

CODE_86E67F:
  LDA.W #$0020                              ; $86E67F |
  STA.B $4C,X                               ; $86E682 |
  LDA.W #$FC00                              ; $86E684 |
  STA.B $28,X                               ; $86E687 |
  LDA.W #$3B4E                              ; $86E689 |
  STA.B $00,X                               ; $86E68C |
  STZ.B $1E,X                               ; $86E68E |
  LDA.W #$000C                              ; $86E690 |
  JSL.L push_sound_queue                    ; $86E693 |
  LDA.W #$0001                              ; $86E697 |
  STA.B $1A,X                               ; $86E69A |
  RTL                                       ; $86E69C |

CODE_86E69D:
  JSL.L CODE_FL_85A986                      ; $86E69D |
  JML.L CODE_FL_86CA2D                      ; $86E6A1 |

CODE_86E6A5:
  JSL.L CODE_FL_85F885                      ; $86E6A5 |
  JSL.L CODE_FL_86C3F8                      ; $86E6A9 |
  PHX                                       ; $86E6AD |
  ASL A                                     ; $86E6AE |
  TAX                                       ; $86E6AF |
  LDA.L PTR16_86E6BA,X                      ; $86E6B0 |
  PLX                                       ; $86E6B4 |
  STA.B $00                                 ; $86E6B5 |
  JMP.W ($0000)                             ; $86E6B7 |

PTR16_86E6BA:
  dw CODE_86E6CE                            ; $86E6BA |
  dw CODE_86E6F0                            ; $86E6BC |
  dw CODE_86E6F5                            ; $86E6BE |
  dw CODE_86E72E                            ; $86E6C0 |
  dw CODE_86E788                            ; $86E6C2 |
  dw CODE_86E7A2                            ; $86E6C4 |
  dw CODE_86E7D4                            ; $86E6C6 |
  dw CODE_86E7DE                            ; $86E6C8 |
  dw CODE_86E7E4                            ; $86E6CA |
  dw CODE_86E7EF                            ; $86E6CC |

CODE_86E6CE:
  JSL.L CODE_FL_86C7A5                      ; $86E6CE |
  JSL.L CODE_FL_86C444                      ; $86E6D2 |

CODE_JP_86E6D6:
  LDA.W #$0065                              ; $86E6D6 |
  JSL.L CODE_FL_86CAEE                      ; $86E6D9 |
  JSL.L CODE_FL_86C486                      ; $86E6DD |
  LDA.W #$FF00                              ; $86E6E1 |
  JSL.L CODE_FL_86C887                      ; $86E6E4 |
  JSL.L CODE_FL_85A9B7                      ; $86E6E8 |
  JML.L CODE_FL_86C63F                      ; $86E6EC |

CODE_86E6F0:
  JSL.L CODE_FL_85A646                      ; $86E6F0 |
  RTL                                       ; $86E6F4 |

CODE_86E6F5:
  JSL.L CODE_FL_86C566                      ; $86E6F5 |
  BPL CODE_86E6FF                           ; $86E6F9 |
  EOR.W #$FFFF                              ; $86E6FB |
  INC A                                     ; $86E6FE |

CODE_86E6FF:
  CMP.W #$0020                              ; $86E6FF |
  BCS CODE_86E72A                           ; $86E702 |
  JSL.L CODE_FL_86C526                      ; $86E704 |
  CMP.W #$0040                              ; $86E708 |
  BCS CODE_86E72A                           ; $86E70B |
  LDA.W #$38B4                              ; $86E70D |
  STA.B $00,X                               ; $86E710 |
  STZ.B $1E,X                               ; $86E712 |
  LDA.W #$0060                              ; $86E714 |
  STA.B $4C,X                               ; $86E717 |
  LDA.W #$FC00                              ; $86E719 |
  STA.B $28,X                               ; $86E71C |
  LDA.W #$FE00                              ; $86E71E |
  JSL.L CODE_FL_86C887                      ; $86E721 |
  LDA.W #$0003                              ; $86E725 |
  STA.B $1A,X                               ; $86E728 |

CODE_86E72A:
  JML.L CODE_FL_85A695                      ; $86E72A |

CODE_86E72E:
  JSL.L CODE_FL_85A5F2                      ; $86E72E |
  BEQ CODE_86E74D                           ; $86E732 |

CODE_JL_86E734:
  LDA.W #$0065                              ; $86E734 |
  JSL.L CODE_FL_86CAEE                      ; $86E737 |
  JSL.L CODE_FL_86C486                      ; $86E73B |
  LDA.W #$FF00                              ; $86E73F |
  JSL.L CODE_FL_86C887                      ; $86E742 |
  LDA.W #$0002                              ; $86E746 |
  STA.B $1A,X                               ; $86E749 |
  BRA CODE_86E787                           ; $86E74B |

CODE_86E74D:
  JSL.L CODE_FL_86C55C                      ; $86E74D |
  STA.B $3A,X                               ; $86E751 |
  BPL CODE_86E759                           ; $86E753 |
  EOR.W #$FFFF                              ; $86E755 |
  INC A                                     ; $86E758 |

CODE_86E759:
  CMP.W $002E,Y                             ; $86E759 |
  BCS CODE_86E787                           ; $86E75C |
  JSL.L CODE_FL_86C566                      ; $86E75E |
  STA.B $3C,X                               ; $86E762 |
  BPL CODE_86E76A                           ; $86E764 |
  EOR.W #$FFFF                              ; $86E766 |
  INC A                                     ; $86E769 |

CODE_86E76A:
  CMP.W $0030,Y                             ; $86E76A |
  BCS CODE_86E787                           ; $86E76D |
  STZ.B $26,X                               ; $86E76F |
  STZ.B $28,X                               ; $86E771 |
  LDA.W #$0066                              ; $86E773 |
  JSL.L CODE_FL_86CAEE                      ; $86E776 |
  JSL.L CODE_FL_85A5C4                      ; $86E77A |
  LDA.W #$0007                              ; $86E77E |
  JSL.L push_sound_queue                    ; $86E781 |
  INC.B $1A,X                               ; $86E785 |

CODE_86E787:
  RTL                                       ; $86E787 |

CODE_86E788:
  LDA.B $3A,X                               ; $86E788 |
  STA.B $00                                 ; $86E78A |
  LDA.B $3C,X                               ; $86E78C |
  STA.B $02                                 ; $86E78E |
  JSL.L CODE_FL_85AEE0                      ; $86E790 |
  JSL.L CODE_FL_86C70D                      ; $86E794 |
  JSL.L CODE_FL_86F188                      ; $86E798 |
  LDA.W #$0010                              ; $86E79C |
  STA.B $2C,X                               ; $86E79F |
  RTL                                       ; $86E7A1 |

CODE_86E7A2:
  LDA.B $3E,X                               ; $86E7A2 |
  BNE CODE_86E7C5                           ; $86E7A4 |
  LDA.W #$38AE                              ; $86E7A6 |
  STA.B $00,X                               ; $86E7A9 |
  STZ.B $1E,X                               ; $86E7AB |
  LDA.W #$0200                              ; $86E7AD |
  JSL.L CODE_FL_86C887                      ; $86E7B0 |
  LDA.W #$FE00                              ; $86E7B4 |
  STA.B $28,X                               ; $86E7B7 |
  LDA.W #$0040                              ; $86E7B9 |
  STA.B $4C,X                               ; $86E7BC |
  JSL.L CODE_FL_85A5A7                      ; $86E7BE |
  INC.B $1A,X                               ; $86E7C2 |
  RTL                                       ; $86E7C4 |

CODE_86E7C5:
  LDA.W #$00D5                              ; $86E7C5 |
  JSL.L CODE_FL_86C9A7                      ; $86E7C8 |
  JSL.L CODE_FL_85A71F                      ; $86E7CC |
  JML.L CODE_FL_86CA2D                      ; $86E7D0 |

CODE_86E7D4:
  JSL.L CODE_FL_85A5F2                      ; $86E7D4 |
  BEQ CODE_86E7DD                           ; $86E7D8 |
  BRL CODE_JL_86E734                        ; $86E7DA |

CODE_86E7DD:
  RTL                                       ; $86E7DD |

CODE_86E7DE:
  INC.B $3E,X                               ; $86E7DE |
  JML.L CODE_FL_85A8F4                      ; $86E7E0 |

CODE_86E7E4:
  JSL.L CODE_FL_85A84D                      ; $86E7E4 |
  JSL.L CODE_FL_86C70D                      ; $86E7E8 |
  INC.B $1A,X                               ; $86E7EC |
  RTL                                       ; $86E7EE |

CODE_86E7EF:
  JSL.L CODE_FL_85A927                      ; $86E7EF |
  JSL.L CODE_FL_85A9F7                      ; $86E7F3 |
  STZ.B $3E,X                               ; $86E7F7 |
  STZ.B $1A,X                               ; $86E7F9 |
  JMP.W CODE_JP_86E6D6                      ; $86E7FB |

CODE_86E7FE:
  JSL.L CODE_FL_86E8C1                      ; $86E7FE |
  JSL.L CODE_FL_85F885                      ; $86E802 |
  JSL.L CODE_FL_86C3F8                      ; $86E806 |
  PHX                                       ; $86E80A |
  ASL A                                     ; $86E80B |
  TAX                                       ; $86E80C |
  LDA.L PTR16_86E817,X                      ; $86E80D |
  PLX                                       ; $86E811 |
  STA.B $00                                 ; $86E812 |
  JMP.W ($0000)                             ; $86E814 |

PTR16_86E817:
  dw CODE_86E825                            ; $86E817 |
  dw CODE_86E840                            ; $86E819 |
  dw CODE_86E86D                            ; $86E81B |
  dw CODE_86E93C                            ; $86E81D |
  dw CODE_86E8A0                            ; $86E81F |
  dw CODE_86E9E3                            ; $86E821 |
  dw CODE_86E9EA                            ; $86E823 |

CODE_86E825:
  JSL.L CODE_FL_86C7A5                      ; $86E825 |
  JSL.L CODE_FL_86C444                      ; $86E829 |
  LDA.W #$0067                              ; $86E82D |
  JSL.L CODE_FL_86CAEE                      ; $86E830 |
  JSL.L CODE_FL_85AA07                      ; $86E834 |
  JSL.L CODE_FL_85A5D0                      ; $86E838 |
  JML.L CODE_FL_86C63F                      ; $86E83C |

CODE_86E840:
  LDA.B $09,X                               ; $86E840 |
  BMI CODE_86E849                           ; $86E842 |
  CMP.W #$0130                              ; $86E844 |
  BCS CODE_86E869                           ; $86E847 |

CODE_86E849:
  LDY.B $44,X                               ; $86E849 |
  LDA.W $0009,Y                             ; $86E84B |
  STA.B $09,X                               ; $86E84E |
  SEC                                       ; $86E850 |
  LDA.W $000D,Y                             ; $86E851 |
  SBC.W #$0004                              ; $86E854 |
  STA.B $0D,X                               ; $86E857 |
  LDA.W $001A,Y                             ; $86E859 |
  CMP.W #$0003                              ; $86E85C |
  BNE CODE_86E868                           ; $86E85F |
  LDA.W #$0008                              ; $86E861 |
  STA.B $2C,X                               ; $86E864 |
  INC.B $1A,X                               ; $86E866 |

CODE_86E868:
  RTL                                       ; $86E868 |

CODE_86E869:
  JML.L CODE_FL_86CA36                      ; $86E869 |

CODE_86E86D:
  JSL.L CODE_FL_86C70D                      ; $86E86D |
  LDA.B $4E,X                               ; $86E871 |
  AND.W #$001F                              ; $86E873 |
  LDY.W #$0004                              ; $86E876 |
  JSL.L CODE_FL_8AB4B3                      ; $86E879 |
  LDA.B $00                                 ; $86E87D |
  STA.B $26,X                               ; $86E87F |
  LDA.B $02                                 ; $86E881 |
  STA.B $28,X                               ; $86E883 |
  JSL.L CODE_FL_86C4F1                      ; $86E885 |
  LDA.W #$0002                              ; $86E889 |
  STA.B $36,X                               ; $86E88C |
  JSL.L CODE_FL_85A9B7                      ; $86E88E |
  JSL.L CODE_FL_85A9EF                      ; $86E892 |
  LDA.B $34,X                               ; $86E896 |
  ORA.W #$0102                              ; $86E898 |
  STA.B $34,X                               ; $86E89B |
  INC.B $1A,X                               ; $86E89D |
  RTL                                       ; $86E89F |

CODE_86E8A0:
  LDA.W #$0068                              ; $86E8A0 |
  JSL.L CODE_FL_86CAEE                      ; $86E8A3 |
  JSL.L CODE_FL_86CB6A                      ; $86E8A7 |
  INC.B $3A,X                               ; $86E8AB |
  LDA.W #$0080                              ; $86E8AD |
  STA.B $2C,X                               ; $86E8B0 |
  LDA.W #$0040                              ; $86E8B2 |
  STA.B $38,X                               ; $86E8B5 |
  JSL.L CODE_FL_85A5A7                      ; $86E8B7 |
  LDA.W #$0003                              ; $86E8BB |
  STA.B $1A,X                               ; $86E8BE |
  RTL                                       ; $86E8C0 |

CODE_FL_86E8C1:
  LDA.B $1A,X                               ; $86E8C1 |
  CMP.W #$0003                              ; $86E8C3 |
  BCC CODE_86E8D2                           ; $86E8C6 |
  JSL.L CODE_FL_86CB11                      ; $86E8C8 |
  BCS CODE_86E8D2                           ; $86E8CC |
  JML.L CODE_FL_86CA36                      ; $86E8CE |

CODE_86E8D2:
  RTL                                       ; $86E8D2 |

CODE_86E8D3:
  JSL.L CODE_FL_85AD36                      ; $86E8D3 |
  JSL.L CODE_FL_85F885                      ; $86E8D7 |
  JSL.L CODE_FL_86C412                      ; $86E8DB |
  PHX                                       ; $86E8DF |
  ASL A                                     ; $86E8E0 |
  TAX                                       ; $86E8E1 |
  LDA.L PTR16_86E8EC,X                      ; $86E8E2 |
  PLX                                       ; $86E8E6 |
  STA.B $00                                 ; $86E8E7 |
  JMP.W ($0000)                             ; $86E8E9 |

PTR16_86E8EC:
  dw CODE_86E8FC                            ; $86E8EC |
  dw CODE_86E93C                            ; $86E8EE |
  dw CODE_86E9C2                            ; $86E8F0 |
  dw CODE_86E9E3                            ; $86E8F2 |
  dw CODE_86E9EA                            ; $86E8F4 |
  dw CODE_86E9F4                            ; $86E8F6 |
  dw CODE_86E9F8                            ; $86E8F8 |
  dw CODE_86EA03                            ; $86E8FA |

CODE_86E8FC:
  JSL.L CODE_FL_86C7A5                      ; $86E8FC |
  JSL.L CODE_FL_86C444                      ; $86E900 |

CODE_JP_86E904:
  LDA.W #$0067                              ; $86E904 |
  JSL.L CODE_FL_86CAEE                      ; $86E907 |
  LDA.B $4E,X                               ; $86E90B |
  AND.W #$003F                              ; $86E90D |
  LDY.W #$0006                              ; $86E910 |
  JSL.L CODE_FL_8AB4B3                      ; $86E913 |
  LDA.B $00                                 ; $86E917 |
  STA.B $26,X                               ; $86E919 |
  LDA.B $02                                 ; $86E91B |
  STA.B $28,X                               ; $86E91D |
  JSL.L CODE_FL_86C4F1                      ; $86E91F |
  LDA.W #$0003                              ; $86E923 |
  STA.B $36,X                               ; $86E926 |
  LDA.W #$C102                              ; $86E928 |
  STA.B $34,X                               ; $86E92B |
  LDA.B $4E,X                               ; $86E92D |
  AND.W #$0040                              ; $86E92F |
  BEQ CODE_86E938                           ; $86E932 |
  JSL.L CODE_FL_85AA07                      ; $86E934 |

CODE_86E938:
  JML.L CODE_FL_86C63F                      ; $86E938 |

CODE_86E93C:
  JSL.L CODE_FL_85A89B                      ; $86E93C |
  LDA.B $26,X                               ; $86E940 |
  STA.B $3C,X                               ; $86E942 |
  LDA.B $28,X                               ; $86E944 |
  STA.B $3E,X                               ; $86E946 |
  JSL.L CODE_FL_85A61D                      ; $86E948 |
  BNE CODE_86E96F                           ; $86E94C |
  LDA.B $4E,X                               ; $86E94E |
  AND.W #$0040                              ; $86E950 |
  BEQ CODE_86E967                           ; $86E953 |
  JSL.L CODE_FL_A8FC80                      ; $86E955 |
  LDA.B $46,X                               ; $86E959 |
  AND.W #$0100                              ; $86E95B |
  BNE CODE_86E97F                           ; $86E95E |
  LDA.B $46,X                               ; $86E960 |
  AND.W #$0008                              ; $86E962 |
  BNE CODE_86E994                           ; $86E965 |

CODE_86E967:
  JSL.L CODE_FL_85A603                      ; $86E967 |
  BEQ CODE_86E98F                           ; $86E96B |
  BRA CODE_86E979                           ; $86E96D |

CODE_86E96F:
  DEC.B $1A,X                               ; $86E96F |
  LDA.B $3E,X                               ; $86E971 |
  STA.B $28,X                               ; $86E973 |
  BPL CODE_86E9B0                           ; $86E975 |
  BRA CODE_86E97F                           ; $86E977 |

CODE_86E979:
  LDA.B $3E,X                               ; $86E979 |
  STA.B $28,X                               ; $86E97B |
  BMI CODE_86E9B0                           ; $86E97D |

CODE_86E97F:
  STZ.B $46,X                               ; $86E97F |
  LDA.B $3E,X                               ; $86E981 |
  STA.B $28,X                               ; $86E983 |
  LDA.B $40,X                               ; $86E985 |
  BNE CODE_86E9A4                           ; $86E987 |
  JSL.L CODE_FL_86CB7A                      ; $86E989 |
  BRA CODE_86E9A4                           ; $86E98D |

CODE_86E98F:
  LDA.W $1C12                               ; $86E98F |
  BEQ CODE_86E9AC                           ; $86E992 |

CODE_86E994:
  STZ.B $46,X                               ; $86E994 |
  LDA.B $3C,X                               ; $86E996 |
  STA.B $26,X                               ; $86E998 |
  LDA.B $42,X                               ; $86E99A |
  BNE CODE_86E9A8                           ; $86E99C |
  JSL.L CODE_FL_86CB6A                      ; $86E99E |
  BRA CODE_86E9A8                           ; $86E9A2 |

CODE_86E9A4:
  INC.B $40,X                               ; $86E9A4 |
  BRA CODE_86E9B0                           ; $86E9A6 |

CODE_86E9A8:
  INC.B $42,X                               ; $86E9A8 |
  BRA CODE_86E9B0                           ; $86E9AA |

CODE_86E9AC:
  STZ.B $40,X                               ; $86E9AC |
  STZ.B $42,X                               ; $86E9AE |

CODE_86E9B0:
  JSL.L CODE_FL_86C70D                      ; $86E9B0 |
  LDA.B $3A,X                               ; $86E9B4 |
  BEQ CODE_86E9C1                           ; $86E9B6 |
  LDA.W #$0067                              ; $86E9B8 |
  JSL.L CODE_FL_86CAEE                      ; $86E9BB |
  STZ.B $3A,X                               ; $86E9BF |

CODE_86E9C1:
  RTL                                       ; $86E9C1 |

CODE_86E9C2:
  LDA.W #$0068                              ; $86E9C2 |
  JSL.L CODE_FL_86CAEE                      ; $86E9C5 |
  JSL.L CODE_FL_86CB6A                      ; $86E9C9 |
  INC.B $3A,X                               ; $86E9CD |
  LDA.W #$0080                              ; $86E9CF |
  STA.B $2C,X                               ; $86E9D2 |
  LDA.W #$0040                              ; $86E9D4 |
  STA.B $38,X                               ; $86E9D7 |
  JSL.L CODE_FL_85A5A7                      ; $86E9D9 |
  LDA.W #$0001                              ; $86E9DD |
  STA.B $1A,X                               ; $86E9E0 |
  RTL                                       ; $86E9E2 |

CODE_86E9E3:
  LDA.W #$A000                              ; $86E9E3 |
  JML.L CODE_JL_85AAAA                      ; $86E9E6 |

CODE_86E9EA:
  LDA.W #$3B64                              ; $86E9EA |
  LDY.W #$3B6E                              ; $86E9ED |
  JML.L CODE_JL_85AE70                      ; $86E9F0 |

CODE_86E9F4:
  JML.L CODE_FL_85A8F4                      ; $86E9F4 |

CODE_86E9F8:
  JSL.L CODE_FL_85A84D                      ; $86E9F8 |
  JSL.L CODE_FL_86C70D                      ; $86E9FC |
  INC.B $1A,X                               ; $86EA00 |
  RTL                                       ; $86EA02 |

CODE_86EA03:
  JSL.L CODE_FL_85A927                      ; $86EA03 |
  STZ.B $1A,X                               ; $86EA07 |
  JMP.W CODE_JP_86E904                      ; $86EA09 |

CODE_86EA0C:
  JSL.L CODE_FL_85F885                      ; $86EA0C |
  JSL.L CODE_FL_86C3F8                      ; $86EA10 |
  PHX                                       ; $86EA14 |
  ASL A                                     ; $86EA15 |
  TAX                                       ; $86EA16 |
  LDA.L PTR16_86EA21,X                      ; $86EA17 |
  PLX                                       ; $86EA1B |
  STA.B $00                                 ; $86EA1C |
  JMP.W ($0000)                             ; $86EA1E |

PTR16_86EA21:
  dw CODE_86EA2F                            ; $86EA21 |
  dw CODE_86EA8A                            ; $86EA23 |
  dw CODE_86EB4A                            ; $86EA25 |
  dw CODE_86EB62                            ; $86EA27 |
  dw CODE_86EB9A                            ; $86EA29 |
  dw CODE_86EBA7                            ; $86EA2B |
  dw CODE_86EBAE                            ; $86EA2D |

CODE_86EA2F:
  JSL.L CODE_FL_86C7A5                      ; $86EA2F |
  JSL.L CODE_FL_86C444                      ; $86EA33 |
  JSL.L CODE_FL_85A845                      ; $86EA37 |
  LDA.W #$0069                              ; $86EA3B |
  JSL.L CODE_FL_86CAEE                      ; $86EA3E |
  JSL.L CODE_FL_86C486                      ; $86EA42 |
  LDA.B $04,X                               ; $86EA46 |
  AND.W #$2020                              ; $86EA48 |
  BNE CODE_86EA5B                           ; $86EA4B |
  LDA.B $04,X                               ; $86EA4D |
  ORA.W #$2020                              ; $86EA4F |
  STA.B $04,X                               ; $86EA52 |
  LDA.W #$FD00                              ; $86EA54 |
  STA.B $3E,X                               ; $86EA57 |
  BRA CODE_86EA67                           ; $86EA59 |

CODE_86EA5B:
  LDA.B $04,X                               ; $86EA5B |
  AND.W #$DFDF                              ; $86EA5D |
  STA.B $04,X                               ; $86EA60 |
  LDA.W #$0300                              ; $86EA62 |
  STA.B $3E,X                               ; $86EA65 |

CODE_86EA67:
  INC.B $40,X                               ; $86EA67 |
  LDA.W #$FFFE                              ; $86EA69 |
  STA.B $28,X                               ; $86EA6C |
  LDA.W #$0020                              ; $86EA6E |
  STA.B $2C,X                               ; $86EA71 |
  JSL.L CODE_FL_85A5CA                      ; $86EA73 |
  JSL.L CODE_FL_85A9B7                      ; $86EA77 |
  JSL.L CODE_FL_85A9EF                      ; $86EA7B |
  LDA.B $34,X                               ; $86EA7F |
  ORA.W #$0102                              ; $86EA81 |
  STA.B $34,X                               ; $86EA84 |
  JML.L CODE_FL_86C63F                      ; $86EA86 |

CODE_86EA8A:
  JSL.L CODE_FL_86C526                      ; $86EA8A |
  CMP.W #$0040                              ; $86EA8E |
  BCS CODE_86EAB8                           ; $86EA91 |
  STZ.B $28,X                               ; $86EA93 |
  STZ.B $26,X                               ; $86EA95 |
  LDA.W #$0030                              ; $86EA97 |
  STA.B $30,X                               ; $86EA9A |
  LDA.W #$0010                              ; $86EA9C |
  CLC                                       ; $86EA9F |
  ADC.B $0D,X                               ; $86EAA0 |
  STA.B $0D,X                               ; $86EAA2 |
  LDA.W #$006A                              ; $86EAA4 |
  JSL.L CODE_FL_86CAEE                      ; $86EAA7 |
  STZ.B $28,X                               ; $86EAAB |
  LDA.W #$0040                              ; $86EAAD |
  STA.B $4C,X                               ; $86EAB0 |
  LDA.W #$0003                              ; $86EAB2 |
  STA.B $1A,X                               ; $86EAB5 |
  RTL                                       ; $86EAB7 |

CODE_86EAB8:
  LDA.B $00,X                               ; $86EAB8 |
  CMP.W #$38CC                              ; $86EABA |
  BEQ CODE_86EACB                           ; $86EABD |
  CMP.W #$38DC                              ; $86EABF |
  BEQ CODE_86EACB                           ; $86EAC2 |
  CMP.W #$38FE                              ; $86EAC4 |
  BEQ CODE_86EACB                           ; $86EAC7 |
  BRA CODE_86EB27                           ; $86EAC9 |

CODE_86EACB:
  LDA.B $20,X                               ; $86EACB |
  CMP.W #$0006                              ; $86EACD |
  BNE CODE_86EB27                           ; $86EAD0 |
  LDA.B $08,X                               ; $86EAD2 |
  CLC                                       ; $86EAD4 |
  ADC.B $3E,X                               ; $86EAD5 |
  STA.B $08,X                               ; $86EAD7 |
  SEC                                       ; $86EAD9 |
  LDA.B $09,X                               ; $86EADA |
  SBC.B $2E,X                               ; $86EADC |
  BPL CODE_86EAEE                           ; $86EADE |
  LDA.B $04,X                               ; $86EAE0 |
  AND.W #$DFDF                              ; $86EAE2 |
  STA.B $04,X                               ; $86EAE5 |
  LDA.W #$0300                              ; $86EAE7 |
  STA.B $3E,X                               ; $86EAEA |
  BRA CODE_86EB27                           ; $86EAEC |

CODE_86EAEE:
  CLC                                       ; $86EAEE |
  LDA.B $09,X                               ; $86EAEF |
  ADC.B $2E,X                               ; $86EAF1 |
  CMP.W #$0100                              ; $86EAF3 |
  BCC CODE_86EB06                           ; $86EAF6 |
  LDA.B $04,X                               ; $86EAF8 |
  ORA.W #$2020                              ; $86EAFA |
  STA.B $04,X                               ; $86EAFD |
  LDA.W #$FD00                              ; $86EAFF |
  STA.B $3E,X                               ; $86EB02 |
  BRA CODE_86EB27                           ; $86EB04 |

CODE_86EB06:
  JSL.L CODE_FL_85A603                      ; $86EB06 |
  LDA.W $1C12                               ; $86EB0A |
  BNE CODE_86EB17                           ; $86EB0D |
  JSL.L CODE_FL_85A61D                      ; $86EB0F |
  BNE CODE_86EB25                           ; $86EB13 |
  STZ.B $28,X                               ; $86EB15 |

CODE_86EB17:
  JSL.L CODE_FL_86C47E                      ; $86EB17 |
  LDA.B $3E,X                               ; $86EB1B |
  EOR.W #$FFFF                              ; $86EB1D |
  INC A                                     ; $86EB20 |
  STA.B $3E,X                               ; $86EB21 |
  BNE CODE_86EB27                           ; $86EB23 |

CODE_86EB25:
  DEC.B $1A,X                               ; $86EB25 |

CODE_86EB27:
  JSL.L CODE_FL_86C70D                      ; $86EB27 |
  STZ.B $28,X                               ; $86EB2B |
  STZ.B $26,X                               ; $86EB2D |
  LDA.B $86                                 ; $86EB2F |
  LSR A                                     ; $86EB31 |
  BCS CODE_86EB39                           ; $86EB32 |
  LDA.W #$006B                              ; $86EB34 |
  BRA CODE_86EB3C                           ; $86EB37 |

CODE_86EB39:
  LDA.W #$006C                              ; $86EB39 |

CODE_86EB3C:
  JSL.L CODE_FL_86CAEE                      ; $86EB3C |
  LDA.W #$0020                              ; $86EB40 |
  JSL.L CODE_FL_8CFE19                      ; $86EB43 |
  INC.B $1A,X                               ; $86EB47 |
  RTL                                       ; $86EB49 |

CODE_86EB4A:
  JSL.L CODE_FL_86C70D                      ; $86EB4A |
  LDA.W #$0080                              ; $86EB4E |
  JSL.L CODE_FL_8CFE19                      ; $86EB51 |
  LDA.W #$0069                              ; $86EB55 |
  JSL.L CODE_FL_86CAEE                      ; $86EB58 |
  LDA.W #$0001                              ; $86EB5C |
  STA.B $1A,X                               ; $86EB5F |
  RTL                                       ; $86EB61 |

CODE_86EB62:
  DEC.B $40,X                               ; $86EB62 |
  BNE CODE_86EB86                           ; $86EB64 |
  LDA.B $3C,X                               ; $86EB66 |
  BNE CODE_86EB73                           ; $86EB68 |
  LDA.W #$002F                              ; $86EB6A |
  JSL.L push_sound_queue                    ; $86EB6D |
  BRA CODE_86EB7A                           ; $86EB71 |

CODE_86EB73:
  LDA.W #$0030                              ; $86EB73 |
  JSL.L push_sound_queue                    ; $86EB76 |

CODE_86EB7A:
  LDA.W #$0005                              ; $86EB7A |
  STA.B $40,X                               ; $86EB7D |
  LDA.B $3C,X                               ; $86EB7F |
  EOR.W #$0001                              ; $86EB81 |
  STA.B $3C,X                               ; $86EB84 |

CODE_86EB86:
  LDA.B $28,X                               ; $86EB86 |
  STA.B $3A,X                               ; $86EB88 |
  JSL.L CODE_FL_85A646                      ; $86EB8A |
  BEQ CODE_86EB99                           ; $86EB8E |
  LDA.W #$FFA0                              ; $86EB90 |
  STA.B $4C,X                               ; $86EB93 |
  LDA.B $3A,X                               ; $86EB95 |
  STA.B $28,X                               ; $86EB97 |

CODE_86EB99:
  RTL                                       ; $86EB99 |

CODE_86EB9A:
  LDA.B $28,X                               ; $86EB9A |
  CMP.W #$0080                              ; $86EB9C |
  BCC CODE_86EBA6                           ; $86EB9F |
  CLC                                       ; $86EBA1 |
  ADC.B $4C,X                               ; $86EBA2 |
  STA.B $28,X                               ; $86EBA4 |

CODE_86EBA6:
  RTL                                       ; $86EBA6 |

CODE_86EBA7:
  LDA.W #$A000                              ; $86EBA7 |
  JML.L CODE_JL_85AAAA                      ; $86EBAA |

CODE_86EBAE:
  LDA.B $1A,X                               ; $86EBAE |
  CMP.W #$0003                              ; $86EBB0 |
  BEQ CODE_86EBBD                           ; $86EBB3 |
  LDA.W #$3996                              ; $86EBB5 |
  LDY.W #$398A                              ; $86EBB8 |
  BRA CODE_86EBC3                           ; $86EBBB |

CODE_86EBBD:
  LDA.W #$3978                              ; $86EBBD |
  LDY.W #$396C                              ; $86EBC0 |

CODE_86EBC3:
  JML.L CODE_JL_85AE40                      ; $86EBC3 |

CODE_86EBC7:
  JSL.L CODE_FL_85F885                      ; $86EBC7 |
  JSL.L CODE_FL_86C3F8                      ; $86EBCB |
  PHX                                       ; $86EBCF |
  ASL A                                     ; $86EBD0 |
  TAX                                       ; $86EBD1 |
  LDA.L PTR16_86EBDC,X                      ; $86EBD2 |
  PLX                                       ; $86EBD6 |
  STA.B $00                                 ; $86EBD7 |
  JMP.W ($0000)                             ; $86EBD9 |

PTR16_86EBDC:
  dw CODE_86EBF4                            ; $86EBDC |
  dw CODE_86EC42                            ; $86EBDE |
  dw CODE_86EC47                            ; $86EBE0 |
  dw CODE_86EC90                            ; $86EBE2 |
  dw CODE_86ED36                            ; $86EBE4 |
  dw CODE_86ED60                            ; $86EBE6 |
  dw CODE_86EDF1                            ; $86EBE8 |
  dw CODE_86EE43                            ; $86EBEA |
  dw CODE_86EE4A                            ; $86EBEC |
  dw CODE_86EE54                            ; $86EBEE |
  dw CODE_86EE58                            ; $86EBF0 |
  dw CODE_86EE63                            ; $86EBF2 |

CODE_86EBF4:
  JSL.L CODE_FL_86C7A5                      ; $86EBF4 |
  JSL.L CODE_FL_86C444                      ; $86EBF8 |
  JSL.L CODE_FL_85A845                      ; $86EBFC |

CODE_JP_86EC00:
  LDA.B $4E,X                               ; $86EC00 |
  AND.W #$0003                              ; $86EC02 |
  BNE CODE_86EC1D                           ; $86EC05 |
  LDA.W #$3A4E                              ; $86EC07 |
  STA.B $00,X                               ; $86EC0A |
  JSL.L CODE_FL_85A9B7                      ; $86EC0C |
  JSL.L CODE_FL_85A9EF                      ; $86EC10 |
  LDA.B $34,X                               ; $86EC14 |
  ORA.W #$0102                              ; $86EC16 |
  STA.B $34,X                               ; $86EC19 |
  BRA CODE_86EC3E                           ; $86EC1B |

CODE_86EC1D:
  CMP.W #$0001                              ; $86EC1D |
  BEQ CODE_86EC34                           ; $86EC20 |
  LDA.W #$0071                              ; $86EC22 |
  JSL.L CODE_FL_86CAEE                      ; $86EC25 |
  JSL.L CODE_FL_86C486                      ; $86EC29 |
  LDA.W #$FF80                              ; $86EC2D |
  JSL.L CODE_FL_86C887                      ; $86EC30 |

CODE_86EC34:
  LDA.B $04,X                               ; $86EC34 |
  AND.W #$6767                              ; $86EC36 |
  ORA.W #$1090                              ; $86EC39 |
  STA.B $04,X                               ; $86EC3C |

CODE_86EC3E:
  JML.L CODE_FL_86C63F                      ; $86EC3E |

CODE_86EC42:
  JSL.L CODE_FL_85A646                      ; $86EC42 |
  RTL                                       ; $86EC46 |

CODE_86EC47:
  LDA.B $4E,X                               ; $86EC47 |
  AND.W #$0003                              ; $86EC49 |
  BEQ CODE_86EC7D                           ; $86EC4C |
  JSL.L CODE_FL_86C566                      ; $86EC4E |
  BPL CODE_86EC58                           ; $86EC52 |
  EOR.W #$FFFF                              ; $86EC54 |
  INC A                                     ; $86EC57 |

CODE_86EC58:
  CMP.W #$0040                              ; $86EC58 |
  BCS CODE_86EC85                           ; $86EC5B |
  JSL.L CODE_FL_86C55C                      ; $86EC5D |
  BPL CODE_86EC67                           ; $86EC61 |
  EOR.W #$FFFF                              ; $86EC63 |
  INC A                                     ; $86EC66 |

CODE_86EC67:
  CMP.W #$0040                              ; $86EC67 |
  BCS CODE_86EC85                           ; $86EC6A |
  LDA.B $2C,X                               ; $86EC6C |
  BNE CODE_86EC85                           ; $86EC6E |
  STZ.B $00,X                               ; $86EC70 |
  LDA.W #$0070                              ; $86EC72 |
  JSL.L CODE_FL_86CAEE                      ; $86EC75 |
  STZ.B $26,X                               ; $86EC79 |
  STZ.B $28,X                               ; $86EC7B |

CODE_86EC7D:
  LDA.W #$0020                              ; $86EC7D |
  STA.B $2C,X                               ; $86EC80 |
  INC.B $1A,X                               ; $86EC82 |

CODE_86EC84:
  RTL                                       ; $86EC84 |

CODE_86EC85:
  LDA.B $4E,X                               ; $86EC85 |
  AND.W #$0002                              ; $86EC87 |
  BEQ CODE_86EC84                           ; $86EC8A |
  JML.L CODE_FL_85A695                      ; $86EC8C |

CODE_86EC90:
  JSL.L CODE_FL_86C70D                      ; $86EC90 |
  LDA.B $04,X                               ; $86EC94 |
  AND.W #$DFDF                              ; $86EC96 |
  STA.B $04,X                               ; $86EC99 |
  LDA.B $4E,X                               ; $86EC9B |
  AND.W #$0003                              ; $86EC9D |
  BEQ CODE_86ED1C                           ; $86ECA0 |
  LDA.W #$0004                              ; $86ECA2 |
  STA.B $08                                 ; $86ECA5 |
  STZ.B $0A                                 ; $86ECA7 |

CODE_86ECA9:
  LDA.W #$0087                              ; $86ECA9 |
  JSL.L CODE_FL_86C9A7                      ; $86ECAC |
  BCC CODE_86ECB5                           ; $86ECB0 |
  JMP.W CODE_JP_86ED35                      ; $86ECB2 |

CODE_86ECB5:
  JSL.L CODE_FL_86C7C4                      ; $86ECB5 |
  JSL.L CODE_FL_86C7D4                      ; $86ECB9 |
  LDA.W $0004,Y                             ; $86ECBD |
  AND.W #$9F9F                              ; $86ECC0 |
  STA.W $0004,Y                             ; $86ECC3 |
  LDA.B $08                                 ; $86ECC6 |
  CMP.W #$0003                              ; $86ECC8 |
  BCS CODE_86ECD6                           ; $86ECCB |
  LDA.W $0004,Y                             ; $86ECCD |
  ORA.W #$2020                              ; $86ECD0 |
  STA.W $0004,Y                             ; $86ECD3 |

CODE_86ECD6:
  PHY                                       ; $86ECD6 |
  ASL.B $0A                                 ; $86ECD7 |
  LDY.B $0A                                 ; $86ECD9 |
  LDA.W LOOSE_OP_00CF85,Y                   ; $86ECDB |
  LDY.W #$0008                              ; $86ECDE |
  JSL.L CODE_FL_8AB4B3                      ; $86ECE1 |
  PLY                                       ; $86ECE5 |
  LDA.B $00                                 ; $86ECE6 |
  STA.W $0026,Y                             ; $86ECE8 |
  LDA.B $02                                 ; $86ECEB |
  STA.W $0028,Y                             ; $86ECED |
  LDA.W #$3B1E                              ; $86ECF0 |
  STA.W $0000,Y                             ; $86ECF3 |
  INC.B $0A                                 ; $86ECF6 |
  DEC.B $08                                 ; $86ECF8 |
  BNE CODE_86ECA9                           ; $86ECFA |
  LDA.B $0D,X                               ; $86ECFC |
  CLC                                       ; $86ECFE |
  ADC.W #$0020                              ; $86ECFF |
  STA.B $0D,X                               ; $86ED02 |
  LDA.W #$006D                              ; $86ED04 |
  JSL.L CODE_FL_86CAEE                      ; $86ED07 |
  JSL.L CODE_FL_85A9B7                      ; $86ED0B |
  JSL.L CODE_FL_85A9EF                      ; $86ED0F |
  LDA.W #$0020                              ; $86ED13 |
  STA.B $2C,X                               ; $86ED16 |
  INC.B $1A,X                               ; $86ED18 |
  BRA CODE_JP_86ED35                        ; $86ED1A |

CODE_86ED1C:
  LDA.B $4E,X                               ; $86ED1C |
  BEQ CODE_86ED29                           ; $86ED1E |
  LDA.W #$006E                              ; $86ED20 |
  JSL.L CODE_FL_86CAEE                      ; $86ED23 |
  BRA CODE_86ED30                           ; $86ED27 |

CODE_86ED29:
  LDA.W #$006F                              ; $86ED29 |
  JSL.L CODE_FL_86CAEE                      ; $86ED2C |

CODE_86ED30:
  LDA.W #$0005                              ; $86ED30 |
  STA.B $1A,X                               ; $86ED33 |

CODE_JP_86ED35:
  RTL                                       ; $86ED35 |

CODE_86ED36:
  LDA.B $20,X                               ; $86ED36 |
  CMP.W #$0001                              ; $86ED38 |
  BNE CODE_86ED45                           ; $86ED3B |
  LDA.B $0D,X                               ; $86ED3D |
  SEC                                       ; $86ED3F |
  SBC.W #$0002                              ; $86ED40 |
  STA.B $0D,X                               ; $86ED43 |

CODE_86ED45:
  JSL.L CODE_FL_86C70D                      ; $86ED45 |
  LDA.B $04,X                               ; $86ED49 |
  AND.W #$6767                              ; $86ED4B |
  ORA.W #$1898                              ; $86ED4E |
  STA.B $04,X                               ; $86ED51 |
  LDA.W #$006F                              ; $86ED53 |
  JSL.L CODE_FL_86CAEE                      ; $86ED56 |
  LDA.W #$0005                              ; $86ED5A |
  STA.B $1A,X                               ; $86ED5D |
  RTL                                       ; $86ED5F |

CODE_86ED60:
  LDA.B $1C,X                               ; $86ED60 |
  CMP.W #$002A                              ; $86ED62 |
  BNE CODE_86ED9B                           ; $86ED65 |
  LDA.B $4E,X                               ; $86ED67 |
  AND.W #$0003                              ; $86ED69 |
  BEQ CODE_86ED8D                           ; $86ED6C |
  LDA.W #$3A4E                              ; $86ED6E |
  STA.B $00,X                               ; $86ED71 |
  LDA.W #$006D                              ; $86ED73 |
  JSL.L CODE_FL_86CAEE                      ; $86ED76 |
  LDA.B $04,X                               ; $86ED7A |
  AND.W #$6767                              ; $86ED7C |
  ORA.W #$1090                              ; $86ED7F |
  STA.B $04,X                               ; $86ED82 |
  LDA.W #$0020                              ; $86ED84 |
  STA.B $2C,X                               ; $86ED87 |
  INC.B $1A,X                               ; $86ED89 |
  BRA CODE_JP_86EDF0                        ; $86ED8B |

CODE_86ED8D:
  LDA.W #$3A4E                              ; $86ED8D |
  STA.B $00,X                               ; $86ED90 |
  STZ.B $1E,X                               ; $86ED92 |
  LDA.W #$0002                              ; $86ED94 |
  STA.B $1A,X                               ; $86ED97 |
  BRA CODE_JP_86EDF0                        ; $86ED99 |

CODE_86ED9B:
  CMP.W #$0009                              ; $86ED9B |
  BEQ CODE_86EDB0                           ; $86ED9E |
  LDA.B $4E,X                               ; $86EDA0 |
  AND.W #$0004                              ; $86EDA2 |
  BNE CODE_JP_86EDF0                        ; $86EDA5 |
  LDA.B $1C,X                               ; $86EDA7 |
  CMP.W #$0015                              ; $86EDA9 |
  BEQ CODE_86EDB0                           ; $86EDAC |
  BRA CODE_JP_86EDF0                        ; $86EDAE |

CODE_86EDB0:
  LDA.B $20,X                               ; $86EDB0 |
  CMP.W #$0001                              ; $86EDB2 |
  BEQ CODE_86EDBA                           ; $86EDB5 |
  JMP.W CODE_JP_86EDF0                      ; $86EDB7 |

CODE_86EDBA:
  LDA.W #$000C                              ; $86EDBA |
  STA.B $08                                 ; $86EDBD |
  LDA.W #$0010                              ; $86EDBF |
  STA.B $0A                                 ; $86EDC2 |
  STZ.B $0E                                 ; $86EDC4 |
  LDA.W #$FE80                              ; $86EDC6 |
  JSL.L CODE_FL_85AB47                      ; $86EDC9 |
  BCS CODE_JP_86EDF0                        ; $86EDCD |
  JSL.L CODE_FL_85AF49                      ; $86EDCF |
  BCS CODE_JP_86EDF0                        ; $86EDD3 |
  LDA.W #$FFF4                              ; $86EDD5 |
  STA.B $08                                 ; $86EDD8 |
  LDA.W #$0180                              ; $86EDDA |
  JSL.L CODE_FL_85AB47                      ; $86EDDD |
  BCS CODE_JP_86EDF0                        ; $86EDE1 |
  JSL.L CODE_FL_85AF49                      ; $86EDE3 |
  BCS CODE_JP_86EDF0                        ; $86EDE7 |
  LDA.W #$002C                              ; $86EDE9 |
  JSL.L CODE_FL_8089BD                      ; $86EDEC |

CODE_JP_86EDF0:
  RTL                                       ; $86EDF0 |

CODE_86EDF1:
  LDA.B $20,X                               ; $86EDF1 |
  CMP.W #$0001                              ; $86EDF3 |
  BNE CODE_86EE00                           ; $86EDF6 |
  LDA.B $0D,X                               ; $86EDF8 |
  CLC                                       ; $86EDFA |
  ADC.W #$0002                              ; $86EDFB |
  STA.B $0D,X                               ; $86EDFE |

CODE_86EE00:
  JSL.L CODE_FL_86C70D                      ; $86EE00 |
  JSL.L CODE_FL_85A9BF                      ; $86EE04 |
  JSL.L CODE_FL_85A9F7                      ; $86EE08 |
  LDA.W #$0040                              ; $86EE0C |
  STA.B $2C,X                               ; $86EE0F |
  LDA.B $0D,X                               ; $86EE11 |
  SEC                                       ; $86EE13 |
  SBC.W #$0020                              ; $86EE14 |
  STA.B $0D,X                               ; $86EE17 |
  LDA.B $4E,X                               ; $86EE19 |
  AND.W #$0001                              ; $86EE1B |
  BEQ CODE_86EE26                           ; $86EE1E |
  STZ.B $00,X                               ; $86EE20 |
  STZ.B $1E,X                               ; $86EE22 |
  BRA CODE_86EE3D                           ; $86EE24 |

CODE_86EE26:
  LDA.W #$3B20                              ; $86EE26 |
  STA.B $00,X                               ; $86EE29 |
  LDA.W #$0071                              ; $86EE2B |
  JSL.L CODE_FL_86CAEE                      ; $86EE2E |
  JSL.L CODE_FL_86C486                      ; $86EE32 |
  LDA.W #$FF80                              ; $86EE36 |
  JSL.L CODE_FL_86C887                      ; $86EE39 |

CODE_86EE3D:
  LDA.W #$0002                              ; $86EE3D |
  STA.B $1A,X                               ; $86EE40 |
  RTL                                       ; $86EE42 |

CODE_86EE43:
  LDA.W #$A000                              ; $86EE43 |
  JML.L CODE_JL_85AAAA                      ; $86EE46 |

CODE_86EE4A:
  LDA.W #$3AF8                              ; $86EE4A |
  LDY.W #$3B04                              ; $86EE4D |
  JML.L CODE_JL_85AE70                      ; $86EE50 |

CODE_86EE54:
  JML.L CODE_FL_85A8F4                      ; $86EE54 |

CODE_86EE58:
  JSL.L CODE_FL_85A84D                      ; $86EE58 |
  JSL.L CODE_FL_86C70D                      ; $86EE5C |
  INC.B $1A,X                               ; $86EE60 |
  RTL                                       ; $86EE62 |

CODE_86EE63:
  JSL.L CODE_FL_85A927                      ; $86EE63 |
  STZ.B $1A,X                               ; $86EE67 |
  JMP.W CODE_JP_86EC00                      ; $86EE69 |

CODE_86EE6C:
  JSL.L CODE_FL_85F885                      ; $86EE6C |
  JSL.L CODE_FL_86C3F8                      ; $86EE70 |
  PHX                                       ; $86EE74 |
  ASL A                                     ; $86EE75 |
  TAX                                       ; $86EE76 |
  LDA.L PTR16_86EE81,X                      ; $86EE77 |
  PLX                                       ; $86EE7B |
  STA.B $00                                 ; $86EE7C |
  JMP.W ($0000)                             ; $86EE7E |

PTR16_86EE81:
  dw CODE_86EE8B                            ; $86EE81 |
  dw CODE_86EEB4                            ; $86EE83 |
  dw CODE_86EEC4                            ; $86EE85 |
  dw CODE_86EF09                            ; $86EE87 |
  dw CODE_86EF10                            ; $86EE89 |

CODE_86EE8B:
  JSL.L CODE_FL_86C7A5                      ; $86EE8B |
  JSL.L CODE_FL_86C444                      ; $86EE8F |
  JSL.L CODE_FL_85A845                      ; $86EE93 |
  LDA.W #$3B2C                              ; $86EE97 |
  STA.B $00,X                               ; $86EE9A |
  LDA.W #$FFF0                              ; $86EE9C |
  STA.B $28,X                               ; $86EE9F |
  JSL.L CODE_FL_85A9B7                      ; $86EEA1 |
  JSL.L CODE_FL_85A9EF                      ; $86EEA5 |
  LDA.B $34,X                               ; $86EEA9 |
  ORA.W #$0102                              ; $86EEAB |
  STA.B $34,X                               ; $86EEAE |
  JML.L CODE_FL_86C63F                      ; $86EEB0 |

CODE_86EEB4:
  JSL.L CODE_FL_85A61D                      ; $86EEB4 |
  BEQ CODE_86EEC3                           ; $86EEB8 |
  LDA.W #$0072                              ; $86EEBA |
  JSL.L CODE_FL_86CAEE                      ; $86EEBD |
  STZ.B $28,X                               ; $86EEC1 |

CODE_86EEC3:
  RTL                                       ; $86EEC3 |

CODE_86EEC4:
  LDA.B $1C,X                               ; $86EEC4 |
  CMP.W #$0003                              ; $86EEC6 |
  BNE CODE_86EF08                           ; $86EEC9 |
  LDA.B $20,X                               ; $86EECB |
  CMP.W #$0001                              ; $86EECD |
  BNE CODE_86EF08                           ; $86EED0 |
  LDA.W #$000C                              ; $86EED2 |
  STA.B $08                                 ; $86EED5 |
  LDA.W #$0010                              ; $86EED7 |
  STA.B $0A                                 ; $86EEDA |
  STZ.B $0E                                 ; $86EEDC |
  LDA.W #$FE80                              ; $86EEDE |
  JSL.L CODE_FL_85AB47                      ; $86EEE1 |
  BCS CODE_86EF08                           ; $86EEE5 |
  JSL.L CODE_FL_85AF49                      ; $86EEE7 |
  BCS CODE_86EF08                           ; $86EEEB |
  LDA.W #$FFF4                              ; $86EEED |
  STA.B $08                                 ; $86EEF0 |
  LDA.W #$0180                              ; $86EEF2 |
  JSL.L CODE_FL_85AB47                      ; $86EEF5 |
  BCS CODE_86EF08                           ; $86EEF9 |
  JSL.L CODE_FL_85AF49                      ; $86EEFB |
  BCS CODE_86EF08                           ; $86EEFF |
  LDA.W #$002C                              ; $86EF01 |
  JSL.L CODE_FL_8089BD                      ; $86EF04 |

CODE_86EF08:
  RTL                                       ; $86EF08 |

CODE_86EF09:
  LDA.W #$A000                              ; $86EF09 |
  JML.L CODE_JL_85AAAA                      ; $86EF0C |

CODE_86EF10:
  LDA.W #$3B04                              ; $86EF10 |
  LDY.W #$3AF8                              ; $86EF13 |
  JML.L CODE_JL_85AE40                      ; $86EF16 |

CODE_86EF1A:
  JSL.L CODE_FL_86C41D                      ; $86EF1A |
  PHX                                       ; $86EF1E |
  ASL A                                     ; $86EF1F |
  TAX                                       ; $86EF20 |
  LDA.L PTR16_86EF2B,X                      ; $86EF21 |
  PLX                                       ; $86EF25 |
  STA.B $00                                 ; $86EF26 |
  JMP.W ($0000)                             ; $86EF28 |

PTR16_86EF2B:
  dw CODE_86EF2F                            ; $86EF2B |
  dw CODE_86EF37                            ; $86EF2D |

CODE_86EF2F:
  LDA.W #$0030                              ; $86EF2F |
  STA.B $4C,X                               ; $86EF32 |
  INC.B $1A,X                               ; $86EF34 |
  RTL                                       ; $86EF36 |

CODE_86EF37:
  LDA.B $28,X                               ; $86EF37 |
  CLC                                       ; $86EF39 |
  ADC.B $4C,X                               ; $86EF3A |
  STA.B $28,X                               ; $86EF3C |
  RTL                                       ; $86EF3E |

CODE_86EF3F:
  JSL.L CODE_FL_85F885                      ; $86EF3F |
  LDA.W #$0002                              ; $86EF43 |
  LDY.W #$0004                              ; $86EF46 |
  JSL.L CODE_FL_85AD62                      ; $86EF49 |
  JSL.L CODE_FL_86C3F8                      ; $86EF4D |
  PHX                                       ; $86EF51 |
  ASL A                                     ; $86EF52 |
  TAX                                       ; $86EF53 |
  LDA.L PTR16_86EF5E,X                      ; $86EF54 |
  PLX                                       ; $86EF58 |
  STA.B $00                                 ; $86EF59 |
  JMP.W ($0000)                             ; $86EF5B |

PTR16_86EF5E:
  dw CODE_86EF68                            ; $86EF5E |
  dw CODE_86EF9A                            ; $86EF60 |
  dw CODE_86EF9F                            ; $86EF62 |
  dw CODE_86EFD1                            ; $86EF64 |
  dw CODE_86F03D                            ; $86EF66 |

CODE_86EF68:
  JSL.L CODE_FL_86C7A5                      ; $86EF68 |
  JSL.L CODE_FL_86C444                      ; $86EF6C |
  LDA.B $4E,X                               ; $86EF70 |
  BEQ CODE_86EF79                           ; $86EF72 |
  LDA.W #$00D0                              ; $86EF74 |
  STA.B $06,X                               ; $86EF77 |

CODE_86EF79:
  JSL.L CODE_FL_85A845                      ; $86EF79 |
  LDA.W #$0074                              ; $86EF7D |
  JSL.L CODE_FL_86CAEE                      ; $86EF80 |
  LDA.W #$0004                              ; $86EF84 |
  STA.B $3A,X                               ; $86EF87 |
  LDA.W #$0040                              ; $86EF89 |
  STA.B $2C,X                               ; $86EF8C |
  JSL.L CODE_FL_85B00E                      ; $86EF8E |
  JSL.L CODE_FL_85A9EF                      ; $86EF92 |
  JML.L CODE_FL_86C63F                      ; $86EF96 |

CODE_86EF9A:
  JSL.L CODE_FL_85A646                      ; $86EF9A |
  RTL                                       ; $86EF9E |

CODE_86EF9F:
  JSL.L CODE_FL_86C70D                      ; $86EF9F |
  JSL.L CODE_FL_86C566                      ; $86EFA3 |
  BPL CODE_86EFAD                           ; $86EFA7 |
  EOR.W #$FFFF                              ; $86EFA9 |
  INC A                                     ; $86EFAC |

CODE_86EFAD:
  CMP.W #$0030                              ; $86EFAD |
  BCS CODE_86EFD0                           ; $86EFB0 |
  LDA.B $3A,X                               ; $86EFB2 |
  BEQ CODE_86EFD0                           ; $86EFB4 |
  LDA.B $00,X                               ; $86EFB6 |
  CMP.W #$3312                              ; $86EFB8 |
  BNE CODE_86EFD0                           ; $86EFBB |
  LDA.B $20,X                               ; $86EFBD |
  CMP.W #$0001                              ; $86EFBF |
  BNE CODE_86EFD0                           ; $86EFC2 |
  LDA.W #$0075                              ; $86EFC4 |
  JSL.L CODE_FL_86CAEE                      ; $86EFC7 |
  LDA.W #$0003                              ; $86EFCB |
  STA.B $1A,X                               ; $86EFCE |

CODE_86EFD0:
  RTL                                       ; $86EFD0 |

CODE_86EFD1:
  LDA.B $1C,X                               ; $86EFD1 |
  CMP.W #$000C                              ; $86EFD3 |
  BNE CODE_86EFEF                           ; $86EFD6 |
  LDA.W #$3306                              ; $86EFD8 |
  STA.B $00,X                               ; $86EFDB |
  LDA.W #$0074                              ; $86EFDD |
  JSL.L CODE_FL_86CAEE                      ; $86EFE0 |
  LDA.W #$0040                              ; $86EFE4 |
  STA.B $2C,X                               ; $86EFE7 |
  LDA.W #$0002                              ; $86EFE9 |
  STA.B $1A,X                               ; $86EFEC |
  RTL                                       ; $86EFEE |

CODE_86EFEF:
  LDA.B $00,X                               ; $86EFEF |
  CMP.W #$3312                              ; $86EFF1 |
  BNE CODE_86F03C                           ; $86EFF4 |
  LDA.B $20,X                               ; $86EFF6 |
  CMP.W #$0001                              ; $86EFF8 |
  BNE CODE_86F03C                           ; $86EFFB |
  STZ.B $08                                 ; $86EFFD |
  LDA.W #$0020                              ; $86EFFF |
  STA.B $0A                                 ; $86F002 |
  JSL.L CODE_FL_85AF49                      ; $86F004 |
  LDA.W #$0002                              ; $86F008 |
  STA.B $00                                 ; $86F00B |

CODE_86F00D:
  LDA.W #$0096                              ; $86F00D |
  JSL.L CODE_FL_86C9A7                      ; $86F010 |
  BCS CODE_86F03C                           ; $86F014 |
  TXA                                       ; $86F016 |
  STA.W $0044,Y                             ; $86F017 |
  JSL.L CODE_FL_86C7C4                      ; $86F01A |
  LDA.W $0004,Y                             ; $86F01E |
  AND.W #$DFDF                              ; $86F021 |
  STA.W $0004,Y                             ; $86F024 |
  JSL.L CODE_FL_86C7D4                      ; $86F027 |
  DEC.B $3A,X                               ; $86F02B |
  BEQ CODE_86F03C                           ; $86F02D |
  DEC.B $00                                 ; $86F02F |
  BNE CODE_86F00D                           ; $86F031 |
  LDA.W $0004,Y                             ; $86F033 |
  ORA.W #$2020                              ; $86F036 |
  STA.W $0004,Y                             ; $86F039 |

CODE_86F03C:
  RTL                                       ; $86F03C |

CODE_86F03D:
  LDA.W #$00D5                              ; $86F03D |
  JSL.L CODE_FL_86C9A7                      ; $86F040 |
  JSL.L CODE_FL_85A71F                      ; $86F044 |
  JML.L CODE_FL_86CA2D                      ; $86F048 |

CODE_86F04C:
  LDA.W #$FFF0                              ; $86F04C |
  JSL.L CODE_FL_86CB2D                      ; $86F04F |
  BCS CODE_86F060                           ; $86F053 |
  LDY.B $44,X                               ; $86F055 |
  LDA.W $003A,Y                             ; $86F057 |
  ADC.W #$0001                              ; $86F05A |
  STA.W $003A,Y                             ; $86F05D |

CODE_86F060:
  LDA.W #$0002                              ; $86F060 |
  LDY.W #$0006                              ; $86F063 |
  JSL.L CODE_FL_85AD62                      ; $86F066 |
  JSL.L CODE_FL_86C3F8                      ; $86F06A |
  PHX                                       ; $86F06E |
  ASL A                                     ; $86F06F |
  TAX                                       ; $86F070 |
  LDA.L PTR16_86F07B,X                      ; $86F071 |
  PLX                                       ; $86F075 |
  STA.B $00                                 ; $86F076 |
  JMP.W ($0000)                             ; $86F078 |

PTR16_86F07B:
  dw CODE_86F089                            ; $86F07B |
  dw CODE_86F0AA                            ; $86F07D |
  dw CODE_86F0F7                            ; $86F07F |
  dw CODE_86F108                            ; $86F081 |
  dw CODE_86F133                            ; $86F083 |
  dw CODE_86F14D                            ; $86F085 |
  dw CODE_86F16D                            ; $86F087 |

CODE_86F089:
  JSL.L CODE_FL_86C444                      ; $86F089 |
  LDA.W #$FF00                              ; $86F08D |
  JSL.L CODE_FL_86C887                      ; $86F090 |
  LDA.W #$FB00                              ; $86F094 |
  STA.B $28,X                               ; $86F097 |
  LDA.W #$32E6                              ; $86F099 |
  STA.B $00,X                               ; $86F09C |
  JSL.L CODE_FL_85A5D0                      ; $86F09E |
  JSL.L CODE_FL_85A9B7                      ; $86F0A2 |
  JML.L CODE_FL_86C63F                      ; $86F0A6 |

CODE_86F0AA:
  JSL.L CODE_FL_85A5F2                      ; $86F0AA |
  BNE CODE_86F0E8                           ; $86F0AE |
  JSL.L CODE_FL_86C55C                      ; $86F0B0 |
  STA.B $3A,X                               ; $86F0B4 |
  BPL CODE_86F0BC                           ; $86F0B6 |
  EOR.W #$FFFF                              ; $86F0B8 |
  INC A                                     ; $86F0BB |

CODE_86F0BC:
  CMP.W $002E,Y                             ; $86F0BC |
  BCS CODE_86F0F6                           ; $86F0BF |
  JSL.L CODE_FL_86C566                      ; $86F0C1 |
  STA.B $3C,X                               ; $86F0C5 |
  BPL CODE_86F0CD                           ; $86F0C7 |
  EOR.W #$FFFF                              ; $86F0C9 |
  INC A                                     ; $86F0CC |

CODE_86F0CD:
  CMP.W $0030,Y                             ; $86F0CD |
  BCS CODE_86F0F6                           ; $86F0D0 |
  STZ.B $26,X                               ; $86F0D2 |
  STZ.B $28,X                               ; $86F0D4 |
  LDA.W #$0076                              ; $86F0D6 |
  JSL.L CODE_FL_86CAEE                      ; $86F0D9 |
  JSL.L CODE_FL_85A5C4                      ; $86F0DD |
  LDA.W #$0004                              ; $86F0E1 |
  STA.B $1A,X                               ; $86F0E4 |
  BRA CODE_86F0F6                           ; $86F0E6 |

CODE_86F0E8:
  STZ.B $26,X                               ; $86F0E8 |
  LDA.W #$0008                              ; $86F0EA |
  STA.B $2C,X                               ; $86F0ED |
  LDA.W #$32E6                              ; $86F0EF |
  STA.B $00,X                               ; $86F0F2 |
  STZ.B $1E,X                               ; $86F0F4 |

CODE_86F0F6:
  RTL                                       ; $86F0F6 |

CODE_86F0F7:
  JSL.L CODE_FL_86C70D                      ; $86F0F7 |
  LDA.W #$0008                              ; $86F0FB |
  STA.B $2C,X                               ; $86F0FE |
  LDA.W #$32EC                              ; $86F100 |
  STA.B $00,X                               ; $86F103 |
  INC.B $1A,X                               ; $86F105 |
  RTL                                       ; $86F107 |

CODE_86F108:
  JSL.L CODE_FL_86C70D                      ; $86F108 |
  JSL.L CODE_FL_86C486                      ; $86F10C |
  LDA.W #$FF00                              ; $86F110 |
  JSL.L CODE_FL_86C887                      ; $86F113 |
  LDA.W #$FC00                              ; $86F117 |
  STA.B $28,X                               ; $86F11A |
  LDA.W #$0040                              ; $86F11C |
  STA.B $4C,X                               ; $86F11F |
  LDA.W #$32F2                              ; $86F121 |
  STA.B $00,X                               ; $86F124 |
  LDA.W #$0007                              ; $86F126 |
  JSL.L push_sound_queue                    ; $86F129 |
  LDA.W #$0001                              ; $86F12D |
  STA.B $1A,X                               ; $86F130 |
  RTL                                       ; $86F132 |

CODE_86F133:
  LDA.B $3A,X                               ; $86F133 |
  STA.B $00                                 ; $86F135 |
  LDA.B $3C,X                               ; $86F137 |
  STA.B $02                                 ; $86F139 |
  JSL.L CODE_FL_85AEE0                      ; $86F13B |
  JSL.L CODE_FL_86C70D                      ; $86F13F |
  JSL.L CODE_FL_86F188                      ; $86F143 |
  LDA.W #$0020                              ; $86F147 |
  STA.B $2C,X                               ; $86F14A |
  RTL                                       ; $86F14C |

CODE_86F14D:
  JSL.L CODE_FL_86C486                      ; $86F14D |
  LDA.W #$0200                              ; $86F151 |
  JSL.L CODE_FL_86C887                      ; $86F154 |
  LDA.W #$FC00                              ; $86F158 |
  STA.B $28,X                               ; $86F15B |
  LDA.W #$0040                              ; $86F15D |
  STA.B $4C,X                               ; $86F160 |
  LDA.W #$32F2                              ; $86F162 |
  STA.B $00,X                               ; $86F165 |
  LDA.W #$0001                              ; $86F167 |
  STA.B $1A,X                               ; $86F16A |
  RTL                                       ; $86F16C |

CODE_86F16D:
  LDY.B $44,X                               ; $86F16D |
  CLC                                       ; $86F16F |
  LDA.W $003A,Y                             ; $86F170 |
  ADC.W #$0001                              ; $86F173 |
  STA.W $003A,Y                             ; $86F176 |
  LDA.W #$8000                              ; $86F179 |
  JSL.L CODE_FL_85AA0F                      ; $86F17C |
  JSL.L CODE_FL_85A986                      ; $86F180 |
  JML.L CODE_FL_86CA2D                      ; $86F184 |

CODE_FL_86F188:
  LDA.B $A6                                 ; $86F188 |
  BEQ CODE_86F19A                           ; $86F18A |
  LDA.B ($48,X)                             ; $86F18C |
  TAY                                       ; $86F18E |
  CPY.B $A6                                 ; $86F18F |
  BNE CODE_86F19A                           ; $86F191 |
  LDA.W #$0001                              ; $86F193 |
  JSL.L CODE_FL_83D2E8                      ; $86F196 |

CODE_86F19A:
  RTL                                       ; $86F19A |

CODE_86F19B:
  JSL.L CODE_FL_86C41D                      ; $86F19B |
  PHX                                       ; $86F19F |
  ASL A                                     ; $86F1A0 |
  TAX                                       ; $86F1A1 |
  LDA.L PTR16_86F1AC,X                      ; $86F1A2 |
  PLX                                       ; $86F1A6 |
  STA.B $00                                 ; $86F1A7 |
  JMP.W ($0000)                             ; $86F1A9 |

PTR16_86F1AC:
  dw CODE_86F1B2                            ; $86F1AC |
  dw CODE_86F1D6                            ; $86F1AE |
  dw CODE_86F1E7                            ; $86F1B0 |

CODE_86F1B2:
  LDA.B $3A,X                               ; $86F1B2 |
  BNE CODE_86F1BB                           ; $86F1B4 |
  LDA.W #$FA00                              ; $86F1B6 |
  BRA CODE_86F1BE                           ; $86F1B9 |

CODE_86F1BB:
  LDA.W #$FE00                              ; $86F1BB |

CODE_86F1BE:
  STA.B $28,X                               ; $86F1BE |
  LDA.W #$0060                              ; $86F1C0 |
  STA.B $4C,X                               ; $86F1C3 |
  LDA.B $3C,X                               ; $86F1C5 |
  BEQ CODE_86F1CE                           ; $86F1C7 |
  LDA.W #$FE00                              ; $86F1C9 |
  BRA CODE_86F1D1                           ; $86F1CC |

CODE_86F1CE:
  LDA.W #$0200                              ; $86F1CE |

CODE_86F1D1:
  STA.B $26,X                               ; $86F1D1 |
  INC.B $1A,X                               ; $86F1D3 |
  RTL                                       ; $86F1D5 |

CODE_86F1D6:
  LDA.W $1C38                               ; $86F1D6 |
  AND.W #$0003                              ; $86F1D9 |
  BNE CODE_86F1E2                           ; $86F1DC |
  JSL.L CODE_FL_8CFBD6                      ; $86F1DE |

CODE_86F1E2:
  JSL.L CODE_FL_85A5F2                      ; $86F1E2 |
  RTL                                       ; $86F1E6 |

CODE_86F1E7:
  JSL.L CODE_FL_85A986                      ; $86F1E7 |
  JML.L CODE_FL_86CA36                      ; $86F1EB |

CODE_86F1EF:
  LDA.W #$7000                              ; $86F1EF |
  STA.W $040C                               ; $86F1F2 |
  STZ.W $040E                               ; $86F1F5 |
  LDA.W #$C001                              ; $86F1F8 |
  STA.B $E4                                 ; $86F1FB |
  JSL.L CODE_FL_86C3A3                      ; $86F1FD |
  JSL.L CODE_FL_86F209                      ; $86F201 |
  JML.L CODE_JL_86F343                      ; $86F205 |

CODE_FL_86F209:
  LDA.B $1A,X                               ; $86F209 |
  PHX                                       ; $86F20B |
  ASL A                                     ; $86F20C |
  TAX                                       ; $86F20D |
  LDA.L PTR16_86F218,X                      ; $86F20E |
  PLX                                       ; $86F212 |
  STA.B $00                                 ; $86F213 |
  JMP.W ($0000)                             ; $86F215 |

PTR16_86F218:
  dw CODE_86F228                            ; $86F218 |
  dw CODE_86F2D5                            ; $86F21A |
  dw CODE_86F2F3                            ; $86F21C |
  dw CODE_86F303                            ; $86F21E |
  dw CODE_86F30D                            ; $86F220 |
  dw CODE_86F31A                            ; $86F222 |
  dw CODE_86F327                            ; $86F224 |
  dw CODE_86F33A                            ; $86F226 |

CODE_86F228:
  LDA.W #$8000                              ; $86F228 |
  STA.B $08,X                               ; $86F22B |
  STZ.B $0A,X                               ; $86F22D |
  LDA.W #$7000                              ; $86F22F |
  STA.B $0C,X                               ; $86F232 |
  STZ.B $0E,X                               ; $86F234 |
  LDA.W $0404                               ; $86F236 |
  AND.W #$DFDF                              ; $86F239 |
  STA.W $0404                               ; $86F23C |
  LDA.W $04C4                               ; $86F23F |
  AND.W #$DFDF                              ; $86F242 |
  STA.W $04C4                               ; $86F245 |
  LDA.W #$8000                              ; $86F248 |
  STA.B $22,X                               ; $86F24B |
  INC.B $76                                 ; $86F24D |
  STZ.B $5E                                 ; $86F24F |
  STZ.B $60                                 ; $86F251 |
  LDA.W #$0800                              ; $86F253 |
  STA.B $62                                 ; $86F256 |
  LDA.W #$0130                              ; $86F258 |
  STA.W $1672                               ; $86F25B |
  LDA.W #$0001                              ; $86F25E |
  STA.B $92                                 ; $86F261 |
  LDY.W #$0BC0                              ; $86F263 |
  LDA.W #$020D                              ; $86F266 |
  JSL.L CODE_FL_86C9E0                      ; $86F269 |
  LDA.W #$3036                              ; $86F26D |
  STA.W $0000,Y                             ; $86F270 |
  LDA.W #$0130                              ; $86F273 |
  STA.W $0009,Y                             ; $86F276 |
  LDA.W #$0080                              ; $86F279 |
  STA.W $000D,Y                             ; $86F27C |
  LDA.W #$8000                              ; $86F27F |
  STA.W $0022,Y                             ; $86F282 |
  LDY.W #$0C10                              ; $86F285 |
  LDA.W #$020E                              ; $86F288 |
  JSL.L CODE_FL_86C9E0                      ; $86F28B |
  LDA.W #$3052                              ; $86F28F |
  STA.W $0000,Y                             ; $86F292 |
  LDA.W $0C14                               ; $86F295 |
  EOR.W #$2020                              ; $86F298 |
  STA.W $0C14                               ; $86F29B |
  LDA.W #$00E0                              ; $86F29E |
  STA.W $0009,Y                             ; $86F2A1 |
  LDA.W #$0080                              ; $86F2A4 |
  STA.W $000D,Y                             ; $86F2A7 |
  LDY.W #$0C60                              ; $86F2AA |
  LDA.W #$020F                              ; $86F2AD |
  JSL.L CODE_FL_86C9E0                      ; $86F2B0 |
  LDA.W #$306C                              ; $86F2B4 |
  STA.W $0000,Y                             ; $86F2B7 |
  LDA.W #$0200                              ; $86F2BA |
  STA.W $0009,Y                             ; $86F2BD |
  LDA.W #$0080                              ; $86F2C0 |
  STA.W $000D,Y                             ; $86F2C3 |
  LDA.W #$8000                              ; $86F2C6 |
  STA.W $0022,Y                             ; $86F2C9 |
  LDA.W #$0060                              ; $86F2CC |
  STA.W $0409                               ; $86F2CF |
  INC.B $1A,X                               ; $86F2D2 |
  RTL                                       ; $86F2D4 |

CODE_86F2D5:
  JSL.L CODE_FL_8B82DA                      ; $86F2D5 |
  LDA.W #$0080                              ; $86F2D9 |
  STA.W $062D                               ; $86F2DC |
  BCC CODE_86F2E2                           ; $86F2DF |
  RTL                                       ; $86F2E1 |

CODE_86F2E2:
  JSL.L CODE_FL_848398                      ; $86F2E2 |
  BCS CODE_86F2ED                           ; $86F2E6 |
  LDA.W #$0002                              ; $86F2E8 |
  BRA CODE_86F2F0                           ; $86F2EB |

CODE_86F2ED:
  LDA.W #$0003                              ; $86F2ED |

CODE_86F2F0:
  STA.B $1A,X                               ; $86F2F0 |
  RTL                                       ; $86F2F2 |

CODE_86F2F3:
  LDA.W #$4E84                              ; $86F2F3 |
  JSL.L CODE_FL_809934                      ; $86F2F6 |
  BCS CODE_86F2FD                           ; $86F2FA |
  RTL                                       ; $86F2FC |

CODE_86F2FD:
  LDA.W #$0004                              ; $86F2FD |
  STA.B $1A,X                               ; $86F300 |
  RTL                                       ; $86F302 |

CODE_86F303:
  LDA.W #$4DB1                              ; $86F303 |
  JSL.L CODE_FL_809934                      ; $86F306 |
  BCS CODE_86F2FD                           ; $86F30A |
  RTL                                       ; $86F30C |

CODE_86F30D:
  LDA.W #$4FD4                              ; $86F30D |
  JSL.L CODE_FL_809934                      ; $86F310 |
  BCS CODE_86F317                           ; $86F314 |
  RTL                                       ; $86F316 |

CODE_86F317:
  INC.B $1A,X                               ; $86F317 |
  RTL                                       ; $86F319 |

CODE_86F31A:
  LDA.W #$51AF                              ; $86F31A |
  JSL.L CODE_FL_809934                      ; $86F31D |
  BCS CODE_86F324                           ; $86F321 |
  RTL                                       ; $86F323 |

CODE_86F324:
  INC.B $1A,X                               ; $86F324 |
  RTL                                       ; $86F326 |

CODE_86F327:
  LDA.W #$51CB                              ; $86F327 |
  JSL.L CODE_FL_809934                      ; $86F32A |
  BCS CODE_86F331                           ; $86F32E |
  RTL                                       ; $86F330 |

CODE_86F331:
  PHX                                       ; $86F331 |
  JSL.L CODE_FL_80C213                      ; $86F332 |
  PLX                                       ; $86F336 |
  INC.B $1A,X                               ; $86F337 |
  RTL                                       ; $86F339 |

CODE_86F33A:
  JSL.L CODE_FL_80C256                      ; $86F33A |
  JSL.L CODE_FL_80EDD2                      ; $86F33E |
  RTL                                       ; $86F342 |

CODE_JL_86F343:
  LDA.L $7E7C02                             ; $86F343 |
  BEQ CODE_86F34B                           ; $86F347 |
  STA.B $3C,X                               ; $86F349 |

CODE_86F34B:
  LDA.B $3C,X                               ; $86F34B |
  PHX                                       ; $86F34D |
  ASL A                                     ; $86F34E |
  TAX                                       ; $86F34F |
  LDA.L PTR16_86F35A,X                      ; $86F350 |
  PLX                                       ; $86F354 |
  STA.B $00                                 ; $86F355 |
  JMP.W ($0000)                             ; $86F357 |

PTR16_86F35A:
  dw CODE_86F37A                            ; $86F35A |
  dw CODE_86F37B                            ; $86F35C |
  dw CODE_86F390                            ; $86F35E |
  dw CODE_86F3BB                            ; $86F360 |
  dw CODE_86F3CB                            ; $86F362 |
  dw CODE_86F3DB                            ; $86F364 |
  dw CODE_86F3EB                            ; $86F366 |
  dw CODE_86F428                            ; $86F368 |
  dw CODE_86F41B                            ; $86F36A |
  dw CODE_86F44D                            ; $86F36C |
  dw CODE_86F463                            ; $86F36E |
  dw CODE_86F4BC                            ; $86F370 |
  dw CODE_86F4A7                            ; $86F372 |
  dw CODE_86F51F                            ; $86F374 |
  dw CODE_86F54E                            ; $86F376 |
  dw CODE_86F564                            ; $86F378 |

CODE_86F37A:
  RTL                                       ; $86F37A |

CODE_86F37B:
  LDA.W #$0040                              ; $86F37B |
  STA.B $2C,X                               ; $86F37E |
  LDA.W #$00F6                              ; $86F380 |
  STA.L $7E7C04                             ; $86F383 |
  JSL.L CODE_FL_86F57F                      ; $86F387 |
  LDA.W #$FE80                              ; $86F38B |
  STA.B $26,X                               ; $86F38E |

CODE_86F390:
  JSL.L CODE_FL_86F588                      ; $86F390 |
  LDA.B $2C,X                               ; $86F394 |
  BNE CODE_86F3BA                           ; $86F396 |
  STZ.B $3C,X                               ; $86F398 |
  LDA.W #$0000                              ; $86F39A |
  STA.L $7E7C02                             ; $86F39D |
  STA.L $7E7C04                             ; $86F3A1 |
  INC.W $063A                               ; $86F3A5 |
  INC.W $068A                               ; $86F3A8 |
  INC.W $090A                               ; $86F3AB |
  INC.W $095A                               ; $86F3AE |
  LDA.W $0C14                               ; $86F3B1 |
  EOR.W #$2020                              ; $86F3B4 |
  STA.W $0C14                               ; $86F3B7 |

CODE_86F3BA:
  RTL                                       ; $86F3BA |

CODE_86F3BB:
  LDA.W #$3000                              ; $86F3BB |
  STA.W $0BC0                               ; $86F3BE |
  STZ.B $3C,X                               ; $86F3C1 |
  LDA.W #$0000                              ; $86F3C3 |
  STA.L $7E7C02                             ; $86F3C6 |
  RTL                                       ; $86F3CA |

CODE_86F3CB:
  LDA.W #$3018                              ; $86F3CB |
  STA.W $0BC0                               ; $86F3CE |
  STZ.B $3C,X                               ; $86F3D1 |
  LDA.W #$0000                              ; $86F3D3 |
  STA.L $7E7C02                             ; $86F3D6 |
  RTL                                       ; $86F3DA |

CODE_86F3DB:
  LDA.W #$3036                              ; $86F3DB |
  STA.W $0BC0                               ; $86F3DE |
  STZ.B $3C,X                               ; $86F3E1 |
  LDA.W #$0000                              ; $86F3E3 |
  STA.L $7E7C02                             ; $86F3E6 |
  RTL                                       ; $86F3EA |

CODE_86F3EB:
  LDY.W #$0128                              ; $86F3EB |
  JSL.L CODE_FL_808993                      ; $86F3EE |
  LDA.W #$0069                              ; $86F3F2 |
  STA.B $2C,X                               ; $86F3F5 |
  JSL.L CODE_FL_86F57F                      ; $86F3F7 |
  LDA.W #$FE80                              ; $86F3FB |
  STA.B $26,X                               ; $86F3FE |
  PHX                                       ; $86F400 |
  LDX.W #$0C60                              ; $86F401 |
  LDA.W #$9075                              ; $86F404 |
  JSL.L CODE_FL_86CAEE                      ; $86F407 |
  PLX                                       ; $86F40B |
  LDA.W #$FE30                              ; $86F40C |
  STA.W $0C86                               ; $86F40F |
  LDA.W #$0000                              ; $86F412 |
  STA.L $7E7C02                             ; $86F415 |
  BRA CODE_86F428                           ; $86F419 |

CODE_86F41B:
  LDA.B $2C,X                               ; $86F41B |
  BNE CODE_86F428                           ; $86F41D |
  STZ.B $3C,X                               ; $86F41F |
  LDA.W #$0000                              ; $86F421 |
  STA.L $7E7C02                             ; $86F424 |

CODE_86F428:
  LDA.B $2C,X                               ; $86F428 |
  BEQ CODE_86F43F                           ; $86F42A |
  JSL.L CODE_FL_86F588                      ; $86F42C |
  PHX                                       ; $86F430 |
  LDX.W #$0C60                              ; $86F431 |
  JSL.L CODE_FL_97FC80                      ; $86F434 |
  JSL.L CODE_FL_86C859                      ; $86F438 |
  PLX                                       ; $86F43C |
  BRA CODE_86F44C                           ; $86F43D |

CODE_86F43F:
  LDA.W #$0C60                              ; $86F43F |
  JSL.L CODE_FL_86F5CA                      ; $86F442 |
  LDA.W #$306C                              ; $86F446 |
  STA.W $0C60                               ; $86F449 |

CODE_86F44C:
  RTL                                       ; $86F44C |

CODE_86F44D:
  LDA.W #$7FFF                              ; $86F44D |
  JSL.L CODE_FL_808D48                      ; $86F450 |
  LDA.W #$0040                              ; $86F454 |
  STA.B $2C,X                               ; $86F457 |
  LDA.W #$0100                              ; $86F459 |
  JSL.L CODE_FL_8089BD                      ; $86F45C |
  JMP.W CODE_FL_86F57F                      ; $86F460 |

CODE_86F463:
  LDA.B $2C,X                               ; $86F463 |
  BEQ CODE_86F468                           ; $86F465 |
  RTL                                       ; $86F467 |

CODE_86F468:
  LDA.W #$0000                              ; $86F468 |
  JSL.L CODE_FL_808D48                      ; $86F46B |
  LDA.W #$00E0                              ; $86F46F |
  STA.W $1672                               ; $86F472 |
  STZ.W $0BC0                               ; $86F475 |
  LDA.W #$309C                              ; $86F478 |
  STA.W $0C60                               ; $86F47B |
  LDA.W #$0090                              ; $86F47E |
  STA.W $0C69                               ; $86F481 |
  LDA.W #$0060                              ; $86F484 |
  STA.W $0C6D                               ; $86F487 |
  LDA.W #$0080                              ; $86F48A |
  STA.W $0C86                               ; $86F48D |
  LDA.W #$FFC0                              ; $86F490 |
  STA.W $0C88                               ; $86F493 |
  INC.B $3C,X                               ; $86F496 |
  LDA.W #$0000                              ; $86F498 |
  STA.L $7E7C02                             ; $86F49B |
  LDA.W #$0029                              ; $86F49F |
  JSL.L push_sound_queue                    ; $86F4A2 |
  RTL                                       ; $86F4A6 |

CODE_86F4A7:
  LDA.B $3E,X                               ; $86F4A7 |
  BNE CODE_86F4B4                           ; $86F4A9 |
  LDA.W #$00EC                              ; $86F4AB |
  JSL.L push_sound_queue                    ; $86F4AE |
  INC.B $3E,X                               ; $86F4B2 |

CODE_86F4B4:
  LDA.W $0C69                               ; $86F4B4 |
  CMP.W #$0110                              ; $86F4B7 |
  BPL CODE_86F4D1                           ; $86F4BA |

CODE_86F4BC:
  PHX                                       ; $86F4BC |
  LDX.W #$0C60                              ; $86F4BD |
  LDA.B $09,X                               ; $86F4C0 |
  CMP.W #$0110                              ; $86F4C2 |
  BPL CODE_86F4CF                           ; $86F4C5 |
  JSL.L CODE_FL_86C859                      ; $86F4C7 |
  JSL.L CODE_FL_86C870                      ; $86F4CB |

CODE_86F4CF:
  PLX                                       ; $86F4CF |
  RTL                                       ; $86F4D0 |

CODE_86F4D1:
  LDA.W #$0066                              ; $86F4D1 |
  STA.W $0629                               ; $86F4D4 |
  LDA.W #$004C                              ; $86F4D7 |
  STA.W $0679                               ; $86F4DA |
  LDA.W #$0033                              ; $86F4DD |
  STA.W $08F9                               ; $86F4E0 |
  LDA.W #$001A                              ; $86F4E3 |
  STA.W $0949                               ; $86F4E6 |
  LDA.W #$00CE                              ; $86F4E9 |
  STA.W $0BC9                               ; $86F4EC |
  LDA.W #$007E                              ; $86F4EF |
  STA.W $0C19                               ; $86F4F2 |
  LDA.W #$00D0                              ; $86F4F5 |
  STA.W $062D                               ; $86F4F8 |
  STA.W $067D                               ; $86F4FB |
  STA.W $08FD                               ; $86F4FE |
  STA.W $094D                               ; $86F501 |
  STA.W $0BCD                               ; $86F504 |
  STA.W $0C1D                               ; $86F507 |
  STZ.W $0648                               ; $86F50A |
  STZ.W $0698                               ; $86F50D |
  STZ.W $0918                               ; $86F510 |
  STZ.W $0968                               ; $86F513 |
  LDA.W #$30A4                              ; $86F516 |
  STA.W $0BC0                               ; $86F519 |
  JMP.W CODE_FL_86F57F                      ; $86F51C |

CODE_86F51F:
  DEC.W $062D                               ; $86F51F |
  DEC.W $067D                               ; $86F522 |
  DEC.W $08FD                               ; $86F525 |
  DEC.W $094D                               ; $86F528 |
  DEC.W $0BCD                               ; $86F52B |
  DEC.W $0C1D                               ; $86F52E |
  INC.W $1672                               ; $86F531 |
  LDA.W $1672                               ; $86F534 |
  CMP.W #$0130                              ; $86F537 |
  BEQ CODE_86F53D                           ; $86F53A |
  RTL                                       ; $86F53C |

CODE_86F53D:
  STZ.B $3C,X                               ; $86F53D |
  LDA.W #$0000                              ; $86F53F |
  STA.L $7E7C02                             ; $86F542 |
  LDY.W #$012C                              ; $86F546 |
  JSL.L CODE_FL_808993                      ; $86F549 |
  RTL                                       ; $86F54D |

CODE_86F54E:
  LDA.W #$0C10                              ; $86F54E |
  JSL.L CODE_FL_86F5CA                      ; $86F551 |
  LDA.W #$0060                              ; $86F555 |
  STA.B $2C,X                               ; $86F558 |
  LDA.W #$007C                              ; $86F55A |
  JSL.L CODE_FL_8089BD                      ; $86F55D |
  JMP.W CODE_FL_86F57F                      ; $86F561 |

CODE_86F564:
  LDA.B $2C,X                               ; $86F564 |
  AND.W #$0001                              ; $86F566 |
  ASL A                                     ; $86F569 |
  TAY                                       ; $86F56A |
  LDA.W LOOSE_OP_00CF8D,Y                   ; $86F56B |
  STA.W $0BC0                               ; $86F56E |
  LDA.B $2C,X                               ; $86F571 |
  BNE CODE_86F57E                           ; $86F573 |
  STZ.B $3C,X                               ; $86F575 |
  LDA.W #$0000                              ; $86F577 |
  STA.L $7E7C02                             ; $86F57A |

CODE_86F57E:
  RTL                                       ; $86F57E |

CODE_FL_86F57F:
  INC.B $3C,X                               ; $86F57F |
  LDA.B $3C,X                               ; $86F581 |
  STA.L $7E7C02                             ; $86F583 |
  RTL                                       ; $86F587 |

CODE_FL_86F588:
  JSL.L CODE_FL_9CFFA9                      ; $86F588 |
  LDA.W $1662                               ; $86F58C |
  AND.W #$007F                              ; $86F58F |
  CLC                                       ; $86F592 |
  ADC.W #$0100                              ; $86F593 |
  STA.W $1662                               ; $86F596 |
  LDY.W #$0620                              ; $86F599 |
  JSL.L CODE_FL_9CFF3A                      ; $86F59C |
  LDY.W #$0670                              ; $86F5A0 |
  JSL.L CODE_FL_9CFF3A                      ; $86F5A3 |
  LDY.W #$08F0                              ; $86F5A7 |
  JSL.L CODE_FL_9CFF3A                      ; $86F5AA |
  LDY.W #$0940                              ; $86F5AE |
  JSL.L CODE_FL_9CFF3A                      ; $86F5B1 |
  LDY.W #$0BC0                              ; $86F5B5 |
  JSL.L CODE_FL_9CFF3A                      ; $86F5B8 |
  LDY.W #$0C10                              ; $86F5BC |
  JSL.L CODE_FL_9CFF3A                      ; $86F5BF |
  LDY.W #$0C60                              ; $86F5C3 |
  JML.L CODE_FL_9CFF3A                      ; $86F5C6 |

CODE_FL_86F5CA:
  LDY.W $0D18                               ; $86F5CA |
  BNE CODE_86F5EA                           ; $86F5CD |
  PHX                                       ; $86F5CF |
  PHA                                       ; $86F5D0 |
  LDY.W #$0D00                              ; $86F5D1 |

CODE_86F5D4:
  LDA.W #$0211                              ; $86F5D4 |
  JSL.L CODE_FL_86C9E0                      ; $86F5D7 |
  LDA.W $0022,Y                             ; $86F5DB |
  ORA.W #$0100                              ; $86F5DE |
  STA.W $0022,Y                             ; $86F5E1 |
  PLX                                       ; $86F5E4 |
  JSL.L CODE_FL_86C7D4                      ; $86F5E5 |
  PLX                                       ; $86F5E9 |

CODE_86F5EA:
  RTL                                       ; $86F5EA |

CODE_86F5EB:
  RTL                                       ; $86F5EB |

CODE_86F5EC:
  RTL                                       ; $86F5EC |

CODE_86F5ED:
  RTL                                       ; $86F5ED |

CODE_86F5EE:
  RTL                                       ; $86F5EE |

CODE_86F5EF:
  JSL.L CODE_FL_86C3A3                      ; $86F5EF |
  JSL.L CODE_FL_86C855                      ; $86F5F3 |
  LDA.B $1A,X                               ; $86F5F7 |
  PHX                                       ; $86F5F9 |
  ASL A                                     ; $86F5FA |
  TAX                                       ; $86F5FB |
  LDA.L PTR16_86F606,X                      ; $86F5FC |
  PLX                                       ; $86F600 |
  STA.B $00                                 ; $86F601 |
  JMP.W ($0000)                             ; $86F603 |

PTR16_86F606:
  dw CODE_86F60A                            ; $86F606 |
  dw CODE_86F624                            ; $86F608 |

CODE_86F60A:
  LDA.W #$305A                              ; $86F60A |
  STA.B $00,X                               ; $86F60D |
  LDA.W #$0040                              ; $86F60F |
  STA.B $2C,X                               ; $86F612 |
  LDA.W #$FFC0                              ; $86F614 |
  STA.B $28,X                               ; $86F617 |
  LDA.B $0D,X                               ; $86F619 |
  SEC                                       ; $86F61B |

CODE_86F61C:
  SBC.W #$0020                              ; $86F61C |
  STA.B $0D,X                               ; $86F61F |
  INC.B $1A,X                               ; $86F621 |
  RTL                                       ; $86F623 |

CODE_86F624:
  LDA.B $2C,X                               ; $86F624 |
  BEQ CODE_86F630                           ; $86F626 |
  LDY.W #$0002                              ; $86F628 |
  JSL.L CODE_FL_86C514                      ; $86F62B |
  RTL                                       ; $86F62F |

CODE_86F630:
  JML.L CODE_FL_86CA36                      ; $86F630 |

CODE_86F634:
  RTL                                       ; $86F634 |

CODE_86F635:
  JSL.L CODE_FL_82BE73                      ; $86F635 |
  JSR.W CODE_FN_86FE69                      ; $86F639 |
  JSL.L CODE_FL_87E281                      ; $86F63C |
  LDX.W #$0B70                              ; $86F640 |
  LDA.B $1A,X                               ; $86F643 |
  PHX                                       ; $86F645 |
  ASL A                                     ; $86F646 |
  TAX                                       ; $86F647 |
  LDA.L PTR16_86F652,X                      ; $86F648 |
  PLX                                       ; $86F64C |
  STA.B $00                                 ; $86F64D |
  JMP.W ($0000)                             ; $86F64F |

PTR16_86F652:
  dw CODE_86F65A                            ; $86F652 |
  dw CODE_86F76C                            ; $86F654 |
  dw CODE_86F85E                            ; $86F656 |
  dw CODE_86FF9C                            ; $86F658 |

CODE_86F65A:
  INC.B $1A,X                               ; $86F65A |
  LDA.W #$0041                              ; $86F65C |
  STA.W $1FAC                               ; $86F65F |
  SEP #$20                                  ; $86F662 |
  LDA.B #$44                                ; $86F664 |
  STA.W $210B                               ; $86F666 |
  REP #$20                                  ; $86F669 |
  LDY.W #$0000                              ; $86F66B |
  JSR.W CODE_FN_86FC21                      ; $86F66E |
  LDY.W #$0004                              ; $86F671 |
  JSL.L CODE_FL_80972B                      ; $86F674 |
  LDY.W #$0800                              ; $86F678 |
  JSL.L CODE_FL_80972B                      ; $86F67B |
  TDC                                       ; $86F67F |
  STA.L $7EDAC0                             ; $86F680 |
  JSL.L CODE_FL_87E315                      ; $86F684 |
  LDA.W #$0001                              ; $86F688 |
  STA.W $1D60                               ; $86F68B |
  LDA.W #$00C0                              ; $86F68E |
  STA.W $1FC6                               ; $86F691 |
  LDA.W #$0080                              ; $86F694 |
  STA.W $1FD0                               ; $86F697 |
  STA.W $1FD2                               ; $86F69A |
  STZ.W $1D64                               ; $86F69D |
  STZ.W $1D66                               ; $86F6A0 |
  STZ.W $1FD4                               ; $86F6A3 |
  LDX.W #DATA_88B574                        ; $86F6A6 |
  JSL.L sound_transfer_blocks               ; $86F6A9 |
  LDX.W #DATA_88B57C                        ; $86F6AD |
  JSL.L sound_transfer_blocks               ; $86F6B0 |
  JSL.L CODE_FL_848655                      ; $86F6B4 |
  STZ.W $1662                               ; $86F6B8 |
  STZ.W $1672                               ; $86F6BB |
  STZ.W $1DE2                               ; $86F6BE |
  LDA.W #$0011                              ; $86F6C1 |
  STA.W $1FBE                               ; $86F6C4 |
  LDA.W #$00AF                              ; $86F6C7 |
  STA.W $19B4                               ; $86F6CA |
  LDX.W #$0B70                              ; $86F6CD |
  LDA.W #$303A                              ; $86F6D0 |
  STA.B $00,X                               ; $86F6D3 |
  LDA.W #$B000                              ; $86F6D5 |
  STA.B $08,X                               ; $86F6D8 |
  STZ.B $0C,X                               ; $86F6DA |
  LDA.W #$000C                              ; $86F6DC |
  STA.B $2E,X                               ; $86F6DF |
  LDA.W #$0020                              ; $86F6E1 |
  STA.B $30,X                               ; $86F6E4 |
  STZ.B $3A,X                               ; $86F6E6 |
  LDA.W #$0080                              ; $86F6E8 |
  STA.B $28,X                               ; $86F6EB |
  LDA.W #$E000                              ; $86F6ED |
  STA.B $34,X                               ; $86F6F0 |
  STZ.B $22,X                               ; $86F6F2 |
  STZ.B $48,X                               ; $86F6F4 |
  LDA.W #$01C8                              ; $86F6F6 |
  STA.B $18,X                               ; $86F6F9 |
  LDA.W #$0030                              ; $86F6FB |
  STA.B $3C,X                               ; $86F6FE |
  JSR.W CODE_FN_86F761                      ; $86F700 |
  LDX.W #$0D00                              ; $86F703 |
  LDA.W #$01EF                              ; $86F706 |
  STA.B $18,X                               ; $86F709 |
  JSR.W CODE_FN_86F761                      ; $86F70B |
  LDX.W #$0DA0                              ; $86F70E |
  LDA.W #$01EF                              ; $86F711 |
  STA.B $18,X                               ; $86F714 |
  LDA.W #$31E6                              ; $86F716 |
  STA.B $00,X                               ; $86F719 |
  LDA.W #$0080                              ; $86F71B |
  STA.B $09,X                               ; $86F71E |
  LDA.W #$0060                              ; $86F720 |
  STA.B $0D,X                               ; $86F723 |
  STZ.B $22,X                               ; $86F725 |
  STZ.B $3C,X                               ; $86F727 |
  STZ.B $2A,X                               ; $86F729 |
  STZ.B $2C,X                               ; $86F72B |
  STZ.B $34,X                               ; $86F72D |
  STZ.B $44,X                               ; $86F72F |
  STZ.B $46,X                               ; $86F731 |
  STZ.B $42,X                               ; $86F733 |
  LDA.W #$0007                              ; $86F735 |
  STA.B $40,X                               ; $86F738 |
  LDA.W #$0008                              ; $86F73A |
  STA.B $2E,X                               ; $86F73D |
  LDA.W #$0004                              ; $86F73F |
  STA.B $30,X                               ; $86F742 |
  LDA.W #$0083                              ; $86F744 |
  STA.B $14,X                               ; $86F747 |
  JSL.L CODE_FL_8B80CE                      ; $86F749 |
  LDA.W #$0001                              ; $86F74D |
  STA.B $E4                                 ; $86F750 |
  LDA.W #$002C                              ; $86F752 |
  JSL.L CODE_FL_87E3B2                      ; $86F755 |
  LDA.W #$0001                              ; $86F759 |
  STA.L $7E7D90                             ; $86F75C |
  RTL                                       ; $86F760 |

CODE_FN_86F761:
  LDA.W #$0081                              ; $86F761 |
  STA.B $14,X                               ; $86F764 |
  LDA.W #$1898                              ; $86F766 |
  STA.B $04,X                               ; $86F769 |
  RTS                                       ; $86F76B |

CODE_86F76C:
  JSR.W CODE_FN_86F916                      ; $86F76C |
  JSR.W CODE_FN_86FCE9                      ; $86F76F |
  JSR.W CODE_FN_86FD19                      ; $86F772 |
  LDX.W #$0B70                              ; $86F775 |
  LDA.B $3A,X                               ; $86F778 |
  PHX                                       ; $86F77A |
  ASL A                                     ; $86F77B |
  TAX                                       ; $86F77C |
  LDA.L PTR16_86F787,X                      ; $86F77D |
  PLX                                       ; $86F781 |
  STA.B $00                                 ; $86F782 |
  JMP.W ($0000)                             ; $86F784 |

PTR16_86F787:
  dw CODE_86F799                            ; $86F787 |
  dw CODE_86F7BF                            ; $86F789 |
  dw CODE_86F7E5                            ; $86F78B |
  dw CODE_86F7EA                            ; $86F78D |
  dw CODE_86F7F9                            ; $86F78F |
  dw CODE_86F7FC                            ; $86F791 |
  dw CODE_86F839                            ; $86F793 |
  dw CODE_86F84D                            ; $86F795 |
  dw CODE_86F850                            ; $86F797 |

CODE_86F799:
  DEC.B $3C,X                               ; $86F799 |
  BPL CODE_86F7AA                           ; $86F79B |
  LDA.W #$0060                              ; $86F79D |
  STA.B $3C,X                               ; $86F7A0 |
  INC.B $3A,X                               ; $86F7A2 |
  STZ.W $0498                               ; $86F7A4 |
  STZ.W $0558                               ; $86F7A7 |

CODE_86F7AA:
  LDX.W #$0400                              ; $86F7AA |
  LDA.W #$0180                              ; $86F7AD |
  ADC.B $08,X                               ; $86F7B0 |
  STA.B $08,X                               ; $86F7B2 |
  LDX.W #$04C0                              ; $86F7B4 |
  LDA.W #$00C0                              ; $86F7B7 |
  ADC.B $08,X                               ; $86F7BA |
  STA.B $08,X                               ; $86F7BC |
  RTL                                       ; $86F7BE |

CODE_86F7BF:
  DEC.B $3C,X                               ; $86F7BF |
  BPL CODE_86F7E4                           ; $86F7C1 |
  INC.B $3C,X                               ; $86F7C3 |
  LDA.W #$058A                              ; $86F7C5 |
  JSL.L CODE_FL_8CF9DB                      ; $86F7C8 |
  BCS CODE_86F7DD                           ; $86F7CC |
  JSL.L CODE_FL_87E3B7                      ; $86F7CE |
  BCC CODE_86F7E4                           ; $86F7D2 |
  LDA.L $70078A                             ; $86F7D4 |
  INC A                                     ; $86F7D8 |
  STA.L $70078A                             ; $86F7D9 |

CODE_86F7DD:
  LDA.W #$0040                              ; $86F7DD |
  STA.B $3C,X                               ; $86F7E0 |

CODE_86F7E2:
  INC.B $3A,X                               ; $86F7E2 |

CODE_86F7E4:
  RTL                                       ; $86F7E4 |

CODE_86F7E5:
  DEC.B $3C,X                               ; $86F7E5 |
  BMI CODE_86F7E2                           ; $86F7E7 |
  RTL                                       ; $86F7E9 |

CODE_86F7EA:
  LDA.W $0418                               ; $86F7EA |
  DEC A                                     ; $86F7ED |
  ASL A                                     ; $86F7EE |
  TAY                                       ; $86F7EF |
  LDA.W LOOSE_OP_00D30F,Y                   ; $86F7F0 |
  JSL.L CODE_FL_809934                      ; $86F7F3 |
  BCC CODE_86F7FB                           ; $86F7F7 |

CODE_86F7F9:
  INC.B $3A,X                               ; $86F7F9 |

CODE_86F7FB:
  RTL                                       ; $86F7FB |

CODE_86F7FC:
  JSL.L CODE_FL_848655                      ; $86F7FC |
  LDX.W #$0B70                              ; $86F800 |
  LDA.B $04,X                               ; $86F803 |
  AND.W #$FFDF                              ; $86F805 |
  STA.B $04,X                               ; $86F808 |
  JSR.W CODE_FN_86FF80                      ; $86F80A |
  BMI CODE_86F814                           ; $86F80D |
  CMP.W #$5800                              ; $86F80F |
  BCS CODE_86F81E                           ; $86F812 |

CODE_86F814:
  JSR.W CODE_FN_86FCE9                      ; $86F814 |
  LDA.W #$0011                              ; $86F817 |
  STA.W $1FBE                               ; $86F81A |
  RTL                                       ; $86F81D |

CODE_86F81E:
  LDA.W #$FEE0                              ; $86F81E |
  JSL.L CODE_FL_809934                      ; $86F821 |
  BCC CODE_86F836                           ; $86F825 |
  LDA.W #$0100                              ; $86F827 |
  STA.B $26,X                               ; $86F82A |
  STA.B $28,X                               ; $86F82C |
  LDA.W #$5800                              ; $86F82E |
  STA.B $44,X                               ; $86F831 |
  INC.B $3A,X                               ; $86F833 |
  RTL                                       ; $86F835 |

CODE_86F836:
  STZ.B $28,X                               ; $86F836 |
  RTL                                       ; $86F838 |

CODE_86F839:
  LDA.W $04D8                               ; $86F839 |
  BNE CODE_86F841                           ; $86F83C |
  LDA.W $0418                               ; $86F83E |

CODE_86F841:
  DEC A                                     ; $86F841 |
  ASL A                                     ; $86F842 |
  TAY                                       ; $86F843 |
  LDA.W LOOSE_OP_00D317,Y                   ; $86F844 |
  JSL.L CODE_FL_809934                      ; $86F847 |
  BCC CODE_86F84F                           ; $86F84B |

CODE_86F84D:
  INC.B $3A,X                               ; $86F84D |

CODE_86F84F:
  RTL                                       ; $86F84F |

CODE_86F850:
  STZ.B $E4                                 ; $86F850 |
  STZ.B $3A,X                               ; $86F852 |
  INC.B $1A,X                               ; $86F854 |
  LDY.W #$004C                              ; $86F856 |
  JSL.L CODE_FL_808993                      ; $86F859 |
  RTL                                       ; $86F85D |

CODE_86F85E:
  JSR.W CODE_FN_86FBB6                      ; $86F85E |
  JSL.L CODE_FL_87E315                      ; $86F861 |
  JSL.L CODE_FL_848655                      ; $86F865 |
  JSR.W CODE_FN_86FD19                      ; $86F869 |
  JSL.L CODE_FL_86F881                      ; $86F86C |
  LDA.B $1A,X                               ; $86F870 |
  CMP.W #$0003                              ; $86F872 |
  BEQ CODE_86F880                           ; $86F875 |
  JSR.W CODE_FN_86FCE9                      ; $86F877 |
  LDA.W #$0011                              ; $86F87A |
  STA.W $1FBE                               ; $86F87D |

CODE_86F880:
  RTL                                       ; $86F880 |

CODE_FL_86F881:
  LDX.W #$0B70                              ; $86F881 |
  JSL.L CODE_FL_86C3A3                      ; $86F884 |
  DEC.B $48,X                               ; $86F888 |
  BNE CODE_86F89F                           ; $86F88A |
  LDX.W #$0DA0                              ; $86F88C |
  LDA.B $1A,X                               ; $86F88F |
  BNE CODE_86F89F                           ; $86F891 |
  LDA.W #$0005                              ; $86F893 |
  STA.B $1A,X                               ; $86F896 |
  LDA.W #$0028                              ; $86F898 |
  STA.B $3A,X                               ; $86F89B |
  STZ.B $20,X                               ; $86F89D |

CODE_86F89F:
  LDX.W #$0B70                              ; $86F89F |
  LDA.B $3A,X                               ; $86F8A2 |
  PHX                                       ; $86F8A4 |
  ASL A                                     ; $86F8A5 |
  TAX                                       ; $86F8A6 |
  LDA.L PTR16_86F8B1,X                      ; $86F8A7 |
  PLX                                       ; $86F8AB |
  STA.B $00                                 ; $86F8AC |
  JMP.W ($0000)                             ; $86F8AE |

PTR16_86F8B1:
  dw CODE_86F8D2                            ; $86F8B1 |
  dw CODE_86F9A3                            ; $86F8B3 |
  dw CODE_86F9F1                            ; $86F8B5 |
  dw CODE_86FA40                            ; $86F8B7 |
  dw CODE_86FA62                            ; $86F8B9 |
  dw CODE_86FB32                            ; $86F8BB |
  dw CODE_86FB6E                            ; $86F8BD |
  dw CODE_86FB8C                            ; $86F8BF |
  dw CODE_86FF9C                            ; $86F8C1 |

CODE_FL_86F8C3:
  TDC                                       ; $86F8C3 |
  STA.B $3A,X                               ; $86F8C4 |
  STA.B $20,X                               ; $86F8C6 |
  STA.B $1C,X                               ; $86F8C8 |
  STA.B $3C,X                               ; $86F8CA |
  LDA.W #$0100                              ; $86F8CC |
  STA.B $26,X                               ; $86F8CF |
  RTL                                       ; $86F8D1 |

CODE_86F8D2:
  LDA.W $0DE0                               ; $86F8D2 |
  BMI CODE_86F8F3                           ; $86F8D5 |
  LDA.B $32,X                               ; $86F8D7 |
  BPL CODE_86F8DE                           ; $86F8D9 |
  JMP.W CODE_JP_86F995                      ; $86F8DB |

CODE_86F8DE:
  LDA.B $42                                 ; $86F8DE |
  AND.W #$0080                              ; $86F8E0 |
  BEQ CODE_86F8F3                           ; $86F8E3 |
  JSR.W CODE_FN_86FAFB                      ; $86F8E5 |
  CMP.W #$0000                              ; $86F8E8 |
  BNE CODE_86F8F0                           ; $86F8EB |
  JMP.W CODE_JP_86F9CC                      ; $86F8ED |

CODE_86F8F0:
  LDX.W #$0B70                              ; $86F8F0 |

CODE_86F8F3:
  JSR.W CODE_FN_86F912                      ; $86F8F3 |
  LDA.W $0DBA                               ; $86F8F6 |
  CMP.W #$0003                              ; $86F8F9 |
  BEQ CODE_86F90F                           ; $86F8FC |
  JSR.W CODE_FN_86F95D                      ; $86F8FE |
  JSR.W CODE_FN_86FF75                      ; $86F901 |
  CMP.W #$3000                              ; $86F904 |
  BCC CODE_86F939                           ; $86F907 |
  CMP.W #$D000                              ; $86F909 |
  BCS CODE_86F94B                           ; $86F90C |
  RTL                                       ; $86F90E |

CODE_86F90F:
  JMP.W CODE_JP_86FB22                      ; $86F90F |

CODE_FN_86F912:
  JSL.L CODE_FL_86F926                      ; $86F912 |

CODE_FN_86F916:
  DEC.B $20,X                               ; $86F916 |
  BPL CODE_86F925                           ; $86F918 |
  LDA.W #$0018                              ; $86F91A |
  JSR.W CODE_FN_86FFA1                      ; $86F91D |
  LDA.W CODE_00CF91,Y                       ; $86F920 |
  STA.B $00,X                               ; $86F923 |

CODE_86F925:
  RTS                                       ; $86F925 |

CODE_FL_86F926:
  LDA.B $26,X                               ; $86F926 |
  BPL CODE_86F931                           ; $86F928 |
  LDA.B $04,X                               ; $86F92A |
  AND.W #$FFDF                              ; $86F92C |
  BRA CODE_86F936                           ; $86F92F |

CODE_86F931:
  LDA.B $04,X                               ; $86F931 |
  ORA.W #$0020                              ; $86F933 |

CODE_86F936:
  STA.B $04,X                               ; $86F936 |
  RTL                                       ; $86F938 |

CODE_86F939:
  LDA.B $26,X                               ; $86F939 |
  BMI CODE_86F942                           ; $86F93B |
  CMP.W #$0100                              ; $86F93D |
  BCS CODE_86F95C                           ; $86F940 |

CODE_86F942:
  LDA.W #$0020                              ; $86F942 |
  CLC                                       ; $86F945 |
  ADC.B $26,X                               ; $86F946 |
  STA.B $26,X                               ; $86F948 |
  RTL                                       ; $86F94A |

CODE_86F94B:
  LDA.B $26,X                               ; $86F94B |
  BPL CODE_86F954                           ; $86F94D |
  CMP.W #$FF00                              ; $86F94F |
  BCC CODE_86F95C                           ; $86F952 |

CODE_86F954:
  LDA.B $26,X                               ; $86F954 |
  SEC                                       ; $86F956 |
  SBC.W #$0020                              ; $86F957 |
  STA.B $26,X                               ; $86F95A |

CODE_86F95C:
  RTL                                       ; $86F95C |

CODE_FN_86F95D:
  JSR.W CODE_FN_86FF80                      ; $86F95D |
  SEC                                       ; $86F960 |
  SBC.B $44,X                               ; $86F961 |
  BPL CODE_86F96B                           ; $86F963 |
  CMP.W #$FC00                              ; $86F965 |
  BCC CODE_86F971                           ; $86F968 |
  RTS                                       ; $86F96A |

CODE_86F96B:
  CMP.W #$0400                              ; $86F96B |
  BCS CODE_86F983                           ; $86F96E |
  RTS                                       ; $86F970 |

CODE_86F971:
  LDA.B $28,X                               ; $86F971 |
  BMI CODE_86F97A                           ; $86F973 |
  CMP.W #$0100                              ; $86F975 |
  BCS CODE_86F994                           ; $86F978 |

CODE_86F97A:
  LDA.W #$0018                              ; $86F97A |
  CLC                                       ; $86F97D |
  ADC.B $28,X                               ; $86F97E |
  STA.B $28,X                               ; $86F980 |
  RTS                                       ; $86F982 |

CODE_86F983:
  LDA.B $28,X                               ; $86F983 |
  BPL CODE_86F98C                           ; $86F985 |
  CMP.W #$FF00                              ; $86F987 |
  BCC CODE_86F994                           ; $86F98A |

CODE_86F98C:
  LDA.B $28,X                               ; $86F98C |
  SEC                                       ; $86F98E |
  SBC.W #$0018                              ; $86F98F |
  STA.B $28,X                               ; $86F992 |

CODE_86F994:
  RTS                                       ; $86F994 |

CODE_JP_86F995:
  LDA.W #$0040                              ; $86F995 |
  STA.B $3C,X                               ; $86F998 |
  LDA.W #$0001                              ; $86F99A |
  STA.B $3A,X                               ; $86F99D |
  STZ.B $1C,X                               ; $86F99F |
  STZ.B $32,X                               ; $86F9A1 |

CODE_86F9A3:
  LDA.B $42                                 ; $86F9A3 |
  AND.W #$0080                              ; $86F9A5 |
  BEQ CODE_86F9B5                           ; $86F9A8 |
  JSR.W CODE_FN_86FAFB                      ; $86F9AA |
  CMP.W #$0000                              ; $86F9AD |
  BEQ CODE_JP_86F9CC                        ; $86F9B0 |
  LDX.W #$0B70                              ; $86F9B2 |

CODE_86F9B5:
  DEC.B $3C,X                               ; $86F9B5 |
  BPL CODE_JP_86F9BC                        ; $86F9B7 |
  JMP.W CODE_FL_86F8C3                      ; $86F9B9 |

CODE_JP_86F9BC:
  DEC.B $20,X                               ; $86F9BC |
  BPL CODE_86F9CB                           ; $86F9BE |
  LDA.W #$0008                              ; $86F9C0 |
  JSR.W CODE_FN_86FFA1                      ; $86F9C3 |
  LDA.W CODE_00CF95,Y                       ; $86F9C6 |
  STA.B $00,X                               ; $86F9C9 |

CODE_86F9CB:
  RTL                                       ; $86F9CB |

CODE_JP_86F9CC:
  LDX.W #$0D50                              ; $86F9CC |
  LDA.W #$01EF                              ; $86F9CF |
  STA.B $18,X                               ; $86F9D2 |
  LDA.W #$0081                              ; $86F9D4 |
  STA.B $14,X                               ; $86F9D7 |
  LDA.W #$32B4                              ; $86F9D9 |
  STA.B $00,X                               ; $86F9DC |
  STZ.B $22,X                               ; $86F9DE |
  STZ.B $34,X                               ; $86F9E0 |
  LDX.W #$0B70                              ; $86F9E2 |
  LDA.W #$0040                              ; $86F9E5 |
  STA.B $3C,X                               ; $86F9E8 |
  LDA.W #$0002                              ; $86F9EA |
  STA.B $3A,X                               ; $86F9ED |
  STZ.B $1C,X                               ; $86F9EF |

CODE_86F9F1:
  LDX.W #$0B70                              ; $86F9F1 |
  LDA.B $09,X                               ; $86F9F4 |
  SEC                                       ; $86F9F6 |
  SBC.W #$000A                              ; $86F9F7 |
  TAY                                       ; $86F9FA |
  LDA.B $0D,X                               ; $86F9FB |
  SEC                                       ; $86F9FD |
  SBC.W #$0044                              ; $86F9FE |
  LDX.W #$0D50                              ; $86FA01 |
  STA.B $0D,X                               ; $86FA04 |
  STY.B $09,X                               ; $86FA06 |
  LDX.W #$0B70                              ; $86FA08 |
  DEC.B $3C,X                               ; $86FA0B |
  BMI CODE_86FA1F                           ; $86FA0D |
  DEC.B $20,X                               ; $86FA0F |
  BPL CODE_86FA1E                           ; $86FA11 |
  LDA.W #$0008                              ; $86FA13 |
  JSR.W CODE_FN_86FFA1                      ; $86FA16 |
  LDA.W CODE_00CF99,Y                       ; $86FA19 |
  STA.B $00,X                               ; $86FA1C |

CODE_86FA1E:
  RTL                                       ; $86FA1E |

CODE_86FA1F:
  LDA.B $32,X                               ; $86FA1F |
  AND.W #$7FFF                              ; $86FA21 |
  STA.B $32,X                               ; $86FA24 |
  LDY.W #$0D50                              ; $86FA26 |
  TDC                                       ; $86FA29 |
  STA.W $0000,Y                             ; $86FA2A |
  LDY.W #$0001                              ; $86FA2D |
  LDA.W $1FD4                               ; $86FA30 |
  BEQ CODE_86FA36                           ; $86FA33 |
  INY                                       ; $86FA35 |

CODE_86FA36:
  STY.B $3E,X                               ; $86FA36 |
  LDA.W #$0140                              ; $86FA38 |
  STA.B $48,X                               ; $86FA3B |
  JMP.W CODE_FL_86F8C3                      ; $86FA3D |

CODE_86FA40:
  DEC.B $3C,X                               ; $86FA40 |
  BMI CODE_86FA54                           ; $86FA42 |
  DEC.B $20,X                               ; $86FA44 |
  BPL CODE_86FA53                           ; $86FA46 |
  LDA.W #$0008                              ; $86FA48 |
  JSR.W CODE_FN_86FFA1                      ; $86FA4B |
  LDA.W CODE_00CF9F,Y                       ; $86FA4E |
  STA.B $00,X                               ; $86FA51 |

CODE_86FA53:
  RTL                                       ; $86FA53 |

CODE_86FA54:
  LDA.W #$0100                              ; $86FA54 |
  STA.B $3C,X                               ; $86FA57 |
  LDA.W #$0004                              ; $86FA59 |
  STA.B $3A,X                               ; $86FA5C |
  STZ.B $1C,X                               ; $86FA5E |
  STZ.B $46,X                               ; $86FA60 |

CODE_86FA62:
  DEC.B $3C,X                               ; $86FA62 |
  BMI CODE_86FAA6                           ; $86FA64 |

CODE_86FA66:
  LDA.W #$31A8                              ; $86FA66 |
  STA.B $00,X                               ; $86FA69 |
  PHX                                       ; $86FA6B |
  LDA.W #$0020                              ; $86FA6C |
  JSR.W CODE_FN_86FF64                      ; $86FA6F |
  PLX                                       ; $86FA72 |
  LDY.B $40,X                               ; $86FA73 |
  LDA.B $46,X                               ; $86FA75 |
  BNE CODE_86FA7E                           ; $86FA77 |
  LDA.W LOOSE_OP_00CFA7,Y                   ; $86FA79 |
  STA.B $28,X                               ; $86FA7C |

CODE_86FA7E:
  LDA.W LOOSE_OP_00CFA9,Y                   ; $86FA7E |
  STA.B $26,X                               ; $86FA81 |
  JSL.L CODE_FL_86F926                      ; $86FA83 |
  LDY.W #$0000                              ; $86FA87 |
  JSR.W CODE_FN_86FF80                      ; $86FA8A |
  SEC                                       ; $86FA8D |
  SBC.W #$3800                              ; $86FA8E |
  CMP.W #$8000                              ; $86FA91 |
  BCS CODE_86FAE9                           ; $86FA94 |
  LDY.W #$0002                              ; $86FA96 |
  JSR.W CODE_FN_86FF75                      ; $86FA99 |
  SEC                                       ; $86FA9C |
  SBC.W #$2000                              ; $86FA9D |
  CMP.W #$C000                              ; $86FAA0 |
  BCS CODE_86FAE9                           ; $86FAA3 |
  RTL                                       ; $86FAA5 |

CODE_86FAA6:
  LDA.B $28,X                               ; $86FAA6 |
  BPL CODE_86FA66                           ; $86FAA8 |
  LDA.B $0D,X                               ; $86FAAA |
  CMP.W #$0048                              ; $86FAAC |
  BCC CODE_86FA66                           ; $86FAAF |
  CMP.W #$0068                              ; $86FAB1 |
  BCS CODE_86FA66                           ; $86FAB4 |
  LDA.W #$0080                              ; $86FAB6 |
  STA.B $46,X                               ; $86FAB9 |
  LDA.B $28,X                               ; $86FABB |
  CLC                                       ; $86FABD |
  ADC.B $46,X                               ; $86FABE |
  STA.B $28,X                               ; $86FAC0 |
  BMI CODE_86FA66                           ; $86FAC2 |
  LDA.B $0C,X                               ; $86FAC4 |
  STA.B $44,X                               ; $86FAC6 |
  LDA.B $32,X                               ; $86FAC8 |
  AND.W #$7FFF                              ; $86FACA |
  STA.B $32,X                               ; $86FACD |
  JSL.L CODE_FL_86F8C3                      ; $86FACF |
  LDA.W #$0100                              ; $86FAD3 |
  LDY.W $0008,X                             ; $86FAD6 |
  CPY.W #$8000                              ; $86FAD9 |
  BCC CODE_86FAE1                           ; $86FADC |
  LDA.W #$FF00                              ; $86FADE |

CODE_86FAE1:
  STA.B $26,X                               ; $86FAE1 |
  LDA.W #$0100                              ; $86FAE3 |
  STA.B $28,X                               ; $86FAE6 |
  RTL                                       ; $86FAE8 |

CODE_86FAE9:
  TYA                                       ; $86FAE9 |
  CLC                                       ; $86FAEA |
  ADC.B $40,X                               ; $86FAEB |
  TAY                                       ; $86FAED |
  LDA.W LOOSE_OP_00CFB7,Y                   ; $86FAEE |
  STA.B $40,X                               ; $86FAF1 |
  LDA.W #$0038                              ; $86FAF3 |
  JSL.L push_sound_queue                    ; $86FAF6 |
  RTL                                       ; $86FAFA |

CODE_FN_86FAFB:
  LDA.B $3E,X                               ; $86FAFB |
  BNE CODE_86FB1E                           ; $86FAFD |
  LDA.W #$0008                              ; $86FAFF |
  STA.B $00                                 ; $86FB02 |
  LDX.W #$0DF0                              ; $86FB04 |

CODE_86FB07:
  LDA.B $00,X                               ; $86FB07 |
  BEQ CODE_86FB12                           ; $86FB09 |
  LDA.B $3C,X                               ; $86FB0B |
  CMP.W #$0018                              ; $86FB0D |
  BNE CODE_86FB1E                           ; $86FB10 |

CODE_86FB12:
  TXA                                       ; $86FB12 |
  CLC                                       ; $86FB13 |
  ADC.W #$0050                              ; $86FB14 |
  TAX                                       ; $86FB17 |
  DEC.B $00                                 ; $86FB18 |
  BNE CODE_86FB07                           ; $86FB1A |
  TDC                                       ; $86FB1C |
  RTS                                       ; $86FB1D |

CODE_86FB1E:
  LDA.W #$0001                              ; $86FB1E |
  RTS                                       ; $86FB21 |

CODE_JP_86FB22:
  LDA.W #$0005                              ; $86FB22 |
  STA.B $3A,X                               ; $86FB25 |
  STZ.B $1C,X                               ; $86FB27 |
  STZ.B $32,X                               ; $86FB29 |
  STZ.B $34,X                               ; $86FB2B |
  LDA.W #$0030                              ; $86FB2D |
  STA.B $3C,X                               ; $86FB30 |

CODE_86FB32:
  LDA.W #$00C0                              ; $86FB32 |
  STA.B $00                                 ; $86FB35 |
  LDA.W #$00B2                              ; $86FB37 |
  STA.B $02                                 ; $86FB3A |
  JSL.L CODE_FL_8AB426                      ; $86FB3C |
  LDY.W #$0002                              ; $86FB40 |
  JSL.L CODE_FL_8AB499                      ; $86FB43 |
  JSR.W CODE_FN_86FF7D                      ; $86FB47 |
  CMP.W #$B000                              ; $86FB4A |
  BCS CODE_86FB64                           ; $86FB4D |
  LDA.B $3C,X                               ; $86FB4F |
  CMP.W #$0001                              ; $86FB51 |
  BNE CODE_86FB5D                           ; $86FB54 |
  LDY.W #$0030                              ; $86FB56 |
  JSL.L CODE_FL_808993                      ; $86FB59 |

CODE_86FB5D:
  DEC.B $3C,X                               ; $86FB5D |
  BPL CODE_86FB7F                           ; $86FB5F |
  JMP.W CODE_JP_86FB72                      ; $86FB61 |

CODE_86FB64:
  LDA.W #$0006                              ; $86FB64 |
  STA.B $3A,X                               ; $86FB67 |
  LDA.W #$00E0                              ; $86FB69 |
  STA.B $3C,X                               ; $86FB6C |

CODE_86FB6E:
  DEC.B $3C,X                               ; $86FB6E |
  BMI CODE_86FB82                           ; $86FB70 |

CODE_JP_86FB72:
  LDA.B $42                                 ; $86FB72 |
  AND.W #$000F                              ; $86FB74 |
  BNE CODE_86FB7F                           ; $86FB77 |
  PHX                                       ; $86FB79 |
  JSL.L CODE_FL_8CFBAE                      ; $86FB7A |
  PLX                                       ; $86FB7E |

CODE_86FB7F:
  JMP.W CODE_JP_86F9BC                      ; $86FB7F |

CODE_86FB82:
  LDA.W #$0007                              ; $86FB82 |
  STA.B $3A,X                               ; $86FB85 |
  LDA.W #$0020                              ; $86FB87 |
  STA.B $3C,X                               ; $86FB8A |

CODE_86FB8C:
  DEC.B $3C,X                               ; $86FB8C |
  BMI CODE_86FB91                           ; $86FB8E |
  RTL                                       ; $86FB90 |

CODE_86FB91:
  STX.B $FC                                 ; $86FB91 |
  TDC                                       ; $86FB93 |
  JSL.L CODE_FL_85A71F                      ; $86FB94 |
  LDX.B $FC                                 ; $86FB98 |
  LDA.W #$C000                              ; $86FB9A |
  STA.B $08,X                               ; $86FB9D |
  LDA.W #$B000                              ; $86FB9F |
  STA.B $0C,X                               ; $86FBA2 |
  STZ.B $20,X                               ; $86FBA4 |
  STZ.B $1C,X                               ; $86FBA6 |
  LDA.W #$0003                              ; $86FBA8 |
  STA.B $1A,X                               ; $86FBAB |
  JSL.L CODE_FL_84F206                      ; $86FBAD |
  JSL.L CODE_FL_87E2F6                      ; $86FBB1 |
  RTL                                       ; $86FBB5 |

CODE_FN_86FBB6:
  LDA.B $3E,X                               ; $86FBB6 |
  PHX                                       ; $86FBB8 |
  ASL A                                     ; $86FBB9 |
  TAX                                       ; $86FBBA |
  LDA.L PTR16_86FBC5,X                      ; $86FBBB |
  PLX                                       ; $86FBBF |
  STA.B $00                                 ; $86FBC0 |
  JMP.W ($0000)                             ; $86FBC2 |

PTR16_86FBC5:
  dw CODE_86FC04                            ; $86FBC5 |
  dw CODE_86FBD1                            ; $86FBC7 |
  dw CODE_86FBD1                            ; $86FBC9 |
  dw CODE_86FC05                            ; $86FBCB |
  dw CODE_86FC40                            ; $86FBCD |
  dw CODE_86FCE2                            ; $86FBCF |

CODE_86FBD1:
  LDA.B $3E,X                               ; $86FBD1 |
  SEP #$20                                  ; $86FBD3 |
  LDY.W #$0002                              ; $86FBD5 |
  DEC A                                     ; $86FBD8 |
  BEQ CODE_86FBDE                           ; $86FBD9 |
  LDY.W #$00FE                              ; $86FBDB |

CODE_86FBDE:
  TYA                                       ; $86FBDE |
  CLC                                       ; $86FBDF |
  ADC.W $1FD4                               ; $86FBE0 |
  STA.W $1FD4                               ; $86FBE3 |
  REP #$20                                  ; $86FBE6 |
  LDA.W $1FD4                               ; $86FBE8 |
  BEQ CODE_86FBF2                           ; $86FBEB |
  CMP.W #$0080                              ; $86FBED |
  BNE CODE_86FC04                           ; $86FBF0 |

CODE_86FBF2:
  LDA.W #$0003                              ; $86FBF2 |
  STA.B $3E,X                               ; $86FBF5 |
  LDA.W #$0020                              ; $86FBF7 |
  STA.W $0D94                               ; $86FBFA |
  LDA.W #$001B                              ; $86FBFD |
  JSL.L push_sound_queue                    ; $86FC00 |

CODE_86FC04:
  RTS                                       ; $86FC04 |

CODE_86FC05:
  DEC.W $0D94                               ; $86FC05 |
  BMI CODE_86FC19                           ; $86FC08 |
  LDY.W #$0000                              ; $86FC0A |
  LDA.B $42                                 ; $86FC0D |
  AND.W #$0002                              ; $86FC0F |
  BEQ CODE_FN_86FC21                        ; $86FC12 |
  LDY.W #$000A                              ; $86FC14 |
  BRA CODE_FN_86FC21                        ; $86FC17 |

CODE_86FC19:
  LDA.W #$0004                              ; $86FC19 |
  STA.B $3E,X                               ; $86FC1C |
  LDY.W #$0000                              ; $86FC1E |

CODE_FN_86FC21:
  PHX                                       ; $86FC21 |
  LDX.W #$0D50                              ; $86FC22 |
  LDA.W LOOSE_OP_00D2C9,Y                   ; $86FC25 |
  STA.B $3A,X                               ; $86FC28 |
  LDA.W LOOSE_OP_00D2CB,Y                   ; $86FC2A |
  STA.B $3C,X                               ; $86FC2D |
  LDA.W LOOSE_OP_00D2CD,Y                   ; $86FC2F |
  STA.B $3E,X                               ; $86FC32 |
  LDA.W CODE_00D2CF,Y                       ; $86FC34 |
  STA.B $40,X                               ; $86FC37 |
  LDA.W CODE_00D2D1,Y                       ; $86FC39 |
  STA.B $42,X                               ; $86FC3C |
  PLX                                       ; $86FC3E |
  RTS                                       ; $86FC3F |

CODE_86FC40:
  LDA.W #$0003                              ; $86FC40 |
  LDY.W $0DE0                               ; $86FC43 |
  CPY.W #$0007                              ; $86FC46 |
  BCS CODE_86FC56                           ; $86FC49 |
  LDA.W #$0007                              ; $86FC4B |
  CPY.W #$0004                              ; $86FC4E |
  BCS CODE_86FC56                           ; $86FC51 |
  LDA.W #$000F                              ; $86FC53 |

CODE_86FC56:
  AND.B $86                                 ; $86FC56 |
  ASL A                                     ; $86FC58 |
  TAY                                       ; $86FC59 |
  LDA.W LOOSE_OP_00CFED,Y                   ; $86FC5A |
  STA.B $00                                 ; $86FC5D |
  LDA.W #$0008                              ; $86FC5F |
  STA.B $02                                 ; $86FC62 |
  PHX                                       ; $86FC64 |
  LDY.W #$0000                              ; $86FC65 |
  LDX.W #$0DF0                              ; $86FC68 |

CODE_86FC6B:
  DEC.B $02                                 ; $86FC6B |
  BEQ CODE_86FCC8                           ; $86FC6D |
  LDA.B $00,X                               ; $86FC6F |
  BNE CODE_86FCC0                           ; $86FC71 |
  LDA.B ($00),Y                             ; $86FC73 |
  STA.B $00,X                               ; $86FC75 |
  BEQ CODE_86FCC0                           ; $86FC77 |
  INY                                       ; $86FC79 |
  INY                                       ; $86FC7A |
  LDA.B ($00),Y                             ; $86FC7B |
  STA.B $3C,X                               ; $86FC7D |
  INY                                       ; $86FC7F |
  INY                                       ; $86FC80 |
  LDA.B ($00),Y                             ; $86FC81 |
  STA.B $09,X                               ; $86FC83 |
  TDC                                       ; $86FC85 |
  STA.B $0D,X                               ; $86FC86 |
  INY                                       ; $86FC88 |
  INY                                       ; $86FC89 |
  LDA.B ($00),Y                             ; $86FC8A |
  STA.B $28,X                               ; $86FC8C |
  INY                                       ; $86FC8E |
  INY                                       ; $86FC8F |
  STZ.B $2A,X                               ; $86FC90 |
  STZ.B $2C,X                               ; $86FC92 |
  STZ.B $1A,X                               ; $86FC94 |
  STZ.B $22,X                               ; $86FC96 |
  STZ.B $32,X                               ; $86FC98 |
  STZ.B $38,X                               ; $86FC9A |
  LDA.W #$0006                              ; $86FC9C |
  STA.B $2E,X                               ; $86FC9F |
  LDA.W #$000C                              ; $86FCA1 |
  STA.B $30,X                               ; $86FCA4 |
  LDA.W #$E000                              ; $86FCA6 |
  STA.B $34,X                               ; $86FCA9 |
  LDA.W #$0080                              ; $86FCAB |
  STA.B $14,X                               ; $86FCAE |
  LDA.W #$0888                              ; $86FCB0 |
  STA.B $04,X                               ; $86FCB3 |
  LDA.B $00,X                               ; $86FCB5 |
  CMP.W #$3286                              ; $86FCB7 |
  BEQ CODE_86FCC0                           ; $86FCBA |
  JSL.L CODE_FL_86F926                      ; $86FCBC |

CODE_86FCC0:
  TXA                                       ; $86FCC0 |
  CLC                                       ; $86FCC1 |
  ADC.W #$0050                              ; $86FCC2 |
  TAX                                       ; $86FCC5 |
  BRA CODE_86FC6B                           ; $86FCC6 |

CODE_86FCC8:
  PLX                                       ; $86FCC8 |
  LDA.W #$0005                              ; $86FCC9 |
  STA.B $3E,X                               ; $86FCCC |
  LDA.W #$0100                              ; $86FCCE |
  LDY.W $0DE0                               ; $86FCD1 |
  BEQ CODE_86FCE0                           ; $86FCD4 |
  LDA.B $86                                 ; $86FCD6 |
  AND.W #$0003                              ; $86FCD8 |
  ASL A                                     ; $86FCDB |
  TAY                                       ; $86FCDC |
  LDA.W LOOSE_OP_00D1ED,Y                   ; $86FCDD |

CODE_86FCE0:
  STA.B $42,X                               ; $86FCE0 |

CODE_86FCE2:
  DEC.B $42,X                               ; $86FCE2 |
  BPL CODE_86FCE8                           ; $86FCE4 |
  STZ.B $3E,X                               ; $86FCE6 |

CODE_86FCE8:
  RTS                                       ; $86FCE8 |

CODE_FN_86FCE9:
  LDX.W #$0B70                              ; $86FCE9 |
  LDA.W $003A,X                             ; $86FCEC |
  CMP.W #$0007                              ; $86FCEF |
  BEQ CODE_86FD14                           ; $86FCF2 |
  LDA.B $09,X                               ; $86FCF4 |
  TAY                                       ; $86FCF6 |
  LDA.B $0D,X                               ; $86FCF7 |
  CMP.W #$0010                              ; $86FCF9 |
  BCC CODE_86FD15                           ; $86FCFC |
  LDX.W #$0D00                              ; $86FCFE |
  STA.B $0D,X                               ; $86FD01 |
  STY.B $09,X                               ; $86FD03 |
  DEC.B $20,X                               ; $86FD05 |
  BPL CODE_86FD14                           ; $86FD07 |
  LDA.W #$0003                              ; $86FD09 |
  JSR.W CODE_FN_86FFA1                      ; $86FD0C |
  LDA.W CODE_00CFE9,Y                       ; $86FD0F |
  STA.B $00,X                               ; $86FD12 |

CODE_86FD14:
  RTS                                       ; $86FD14 |

CODE_86FD15:
  STZ.W $0D00                               ; $86FD15 |
  RTS                                       ; $86FD18 |

CODE_FN_86FD19:
  LDX.W #$0DA0                              ; $86FD19 |
  LDA.B $1A,X                               ; $86FD1C |
  PHX                                       ; $86FD1E |
  ASL A                                     ; $86FD1F |
  TAX                                       ; $86FD20 |
  LDA.L PTR16_86FD2B,X                      ; $86FD21 |
  PLX                                       ; $86FD25 |
  STA.B $00                                 ; $86FD26 |
  JMP.W ($0000)                             ; $86FD28 |

PTR16_86FD2B:
  dw CODE_86FD37                            ; $86FD2B |
  dw CODE_86FD88                            ; $86FD2D |
  dw CODE_86FDCC                            ; $86FD2F |
  dw CODE_86FDBC                            ; $86FD31 |
  dw CODE_86FE63                            ; $86FD33 |
  dw CODE_86FDCC                            ; $86FD35 |

CODE_86FD37:
  LDA.W #$31E6                              ; $86FD37 |
  STA.B $00,X                               ; $86FD3A |
  LDA.W #$01EF                              ; $86FD3C |
  STA.B $18,X                               ; $86FD3F |
  LDA.B $42                                 ; $86FD41 |
  AND.W #$0007                              ; $86FD43 |
  BNE CODE_86FD62                           ; $86FD46 |

CODE_86FD48:
  LDY.W $003C,X                             ; $86FD48 |
  LDA.W CODE_00CFCB,Y                       ; $86FD4B |
  CMP.W #$FFFF                              ; $86FD4E |
  BNE CODE_86FD58                           ; $86FD51 |
  STZ.W $003C,X                             ; $86FD53 |
  BRA CODE_86FD48                           ; $86FD56 |

CODE_86FD58:
  STA.B $0D,X                               ; $86FD58 |
  LDA.W $003C,X                             ; $86FD5A |
  INC A                                     ; $86FD5D |
  INC A                                     ; $86FD5E |
  STA.W $003C,X                             ; $86FD5F |

CODE_86FD62:
  LDA.B $3E,X                               ; $86FD62 |
  BEQ CODE_86FD74                           ; $86FD64 |
  LDA.B $08,X                               ; $86FD66 |
  SEC                                       ; $86FD68 |
  SBC.W #$000C                              ; $86FD69 |
  CMP.W #$8000                              ; $86FD6C |
  BCC CODE_86FD85                           ; $86FD6F |
  STA.B $08,X                               ; $86FD71 |
  RTS                                       ; $86FD73 |

CODE_86FD74:
  LDA.B $08,X                               ; $86FD74 |
  CLC                                       ; $86FD76 |
  ADC.W #$000C                              ; $86FD77 |
  CMP.W #$8000                              ; $86FD7A |
  BCS CODE_86FD82                           ; $86FD7D |
  STA.B $08,X                               ; $86FD7F |
  RTS                                       ; $86FD81 |

CODE_86FD82:
  INC.B $3E,X                               ; $86FD82 |
  RTS                                       ; $86FD84 |

CODE_86FD85:
  STZ.B $3E,X                               ; $86FD85 |
  RTS                                       ; $86FD87 |

CODE_86FD88:
  DEC.B $3A,X                               ; $86FD88 |
  BMI CODE_86FDBF                           ; $86FD8A |
  LDY.W #$31FC                              ; $86FD8C |
  LDA.B $42                                 ; $86FD8F |
  AND.W #$0002                              ; $86FD91 |
  BEQ CODE_86FD99                           ; $86FD94 |
  LDY.W #$0000                              ; $86FD96 |

CODE_86FD99:
  STY.B $00,X                               ; $86FD99 |
  RTS                                       ; $86FD9B |

CODE_86FD9C:
  LDA.W #$000E                              ; $86FD9C |
  JSL.L push_sound_queue                    ; $86FD9F |
  STX.B $FC                                 ; $86FDA3 |
  TDC                                       ; $86FDA5 |
  JSL.L CODE_FL_85A71F                      ; $86FDA6 |
  LDX.B $FC                                 ; $86FDAA |
  LDA.W #$0003                              ; $86FDAC |
  STA.B $1A,X                               ; $86FDAF |
  LDA.W #$FFFF                              ; $86FDB1 |
  STA.B $40,X                               ; $86FDB4 |
  LDA.W #$0B70                              ; $86FDB6 |
  STA.B $FC                                 ; $86FDB9 |
  RTS                                       ; $86FDBB |

CODE_86FDBC:
  STZ.B $00,X                               ; $86FDBC |
  RTS                                       ; $86FDBE |

CODE_86FDBF:
  LDA.B $40,X                               ; $86FDBF |
  BMI CODE_86FD9C                           ; $86FDC1 |
  INC.B $1A,X                               ; $86FDC3 |
  LDA.W #$0028                              ; $86FDC5 |
  STA.B $3A,X                               ; $86FDC8 |
  STZ.B $20,X                               ; $86FDCA |

CODE_86FDCC:
  DEC.B $3A,X                               ; $86FDCC |
  BMI CODE_86FDFC                           ; $86FDCE |
  DEC.B $20,X                               ; $86FDD0 |
  BPL CODE_86FDDF                           ; $86FDD2 |
  LDA.W #$0004                              ; $86FDD4 |
  JSR.W CODE_FN_86FFA1                      ; $86FDD7 |
  LDA.W CODE_00CFC7,Y                       ; $86FDDA |
  STA.B $00,X                               ; $86FDDD |

CODE_86FDDF:
  RTS                                       ; $86FDDF |

CODE_FN_86FDE0:
  LDA.W $0008,Y                             ; $86FDE0 |
  CLC                                       ; $86FDE3 |
  ADC.W #$0100                              ; $86FDE4 |
  BRA CODE_86FDF0                           ; $86FDE7 |

CODE_FN_86FDE9:
  LDA.W $0008,Y                             ; $86FDE9 |
  SEC                                       ; $86FDEC |
  SBC.W #$0100                              ; $86FDED |

CODE_86FDF0:
  STA.B $08,X                               ; $86FDF0 |
  LDA.W $000C,Y                             ; $86FDF2 |
  CLC                                       ; $86FDF5 |
  ADC.W #$0200                              ; $86FDF6 |
  STA.B $0C,X                               ; $86FDF9 |
  RTS                                       ; $86FDFB |

CODE_86FDFC:
  LDA.B $1A,X                               ; $86FDFC |
  CMP.W #$0005                              ; $86FDFE |
  BEQ CODE_86FE1A                           ; $86FE01 |
  PHX                                       ; $86FE03 |
  LDX.W #$0D50                              ; $86FE04 |
  TDC                                       ; $86FE07 |
  STA.B $00,X                               ; $86FE08 |
  LDX.W #$0B70                              ; $86FE0A |
  LDA.W #$0040                              ; $86FE0D |
  STA.B $3C,X                               ; $86FE10 |
  LDA.W #$0003                              ; $86FE12 |
  STA.B $3A,X                               ; $86FE15 |
  STZ.B $1C,X                               ; $86FE17 |
  PLX                                       ; $86FE19 |

CODE_86FE1A:
  PHX                                       ; $86FE1A |
  TXY                                       ; $86FE1B |
  LDX.W #$0BC0                              ; $86FE1C |
  LDA.W #$01EF                              ; $86FE1F |
  STA.B $18,X                               ; $86FE22 |
  JSR.W CODE_FN_86FDE9                      ; $86FE24 |
  LDX.W #$0C10                              ; $86FE27 |
  LDA.W #$01EF                              ; $86FE2A |
  STA.B $18,X                               ; $86FE2D |
  JSR.W CODE_FN_86FDE0                      ; $86FE2F |
  LDX.W #$0C60                              ; $86FE32 |
  LDA.W #$01EF                              ; $86FE35 |
  STA.B $18,X                               ; $86FE38 |
  JSR.W CODE_FN_86FDE9                      ; $86FE3A |
  LDX.W #$0CB0                              ; $86FE3D |
  LDA.W #$01EF                              ; $86FE40 |
  STA.B $18,X                               ; $86FE43 |
  JSR.W CODE_FN_86FDE0                      ; $86FE45 |
  LDX.W #$0B70                              ; $86FE48 |
  JSL.L CODE_FL_82C3D1                      ; $86FE4B |
  LDA.W #$0001                              ; $86FE4F |
  STA.W $0BFA                               ; $86FE52 |
  PLX                                       ; $86FE55 |
  LDA.W #$001C                              ; $86FE56 |
  JSL.L CODE_FL_8089BD                      ; $86FE59 |
  LDA.W #$0004                              ; $86FE5D |
  STA.B $1A,X                               ; $86FE60 |
  RTS                                       ; $86FE62 |

CODE_86FE63:
  LDA.W #$322E                              ; $86FE63 |
  STA.B $00,X                               ; $86FE66 |
  RTS                                       ; $86FE68 |

CODE_FN_86FE69:
  LDA.W $0BFA                               ; $86FE69 |
  PHX                                       ; $86FE6C |
  ASL A                                     ; $86FE6D |
  TAX                                       ; $86FE6E |
  LDA.L PTR16_86FE79,X                      ; $86FE6F |
  PLX                                       ; $86FE73 |
  STA.B $00                                 ; $86FE74 |
  JMP.W ($0000)                             ; $86FE76 |

PTR16_86FE79:
  dw CODE_86FE83                            ; $86FE79 |
  dw CODE_86FE84                            ; $86FE7B |
  dw CODE_86FED4                            ; $86FE7D |
  dw CODE_86FF38                            ; $86FE7F |
  dw CODE_86FF88                            ; $86FE81 |

CODE_86FE83:
  RTS                                       ; $86FE83 |

CODE_86FE84:
  LDY.W #$04C0                              ; $86FE84 |
  LDA.W $0000,Y                             ; $86FE87 |
  BEQ CODE_86FE91                           ; $86FE8A |
  LDA.B $42                                 ; $86FE8C |
  LSR A                                     ; $86FE8E |
  BCC CODE_86FE94                           ; $86FE8F |

CODE_86FE91:
  LDY.W #$0400                              ; $86FE91 |

CODE_86FE94:
  LDA.W $0009,Y                             ; $86FE94 |
  AND.W #$FFF0                              ; $86FE97 |
  LSR A                                     ; $86FE9A |
  TAY                                       ; $86FE9B |
  LDX.W #$0BC0                              ; $86FE9C |
  LDA.W LOOSE_OP_00D249,Y                   ; $86FE9F |
  STA.B $26,X                               ; $86FEA2 |
  LDA.W LOOSE_OP_00D24B,Y                   ; $86FEA4 |
  STA.B $28,X                               ; $86FEA7 |
  LDX.W #$0C60                              ; $86FEA9 |
  LDA.W LOOSE_OP_00D249,Y                   ; $86FEAC |
  STA.B $26,X                               ; $86FEAF |
  LDA.W LOOSE_OP_00D24B,Y                   ; $86FEB1 |
  STA.B $28,X                               ; $86FEB4 |
  LDX.W #$0C10                              ; $86FEB6 |
  LDA.W LOOSE_OP_00D24D,Y                   ; $86FEB9 |
  STA.B $26,X                               ; $86FEBC |
  LDA.W LOOSE_OP_00D24F,Y                   ; $86FEBE |
  STA.B $28,X                               ; $86FEC1 |
  LDX.W #$0CB0                              ; $86FEC3 |
  LDA.W LOOSE_OP_00D24D,Y                   ; $86FEC6 |
  STA.B $26,X                               ; $86FEC9 |
  LDA.W LOOSE_OP_00D24F,Y                   ; $86FECB |
  STA.B $28,X                               ; $86FECE |
  INC.W $0BFA                               ; $86FED0 |
  RTS                                       ; $86FED3 |

CODE_86FED4:
  LDX.W #$0C10                              ; $86FED4 |
  JSR.W CODE_FN_86FF7D                      ; $86FED7 |
  LDX.W #$0BC0                              ; $86FEDA |
  JSR.W CODE_FN_86FF7D                      ; $86FEDD |
  CMP.W #$B000                              ; $86FEE0 |
  BCC CODE_86FF37                           ; $86FEE3 |
  LDA.W #$B000                              ; $86FEE5 |
  STA.B $0C,X                               ; $86FEE8 |
  TXY                                       ; $86FEEA |
  LDX.W #$1020                              ; $86FEEB |
  LDA.W #$0001                              ; $86FEEE |
  STA.B $1A,X                               ; $86FEF1 |
  LDA.W #$B000                              ; $86FEF3 |
  STA.B $0C,X                               ; $86FEF6 |
  LDA.W $0008,Y                             ; $86FEF8 |
  BPL CODE_86FF02                           ; $86FEFB |
  LDA.W #$0800                              ; $86FEFD |
  BRA CODE_86FF05                           ; $86FF00 |

CODE_86FF02:
  LDA.W #$0D00                              ; $86FF02 |

CODE_86FF05:
  CLC                                       ; $86FF05 |
  ADC.W $0008,Y                             ; $86FF06 |
  STA.B $08,X                               ; $86FF09 |
  LDA.W #$01EB                              ; $86FF0B |
  STA.B $18,X                               ; $86FF0E |
  LDA.W #$000D                              ; $86FF10 |
  JSL.L push_sound_queue                    ; $86FF13 |
  STX.B $FC                                 ; $86FF17 |
  JSL.L CODE_FL_8CFBAE                      ; $86FF19 |
  LDA.B $08,X                               ; $86FF1D |
  STA.W $0008,Y                             ; $86FF1F |
  LDA.W #$B900                              ; $86FF22 |
  STA.W $000C,Y                             ; $86FF25 |
  TDC                                       ; $86FF28 |
  STA.W $000A,Y                             ; $86FF29 |
  STA.W $000E,Y                             ; $86FF2C |
  LDA.W #$0B70                              ; $86FF2F |
  STA.B $FC                                 ; $86FF32 |
  INC.W $0BFA                               ; $86FF34 |

CODE_86FF37:
  RTS                                       ; $86FF37 |

CODE_86FF38:
  LDX.W #$1020                              ; $86FF38 |
  LDA.W #$0006                              ; $86FF3B |
  JSR.W CODE_FN_86FF64                      ; $86FF3E |
  LDX.W #$0CB0                              ; $86FF41 |
  JSR.W CODE_FN_86FF7D                      ; $86FF44 |
  LDX.W #$0C60                              ; $86FF47 |
  JSR.W CODE_FN_86FF7D                      ; $86FF4A |
  CMP.W #$B000                              ; $86FF4D |
  BCC CODE_86FF37                           ; $86FF50 |
  LDA.W #$B000                              ; $86FF52 |
  STA.B $0C,X                               ; $86FF55 |
  INC.W $0BFA                               ; $86FF57 |
  LDA.W #$3218                              ; $86FF5A |
  STA.W $0DA0                               ; $86FF5D |
  STZ.W $0DBA                               ; $86FF60 |
  RTS                                       ; $86FF63 |

CODE_FN_86FF64:
  STA.B $10                                 ; $86FF64 |
  LDA.W #$0010                              ; $86FF66 |
  STA.B $0E                                 ; $86FF69 |
  TDC                                       ; $86FF6B |
  STA.B $0A                                 ; $86FF6C |
  STA.B $0C                                 ; $86FF6E |
  JSL.L CODE_FL_85F8A1                      ; $86FF70 |
  RTS                                       ; $86FF74 |

CODE_FN_86FF75:
  LDA.B $26,X                               ; $86FF75 |
  CLC                                       ; $86FF77 |
  ADC.B $08,X                               ; $86FF78 |
  STA.B $08,X                               ; $86FF7A |
  RTS                                       ; $86FF7C |

CODE_FN_86FF7D:
  JSR.W CODE_FN_86FF75                      ; $86FF7D |

CODE_FN_86FF80:
  LDA.B $28,X                               ; $86FF80 |
  CLC                                       ; $86FF82 |
  ADC.B $0C,X                               ; $86FF83 |
  STA.B $0C,X                               ; $86FF85 |
  RTS                                       ; $86FF87 |

CODE_86FF88:
  JSL.L CODE_FL_82B994                      ; $86FF88 |
  STZ.W $0BFA                               ; $86FF8C |
  LDX.W #$1020                              ; $86FF8F |
  TDC                                       ; $86FF92 |
  STA.B $18,X                               ; $86FF93 |
  STA.B $1A,X                               ; $86FF95 |
  STA.B $08,X                               ; $86FF97 |
  STA.B $0C,X                               ; $86FF99 |
  RTS                                       ; $86FF9B |

CODE_86FF9C:
  JSL.L CODE_FL_87E2F6                      ; $86FF9C |
  RTL                                       ; $86FFA0 |

CODE_FN_86FFA1:
  STA.B $20,X                               ; $86FFA1 |
  LDA.B $1C,X                               ; $86FFA3 |
  EOR.W #$0002                              ; $86FFA5 |
  STA.B $1C,X                               ; $86FFA8 |
  TAY                                       ; $86FFAA |
  RTS                                       ; $86FFAB |

  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $86FFAC |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $86FFB4 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $86FFBC |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $86FFC4 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $86FFCC |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $86FFD4 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $86FFDC |
  db $FF,$FF,$FF,$FF                        ; $86FFE4 |

EMPTY_86FFE8:
  db $FF,$FF,$FF,$FF                        ; $86FFE8 |

EMPTY_86FFEC:
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $86FFEC |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $86FFF4 |
  db $FF,$FF,$FF,$FF                        ; $86FFFC |
