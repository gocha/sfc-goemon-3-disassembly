org $838000

CODE_FL_838000:
  JSL.L CODE_FL_96FB5D                      ; $838000 |

CODE_FL_838004:
  LDA.L $7002F8                             ; $838004 |
  BIT.W #$0080                              ; $838008 |
  BNE CODE_83801F                           ; $83800B |
  LDA.W #$0001                              ; $83800D |
  STA.W $0418                               ; $838010 |
  LDA.B $5A                                 ; $838013 |
  BEQ CODE_83802F                           ; $838015 |
  LDA.W #$0002                              ; $838017 |
  STA.W $04D8                               ; $83801A |
  BRA CODE_83802F                           ; $83801D |

CODE_83801F:
  LDA.W #$0003                              ; $83801F |
  STA.W $0418                               ; $838022 |
  LDA.B $5A                                 ; $838025 |
  BEQ CODE_83802F                           ; $838027 |
  LDA.W #$0004                              ; $838029 |
  STA.W $04D8                               ; $83802C |

CODE_83802F:
  LDX.W #$0400                              ; $83802F |
  JSL.L CODE_FL_83D3B8                      ; $838032 |
  LDX.W #$04C0                              ; $838036 |
  LDA.B $18,X                               ; $838039 |
  BEQ CODE_838043                           ; $83803B |
  JSL.L CODE_FL_83D3B8                      ; $83803D |
  BRA CODE_83804A                           ; $838041 |

CODE_838043:
  LDA.W #$0002                              ; $838043 |
  JSL.L CODE_FL_838260                      ; $838046 |

CODE_83804A:
  LDA.W #$FFFF                              ; $83804A |
  STA.W $197C                               ; $83804D |
  RTL                                       ; $838050 |

CODE_FL_838051:
  LDA.B $90                                 ; $838051 |
  CMP.W #$0000                              ; $838053 |
  BEQ CODE_83805E                           ; $838056 |
  CMP.W #$0001                              ; $838058 |
  BEQ CODE_83805E                           ; $83805B |
  RTL                                       ; $83805D |

CODE_83805E:
  JSR.W CODE_FN_838265                      ; $83805E |
  PHB                                       ; $838061 |
  PEA.W $8181                               ; $838062 |
  PLB                                       ; $838065 |
  PLB                                       ; $838066 |
  LDA.W $195A                               ; $838067 |
  STA.B $18                                 ; $83806A |
  LDA.W $195C                               ; $83806C |
  STA.B $1A                                 ; $83806F |
  LDA.W $195E                               ; $838071 |
  STA.W $1998                               ; $838074 |
  STZ.B $1E                                 ; $838077 |
  LDX.W #$0400                              ; $838079 |
  LDA.B $1A,X                               ; $83807C |
  CMP.W #$0001                              ; $83807E |
  BNE CODE_8380A2                           ; $838081 |
  LDA.W $195A                               ; $838083 |
  STA.B $09,X                               ; $838086 |
  LDA.W $195C                               ; $838088 |
  STA.B $0D,X                               ; $83808B |
  STZ.B $11,X                               ; $83808D |
  JSR.W CODE_FN_8380D4                      ; $83808F |
  LDA.W #$0004                              ; $838092 |
  JSL.L CODE_FL_838260                      ; $838095 |
  LDY.B $90                                 ; $838099 |
  CPY.W $197C                               ; $83809B |
  BNE CODE_8380A2                           ; $83809E |
  INC.B $74,X                               ; $8380A0 |

CODE_8380A2:
  LDX.W #$04C0                              ; $8380A2 |
  LDA.B $1A,X                               ; $8380A5 |
  CMP.W #$0001                              ; $8380A7 |
  BNE CODE_8380CD                           ; $8380AA |
  JSR.W CODE_FN_8380DC                      ; $8380AC |
  BCS CODE_8380B6                           ; $8380AF |
  LDA.W $195A                               ; $8380B1 |
  STA.B $09,X                               ; $8380B4 |

CODE_8380B6:
  LDA.W $195C                               ; $8380B6 |
  STA.B $0D,X                               ; $8380B9 |
  STZ.B $11,X                               ; $8380BB |
  LDA.W #$0004                              ; $8380BD |
  JSL.L CODE_FL_838260                      ; $8380C0 |
  LDY.B $90                                 ; $8380C4 |
  CPY.W $197C                               ; $8380C6 |
  BNE CODE_8380CD                           ; $8380C9 |
  INC.B $74,X                               ; $8380CB |

CODE_8380CD:
  LDA.B $90                                 ; $8380CD |
  STA.W $197C                               ; $8380CF |
  PLB                                       ; $8380D2 |
  RTL                                       ; $8380D3 |

CODE_FN_8380D4:
  LDA.B $8E                                 ; $8380D4 |
  CMP.W #$0140                              ; $8380D6 |
  BCS CODE_FN_8380F1                        ; $8380D9 |
  RTS                                       ; $8380DB |

CODE_FN_8380DC:
  LDA.B $8E                                 ; $8380DC |
  CMP.W #$0140                              ; $8380DE |
  BCC CODE_8380F0                           ; $8380E1 |
  JSR.W CODE_FN_8380F1                      ; $8380E3 |
  LDA.W $195A                               ; $8380E6 |
  CLC                                       ; $8380E9 |
  ADC.W #$0010                              ; $8380EA |
  STA.B $09,X                               ; $8380ED |
  SEC                                       ; $8380EF |

CODE_8380F0:
  RTS                                       ; $8380F0 |

CODE_FN_8380F1:
  LDA.W #$0800                              ; $8380F1 |
  STA.W $1998                               ; $8380F4 |
  RTS                                       ; $8380F7 |

CODE_FL_8380F8:
  PHB                                       ; $8380F8 |
  PEA.W $8181                               ; $8380F9 |
  PLB                                       ; $8380FC |
  PLB                                       ; $8380FD |
  JSL.L CODE_FL_83CE53                      ; $8380FE |
  LDA.W #$0001                              ; $838102 |
  STA.W $1978                               ; $838105 |
  LDX.W #$04C0                              ; $838108 |

CODE_83810B:
  STX.B $94                                 ; $83810B |
  STZ.B $78,X                               ; $83810D |
  STZ.B $7A,X                               ; $83810F |
  LDA.W $1978                               ; $838111 |
  AND.W #$0001                              ; $838114 |
  ASL A                                     ; $838117 |
  TAX                                       ; $838118 |
  JSL.L CODE_FL_80CC75                      ; $838119 |
  LDX.B $94                                 ; $83811D |
  JSL.L CODE_FL_83812D                      ; $83811F |
  LDX.W #$0400                              ; $838123 |
  DEC.W $1978                               ; $838126 |
  BEQ CODE_83810B                           ; $838129 |
  PLB                                       ; $83812B |
  RTL                                       ; $83812C |

CODE_FL_83812D:
  LDA.B $1A,X                               ; $83812D |
  ASL A                                     ; $83812F |
  TAY                                       ; $838130 |
  LDA.W CODE_00D646,Y                       ; $838131 |
  PHA                                       ; $838134 |
  RTS                                       ; $838135 |

  LDA.B $90                                 ; $838136 |
  ASL A                                     ; $838138 |
  TAY                                       ; $838139 |
  LDA.W CODE_00D652,Y                       ; $83813A |
  PHA                                       ; $83813D |
  RTS                                       ; $83813E |

  LDA.B $90                                 ; $83813F |
  ASL A                                     ; $838141 |
  TAY                                       ; $838142 |
  LDA.W CODE_00D65E,Y                       ; $838143 |
  PHA                                       ; $838146 |
  RTS                                       ; $838147 |

  LDA.B $90                                 ; $838148 |
  ASL A                                     ; $83814A |
  TAY                                       ; $83814B |
  LDA.W CODE_00D676,Y                       ; $83814C |
  PHA                                       ; $83814F |
  RTS                                       ; $838150 |

  LDA.W $1998                               ; $838151 |
  BEQ CODE_838161                           ; $838154 |
  STA.B $96                                 ; $838156 |
  STZ.B $98                                 ; $838158 |
  LDA.B $84                                 ; $83815A |
  CMP.W #$0010                              ; $83815C |
  BCC CODE_838168                           ; $83815F |

CODE_838161:
  LDA.W #$0001                              ; $838161 |
  JSL.L CODE_FL_838260                      ; $838164 |

CODE_838168:
  LDA.B $90                                 ; $838168 |
  ASL A                                     ; $83816A |
  TAY                                       ; $83816B |
  LDA.W CODE_00D66A,Y                       ; $83816C |
  PHA                                       ; $83816F |
  RTS                                       ; $838170 |

  JSL.L CODE_FL_8381A3                      ; $838171 |
  BCS CODE_JP_8381A2                        ; $838175 |
  LDY.W #$0000                              ; $838177 |
  CPX.W #$0400                              ; $83817A |
  BEQ CODE_838182                           ; $83817D |
  LDY.W #$0002                              ; $83817F |

CODE_838182:
  LDA.W $0030,Y                             ; $838182 |
  BIT.W #$1000                              ; $838185 |
  BEQ CODE_JP_8381A2                        ; $838188 |
  LDA.B $90                                 ; $83818A |
  CMP.W #$0000                              ; $83818C |
  BEQ CODE_838196                           ; $83818F |
  CMP.W #$0001                              ; $838191 |
  BNE CODE_83819D                           ; $838194 |

CODE_838196:
  LDA.W #$0003                              ; $838196 |
  JML.L CODE_FL_838260                      ; $838199 |

CODE_83819D:
  JSR.W CODE_FN_83D560                      ; $83819D |
  BRA CODE_838196                           ; $8381A0 |

CODE_JP_8381A2:
  RTL                                       ; $8381A2 |

CODE_FL_8381A3:
  ORA.W $0018,X                             ; $8381A3 |

CODE_FL_8381A6:
  JSL.L CODE_FL_80C885                      ; $8381A6 |
  ORA.W $00E6                               ; $8381AA |
  ORA.W $00C4                               ; $8381AD |
  BNE CODE_83820C                           ; $8381B0 |
  LDA.L $7E7C16                             ; $8381B2 |
  BNE CODE_83820C                           ; $8381B6 |
  LDA.W $1FA0                               ; $8381B8 |
  BMI CODE_83820C                           ; $8381BB |
  AND.W #$000F                              ; $8381BD |
  CMP.W #$000F                              ; $8381C0 |
  BNE CODE_83820C                           ; $8381C3 |
  LDA.W $003A                               ; $8381C5 |
  CMP.W #$0009                              ; $8381C8 |
  BNE CODE_83820C                           ; $8381CB |
  LDA.W $0492                               ; $8381CD |
  BIT.W #$00C2                              ; $8381D0 |
  BNE CODE_83820C                           ; $8381D3 |
  LDA.W $0090                               ; $8381D5 |
  CMP.W #$0005                              ; $8381D8 |
  BCS CODE_83820C                           ; $8381DB |
  CMP.W #$0002                              ; $8381DD |
  BEQ CODE_83820A                           ; $8381E0 |
  CMP.W #$0003                              ; $8381E2 |
  BEQ CODE_8381F6                           ; $8381E5 |
  CMP.W #$0004                              ; $8381E7 |
  BEQ CODE_838200                           ; $8381EA |
  LDA.W $007E                               ; $8381EC |
  CMP.W #$0003                              ; $8381EF |
  BNE CODE_83820C                           ; $8381F2 |
  BRA CODE_83820A                           ; $8381F4 |

CODE_8381F6:
  LDA.W $007E                               ; $8381F6 |
  CMP.W #$0004                              ; $8381F9 |
  BNE CODE_83820C                           ; $8381FC |
  BRA CODE_83820A                           ; $8381FE |

CODE_838200:
  LDA.W $007E                               ; $838200 |
  CMP.W #$0006                              ; $838203 |
  BNE CODE_83820C                           ; $838206 |
  BRA CODE_83820A                           ; $838208 |

CODE_83820A:
  CLC                                       ; $83820A |
  RTL                                       ; $83820B |

CODE_83820C:
  SEC                                       ; $83820C |
  RTL                                       ; $83820D |

  LDA.W $1978                               ; $83820E |
  ASL A                                     ; $838211 |
  TAY                                       ; $838212 |
  LDA.W CODE_00D686,Y                       ; $838213 |
  TAY                                       ; $838216 |
  LDA.W $0018,Y                             ; $838217 |
  BEQ CODE_83825F                           ; $83821A |
  LDA.W $00E6                               ; $83821C |
  ORA.B $E4                                 ; $83821F |
  ORA.B $76                                 ; $838221 |
  BEQ CODE_838228                           ; $838223 |
  JMP.W CODE_JP_8381A2                      ; $838225 |

CODE_838228:
  CMP.W #$0007                              ; $838228 |
  BEQ CODE_83822D                           ; $83822B |

CODE_83822D:
  LDA.B $98                                 ; $83822D |
  BIT.W #$1000                              ; $83822F |
  BEQ CODE_83825F                           ; $838232 |
  STZ.B $96                                 ; $838234 |
  STZ.B $98                                 ; $838236 |
  STZ.B $9A                                 ; $838238 |
  LDA.B $76,X                               ; $83823A |
  STA.B $18,X                               ; $83823C |
  LDA.W #$0001                              ; $83823E |
  JSL.L CODE_FL_83D24E                      ; $838241 |
  LDY.B $90                                 ; $838245 |
  LDA.W #$0000                              ; $838247 |
  AND.W #$00FF                              ; $83824A |
  LDA.W #$0020                              ; $83824D |
  STA.W $196C                               ; $838250 |
  LDA.W #$0010                              ; $838253 |
  STA.B $BC                                 ; $838256 |
  LDA.W #$0003                              ; $838258 |
  JML.L CODE_FL_838260                      ; $83825B |

CODE_83825F:
  RTL                                       ; $83825F |

CODE_FL_838260:
  STA.B $1A,X                               ; $838260 |
  STZ.B $74,X                               ; $838262 |
  RTL                                       ; $838264 |

CODE_FN_838265:
  LDA.W #$8000                              ; $838265 |
  STA.W $0480                               ; $838268 |
  STA.W $0540                               ; $83826B |
  RTS                                       ; $83826E |

  STZ.W $193A                               ; $83826F |
  LDA.B $90                                 ; $838272 |
  STA.W $197C                               ; $838274 |
  RTL                                       ; $838277 |

  JSL.L CODE_FL_83D3B8                      ; $838278 |
  LDA.W #$0001                              ; $83827C |
  JML.L CODE_FL_838260                      ; $83827F |

  JSL.L CODE_FL_83D3B8                      ; $838283 |
  LDA.W #$0001                              ; $838287 |
  JML.L CODE_FL_838260                      ; $83828A |

  LDA.W #$0001                              ; $83828E |
  JML.L CODE_FL_838260                      ; $838291 |

  LDA.B $68,X                               ; $838295 |
  BEQ CODE_83829B                           ; $838297 |
  DEC.B $68,X                               ; $838299 |

CODE_83829B:
  SEP #$20                                  ; $83829B |
  JSR.W CODE_FN_83CC0F                      ; $83829D |
  LDA.B $18,X                               ; $8382A0 |
  BNE CODE_8382A7                           ; $8382A2 |
  REP #$20                                  ; $8382A4 |
  RTL                                       ; $8382A6 |

CODE_8382A7:
  DEC A                                     ; $8382A7 |
  BEQ CODE_8382BF                           ; $8382A8 |
  DEC A                                     ; $8382AA |
  BEQ CODE_8382BA                           ; $8382AB |
  DEC A                                     ; $8382AD |
  BEQ CODE_8382B5                           ; $8382AE |
  JSR.W CODE_FN_83A9BD                      ; $8382B0 |
  BRA CODE_8382C2                           ; $8382B3 |

CODE_8382B5:
  JSR.W CODE_FN_83A737                      ; $8382B5 |
  BRA CODE_8382C2                           ; $8382B8 |

CODE_8382BA:
  JSR.W CODE_FN_83A394                      ; $8382BA |
  BRA CODE_8382C2                           ; $8382BD |

CODE_8382BF:
  JSR.W CODE_FN_839477                      ; $8382BF |

CODE_8382C2:
  LDA.B $E5                                 ; $8382C2 |
  BIT.B #$40                                ; $8382C4 |
  BNE CODE_8382CC                           ; $8382C6 |
  JSL.L CODE_FL_8FFE12                      ; $8382C8 |

CODE_8382CC:
  LDY.B $1C,X                               ; $8382CC |
  LDA.B $52,X                               ; $8382CE |
  BEQ CODE_8382D8                           ; $8382D0 |
  BMI CODE_8382DA                           ; $8382D2 |
  DEC.B $52,X                               ; $8382D4 |
  BNE CODE_8382DA                           ; $8382D6 |

CODE_8382D8:
  STZ.B $38,X                               ; $8382D8 |

CODE_8382DA:
  LDA.B $52,X                               ; $8382DA |
  LSR A                                     ; $8382DC |
  BCC CODE_8382E2                           ; $8382DD |
  LDY.W #$0000                              ; $8382DF |

CODE_8382E2:
  STY.B $00,X                               ; $8382E2 |
  REP #$20                                  ; $8382E4 |
  LDA.B $3A,X                               ; $8382E6 |
  BIT.W #$0040                              ; $8382E8 |
  BEQ CODE_838304                           ; $8382EB |
  LDA.B $28,X                               ; $8382ED |
  CLC                                       ; $8382EF |
  ADC.B $4C,X                               ; $8382F0 |
  STA.B $28,X                               ; $8382F2 |
  LDA.B $28,X                               ; $8382F4 |
  BMI CODE_838304                           ; $8382F6 |
  CMP.W #$0400                              ; $8382F8 |
  BCC CODE_838304                           ; $8382FB |
  LDA.W #$0400                              ; $8382FD |
  STA.B $28,X                               ; $838300 |
  BRA CODE_838304                           ; $838302 |

CODE_838304:
  LDA.W #$0008                              ; $838304 |
  STA.B $00                                 ; $838307 |
  LDA.B $48,X                               ; $838309 |
  BEQ CODE_838312                           ; $83830B |
  LDA.W #$0020                              ; $83830D |
  STA.B $00                                 ; $838310 |

CODE_838312:
  LDA.B $4A,X                               ; $838312 |
  BEQ CODE_83832C                           ; $838314 |
  BMI CODE_838321                           ; $838316 |
  SEC                                       ; $838318 |
  SBC.B $00                                 ; $838319 |
  BCS CODE_83832A                           ; $83831B |
  STZ.B $4A,X                               ; $83831D |
  BRA CODE_83832C                           ; $83831F |

CODE_838321:
  CLC                                       ; $838321 |
  ADC.B $00                                 ; $838322 |
  BCC CODE_83832A                           ; $838324 |
  STZ.B $4A,X                               ; $838326 |
  BRA CODE_83832C                           ; $838328 |

CODE_83832A:
  STA.B $4A,X                               ; $83832A |

CODE_83832C:
  LDA.B $48,X                               ; $83832C |
  CMP.W #$007F                              ; $83832E |
  BNE CODE_838335                           ; $838331 |
  STZ.B $48,X                               ; $838333 |

CODE_838335:
  LDA.B $32,X                               ; $838335 |
  AND.W #$F5FF                              ; $838337 |
  STA.B $32,X                               ; $83833A |
  RTL                                       ; $83833C |

  JSL.L CODE_FL_83D3B8                      ; $83833D |
  LDA.W #$0000                              ; $838341 |
  JSR.W CODE_FN_8383C1                      ; $838344 |
  LDA.W $195A                               ; $838347 |
  STA.B $09,X                               ; $83834A |
  LDA.W $195C                               ; $83834C |
  STA.B $0D,X                               ; $83834F |
  JSL.L CODE_FL_8383AA                      ; $838351 |
  JML.L CODE_FL_839ED2                      ; $838355 |

  JSL.L CODE_FL_83D4E2                      ; $838359 |
  BCS CODE_838375                           ; $83835D |
  JSL.L CODE_FL_83D3B8                      ; $83835F |
  LDA.W #$0000                              ; $838363 |
  JSR.W CODE_FN_8383C1                      ; $838366 |
  JSL.L CODE_FL_83D4FB                      ; $838369 |
  JSL.L CODE_FL_83CBC9                      ; $83836D |
  JSL.L CODE_FL_8383AA                      ; $838371 |

CODE_838375:
  RTL                                       ; $838375 |

  LDA.W $195A                               ; $838376 |
  STA.B $09,X                               ; $838379 |
  LDA.W $195C                               ; $83837B |
  STA.B $0D,X                               ; $83837E |
  LDA.B $74,X                               ; $838380 |
  BNE CODE_83839B                           ; $838382 |
  JSL.L CODE_FL_83D3CA                      ; $838384 |
  JSL.L CODE_FL_83D44B                      ; $838388 |
  JSR.W CODE_FN_8383C1                      ; $83838C |
  JSL.L CODE_FL_83D5DE                      ; $83838F |
  LDA.W #$0001                              ; $838393 |
  STA.B $48,X                               ; $838396 |
  JMP.W CODE_FL_8383AA                      ; $838398 |

CODE_83839B:
  JSL.L CODE_FL_83D44B                      ; $83839B |
  LDA.W #$0001                              ; $83839F |
  JSL.L CODE_FL_838260                      ; $8383A2 |
  JSL.L CODE_FL_83D626                      ; $8383A6 |

CODE_FL_8383AA:
  LDA.B $09,X                               ; $8383AA |
  CMP.W #$0090                              ; $8383AC |
  BCS CODE_8383B9                           ; $8383AF |
  LDA.B $04,X                               ; $8383B1 |
  AND.W #$00DF                              ; $8383B3 |
  STA.B $04,X                               ; $8383B6 |
  RTL                                       ; $8383B8 |

CODE_8383B9:
  LDA.B $04,X                               ; $8383B9 |
  ORA.W #$0020                              ; $8383BB |
  STA.B $04,X                               ; $8383BE |
  RTL                                       ; $8383C0 |

CODE_FN_8383C1:
  STZ.B $00                                 ; $8383C1 |
  LDA.W #$0001                              ; $8383C3 |
  JSL.L CODE_FL_838260                      ; $8383C6 |
  LDA.W #$0050                              ; $8383CA |
  STA.B $4C,X                               ; $8383CD |

CODE_FN_8383CF:
  STZ.B $22,X                               ; $8383CF |
  STZ.B $44,X                               ; $8383D1 |
  LDY.W #$0580                              ; $8383D3 |
  CPX.W #$0400                              ; $8383D6 |
  BEQ CODE_8383DE                           ; $8383D9 |
  LDY.W #$0850                              ; $8383DB |

CODE_8383DE:
  JSL.L CODE_FL_808F24                      ; $8383DE |
  LDA.W #$0014                              ; $8383E2 |
  STA.W $0018,Y                             ; $8383E5 |
  TXA                                       ; $8383E8 |
  STA.W $003A,Y                             ; $8383E9 |
  LDA.W #$C000                              ; $8383EC |
  STA.B $34,X                               ; $8383EF |
  CPX.W #$0400                              ; $8383F1 |
  BEQ CODE_838409                           ; $8383F4 |
  LDA.W #$0030                              ; $8383F6 |
  STA.B $06,X                               ; $8383F9 |
  STZ.W $1788                               ; $8383FB |
  STZ.W $1786                               ; $8383FE |
  STZ.W $1794                               ; $838401 |
  STZ.W $1792                               ; $838404 |
  BRA CODE_838417                           ; $838407 |

CODE_838409:
  STZ.B $06,X                               ; $838409 |
  STZ.W $1774                               ; $83840B |
  STZ.W $1772                               ; $83840E |
  STZ.W $1780                               ; $838411 |
  STZ.W $177E                               ; $838414 |

CODE_838417:
  LDA.W $1968                               ; $838417 |
  STA.B $04,X                               ; $83841A |
  STZ.B $4E,X                               ; $83841C |
  LDA.W #$0000                              ; $83841E |
  CPX.W #$0400                              ; $838421 |
  BEQ CODE_838429                           ; $838424 |
  LDA.W #$0001                              ; $838426 |

CODE_838429:
  STA.B $02,X                               ; $838429 |
  LDA.W #$FBFF                              ; $83842B |
  STA.B $3A,X                               ; $83842E |
  CPX.W #$0400                              ; $838430 |
  BEQ CODE_83843C                           ; $838433 |
  LDA.W #$0048                              ; $838435 |
  STA.B $14,X                               ; $838438 |
  BRA CODE_838441                           ; $83843A |

CODE_83843C:
  LDA.W #$0040                              ; $83843C |
  STA.B $14,X                               ; $83843F |

CODE_838441:
  JSL.L CODE_FL_83CD69                      ; $838441 |
  REP #$20                                  ; $838445 |
  RTS                                       ; $838447 |

  LDA.B $68,X                               ; $838448 |
  BEQ CODE_83844E                           ; $83844A |
  DEC.B $68,X                               ; $83844C |

CODE_83844E:
  SEP #$20                                  ; $83844E |
  JSR.W CODE_FN_83CD2D                      ; $838450 |
  LDA.B $18,X                               ; $838453 |
  BEQ CODE_838492                           ; $838455 |
  DEC A                                     ; $838457 |
  BEQ CODE_83846F                           ; $838458 |
  DEC A                                     ; $83845A |
  BEQ CODE_83846A                           ; $83845B |
  DEC A                                     ; $83845D |
  BEQ CODE_838465                           ; $83845E |
  JSR.W CODE_FN_83C3E4                      ; $838460 |
  BRA CODE_838472                           ; $838463 |

CODE_838465:
  JSR.W CODE_FN_83C31F                      ; $838465 |
  BRA CODE_838472                           ; $838468 |

CODE_83846A:
  JSR.W CODE_FN_83C0BD                      ; $83846A |
  BRA CODE_838472                           ; $83846D |

CODE_83846F:
  JSR.W CODE_FN_83B9ED                      ; $83846F |

CODE_838472:
  LDA.B $E5                                 ; $838472 |
  BIT.B #$40                                ; $838474 |
  BNE CODE_83847C                           ; $838476 |
  JSL.L CODE_FL_8FFE12                      ; $838478 |

CODE_83847C:
  LDY.B $1C,X                               ; $83847C |
  LDA.B $52,X                               ; $83847E |
  BEQ CODE_83848A                           ; $838480 |
  BMI CODE_83848A                           ; $838482 |
  DEC.B $52,X                               ; $838484 |
  BNE CODE_83848A                           ; $838486 |
  STZ.B $38,X                               ; $838488 |

CODE_83848A:
  LSR A                                     ; $83848A |
  BCC CODE_838490                           ; $83848B |
  LDY.W #$0000                              ; $83848D |

CODE_838490:
  STY.B $00,X                               ; $838490 |

CODE_838492:
  REP #$20                                  ; $838492 |

CODE_838494:
  RTL                                       ; $838494 |

  JSL.L CODE_FL_83D3B8                      ; $838495 |
  JSL.L CODE_FL_8384FB                      ; $838499 |
  LDA.W $195A                               ; $83849D |
  STA.B $09,X                               ; $8384A0 |
  LDA.W $195C                               ; $8384A2 |
  STA.B $0D,X                               ; $8384A5 |
  STZ.B $11,X                               ; $8384A7 |
  JSL.L CODE_FL_83BF22                      ; $8384A9 |
  RTL                                       ; $8384AD |

  JSL.L CODE_FL_83D56D                      ; $8384AE |
  BCS CODE_838494                           ; $8384B2 |
  JSL.L CODE_FL_83D3B8                      ; $8384B4 |
  JSL.L CODE_FL_8384FB                      ; $8384B8 |
  JSL.L CODE_FL_83D57E                      ; $8384BC |
  JSL.L CODE_FL_83CBC9                      ; $8384C0 |
  RTL                                       ; $8384C4 |

  LDA.W $195A                               ; $8384C5 |
  STA.B $09,X                               ; $8384C8 |
  LDA.W $195C                               ; $8384CA |
  STA.B $0D,X                               ; $8384CD |
  STZ.B $11,X                               ; $8384CF |
  LDA.B $74,X                               ; $8384D1 |
  BNE CODE_8384EC                           ; $8384D3 |
  JSL.L CODE_FL_83D3CA                      ; $8384D5 |
  JSL.L CODE_FL_83D44B                      ; $8384D9 |
  STZ.B $11,X                               ; $8384DD |
  JSL.L CODE_FL_83851A                      ; $8384DF |
  LDA.W #$0001                              ; $8384E3 |
  STA.B $48,X                               ; $8384E6 |
  JML.L CODE_FL_83D5DE                      ; $8384E8 |

CODE_8384EC:
  JSL.L CODE_FL_83D44B                      ; $8384EC |
  JSL.L CODE_FL_83D626                      ; $8384F0 |
  LDA.W #$0001                              ; $8384F4 |
  JML.L CODE_FL_838260                      ; $8384F7 |

CODE_FL_8384FB:
  LDA.W #$0000                              ; $8384FB |
  STA.B $00                                 ; $8384FE |
  LDA.W #$0001                              ; $838500 |
  JSL.L CODE_FL_838260                      ; $838503 |

CODE_838507:
  JSR.W CODE_FN_8383CF                      ; $838507 |
  LDA.W #$6000                              ; $83850A |
  STA.B $4C,X                               ; $83850D |
  LDA.W #$0004                              ; $83850F |
  STA.B $14,X                               ; $838512 |
  LDA.W #$0008                              ; $838514 |
  STA.B $2E,X                               ; $838517 |
  RTL                                       ; $838519 |

CODE_FL_83851A:
  LDA.W #$FFFF                              ; $83851A |
  STA.B $00                                 ; $83851D |
  LDA.W #$0001                              ; $83851F |
  JSL.L CODE_FL_838260                      ; $838522 |
  BRA CODE_838507                           ; $838526 |

CODE_FL_838528:
  STZ.W $1780                               ; $838528 |
  STZ.W $1794                               ; $83852B |
  RTL                                       ; $83852E |

CODE_FL_83852F:
  PHB                                       ; $83852F |
  PEA.W $8181                               ; $838530 |
  PLB                                       ; $838533 |
  PLB                                       ; $838534 |
  PHX                                       ; $838535 |
  PHY                                       ; $838536 |
  LDX.W #$0400                              ; $838537 |
  LDA.B $92,X                               ; $83853A |
  BIT.W #$0010                              ; $83853C |
  BEQ CODE_838544                           ; $83853F |
  JSR.W CODE_FN_838555                      ; $838541 |

CODE_838544:
  LDX.W #$04C0                              ; $838544 |
  LDA.B $92,X                               ; $838547 |
  BIT.W #$0010                              ; $838549 |
  BEQ CODE_838551                           ; $83854C |
  JSR.W CODE_FN_838555                      ; $83854E |

CODE_838551:
  PLY                                       ; $838551 |
  PLX                                       ; $838552 |
  PLB                                       ; $838553 |
  RTL                                       ; $838554 |

CODE_FN_838555:
  LDA.B $90                                 ; $838555 |
  CMP.W #$0000                              ; $838557 |
  BEQ CODE_838562                           ; $83855A |
  JSR.W CODE_FN_839E27                      ; $83855C |
  REP #$20                                  ; $83855F |
  RTS                                       ; $838561 |

CODE_838562:
  JSR.W CODE_FN_83BEB4                      ; $838562 |
  REP #$20                                  ; $838565 |
  RTS                                       ; $838567 |

CODE_FN_838568:
  LDA.B $4F,X                               ; $838568 |
  AND.W #$00FF                              ; $83856A |
  CMP.W #$0080                              ; $83856D |
  BCC CODE_838575                           ; $838570 |
  JSR.W CODE_FN_838F0F                      ; $838572 |

CODE_838575:
  RTS                                       ; $838575 |

CODE_FN_838576:
  LDA.B $48,X                               ; $838576 |
  BEQ CODE_83857E                           ; $838578 |
  STZ.B $26,X                               ; $83857A |
  STZ.B $27,X                               ; $83857C |

CODE_83857E:
  RTS                                       ; $83857E |

CODE_FN_83857F:
  LDA.B $04,X                               ; $83857F |
  BIT.B #$20                                ; $838581 |
  BEQ CODE_838587                           ; $838583 |
  SEC                                       ; $838585 |
  RTS                                       ; $838586 |

CODE_838587:
  CLC                                       ; $838587 |
  RTS                                       ; $838588 |

CODE_FL_838589:
  PHB                                       ; $838589 |
  PEA.W $8181                               ; $83858A |
  PLB                                       ; $83858D |
  PLB                                       ; $83858E |
  LDY.B $3C,X                               ; $83858F |
  LDA.W $0058,Y                             ; $838591 |
  ASL A                                     ; $838594 |
  TAY                                       ; $838595 |
  LDA.W CODE_00DF10,Y                       ; $838596 |
  STA.B $00                                 ; $838599 |
  LDA.W CODE_00DF24,Y                       ; $83859B |
  STA.B $02                                 ; $83859E |
  LDY.B $3C,X                               ; $8385A0 |
  LDA.W $0004,Y                             ; $8385A2 |
  BIT.W #$0020                              ; $8385A5 |
  BEQ CODE_8385B2                           ; $8385A8 |
  LDA.B $00                                 ; $8385AA |
  EOR.W #$FFFF                              ; $8385AC |
  INC A                                     ; $8385AF |
  STA.B $00                                 ; $8385B0 |

CODE_8385B2:
  LDA.W $0009,Y                             ; $8385B2 |
  CLC                                       ; $8385B5 |
  ADC.B $00                                 ; $8385B6 |
  STA.B $09,X                               ; $8385B8 |
  LDA.W $000D,Y                             ; $8385BA |
  CLC                                       ; $8385BD |
  ADC.B $02                                 ; $8385BE |
  STA.B $0D,X                               ; $8385C0 |
  PLB                                       ; $8385C2 |
  RTL                                       ; $8385C3 |

CODE_FN_8385C4:
  STA.B $58,X                               ; $8385C4 |
  RTS                                       ; $8385C6 |

CODE_FN_8385C7:
  REP #$20                                  ; $8385C7 |
  LDY.B $6C,X                               ; $8385C9 |
  TXA                                       ; $8385CB |
  STA.W $003C,Y                             ; $8385CC |
  LDA.W $0046,Y                             ; $8385CF |
  ORA.W #$0200                              ; $8385D2 |
  STA.W $0046,Y                             ; $8385D5 |
  LDA.W $0034,Y                             ; $8385D8 |
  AND.W #$EFFF                              ; $8385DB |
  STA.W $0034,Y                             ; $8385DE |
  LDA.W #$0002                              ; $8385E1 |
  JSR.W CODE_FN_8385C4                      ; $8385E4 |
  SEP #$20                                  ; $8385E7 |
  RTS                                       ; $8385E9 |

CODE_FN_8385EA:
  LDA.B $9C,X                               ; $8385EA |
  BEQ CODE_8385F6                           ; $8385EC |
  LDA.B $97                                 ; $8385EE |
  BIT.B #$80                                ; $8385F0 |
  BNE CODE_8385F7                           ; $8385F2 |
  STZ.B $9C,X                               ; $8385F4 |

CODE_8385F6:
  RTS                                       ; $8385F6 |

CODE_8385F7:
  DEC.B $9C,X                               ; $8385F7 |
  LDA.B $28,X                               ; $8385F9 |
  SEC                                       ; $8385FB |
  SBC.B #$40                                ; $8385FC |
  STA.B $28,X                               ; $8385FE |
  BCS CODE_838604                           ; $838600 |
  DEC.B $29,X                               ; $838602 |

CODE_838604:
  RTS                                       ; $838604 |

CODE_FN_838605:
  LDA.B $9C,X                               ; $838605 |
  BEQ CODE_838611                           ; $838607 |
  LDA.B $97                                 ; $838609 |
  BIT.B #$80                                ; $83860B |
  BNE CODE_838612                           ; $83860D |
  STZ.B $9C,X                               ; $83860F |

CODE_838611:
  RTS                                       ; $838611 |

CODE_838612:
  DEC.B $9C,X                               ; $838612 |
  REP #$20                                  ; $838614 |
  LDA.B $2A,X                               ; $838616 |
  CLC                                       ; $838618 |
  ADC.W #$0040                              ; $838619 |
  STA.B $2A,X                               ; $83861C |
  SEP #$20                                  ; $83861E |
  RTS                                       ; $838620 |

CODE_FN_838621:
  LDA.B $22,X                               ; $838621 |
  CMP.W #$0014                              ; $838623 |
  BNE CODE_83862B                           ; $838626 |
  JMP.W CODE_JP_8386C2                      ; $838628 |

CODE_83862B:
  LDA.W $1C6C                               ; $83862B |
  CMP.W #$7FFF                              ; $83862E |
  BEQ CODE_8386A7                           ; $838631 |
  LDA.B $92,X                               ; $838633 |
  BIT.W #$0070                              ; $838635 |
  BNE CODE_8386A6                           ; $838638 |
  LDA.B $35,X                               ; $83863A |
  BIT.W #$0004                              ; $83863C |
  BNE CODE_8386A6                           ; $83863F |
  LDA.W $1C6C                               ; $838641 |
  SEC                                       ; $838644 |
  SBC.B $0D,X                               ; $838645 |
  BEQ CODE_83865B                           ; $838647 |
  BPL CODE_8386A7                           ; $838649 |
  STA.B $00                                 ; $83864B |
  LDA.B $90,X                               ; $83864D |
  BNE CODE_838665                           ; $83864F |
  LDA.B $00                                 ; $838651 |
  CMP.W #$FFFE                              ; $838653 |
  BCS CODE_83865B                           ; $838656 |
  LDA.W #$00FE                              ; $838658 |

CODE_83865B:
  SEP #$20                                  ; $83865B |
  STA.B $29,X                               ; $83865D |
  STZ.B $28,X                               ; $83865F |
  STZ.B $08,X                               ; $838661 |
  REP #$20                                  ; $838663 |

CODE_838665:
  LDA.B $92,X                               ; $838665 |
  BIT.W #$0008                              ; $838667 |
  BNE CODE_8386A6                           ; $83866A |
  LDA.B $22,X                               ; $83866C |
  CMP.W #$0013                              ; $83866E |
  BEQ CODE_JP_8386C2                        ; $838671 |
  CMP.W #$0014                              ; $838673 |
  BEQ CODE_JP_8386C2                        ; $838676 |
  LDA.B $00                                 ; $838678 |
  CMP.W #$FFF8                              ; $83867A |
  BCC CODE_83868A                           ; $83867D |
  LDA.W #$0004                              ; $83867F |
  JSL.L CODE_FL_8089BD                      ; $838682 |
  JSL.L CODE_FL_86C1D7                      ; $838686 |

CODE_83868A:
  SEP #$20                                  ; $83868A |
  LDA.B $92,X                               ; $83868C |
  BIT.B #$80                                ; $83868E |
  BEQ CODE_838697                           ; $838690 |
  JSR.W CODE_FN_83A6C3                      ; $838692 |
  BRA CODE_8386A4                           ; $838695 |

CODE_838697:
  LDA.B $93,X                               ; $838697 |
  BIT.B #$04                                ; $838699 |
  BEQ CODE_8386A1                           ; $83869B |
  JSL.L CODE_FL_83CD69                      ; $83869D |

CODE_8386A1:
  JSR.W CODE_FN_839EDF                      ; $8386A1 |

CODE_8386A4:
  REP #$20                                  ; $8386A4 |

CODE_8386A6:
  RTS                                       ; $8386A6 |

CODE_8386A7:
  LDA.B $92,X                               ; $8386A7 |
  BIT.W #$0071                              ; $8386A9 |
  BNE CODE_JP_8386C2                        ; $8386AC |
  BIT.W #$0008                              ; $8386AE |
  BEQ CODE_JP_8386C2                        ; $8386B1 |
  BIT.W #$0080                              ; $8386B3 |
  BNE CODE_8386C3                           ; $8386B6 |
  SEP #$20                                  ; $8386B8 |
  JSR.W CODE_FN_839ECD                      ; $8386BA |
  JSR.W CODE_FN_8394AF                      ; $8386BD |
  REP #$20                                  ; $8386C0 |

CODE_JP_8386C2:
  RTS                                       ; $8386C2 |

CODE_8386C3:
  SEP #$20                                  ; $8386C3 |
  JSR.W CODE_FN_83A684                      ; $8386C5 |
  REP #$20                                  ; $8386C8 |
  RTS                                       ; $8386CA |

  RTS                                       ; $8386CB |

CODE_FN_8386CC:
  LDA.B $9E,X                               ; $8386CC |
  CMP.B #$02                                ; $8386CE |
  BCS CODE_8386DC                           ; $8386D0 |
  REP #$20                                  ; $8386D2 |
  JSL.L CODE_FL_83CE65                      ; $8386D4 |
  STA.B $9E,X                               ; $8386D8 |
  SEP #$20                                  ; $8386DA |

CODE_8386DC:
  LDA.B $93,X                               ; $8386DC |
  BIT.B #$02                                ; $8386DE |
  BNE CODE_8386E3                           ; $8386E0 |
  RTS                                       ; $8386E2 |

CODE_8386E3:
  CPX.B $A6                                 ; $8386E3 |
  BNE CODE_83872B                           ; $8386E5 |
  LDA.B $98                                 ; $8386E7 |
  BIT.B #$30                                ; $8386E9 |
  BNE CODE_8386F0                           ; $8386EB |
  JMP.W CODE_JP_838787                      ; $8386ED |

CODE_8386F0:
  LDA.L $7002E0                             ; $8386F0 |
  STA.B $18                                 ; $8386F4 |
  STA.B $1A                                 ; $8386F6 |
  LDA.B $1A                                 ; $8386F8 |
  INC A                                     ; $8386FA |
  CMP.B #$03                                ; $8386FB |
  BCC CODE_838700                           ; $8386FD |
  TDC                                       ; $8386FF |

CODE_838700:
  STA.B $1A                                 ; $838700 |
  BEQ CODE_83871B                           ; $838702 |
  CMP.B #$02                                ; $838704 |
  BEQ CODE_838712                           ; $838706 |
  LDA.L $7002F0                             ; $838708 |
  BNE CODE_83871B                           ; $83870C |
  LDA.B #$01                                ; $83870E |
  STA.B $1A                                 ; $838710 |

CODE_838712:
  LDA.L $7002F2                             ; $838712 |
  BNE CODE_83871B                           ; $838716 |
  TDC                                       ; $838718 |
  STA.B $1A                                 ; $838719 |

CODE_83871B:
  LDA.B $1A                                 ; $83871B |
  CMP.B $18                                 ; $83871D |
  BEQ CODE_838728                           ; $83871F |
  STA.L $7002E0                             ; $838721 |
  JSR.W CODE_FN_83B9C9                      ; $838725 |

CODE_838728:
  JMP.W CODE_JP_838787                      ; $838728 |

CODE_83872B:
  LDA.B $9E,X                               ; $83872B |
  CMP.B #$02                                ; $83872D |
  BCC CODE_838762                           ; $83872F |
  REP #$20                                  ; $838731 |
  JSL.L CODE_FL_83CE8A                      ; $838733 |
  BEQ CODE_838752                           ; $838737 |
  JSR.W CODE_FN_838F03                      ; $838739 |
  LDA.B $00                                 ; $83873C |
  CMP.B $BE                                 ; $83873E |
  BEQ CODE_838744                           ; $838740 |
  BCS CODE_838752                           ; $838742 |

CODE_838744:
  LDA.B $98                                 ; $838744 |
  BIT.W #$0030                              ; $838746 |
  BEQ CODE_JP_838787                        ; $838749 |
  LDA.W #$0046                              ; $83874B |
  JSL.L push_sound_queue                    ; $83874E |

CODE_838752:
  SEP #$20                                  ; $838752 |
  JSR.W CODE_FN_83878A                      ; $838754 |
  REP #$20                                  ; $838757 |
  JSL.L CODE_FL_83CE65                      ; $838759 |
  STA.B $9E,X                               ; $83875D |
  SEP #$20                                  ; $83875F |
  RTS                                       ; $838761 |

CODE_838762:
  LDA.B $98                                 ; $838762 |
  BIT.B #$30                                ; $838764 |
  BEQ CODE_JP_838787                        ; $838766 |
  REP #$20                                  ; $838768 |
  JSL.L CODE_FL_83CE8A                      ; $83876A |
  BEQ CODE_JP_838787                        ; $83876E |
  JSR.W CODE_FN_838F03                      ; $838770 |
  LDA.B $00                                 ; $838773 |
  CMP.B $BE                                 ; $838775 |
  BEQ CODE_83877B                           ; $838777 |
  BCS CODE_JP_838787                        ; $838779 |

CODE_83877B:
  LDA.W #$0002                              ; $83877B |
  STA.B $9E,X                               ; $83877E |
  LDA.W #$0046                              ; $838780 |
  JSL.L push_sound_queue                    ; $838783 |

CODE_JP_838787:
  SEP #$20                                  ; $838787 |
  RTS                                       ; $838789 |

CODE_FN_83878A:
  REP #$20                                  ; $83878A |
  STZ.B $4E,X                               ; $83878C |
  JSR.W CODE_FN_83CF76                      ; $83878E |
  LDA.W $0018,Y                             ; $838791 |
  BEQ CODE_83879C                           ; $838794 |
  LDA.W #$0002                              ; $838796 |
  STA.W $001A,Y                             ; $838799 |

CODE_83879C:
  SEP #$20                                  ; $83879C |
  RTS                                       ; $83879E |

CODE_FN_83879F:
  LDA.B $9E,X                               ; $83879F |
  CMP.B #$02                                ; $8387A1 |
  BNE CODE_838818                           ; $8387A3 |
  LDA.B $92,X                               ; $8387A5 |
  BIT.B #$F8                                ; $8387A7 |
  BNE CODE_838818                           ; $8387A9 |
  REP #$20                                  ; $8387AB |
  JSR.W CODE_FN_838F0F                      ; $8387AD |
  LDA.B $BE                                 ; $8387B0 |
  CMP.B $00                                 ; $8387B2 |
  SEP #$20                                  ; $8387B4 |
  BCS CODE_8387BD                           ; $8387B6 |
  JSR.W CODE_FN_83878A                      ; $8387B8 |
  BRA CODE_838818                           ; $8387BB |

CODE_8387BD:
  REP #$20                                  ; $8387BD |
  JSL.L CODE_FL_83CEAF                      ; $8387BF |
  SEP #$20                                  ; $8387C3 |
  BEQ CODE_838818                           ; $8387C5 |
  STZ.B $4F,X                               ; $8387C7 |
  LDA.B $97                                 ; $8387C9 |
  ORA.B $9B                                 ; $8387CB |
  BIT.B #$40                                ; $8387CD |
  BEQ CODE_838819                           ; $8387CF |
  LDA.B $4E,X                               ; $8387D1 |
  CMP.B #$FF                                ; $8387D3 |
  BEQ CODE_838818                           ; $8387D5 |
  CMP.B #$26                                ; $8387D7 |
  BNE CODE_83880D                           ; $8387D9 |
  JSR.W CODE_FN_83CF5E                      ; $8387DB |
  REP #$20                                  ; $8387DE |
  LDA.W #$0082                              ; $8387E0 |
  STA.W $0018,Y                             ; $8387E3 |
  LDA.W #$0000                              ; $8387E6 |
  STA.W $0022,Y                             ; $8387E9 |
  LDA.B $90                                 ; $8387EC |
  CMP.W #$0000                              ; $8387EE |
  BEQ CODE_8387FB                           ; $8387F1 |
  LDA.W #$0030                              ; $8387F3 |
  STA.W $0014,Y                             ; $8387F6 |
  BRA CODE_838801                           ; $8387F9 |

CODE_8387FB:
  LDA.W #$0000                              ; $8387FB |
  STA.W $0014,Y                             ; $8387FE |

CODE_838801:
  LDA.W #$0000                              ; $838801 |
  STA.W $001A,Y                             ; $838804 |
  TXA                                       ; $838807 |
  STA.W $003A,Y                             ; $838808 |
  SEP #$20                                  ; $83880B |

CODE_83880D:
  LDA.B $4E,X                               ; $83880D |
  CLC                                       ; $83880F |
  ADC.B #$02                                ; $838810 |
  BCC CODE_838816                           ; $838812 |
  LDA.B #$FF                                ; $838814 |

CODE_838816:
  STA.B $4E,X                               ; $838816 |

CODE_838818:
  RTS                                       ; $838818 |

CODE_838819:
  LDA.B $4E,X                               ; $838819 |
  CMP.B #$18                                ; $83881B |
  BCC CODE_838836                           ; $83881D |
  JSR.W CODE_FN_83CF5E                      ; $83881F |
  LDA.W $0018,Y                             ; $838822 |
  BEQ CODE_83882C                           ; $838825 |
  LDA.B #$02                                ; $838827 |
  STA.W $001A,Y                             ; $838829 |

CODE_83882C:
  LDA.B $9B                                 ; $83882C |
  ORA.B #$40                                ; $83882E |
  STA.B $9B                                 ; $838830 |
  LDA.B $4E,X                               ; $838832 |
  STA.B $4F,X                               ; $838834 |

CODE_838836:
  STZ.B $4E,X                               ; $838836 |
  RTS                                       ; $838838 |

CODE_FN_838839:
  LDA.B #$00                                ; $838839 |
  XBA                                       ; $83883B |
  LDA.B $97                                 ; $83883C |
  AND.B #$0F                                ; $83883E |
  STA.B $00                                 ; $838840 |
  BEQ CODE_838894                           ; $838842 |
  TAY                                       ; $838844 |
  LDA.W CODE_00DF38,Y                       ; $838845 |
  BPL CODE_838854                           ; $838848 |
  AND.B #$7F                                ; $83884A |
  STA.B $01                                 ; $83884C |
  LDA.B $94,X                               ; $83884E |
  BEQ CODE_838895                           ; $838850 |
  LDA.B $01                                 ; $838852 |

CODE_838854:
  CMP.B $94,X                               ; $838854 |
  BEQ CODE_838895                           ; $838856 |
  STA.B $94,X                               ; $838858 |
  CMP.B #$02                                ; $83885A |
  BEQ CODE_838871                           ; $83885C |
  LSR A                                     ; $83885E |
  BCC CODE_838881                           ; $83885F |
  LDA.B $04,X                               ; $838861 |
  AND.B #$DF                                ; $838863 |
  STA.B $04,X                               ; $838865 |
  JSR.W CODE_FN_8388AB                      ; $838867 |
  REP #$20                                  ; $83886A |
  LDA.W LOOSE_OP_00E744,Y                   ; $83886C |
  BRA CODE_83888C                           ; $83886F |

CODE_838871:
  LDA.B $04,X                               ; $838871 |
  AND.B #$DF                                ; $838873 |
  STA.B $04,X                               ; $838875 |
  JSR.W CODE_FN_8388AB                      ; $838877 |
  REP #$20                                  ; $83887A |
  LDA.W CODE_00E4FC,Y                       ; $83887C |
  BRA CODE_83888C                           ; $83887F |

CODE_838881:
  JSR.W CODE_FN_838899                      ; $838881 |
  JSR.W CODE_FN_8388AB                      ; $838884 |
  REP #$20                                  ; $838887 |
  LDA.W CODE_00E2B4,Y                       ; $838889 |

CODE_83888C:
  STA.B $20,X                               ; $83888C |
  SEP #$20                                  ; $83888E |
  LDA.B #$01                                ; $838890 |
  STA.B $BB,X                               ; $838892 |

CODE_838894:
  RTS                                       ; $838894 |

CODE_838895:
  LDA.B $94,X                               ; $838895 |
  BNE CODE_838894                           ; $838897 |

CODE_FN_838899:
  LSR.B $00                                 ; $838899 |
  BCC CODE_8388A4                           ; $83889B |
  LDA.B $04,X                               ; $83889D |
  AND.B #$DF                                ; $83889F |
  STA.B $04,X                               ; $8388A1 |
  RTS                                       ; $8388A3 |

CODE_8388A4:
  LDA.B $04,X                               ; $8388A4 |
  ORA.B #$20                                ; $8388A6 |
  STA.B $04,X                               ; $8388A8 |
  RTS                                       ; $8388AA |

CODE_FN_8388AB:
  REP #$20                                  ; $8388AB |
  LDY.B $18,X                               ; $8388AD |
  LDA.W CODE_00DB39,Y                       ; $8388AF |
  AND.W #$00FF                              ; $8388B2 |
  CLC                                       ; $8388B5 |
  ADC.B $22,X                               ; $8388B6 |
  ASL A                                     ; $8388B8 |
  TAY                                       ; $8388B9 |
  SEP #$20                                  ; $8388BA |
  RTS                                       ; $8388BC |

  SEP #$20                                  ; $8388BD |
  JSR.W CODE_FN_8388C5                      ; $8388BF |
  REP #$20                                  ; $8388C2 |
  RTL                                       ; $8388C4 |

CODE_FN_8388C5:
  STA.B $20                                 ; $8388C5 |
  STZ.B $21                                 ; $8388C7 |
  LDY.B $18,X                               ; $8388C9 |
  LDA.W CODE_00DB39,Y                       ; $8388CB |
  REP #$20                                  ; $8388CE |
  AND.W #$00FF                              ; $8388D0 |
  CLC                                       ; $8388D3 |
  ADC.B $20                                 ; $8388D4 |
  ASL A                                     ; $8388D6 |
  TAY                                       ; $8388D7 |
  LDA.W CODE_00DF48,Y                       ; $8388D8 |

CODE_JP_8388DB:
  STA.B $20,X                               ; $8388DB |
  SEP #$20                                  ; $8388DD |
  STZ.B $1E,X                               ; $8388DF |
  STZ.B $BA,X                               ; $8388E1 |
  RTS                                       ; $8388E3 |

CODE_FN_8388E4:
  STA.B $20                                 ; $8388E4 |
  STZ.B $21                                 ; $8388E6 |
  LDY.B $18,X                               ; $8388E8 |
  LDA.W CODE_00DB39,Y                       ; $8388EA |
  REP #$20                                  ; $8388ED |
  AND.W #$00FF                              ; $8388EF |
  CLC                                       ; $8388F2 |
  ADC.B $20                                 ; $8388F3 |
  ASL A                                     ; $8388F5 |
  TAY                                       ; $8388F6 |
  LDA.B $94,X                               ; $8388F7 |
  BEQ CODE_838908                           ; $8388F9 |
  LSR A                                     ; $8388FB |
  BCC CODE_838903                           ; $8388FC |
  LDA.W LOOSE_OP_00E744,Y                   ; $8388FE |
  BRA CODE_83890B                           ; $838901 |

CODE_838903:
  LDA.W CODE_00E4FC,Y                       ; $838903 |
  BRA CODE_83890B                           ; $838906 |

CODE_838908:
  LDA.W CODE_00E2B4,Y                       ; $838908 |

CODE_83890B:
  STA.B $20,X                               ; $83890B |
  SEP #$20                                  ; $83890D |
  STZ.B $1E,X                               ; $83890F |
  STZ.B $BA,X                               ; $838911 |
  RTS                                       ; $838913 |

  SEP #$20                                  ; $838914 |
  JSR.W CODE_FN_83891C                      ; $838916 |
  REP #$20                                  ; $838919 |
  RTL                                       ; $83891B |

CODE_FN_83891C:
  STA.B $22,X                               ; $83891C |
  JSR.W CODE_FN_838A2C                      ; $83891E |
  JSR.W CODE_FN_838A02                      ; $838921 |
  LDY.B $18,X                               ; $838924 |
  REP #$20                                  ; $838926 |
  LDA.W CODE_00DB39,Y                       ; $838928 |
  AND.W #$00FF                              ; $83892B |
  CLC                                       ; $83892E |
  ADC.B $22,X                               ; $83892F |
  STA.B $10                                 ; $838931 |
  ASL A                                     ; $838933 |
  TAY                                       ; $838934 |
  LDA.W CODE_00DF48,Y                       ; $838935 |
  STA.B $20,X                               ; $838938 |
  SEP #$20                                  ; $83893A |
  LDY.B $10                                 ; $83893C |
  LDA.W CODE_00E190,Y                       ; $83893E |
  STA.B $1E,X                               ; $838941 |
  STZ.B $44,X                               ; $838943 |
  STZ.B $BA,X                               ; $838945 |
  RTS                                       ; $838947 |

CODE_FN_838948:
  STA.B $22,X                               ; $838948 |
  JSR.W CODE_FN_838A2C                      ; $83894A |
  JSR.W CODE_FN_838A02                      ; $83894D |
  LDY.B $18,X                               ; $838950 |
  REP #$20                                  ; $838952 |
  LDA.W CODE_00DB39,Y                       ; $838954 |
  AND.W #$00FF                              ; $838957 |
  CLC                                       ; $83895A |
  ADC.B $22,X                               ; $83895B |
  STA.B $10                                 ; $83895D |
  ASL A                                     ; $83895F |
  TAY                                       ; $838960 |
  LDA.W CODE_00DF48,Y                       ; $838961 |
  STA.B $20,X                               ; $838964 |
  SEP #$20                                  ; $838966 |
  LDY.B $10                                 ; $838968 |
  LDA.W CODE_00E190,Y                       ; $83896A |
  STA.B $1E,X                               ; $83896D |
  STZ.B $26,X                               ; $83896F |
  STZ.B $27,X                               ; $838971 |
  STZ.B $64,X                               ; $838973 |
  STZ.B $44,X                               ; $838975 |
  STZ.B $BA,X                               ; $838977 |
  RTS                                       ; $838979 |

CODE_FN_83897A:
  STA.B $22,X                               ; $83897A |
  JSR.W CODE_FN_838A2C                      ; $83897C |
  JSR.W CODE_FN_838A17                      ; $83897F |
  LDY.B $18,X                               ; $838982 |
  REP #$20                                  ; $838984 |
  LDA.W CODE_00DB39,Y                       ; $838986 |
  AND.W #$00FF                              ; $838989 |
  CLC                                       ; $83898C |
  ADC.B $22,X                               ; $83898D |
  STA.B $10                                 ; $83898F |
  ASL A                                     ; $838991 |
  TAY                                       ; $838992 |
  LDA.B $94,X                               ; $838993 |
  BEQ CODE_8389A4                           ; $838995 |
  LSR A                                     ; $838997 |
  BCC CODE_83899F                           ; $838998 |
  LDA.W LOOSE_OP_00E744,Y                   ; $83899A |
  BRA CODE_8389A7                           ; $83899D |

CODE_83899F:
  LDA.W CODE_00E4FC,Y                       ; $83899F |
  BRA CODE_8389A7                           ; $8389A2 |

CODE_8389A4:
  LDA.W CODE_00E2B4,Y                       ; $8389A4 |

CODE_8389A7:
  STA.B $20,X                               ; $8389A7 |
  SEP #$20                                  ; $8389A9 |
  LDY.B $10                                 ; $8389AB |
  LDA.W CODE_00E98C,Y                       ; $8389AD |
  STA.B $1E,X                               ; $8389B0 |
  STZ.B $64,X                               ; $8389B2 |
  STZ.B $44,X                               ; $8389B4 |
  STZ.B $BA,X                               ; $8389B6 |
  RTS                                       ; $8389B8 |

CODE_JP_8389B9:
  STA.B $22,X                               ; $8389B9 |
  JSR.W CODE_FN_838A2C                      ; $8389BB |
  JSR.W CODE_FN_838A17                      ; $8389BE |
  LDY.B $18,X                               ; $8389C1 |
  REP #$20                                  ; $8389C3 |
  LDA.W CODE_00DB39,Y                       ; $8389C5 |
  AND.W #$00FF                              ; $8389C8 |
  CLC                                       ; $8389CB |
  ADC.B $22,X                               ; $8389CC |
  STA.B $10                                 ; $8389CE |
  ASL A                                     ; $8389D0 |
  TAY                                       ; $8389D1 |
  LDA.B $94,X                               ; $8389D2 |
  BEQ CODE_8389E3                           ; $8389D4 |
  LSR A                                     ; $8389D6 |
  BCC CODE_8389DE                           ; $8389D7 |
  LDA.W LOOSE_OP_00E744,Y                   ; $8389D9 |
  BRA CODE_8389E6                           ; $8389DC |

CODE_8389DE:
  LDA.W CODE_00E4FC,Y                       ; $8389DE |
  BRA CODE_8389E6                           ; $8389E1 |

CODE_8389E3:
  LDA.W CODE_00E2B4,Y                       ; $8389E3 |

CODE_8389E6:
  STA.B $20,X                               ; $8389E6 |
  STZ.B $26,X                               ; $8389E8 |
  STZ.B $28,X                               ; $8389EA |
  SEP #$20                                  ; $8389EC |
  LDY.B $10                                 ; $8389EE |
  LDA.W CODE_00E98C,Y                       ; $8389F0 |
  STA.B $1E,X                               ; $8389F3 |
  STZ.B $64,X                               ; $8389F5 |
  STZ.B $44,X                               ; $8389F7 |
  STZ.B $BA,X                               ; $8389F9 |
  RTS                                       ; $8389FB |

  LDY.B $18,X                               ; $8389FC |
  LDA.W LOOSE_OP_00DEA9,Y                   ; $8389FE |
  RTS                                       ; $838A01 |

CODE_FN_838A02:
  REP #$20                                  ; $838A02 |
  AND.W #$00FF                              ; $838A04 |
  ASL A                                     ; $838A07 |
  ASL A                                     ; $838A08 |
  TAY                                       ; $838A09 |
  SEP #$20                                  ; $838A0A |
  LDA.W LOOSE_OP_00DB3E,Y                   ; $838A0C |
  STA.B $2E,X                               ; $838A0F |
  LDA.W LOOSE_OP_00DB3F,Y                   ; $838A11 |
  STA.B $30,X                               ; $838A14 |
  RTS                                       ; $838A16 |

CODE_FN_838A17:
  REP #$20                                  ; $838A17 |
  AND.W #$00FF                              ; $838A19 |
  ASL A                                     ; $838A1C |
  ASL A                                     ; $838A1D |
  TAY                                       ; $838A1E |
  SEP #$20                                  ; $838A1F |
  LDA.W LOOSE_OP_00DB3E,Y                   ; $838A21 |
  STA.B $2E,X                               ; $838A24 |
  LDA.W CODE_00DB40,Y                       ; $838A26 |
  STA.B $30,X                               ; $838A29 |
  RTS                                       ; $838A2B |

CODE_FN_838A2C:
  REP #$20                                  ; $838A2C |
  PHA                                       ; $838A2E |
  AND.W #$00FF                              ; $838A2F |
  ASL A                                     ; $838A32 |
  TAY                                       ; $838A33 |
  LDA.B $18,X                               ; $838A34 |
  CMP.W #$0001                              ; $838A36 |
  BEQ CODE_838A47                           ; $838A39 |
  CMP.W #$0002                              ; $838A3B |
  BEQ CODE_838A55                           ; $838A3E |
  CMP.W #$0003                              ; $838A40 |
  BEQ CODE_838A63                           ; $838A43 |
  BRA CODE_838A71                           ; $838A45 |

CODE_838A47:
  LDA.B $92,X                               ; $838A47 |
  AND.W #$8000                              ; $838A49 |
  ORA.W LOOSE_OP_00DC62,Y                   ; $838A4C |
  STA.B $92,X                               ; $838A4F |
  PLA                                       ; $838A51 |
  SEP #$20                                  ; $838A52 |
  RTS                                       ; $838A54 |

CODE_838A55:
  LDA.B $92,X                               ; $838A55 |
  AND.W #$8000                              ; $838A57 |
  ORA.W LOOSE_OP_00DCF4,Y                   ; $838A5A |
  STA.B $92,X                               ; $838A5D |
  PLA                                       ; $838A5F |
  SEP #$20                                  ; $838A60 |
  RTS                                       ; $838A62 |

CODE_838A63:
  LDA.B $92,X                               ; $838A63 |
  AND.W #$8000                              ; $838A65 |
  ORA.W LOOSE_OP_00DD86,Y                   ; $838A68 |
  STA.B $92,X                               ; $838A6B |
  PLA                                       ; $838A6D |
  SEP #$20                                  ; $838A6E |
  RTS                                       ; $838A70 |

CODE_838A71:
  LDA.B $92,X                               ; $838A71 |
  AND.W #$8000                              ; $838A73 |
  ORA.W LOOSE_OP_00DE18,Y                   ; $838A76 |
  STA.B $92,X                               ; $838A79 |
  PLA                                       ; $838A7B |
  SEP #$20                                  ; $838A7C |
  RTS                                       ; $838A7E |

  LDA.B $9B                                 ; $838A7F |
  AND.B #$80                                ; $838A81 |
  STA.B $AE,X                               ; $838A83 |
  RTS                                       ; $838A85 |

CODE_FN_838A86:
  REP #$20                                  ; $838A86 |
  LDA.B $0D,X                               ; $838A88 |
  SEC                                       ; $838A8A |
  SBC.W #$001C                              ; $838A8B |
  STA.B $0A                                 ; $838A8E |
  LDA.B $09,X                               ; $838A90 |
  CLC                                       ; $838A92 |
  ADC.W #$0007                              ; $838A93 |
  STA.B $08                                 ; $838A96 |
  JSL.L CODE_FL_80CA94                      ; $838A98 |
  TAY                                       ; $838A9C |
  LDA.W CODE_00EEFA,Y                       ; $838A9D |
  BIT.W #$0001                              ; $838AA0 |
  BNE CODE_838ABE                           ; $838AA3 |
  LDA.B $09,X                               ; $838AA5 |
  SEC                                       ; $838AA7 |
  SBC.W #$0007                              ; $838AA8 |
  STA.B $08                                 ; $838AAB |
  JSL.L CODE_FL_80CA94                      ; $838AAD |
  TAY                                       ; $838AB1 |
  LDA.W CODE_00EEFA,Y                       ; $838AB2 |
  BIT.W #$0001                              ; $838AB5 |
  BNE CODE_838ABE                           ; $838AB8 |
  CLC                                       ; $838ABA |
  SEP #$20                                  ; $838ABB |
  RTS                                       ; $838ABD |

CODE_838ABE:
  CPY.W #$007A                              ; $838ABE |
  BNE CODE_838AD5                           ; $838AC1 |
  LDA.B $97                                 ; $838AC3 |
  BIT.W #$0004                              ; $838AC5 |
  BNE CODE_838AD5                           ; $838AC8 |
  LDA.B $38,X                               ; $838ACA |
  BNE CODE_838AD5                           ; $838ACC |
  LDA.B $33,X                               ; $838ACE |
  ORA.W #$0080                              ; $838AD0 |
  STA.B $33,X                               ; $838AD3 |

CODE_838AD5:
  SEC                                       ; $838AD5 |
  SEP #$20                                  ; $838AD6 |
  RTS                                       ; $838AD8 |

CODE_JP_838AD9:
  LDA.B $18,X                               ; $838AD9 |
  CMP.B #$03                                ; $838ADB |
  BCS CODE_838B19                           ; $838ADD |
  LDA.B $92,X                               ; $838ADF |
  BIT.B #$80                                ; $838AE1 |
  BNE CODE_838B19                           ; $838AE3 |
  LDA.B $97                                 ; $838AE5 |
  BIT.B #$40                                ; $838AE7 |
  BNE CODE_838AED                           ; $838AE9 |
  STZ.B $64,X                               ; $838AEB |

CODE_838AED:
  LDA.B $64,X                               ; $838AED |
  CMP.B #$3F                                ; $838AEF |
  BEQ CODE_838AF5                           ; $838AF1 |
  INC.B $64,X                               ; $838AF3 |

CODE_838AF5:
  REP #$20                                  ; $838AF5 |
  LDA.B $64,X                               ; $838AF7 |
  LSR A                                     ; $838AF9 |
  LSR A                                     ; $838AFA |
  AND.W #$000E                              ; $838AFB |
  TAY                                       ; $838AFE |
  LDA.B $26,X                               ; $838AFF |
  BEQ CODE_838B15                           ; $838B01 |
  BMI CODE_838B0A                           ; $838B03 |
  LDA.W CODE_00DEAE,Y                       ; $838B05 |
  BRA CODE_838B0D                           ; $838B08 |

CODE_838B0A:
  LDA.W CODE_00DEBE,Y                       ; $838B0A |

CODE_838B0D:
  CLC                                       ; $838B0D |
  ADC.B $26,X                               ; $838B0E |
  STA.B $26,X                               ; $838B10 |
  SEP #$20                                  ; $838B12 |
  RTS                                       ; $838B14 |

CODE_838B15:
  SEP #$20                                  ; $838B15 |
  STZ.B $64,X                               ; $838B17 |

CODE_838B19:
  RTS                                       ; $838B19 |

CODE_JP_838B1A:
  LDA.B $18,X                               ; $838B1A |
  CMP.B #$03                                ; $838B1C |
  BCS CODE_838B19                           ; $838B1E |
  LDA.B $92,X                               ; $838B20 |
  BIT.B #$80                                ; $838B22 |
  BNE CODE_838B19                           ; $838B24 |
  LDA.B $97                                 ; $838B26 |
  BIT.B #$40                                ; $838B28 |
  BNE CODE_838B2E                           ; $838B2A |
  STZ.B $64,X                               ; $838B2C |

CODE_838B2E:
  LDA.B $64,X                               ; $838B2E |
  CMP.B #$3F                                ; $838B30 |
  BEQ CODE_838B36                           ; $838B32 |
  INC.B $64,X                               ; $838B34 |

CODE_838B36:
  REP #$20                                  ; $838B36 |
  LDA.B $64,X                               ; $838B38 |
  LSR A                                     ; $838B3A |
  LSR A                                     ; $838B3B |
  AND.W #$000E                              ; $838B3C |
  TAY                                       ; $838B3F |
  LDA.B $26,X                               ; $838B40 |
  ORA.B $28,X                               ; $838B42 |
  BNE CODE_838B4B                           ; $838B44 |
  SEP #$20                                  ; $838B46 |
  STZ.B $64,X                               ; $838B48 |
  RTS                                       ; $838B4A |

CODE_838B4B:
  LDA.B $26,X                               ; $838B4B |
  BEQ CODE_838B5E                           ; $838B4D |
  BMI CODE_838B56                           ; $838B4F |
  LDA.W CODE_00DEAE,Y                       ; $838B51 |
  BRA CODE_838B59                           ; $838B54 |

CODE_838B56:
  LDA.W CODE_00DEBE,Y                       ; $838B56 |

CODE_838B59:
  CLC                                       ; $838B59 |
  ADC.B $26,X                               ; $838B5A |
  STA.B $26,X                               ; $838B5C |

CODE_838B5E:
  LDA.B $28,X                               ; $838B5E |
  BEQ CODE_838B71                           ; $838B60 |
  BMI CODE_838B69                           ; $838B62 |
  LDA.W LOOSE_OP_00DECE,Y                   ; $838B64 |
  BRA CODE_838B6C                           ; $838B67 |

CODE_838B69:
  LDA.W CODE_00DEDE,Y                       ; $838B69 |

CODE_838B6C:
  CLC                                       ; $838B6C |
  ADC.B $28,X                               ; $838B6D |
  STA.B $28,X                               ; $838B6F |

CODE_838B71:
  SEP #$20                                  ; $838B71 |
  RTS                                       ; $838B73 |

CODE_JP_838B74:
  JSR.W CODE_FN_83BAA7                      ; $838B74 |
  LDA.B $18,X                               ; $838B77 |
  DEC A                                     ; $838B79 |
  BEQ CODE_838B88                           ; $838B7A |
  DEC A                                     ; $838B7C |
  BEQ CODE_838BC6                           ; $838B7D |
  DEC A                                     ; $838B7F |
  BEQ CODE_838B85                           ; $838B80 |
  JMP.W CODE_JP_838C3B                      ; $838B82 |

CODE_838B85:
  JMP.W CODE_JP_838C02                      ; $838B85 |

CODE_838B88:
  LDA.B $9E,X                               ; $838B88 |
  BEQ CODE_838B94                           ; $838B8A |
  CMP.B #$02                                ; $838B8C |
  BCS CODE_838B9E                           ; $838B8E |
  CMP.B #$01                                ; $838B90 |
  BEQ CODE_838B99                           ; $838B92 |

CODE_838B94:
  LDA.B #$07                                ; $838B94 |
  JMP.W CODE_FN_83897A                      ; $838B96 |

CODE_838B99:
  LDA.B #$08                                ; $838B99 |
  JMP.W CODE_FN_83897A                      ; $838B9B |

CODE_838B9E:
  REP #$20                                  ; $838B9E |
  JSR.W CODE_FN_838F03                      ; $838BA0 |
  LDA.B $BE                                 ; $838BA3 |
  CMP.B $00                                 ; $838BA5 |
  BCS CODE_838BB2                           ; $838BA7 |
  SEP #$20                                  ; $838BA9 |
  LDA.B $A0,X                               ; $838BAB |
  STA.B $9E,X                               ; $838BAD |
  JMP.W CODE_JP_838CDE                      ; $838BAF |

CODE_838BB2:
  JSR.W CODE_FN_838568                      ; $838BB2 |
  LDA.B $00                                 ; $838BB5 |
  JSL.L CODE_FL_83D1D6                      ; $838BB7 |
  SEP #$20                                  ; $838BBB |
  LDA.B $4F,X                               ; $838BBD |
  STA.B $50,X                               ; $838BBF |
  LDA.B #$0D                                ; $838BC1 |
  JMP.W CODE_FN_83897A                      ; $838BC3 |

CODE_838BC6:
  LDA.B $9E,X                               ; $838BC6 |
  BEQ CODE_838BD2                           ; $838BC8 |
  CMP.B #$02                                ; $838BCA |
  BCS CODE_838BDA                           ; $838BCC |
  CMP.B #$01                                ; $838BCE |
  BEQ CODE_838BD7                           ; $838BD0 |

CODE_838BD2:
  LDA.B #$07                                ; $838BD2 |
  JMP.W CODE_FN_83897A                      ; $838BD4 |

CODE_838BD7:
  JMP.W CODE_JP_83C2F2                      ; $838BD7 |

CODE_838BDA:
  REP #$20                                  ; $838BDA |
  JSR.W CODE_FN_838F03                      ; $838BDC |
  LDA.B $BE                                 ; $838BDF |
  CMP.B $00                                 ; $838BE1 |
  BCS CODE_838BEE                           ; $838BE3 |
  SEP #$20                                  ; $838BE5 |
  LDA.B $A0,X                               ; $838BE7 |
  STA.B $9E,X                               ; $838BE9 |
  JMP.W CODE_JP_838D3D                      ; $838BEB |

CODE_838BEE:
  JSR.W CODE_FN_838568                      ; $838BEE |
  LDA.B $00                                 ; $838BF1 |
  JSL.L CODE_FL_83D1D6                      ; $838BF3 |
  SEP #$20                                  ; $838BF7 |
  LDA.B $4F,X                               ; $838BF9 |
  STA.B $50,X                               ; $838BFB |
  LDA.B #$0D                                ; $838BFD |
  JMP.W CODE_FN_83897A                      ; $838BFF |

CODE_JP_838C02:
  LDA.B $9E,X                               ; $838C02 |
  CMP.B #$02                                ; $838C04 |
  BCC CODE_838C2D                           ; $838C06 |
  REP #$20                                  ; $838C08 |
  JSR.W CODE_FN_838F03                      ; $838C0A |
  LDA.B $BE                                 ; $838C0D |
  CMP.B $00                                 ; $838C0F |
  BCS CODE_838C1C                           ; $838C11 |
  SEP #$20                                  ; $838C13 |
  LDA.B $A0,X                               ; $838C15 |
  STA.B $9E,X                               ; $838C17 |
  JMP.W CODE_JP_838DA0                      ; $838C19 |

CODE_838C1C:
  LDA.B $00                                 ; $838C1C |
  JSL.L CODE_FL_83D1D6                      ; $838C1E |
  SEP #$20                                  ; $838C22 |
  LDA.B $4F,X                               ; $838C24 |
  STA.B $50,X                               ; $838C26 |
  LDA.B #$0D                                ; $838C28 |
  JMP.W CODE_FN_83897A                      ; $838C2A |

CODE_838C2D:
  LDA.B $9E,X                               ; $838C2D |
  BEQ CODE_838C36                           ; $838C2F |
  LDA.B #$08                                ; $838C31 |
  JMP.W CODE_FN_83897A                      ; $838C33 |

CODE_838C36:
  LDA.B #$07                                ; $838C36 |
  JMP.W CODE_FN_83897A                      ; $838C38 |

CODE_JP_838C3B:
  LDA.B $9E,X                               ; $838C3B |
  CMP.B #$02                                ; $838C3D |
  BCS CODE_838C46                           ; $838C3F |

CODE_JP_838C41:
  LDA.B #$07                                ; $838C41 |
  JMP.W CODE_FN_83897A                      ; $838C43 |

CODE_838C46:
  REP #$20                                  ; $838C46 |
  JSR.W CODE_FN_838F03                      ; $838C48 |
  LDA.B $BE                                 ; $838C4B |
  CMP.B $00                                 ; $838C4D |
  BCS CODE_838BEE                           ; $838C4F |
  SEP #$20                                  ; $838C51 |
  LDA.B $A0,X                               ; $838C53 |
  STA.B $9E,X                               ; $838C55 |
  JMP.W CODE_JP_838C41                      ; $838C57 |

  LDA.B $00                                 ; $838C5A |
  JSL.L CODE_FL_83D1D6                      ; $838C5C |
  SEP #$20                                  ; $838C60 |
  LDA.B $4F,X                               ; $838C62 |
  STA.B $50,X                               ; $838C64 |
  LDA.B #$0D                                ; $838C66 |
  JMP.W CODE_FN_83897A                      ; $838C68 |

CODE_FN_838C6B:
  LDA.B $97                                 ; $838C6B |
  AND.B #$03                                ; $838C6D |
  BEQ CODE_JP_838CBA                        ; $838C6F |
  LDA.B $8D,X                               ; $838C71 |
  BIT.B #$08                                ; $838C73 |
  BEQ CODE_JP_838CBA                        ; $838C75 |
  LDY.W #$0000                              ; $838C77 |
  CPX.W #$0400                              ; $838C7A |
  BEQ CODE_838C81                           ; $838C7D |
  INY                                       ; $838C7F |
  INY                                       ; $838C80 |

CODE_838C81:
  REP #$20                                  ; $838C81 |
  LDA.W $1C4E,Y                             ; $838C83 |
  STA.B $6C,X                               ; $838C86 |
  TAY                                       ; $838C88 |
  LDA.W $0009,Y                             ; $838C89 |
  SEC                                       ; $838C8C |
  SBC.B $09,X                               ; $838C8D |
  SEP #$20                                  ; $838C8F |
  BCC CODE_838C9B                           ; $838C91 |
  LDA.B $04,X                               ; $838C93 |
  BIT.B #$20                                ; $838C95 |
  BNE CODE_JP_838CBA                        ; $838C97 |
  BRA CODE_838CA1                           ; $838C99 |

CODE_838C9B:
  LDA.B $04,X                               ; $838C9B |
  BIT.B #$20                                ; $838C9D |
  BEQ CODE_JP_838CBA                        ; $838C9F |

CODE_838CA1:
  LDA.W $0046,Y                             ; $838CA1 |
  BIT.B #$40                                ; $838CA4 |
  BNE CODE_838CB2                           ; $838CA6 |
  LDA.W $0047,Y                             ; $838CA8 |
  BIT.B #$02                                ; $838CAB |
  BNE CODE_838CB2                           ; $838CAD |
  JMP.W CODE_JP_83A190                      ; $838CAF |

CODE_838CB2:
  LDA.W $0046,Y                             ; $838CB2 |
  AND.B #$BF                                ; $838CB5 |
  STA.W $0046,Y                             ; $838CB7 |

CODE_JP_838CBA:
  JSR.W CODE_FN_839570                      ; $838CBA |
  LDA.B $48,X                               ; $838CBD |
  BEQ CODE_JP_838CCA                        ; $838CBF |
  LDA.B $97                                 ; $838CC1 |
  BIT.B #$04                                ; $838CC3 |
  BEQ CODE_JP_838CCA                        ; $838CC5 |
  JMP.W CODE_JP_838E56                      ; $838CC7 |

CODE_JP_838CCA:
  LDA.B $18,X                               ; $838CCA |
  DEC A                                     ; $838CCC |
  BEQ CODE_JP_838CDE                        ; $838CCD |
  DEC A                                     ; $838CCF |
  BNE CODE_838CD5                           ; $838CD0 |
  JMP.W CODE_JP_838D3D                      ; $838CD2 |

CODE_838CD5:
  DEC A                                     ; $838CD5 |
  BNE CODE_838CDB                           ; $838CD6 |
  JMP.W CODE_JP_838DA0                      ; $838CD8 |

CODE_838CDB:
  JMP.W CODE_JP_838E05                      ; $838CDB |

CODE_JP_838CDE:
  LDA.B $9E,X                               ; $838CDE |
  BEQ CODE_838CEA                           ; $838CE0 |
  CMP.B #$02                                ; $838CE2 |
  BCS CODE_838D0A                           ; $838CE4 |
  CMP.B #$01                                ; $838CE6 |
  BEQ CODE_838CFA                           ; $838CE8 |

CODE_838CEA:
  LDA.B $97                                 ; $838CEA |
  BIT.B #$08                                ; $838CEC |
  BEQ CODE_838CF5                           ; $838CEE |
  LDA.B #$09                                ; $838CF0 |
  JMP.W CODE_FN_83891C                      ; $838CF2 |

CODE_838CF5:
  LDA.B #$07                                ; $838CF5 |
  JMP.W CODE_FN_83891C                      ; $838CF7 |

CODE_838CFA:
  LDA.B $97                                 ; $838CFA |
  BIT.B #$08                                ; $838CFC |
  BEQ CODE_838D05                           ; $838CFE |
  LDA.B #$0A                                ; $838D00 |
  JMP.W CODE_FN_83891C                      ; $838D02 |

CODE_838D05:
  LDA.B #$08                                ; $838D05 |
  JMP.W CODE_FN_83891C                      ; $838D07 |

CODE_838D0A:
  REP #$20                                  ; $838D0A |
  JSR.W CODE_FN_838F03                      ; $838D0C |
  LDA.B $BE                                 ; $838D0F |
  CMP.B $00                                 ; $838D11 |
  BNE CODE_838D1E                           ; $838D13 |
  SEP #$20                                  ; $838D15 |
  LDA.B $A0,X                               ; $838D17 |
  STA.B $9E,X                               ; $838D19 |
  JMP.W CODE_JP_838CDE                      ; $838D1B |

CODE_838D1E:
  JSR.W CODE_FN_838568                      ; $838D1E |
  LDA.B $00                                 ; $838D21 |
  JSL.L CODE_FL_83D1D6                      ; $838D23 |
  SEP #$20                                  ; $838D27 |
  LDA.B $4F,X                               ; $838D29 |
  STA.B $50,X                               ; $838D2B |
  LDA.B $97                                 ; $838D2D |
  BIT.B #$08                                ; $838D2F |
  BEQ CODE_838D38                           ; $838D31 |
  LDA.B #$0E                                ; $838D33 |
  JMP.W CODE_FN_83891C                      ; $838D35 |

CODE_838D38:
  LDA.B #$0D                                ; $838D38 |
  JMP.W CODE_FN_83891C                      ; $838D3A |

CODE_JP_838D3D:
  LDA.B $9E,X                               ; $838D3D |
  BEQ CODE_838D49                           ; $838D3F |
  CMP.B #$02                                ; $838D41 |
  BCS CODE_838D6D                           ; $838D43 |
  CMP.B #$01                                ; $838D45 |
  BEQ CODE_838D4E                           ; $838D47 |

CODE_838D49:
  LDA.B #$07                                ; $838D49 |
  JMP.W CODE_FN_83891C                      ; $838D4B |

CODE_838D4E:
  LDA.B $33,X                               ; $838D4E |
  AND.B #$BF                                ; $838D50 |
  STA.B $33,X                               ; $838D52 |
  LDA.B $97                                 ; $838D54 |
  BIT.B #$08                                ; $838D56 |
  BEQ CODE_838D6A                           ; $838D58 |
  REP #$20                                  ; $838D5A |
  LDA.W #$0008                              ; $838D5C |
  JSL.L push_sound_queue                    ; $838D5F |
  SEP #$20                                  ; $838D63 |
  LDA.B #$09                                ; $838D65 |
  JMP.W CODE_FN_83891C                      ; $838D67 |

CODE_838D6A:
  JMP.W CODE_JP_83A6CD                      ; $838D6A |

CODE_838D6D:
  REP #$20                                  ; $838D6D |
  JSR.W CODE_FN_838F03                      ; $838D6F |
  LDA.B $BE                                 ; $838D72 |
  CMP.B $00                                 ; $838D74 |
  BCS CODE_838D81                           ; $838D76 |
  SEP #$20                                  ; $838D78 |
  LDA.B $A0,X                               ; $838D7A |
  STA.B $9E,X                               ; $838D7C |
  JMP.W CODE_JP_838D3D                      ; $838D7E |

CODE_838D81:
  JSR.W CODE_FN_838568                      ; $838D81 |
  LDA.B $00                                 ; $838D84 |
  JSL.L CODE_FL_83D1D6                      ; $838D86 |
  SEP #$20                                  ; $838D8A |
  LDA.B $4F,X                               ; $838D8C |
  STA.B $50,X                               ; $838D8E |
  LDA.B $97                                 ; $838D90 |
  BIT.B #$08                                ; $838D92 |
  BEQ CODE_838D9B                           ; $838D94 |
  LDA.B #$0E                                ; $838D96 |
  JMP.W CODE_FN_83891C                      ; $838D98 |

CODE_838D9B:
  LDA.B #$0D                                ; $838D9B |
  JMP.W CODE_FN_83891C                      ; $838D9D |

CODE_JP_838DA0:
  LDA.B $9E,X                               ; $838DA0 |
  CMP.B #$02                                ; $838DA2 |
  BCC CODE_838DD6                           ; $838DA4 |
  REP #$20                                  ; $838DA6 |
  JSR.W CODE_FN_838F03                      ; $838DA8 |
  LDA.B $BE                                 ; $838DAB |
  CMP.B $00                                 ; $838DAD |
  BCS CODE_838DBA                           ; $838DAF |
  SEP #$20                                  ; $838DB1 |
  LDA.B $A0,X                               ; $838DB3 |
  STA.B $9E,X                               ; $838DB5 |
  JMP.W CODE_JP_838DA0                      ; $838DB7 |

CODE_838DBA:
  LDA.B $00                                 ; $838DBA |
  JSL.L CODE_FL_83D1D6                      ; $838DBC |
  SEP #$20                                  ; $838DC0 |
  LDA.B $4F,X                               ; $838DC2 |
  STA.B $50,X                               ; $838DC4 |
  LDA.B $97                                 ; $838DC6 |
  BIT.B #$08                                ; $838DC8 |
  BNE CODE_838DD1                           ; $838DCA |
  LDA.B #$0D                                ; $838DCC |
  JMP.W CODE_FN_838948                      ; $838DCE |

CODE_838DD1:
  LDA.B #$0E                                ; $838DD1 |
  JMP.W CODE_FN_838948                      ; $838DD3 |

CODE_838DD6:
  LDA.B $48,X                               ; $838DD6 |
  BEQ CODE_838DF0                           ; $838DD8 |
  LDA.B $97                                 ; $838DDA |
  BIT.B #$08                                ; $838DDC |
  BEQ CODE_838DF0                           ; $838DDE |
  REP #$20                                  ; $838DE0 |
  LDA.W #$005C                              ; $838DE2 |
  JSL.L CODE_FL_8089BD                      ; $838DE5 |
  SEP #$20                                  ; $838DE9 |
  LDA.B #$09                                ; $838DEB |
  JMP.W CODE_FN_838948                      ; $838DED |

CODE_838DF0:
  LDA.B $9E,X                               ; $838DF0 |
  BEQ CODE_838DF9                           ; $838DF2 |
  LDA.B #$08                                ; $838DF4 |
  JMP.W CODE_FN_83891C                      ; $838DF6 |

CODE_838DF9:
  REP #$20                                  ; $838DF9 |
  JSR.W CODE_FN_838F1B                      ; $838DFB |
  SEP #$20                                  ; $838DFE |
  LDA.B #$07                                ; $838E00 |
  JMP.W CODE_FN_83891C                      ; $838E02 |

CODE_JP_838E05:
  LDA.B $9E,X                               ; $838E05 |
  CMP.B #$02                                ; $838E07 |
  BCC CODE_838E37                           ; $838E09 |
  REP #$20                                  ; $838E0B |
  JSR.W CODE_FN_838F03                      ; $838E0D |
  LDA.B $BE                                 ; $838E10 |
  CMP.B $00                                 ; $838E12 |
  BCS CODE_838E1F                           ; $838E14 |
  SEP #$20                                  ; $838E16 |
  LDA.B $A0,X                               ; $838E18 |
  STA.B $9E,X                               ; $838E1A |
  JMP.W CODE_JP_838E05                      ; $838E1C |

CODE_838E1F:
  LDA.B $00                                 ; $838E1F |
  JSL.L CODE_FL_83D1D6                      ; $838E21 |
  SEP #$20                                  ; $838E25 |
  LDA.B $97                                 ; $838E27 |
  BIT.B #$08                                ; $838E29 |
  BNE CODE_838E32                           ; $838E2B |
  LDA.B #$0D                                ; $838E2D |
  JMP.W CODE_FN_838948                      ; $838E2F |

CODE_838E32:
  LDA.B #$0E                                ; $838E32 |
  JMP.W CODE_FN_838948                      ; $838E34 |

CODE_838E37:
  LDA.B $48,X                               ; $838E37 |
  BNE CODE_838E46                           ; $838E39 |
  LDA.B $97                                 ; $838E3B |
  BIT.B #$04                                ; $838E3D |
  BEQ CODE_838E46                           ; $838E3F |
  LDA.B #$10                                ; $838E41 |
  JMP.W CODE_FN_83891C                      ; $838E43 |

CODE_838E46:
  LDA.B $97                                 ; $838E46 |
  BIT.B #$08                                ; $838E48 |
  BNE CODE_838E51                           ; $838E4A |
  LDA.B #$07                                ; $838E4C |
  JMP.W CODE_FN_83891C                      ; $838E4E |

CODE_838E51:
  LDA.B #$09                                ; $838E51 |
  JMP.W CODE_FN_83891C                      ; $838E53 |

CODE_JP_838E56:
  JSR.W CODE_FN_839570                      ; $838E56 |
  LDA.B $97                                 ; $838E59 |
  BIT.B #$04                                ; $838E5B |
  BNE CODE_838E67                           ; $838E5D |
  JSR.W CODE_FN_838A86                      ; $838E5F |
  BCS CODE_838E67                           ; $838E62 |
  JMP.W CODE_JP_838CCA                      ; $838E64 |

CODE_838E67:
  LDA.B $18,X                               ; $838E67 |
  CMP.B #$03                                ; $838E69 |
  BNE CODE_838E70                           ; $838E6B |
  JMP.W CODE_JP_838EB6                      ; $838E6D |

CODE_838E70:
  LDA.B $9E,X                               ; $838E70 |
  BEQ CODE_838E7C                           ; $838E72 |
  CMP.B #$02                                ; $838E74 |
  BCS CODE_JP_838E8E                        ; $838E76 |
  CMP.B #$01                                ; $838E78 |
  BEQ CODE_838E86                           ; $838E7A |

CODE_838E7C:
  SEP #$20                                  ; $838E7C |
  JSR.W CODE_FN_838EF4                      ; $838E7E |
  LDA.B #$0B                                ; $838E81 |
  JMP.W CODE_FN_838948                      ; $838E83 |

CODE_838E86:
  JSR.W CODE_FN_838EF4                      ; $838E86 |
  LDA.B #$0C                                ; $838E89 |
  JMP.W CODE_FN_838948                      ; $838E8B |

CODE_JP_838E8E:
  REP #$20                                  ; $838E8E |
  JSR.W CODE_FN_838F03                      ; $838E90 |
  LDA.B $BE                                 ; $838E93 |
  CMP.B $00                                 ; $838E95 |
  BCS CODE_838EA2                           ; $838E97 |
  SEP #$20                                  ; $838E99 |
  LDA.B $A0,X                               ; $838E9B |
  STA.B $9E,X                               ; $838E9D |
  JMP.W CODE_JP_838E8E                      ; $838E9F |

CODE_838EA2:
  LDA.B $00                                 ; $838EA2 |
  JSL.L CODE_FL_83D1D6                      ; $838EA4 |
  SEP #$20                                  ; $838EA8 |
  JSR.W CODE_FN_838EF4                      ; $838EAA |
  LDA.B $4F,X                               ; $838EAD |
  STA.B $50,X                               ; $838EAF |
  LDA.B #$0F                                ; $838EB1 |
  JMP.W CODE_FN_838948                      ; $838EB3 |

CODE_JP_838EB6:
  LDA.B $9E,X                               ; $838EB6 |
  CMP.B #$02                                ; $838EB8 |
  BEQ CODE_838ECF                           ; $838EBA |

CODE_JP_838EBC:
  REP #$20                                  ; $838EBC |
  LDA.W #$005C                              ; $838EBE |
  JSL.L CODE_FL_8089BD                      ; $838EC1 |
  SEP #$20                                  ; $838EC5 |
  JSR.W CODE_FN_838EF4                      ; $838EC7 |
  LDA.B #$0B                                ; $838ECA |
  JMP.W CODE_FN_838948                      ; $838ECC |

CODE_838ECF:
  REP #$20                                  ; $838ECF |
  JSR.W CODE_FN_838F03                      ; $838ED1 |
  LDA.B $BE                                 ; $838ED4 |
  CMP.B $00                                 ; $838ED6 |
  BCS CODE_838EE3                           ; $838ED8 |
  SEP #$20                                  ; $838EDA |
  LDA.B $A0,X                               ; $838EDC |
  STA.B $9E,X                               ; $838EDE |
  JMP.W CODE_JP_838EBC                      ; $838EE0 |

CODE_838EE3:
  LDA.B $00                                 ; $838EE3 |
  JSL.L CODE_FL_83D1D6                      ; $838EE5 |
  SEP #$20                                  ; $838EE9 |
  LDA.B $4F,X                               ; $838EEB |
  STA.B $50,X                               ; $838EED |
  LDA.B #$0F                                ; $838EEF |
  JMP.W CODE_FN_838948                      ; $838EF1 |

CODE_FN_838EF4:
  REP #$20                                  ; $838EF4 |
  LDA.B $18,X                               ; $838EF6 |
  ASL A                                     ; $838EF8 |
  TAY                                       ; $838EF9 |
  SEP #$20                                  ; $838EFA |
  RTS                                       ; $838EFC |

CODE_FL_838EFD:
  LDY.W #$0080                              ; $838EFD |
  STY.B $00                                 ; $838F00 |
  RTL                                       ; $838F02 |

CODE_FN_838F03:
  LDA.B $18,X                               ; $838F03 |
  ASL A                                     ; $838F05 |
  TAY                                       ; $838F06 |
  LDA.W LOOSE_OP_00DEEC,Y                   ; $838F07 |
  STA.B $00                                 ; $838F0A |
  LDA.B $00                                 ; $838F0C |
  RTS                                       ; $838F0E |

CODE_FN_838F0F:
  LDA.B $18,X                               ; $838F0F |
  ASL A                                     ; $838F11 |
  TAY                                       ; $838F12 |
  LDA.W LOOSE_OP_00DEF4,Y                   ; $838F13 |
  STA.B $00                                 ; $838F16 |
  LDA.B $00                                 ; $838F18 |
  RTS                                       ; $838F1A |

CODE_FN_838F1B:
  LDA.B $9E,X                               ; $838F1B |
  ASL A                                     ; $838F1D |
  TAY                                       ; $838F1E |
  RTS                                       ; $838F1F |

  SEP #$20                                  ; $838F20 |
  INC.B $48,X                               ; $838F22 |
  LDA.B #$00                                ; $838F24 |
  JSR.W CODE_FN_838948                      ; $838F26 |
  REP #$20                                  ; $838F29 |
  RTL                                       ; $838F2B |

  RTS                                       ; $838F2C |

CODE_FN_838F2D:
  LDA.B $92,X                               ; $838F2D |
  BIT.B #$10                                ; $838F2F |
  BNE CODE_838F6C                           ; $838F31 |
  LDA.B $48,X                               ; $838F33 |
  BEQ CODE_838F6E                           ; $838F35 |
  REP #$20                                  ; $838F37 |
  LDA.B $09,X                               ; $838F39 |
  STA.B $08                                 ; $838F3B |
  LDA.B $92,X                               ; $838F3D |
  BIT.W #$0080                              ; $838F3F |
  BEQ CODE_838F49                           ; $838F42 |
  LDA.W #$0002                              ; $838F44 |
  BRA CODE_838F51                           ; $838F47 |

CODE_838F49:
  LDA.B $30,X                               ; $838F49 |
  BEQ CODE_838F6C                           ; $838F4B |
  SEC                                       ; $838F4D |
  SBC.W #$0005                              ; $838F4E |

CODE_838F51:
  STA.B $00                                 ; $838F51 |
  LDA.B $0D,X                               ; $838F53 |
  SEC                                       ; $838F55 |
  SBC.B $00                                 ; $838F56 |
  STA.B $0A                                 ; $838F58 |
  JSL.L CODE_FL_80CA7D                      ; $838F5A |
  TAY                                       ; $838F5E |
  LDA.W CODE_00EEFA,Y                       ; $838F5F |
  BIT.W #$0040                              ; $838F62 |
  BEQ CODE_838F6C                           ; $838F65 |
  SEP #$20                                  ; $838F67 |
  JMP.W CODE_JP_839176                      ; $838F69 |

CODE_838F6C:
  SEP #$20                                  ; $838F6C |

CODE_838F6E:
  LDA.B $0E,X                               ; $838F6E |
  BMI CODE_838F82                           ; $838F70 |
  BEQ CODE_838F77                           ; $838F72 |
  JMP.W CODE_JP_8392EE                      ; $838F74 |

CODE_838F77:
  LDA.B $0D,X                               ; $838F77 |
  CMP.B #$F4                                ; $838F79 |
  BCC CODE_838F80                           ; $838F7B |
  JMP.W CODE_JP_8392EE                      ; $838F7D |

CODE_838F80:
  BRA CODE_JP_838F95                        ; $838F80 |

CODE_838F82:
  CMP.B #$FF                                ; $838F82 |
  BEQ CODE_838F89                           ; $838F84 |
  JMP.W CODE_JP_838F95                      ; $838F86 |

CODE_838F89:
  LDA.B $0D,X                               ; $838F89 |
  CMP.B #$B0                                ; $838F8B |
  BCC CODE_838F92                           ; $838F8D |
  JMP.W CODE_JP_838F95                      ; $838F8F |

CODE_838F92:
  JMP.W CODE_JP_838F95                      ; $838F92 |

CODE_JP_838F95:
  LDA.B $0A,X                               ; $838F95 |
  BEQ CODE_FN_838FAD                        ; $838F97 |
  BMI CODE_838FA4                           ; $838F99 |
  LDA.B $3B,X                               ; $838F9B |
  BIT.B #$02                                ; $838F9D |
  BEQ CODE_FN_838FAD                        ; $838F9F |
  JMP.W CODE_JP_839176                      ; $838FA1 |

CODE_838FA4:
  LDA.B $3B,X                               ; $838FA4 |
  BIT.B #$01                                ; $838FA6 |
  BEQ CODE_FN_838FAD                        ; $838FA8 |
  JMP.W CODE_JP_839176                      ; $838FAA |

CODE_FN_838FAD:
  LDA.W $1994                               ; $838FAD |
  BNE CODE_838FBD                           ; $838FB0 |
  LDA.W $00E5                               ; $838FB2 |
  BMI CODE_838FBD                           ; $838FB5 |
  LDA.B $93,X                               ; $838FB7 |
  BIT.B #$40                                ; $838FB9 |
  BEQ CODE_838FCD                           ; $838FBB |

CODE_838FBD:
  LDA.B $33,X                               ; $838FBD |
  AND.B #$7F                                ; $838FBF |
  STA.B $33,X                               ; $838FC1 |
  REP #$20                                  ; $838FC3 |
  STZ.B $52,X                               ; $838FC5 |
  STZ.B $38,X                               ; $838FC7 |
  SEP #$20                                  ; $838FC9 |
  BRA CODE_JP_838FE6                        ; $838FCB |

CODE_838FCD:
  LDA.B $52,X                               ; $838FCD |
  BNE CODE_JP_838FE6                        ; $838FCF |
  LDA.B $BA                                 ; $838FD1 |
  BNE CODE_838FD8                           ; $838FD3 |
  JMP.W CODE_JP_8391D7                      ; $838FD5 |

CODE_838FD8:
  LDA.B $33,X                               ; $838FD8 |
  ASL A                                     ; $838FDA |
  BCS CODE_838FE8                           ; $838FDB |
  AND.B #$08                                ; $838FDD |
  BEQ CODE_JP_838FE6                        ; $838FDF |
  BEQ CODE_JP_838FE6                        ; $838FE1 |
  JMP.W CODE_JP_839222                      ; $838FE3 |

CODE_JP_838FE6:
  CLC                                       ; $838FE6 |
  RTS                                       ; $838FE7 |

CODE_838FE8:
  REP #$20                                  ; $838FE8 |
  LDA.B $32,X                               ; $838FEA |
  AND.W #$01FF                              ; $838FEC |
  ASL A                                     ; $838FEF |
  ASL A                                     ; $838FF0 |
  ASL A                                     ; $838FF1 |
  ASL A                                     ; $838FF2 |
  TAY                                       ; $838FF3 |
  STA.B $5E,X                               ; $838FF4 |
  SEP #$20                                  ; $838FF6 |
  LDA.W $0023,Y                             ; $838FF8 |
  BIT.B #$08                                ; $838FFB |
  BNE CODE_83900B                           ; $838FFD |
  LDA.L $7002A4                             ; $838FFF |
  BEQ CODE_839024                           ; $839003 |
  JSL.L CODE_FL_83D359                      ; $839005 |
  BRA CODE_JP_839021                        ; $839009 |

CODE_83900B:
  LDA.L $7002A2                             ; $83900B |
  BEQ CODE_839017                           ; $83900F |
  JSL.L CODE_FL_83D314                      ; $839011 |
  BRA CODE_JP_839021                        ; $839015 |

CODE_839017:
  LDA.L $7002A4                             ; $839017 |
  BEQ CODE_839024                           ; $83901B |
  JSL.L CODE_FL_83D359                      ; $83901D |

CODE_JP_839021:
  JMP.W CODE_JP_8390FB                      ; $839021 |

CODE_839024:
  REP #$20                                  ; $839024 |
  JSL.L CODE_FL_86C24F                      ; $839026 |
  SEP #$20                                  ; $83902A |
  STA.B $18                                 ; $83902C |
  LDA.B $C4                                 ; $83902E |
  BNE CODE_839054                           ; $839030 |
  LDA.B $92,X                               ; $839032 |
  BIT.B #$20                                ; $839034 |
  BEQ CODE_839044                           ; $839036 |
  LSR.B $18                                 ; $839038 |
  LDA.B $18                                 ; $83903A |
  BNE CODE_839042                           ; $83903C |
  LDA.B #$01                                ; $83903E |
  STA.B $18                                 ; $839040 |

CODE_839042:
  BRA CODE_839054                           ; $839042 |

CODE_839044:
  BIT.B #$80                                ; $839044 |
  BEQ CODE_83904C                           ; $839046 |
  ASL.B $18                                 ; $839048 |
  BRA CODE_839054                           ; $83904A |

CODE_83904C:
  LDA.B $93,X                               ; $83904C |
  BIT.B #$80                                ; $83904E |
  BEQ CODE_839054                           ; $839050 |
  ASL.B $18                                 ; $839052 |

CODE_839054:
  LDA.B $18                                 ; $839054 |
  JSL.L CODE_FL_83D212                      ; $839056 |
  LDA.B $BA                                 ; $83905A |
  BNE CODE_839061                           ; $83905C |
  JMP.W CODE_JP_8391D7                      ; $83905E |

CODE_839061:
  LDA.B $90                                 ; $839061 |
  CMP.B #$01                                ; $839063 |
  BEQ CODE_839091                           ; $839065 |
  JSR.W CODE_FN_839453                      ; $839067 |
  LDA.B $92,X                               ; $83906A |
  BIT.B #$20                                ; $83906C |
  BEQ CODE_839078                           ; $83906E |
  JSR.W CODE_FN_8392BC                      ; $839070 |
  JSR.W CODE_FN_83B911                      ; $839073 |
  BRA CODE_8390EB                           ; $839076 |

CODE_839078:
  BIT.B #$80                                ; $839078 |
  BEQ CODE_839087                           ; $83907A |
  JSR.W CODE_FN_83927F                      ; $83907C |
  JSR.W CODE_FN_8392BC                      ; $83907F |
  JSR.W CODE_FN_83C2ED                      ; $839082 |
  BRA CODE_8390EB                           ; $839085 |

CODE_839087:
  BIT.B #$08                                ; $839087 |
  BEQ CODE_83908E                           ; $839089 |
  JMP.W CODE_JP_839253                      ; $83908B |

CODE_83908E:
  JMP.W CODE_JP_8390D3                      ; $83908E |

CODE_839091:
  JSR.W CODE_FN_839453                      ; $839091 |
  LDA.B $92,X                               ; $839094 |
  BIT.B #$40                                ; $839096 |
  BEQ CODE_8390A2                           ; $839098 |
  JSR.W CODE_FN_8392BC                      ; $83909A |
  JSR.W CODE_FN_8392D8                      ; $83909D |
  BRA CODE_8390EB                           ; $8390A0 |

CODE_8390A2:
  BIT.B #$20                                ; $8390A2 |
  BEQ CODE_8390B1                           ; $8390A4 |
  JSR.W CODE_FN_83927F                      ; $8390A6 |
  JSR.W CODE_FN_8392BC                      ; $8390A9 |
  JSR.W CODE_FN_83B1D3                      ; $8390AC |
  BRA CODE_8390EB                           ; $8390AF |

CODE_8390B1:
  BIT.B #$80                                ; $8390B1 |
  BEQ CODE_8390C0                           ; $8390B3 |
  JSR.W CODE_FN_83927F                      ; $8390B5 |
  JSR.W CODE_FN_8392BC                      ; $8390B8 |
  JSR.W CODE_FN_83A6C8                      ; $8390BB |
  BRA CODE_8390EB                           ; $8390BE |

CODE_8390C0:
  BIT.B #$08                                ; $8390C0 |
  BEQ CODE_8390C7                           ; $8390C2 |
  JMP.W CODE_JP_839253                      ; $8390C4 |

CODE_8390C7:
  BIT.B #$04                                ; $8390C7 |
  BEQ CODE_JP_8390D3                        ; $8390C9 |
  JSR.W CODE_FN_838A86                      ; $8390CB |
  BCC CODE_JP_8390D3                        ; $8390CE |
  JMP.W CODE_JP_839253                      ; $8390D0 |

CODE_JP_8390D3:
  JSR.W CODE_FN_83927F                      ; $8390D3 |
  JSR.W CODE_FN_8392BC                      ; $8390D6 |
  CPX.B $A6                                 ; $8390D9 |
  BNE CODE_8390E2                           ; $8390DB |
  JSR.W CODE_FN_83B1D3                      ; $8390DD |
  BRA CODE_8390EB                           ; $8390E0 |

CODE_8390E2:
  LDA.B #$13                                ; $8390E2 |
  JSR.W CODE_FN_83891C                      ; $8390E4 |
  JSL.L CODE_FL_83CD56                      ; $8390E7 |

CODE_8390EB:
  LDA.B $90                                 ; $8390EB |
  CMP.B #$00                                ; $8390ED |
  BNE CODE_8390F9                           ; $8390EF |
  REP #$20                                  ; $8390F1 |
  STZ.B $28,X                               ; $8390F3 |
  STZ.B $29,X                               ; $8390F5 |
  SEP #$20                                  ; $8390F7 |

CODE_8390F9:
  SEC                                       ; $8390F9 |
  RTS                                       ; $8390FA |

CODE_JP_8390FB:
  LDA.B $90                                 ; $8390FB |
  CMP.B #$01                                ; $8390FD |
  BEQ CODE_839128                           ; $8390FF |
  JSR.W CODE_FN_839453                      ; $839101 |
  LDA.B $92,X                               ; $839104 |
  BIT.B #$20                                ; $839106 |
  BEQ CODE_839112                           ; $839108 |
  JSR.W CODE_FN_8392BC                      ; $83910A |
  JSR.W CODE_FN_83B1D3                      ; $83910D |
  BRA CODE_8390EB                           ; $839110 |

CODE_839112:
  BIT.B #$80                                ; $839112 |
  BEQ CODE_83911E                           ; $839114 |
  JSR.W CODE_FN_8392BC                      ; $839116 |
  JSR.W CODE_FN_83C2ED                      ; $839119 |
  BRA CODE_8390EB                           ; $83911C |

CODE_83911E:
  BIT.B #$08                                ; $83911E |
  BEQ CODE_839125                           ; $839120 |
  JMP.W CODE_JP_839253                      ; $839122 |

CODE_839125:
  JMP.W CODE_JP_839164                      ; $839125 |

CODE_839128:
  JSR.W CODE_FN_839453                      ; $839128 |
  LDA.B $92,X                               ; $83912B |
  BIT.B #$40                                ; $83912D |
  BEQ CODE_839139                           ; $83912F |
  JSR.W CODE_FN_8392BC                      ; $839131 |
  JSR.W CODE_FN_8392D8                      ; $839134 |
  BRA CODE_8390EB                           ; $839137 |

CODE_839139:
  BIT.B #$20                                ; $839139 |
  BEQ CODE_839145                           ; $83913B |
  JSR.W CODE_FN_8392BC                      ; $83913D |
  JSR.W CODE_FN_83B1D3                      ; $839140 |
  BRA CODE_8390EB                           ; $839143 |

CODE_839145:
  BIT.B #$80                                ; $839145 |
  BEQ CODE_839151                           ; $839147 |
  JSR.W CODE_FN_8392BC                      ; $839149 |
  JSR.W CODE_FN_83A6C8                      ; $83914C |
  BRA CODE_8390EB                           ; $83914F |

CODE_839151:
  BIT.B #$08                                ; $839151 |
  BEQ CODE_839158                           ; $839153 |
  JMP.W CODE_JP_839253                      ; $839155 |

CODE_839158:
  BIT.B #$04                                ; $839158 |
  BEQ CODE_JP_839164                        ; $83915A |
  JSR.W CODE_FN_838A86                      ; $83915C |
  BCC CODE_JP_839164                        ; $83915F |
  JMP.W CODE_JP_839253                      ; $839161 |

CODE_JP_839164:
  JSR.W CODE_FN_8392BC                      ; $839164 |
  LDA.B #$13                                ; $839167 |
  JSR.W CODE_FN_83891C                      ; $839169 |
  JSL.L CODE_FL_83CD56                      ; $83916C |
  LDA.B #$80                                ; $839170 |
  STA.B $44,X                               ; $839172 |
  SEC                                       ; $839174 |
  RTS                                       ; $839175 |

CODE_JP_839176:
  REP #$20                                  ; $839176 |
  LDA.W #$0001                              ; $839178 |
  JSL.L CODE_FL_83D212                      ; $83917B |
  LDA.B $BA                                 ; $83917F |
  BNE CODE_839186                           ; $839181 |
  JMP.W CODE_JP_8391D7                      ; $839183 |

CODE_839186:
  SEP #$20                                  ; $839186 |
  LDY.W #$04C0                              ; $839188 |
  CPX.W #$0400                              ; $83918B |
  BEQ CODE_839193                           ; $83918E |
  LDY.W #$0400                              ; $839190 |

CODE_839193:
  LDA.W $0018,Y                             ; $839193 |
  BNE CODE_83919B                           ; $839196 |
  JMP.W CODE_JP_8391D7                      ; $839198 |

CODE_83919B:
  LDA.W $0092,Y                             ; $83919B |
  BIT.B #$10                                ; $83919E |
  BEQ CODE_8391A5                           ; $8391A0 |
  JMP.W CODE_JP_8391D7                      ; $8391A2 |

CODE_8391A5:
  CPX.B $A6                                 ; $8391A5 |
  BNE CODE_8391C7                           ; $8391A7 |
  REP #$20                                  ; $8391A9 |
  PHX                                       ; $8391AB |
  JSL.L CODE_FL_83B3D9                      ; $8391AC |
  STZ.B $A6                                 ; $8391B0 |
  STZ.W $0B68                               ; $8391B2 |
  STZ.W $0B20                               ; $8391B5 |
  JSL.L CODE_FL_8CFAF3                      ; $8391B8 |
  SEP #$20                                  ; $8391BC |
  LDX.W #$0B20                              ; $8391BE |
  LDA.B #$16                                ; $8391C1 |
  JSR.W CODE_FN_83AD0A                      ; $8391C3 |
  PLX                                       ; $8391C6 |

CODE_8391C7:
  LDA.B $90                                 ; $8391C7 |
  CMP.B #$00                                ; $8391C9 |
  BEQ CODE_8391D2                           ; $8391CB |
  JSR.W CODE_FN_83A29D                      ; $8391CD |
  BRA CODE_8391D5                           ; $8391D0 |

CODE_8391D2:
  JSR.W CODE_FN_83C03D                      ; $8391D2 |

CODE_8391D5:
  SEC                                       ; $8391D5 |
  RTS                                       ; $8391D6 |

CODE_JP_8391D7:
  STZ.B $BA                                 ; $8391D7 |
  REP #$20                                  ; $8391D9 |
  LDA.W #$002D                              ; $8391DB |
  JSL.L push_sound_queue                    ; $8391DE |
  CPX.B $A6                                 ; $8391E2 |
  BNE CODE_8391F8                           ; $8391E4 |
  PHX                                       ; $8391E6 |
  JSL.L CODE_FL_83B3D9                      ; $8391E7 |
  STZ.B $A6                                 ; $8391EB |
  STZ.W $0B68                               ; $8391ED |
  STZ.W $0B20                               ; $8391F0 |
  JSL.L CODE_FL_8CFAF3                      ; $8391F3 |
  PLX                                       ; $8391F7 |

CODE_8391F8:
  SEP #$20                                  ; $8391F8 |
  LDA.B $92,X                               ; $8391FA |
  BIT.B #$10                                ; $8391FC |
  BEQ CODE_83920E                           ; $8391FE |
  LDA.B $90                                 ; $839200 |
  CMP.B #$00                                ; $839202 |
  BEQ CODE_83920B                           ; $839204 |
  JSR.W CODE_FN_839E23                      ; $839206 |
  BRA CODE_83920E                           ; $839209 |

CODE_83920B:
  JSR.W CODE_FN_83BEAE                      ; $83920B |

CODE_83920E:
  LDA.B $92,X                               ; $83920E |
  BIT.B #$00                                ; $839210 |
  BEQ CODE_839218                           ; $839212 |
  JSL.L CODE_FL_83CBC9                      ; $839214 |

CODE_839218:
  JSR.W CODE_FN_83A260                      ; $839218 |
  SEC                                       ; $83921B |
  RTS                                       ; $83921C |

  STZ.B $BA                                 ; $83921D |
  JMP.W CODE_JP_8391D7                      ; $83921F |

CODE_JP_839222:
  LDA.B $92,X                               ; $839222 |
  BIT.B #$20                                ; $839224 |
  BEQ CODE_83922B                           ; $839226 |
  JMP.W CODE_JP_838FE6                      ; $839228 |

CODE_83922B:
  LDA.L $7002A4                             ; $83922B |
  BEQ CODE_839238                           ; $83922F |
  JSL.L CODE_FL_83D359                      ; $839231 |
  JMP.W CODE_JP_839021                      ; $839235 |

CODE_839238:
  LDA.B #$01                                ; $839238 |
  JSL.L CODE_FL_83D212                      ; $83923A |
  LDA.B $BA                                 ; $83923E |
  BNE CODE_839246                           ; $839240 |
  STZ.B $BA                                 ; $839242 |
  BRA CODE_JP_8391D7                        ; $839244 |

CODE_839246:
  STA.B $BA                                 ; $839246 |
  LDA.B $92,X                               ; $839248 |
  BIT.B #$04                                ; $83924A |
  BEQ CODE_83925C                           ; $83924C |
  JSR.W CODE_FN_838A86                      ; $83924E |
  BCC CODE_83925C                           ; $839251 |

CODE_JP_839253:
  JSR.W CODE_FN_8392BC                      ; $839253 |
  LDA.B #$60                                ; $839256 |
  STA.B $52,X                               ; $839258 |
  SEC                                       ; $83925A |
  RTS                                       ; $83925B |

CODE_83925C:
  LDA.B $04,X                               ; $83925C |
  AND.B #$20                                ; $83925E |
  BEQ CODE_839268                           ; $839260 |
  JSR.W CODE_FN_8392A8                      ; $839262 |
  JMP.W CODE_JP_8390FB                      ; $839265 |

CODE_839268:
  JSR.W CODE_FN_8392B2                      ; $839268 |
  JMP.W CODE_JP_8390FB                      ; $83926B |

  CLC                                       ; $83926E |
  RTS                                       ; $83926F |

CODE_FL_839270:
  PHB                                       ; $839270 |
  PEA.W $8100                               ; $839271 |
  PLB                                       ; $839274 |
  PLB                                       ; $839275 |
  SEP #$20                                  ; $839276 |
  JSR.W CODE_FN_83A260                      ; $839278 |
  REP #$20                                  ; $83927B |
  PLB                                       ; $83927D |
  RTL                                       ; $83927E |

CODE_FN_83927F:
  REP #$20                                  ; $83927F |
  LDY.B $5E,X                               ; $839281 |
  LDA.B $09,X                               ; $839283 |
  CMP.W $0009,Y                             ; $839285 |
  BCC CODE_839299                           ; $839288 |
  LDA.B $04,X                               ; $83928A |
  ORA.W #$0020                              ; $83928C |
  STA.B $04,X                               ; $83928F |
  LDA.W #$0100                              ; $839291 |
  STA.B $26,X                               ; $839294 |
  SEP #$20                                  ; $839296 |
  RTS                                       ; $839298 |

CODE_839299:
  LDA.B $04,X                               ; $839299 |
  AND.W #$FFDF                              ; $83929B |
  STA.B $04,X                               ; $83929E |
  LDA.W #$FF00                              ; $8392A0 |
  STA.B $26,X                               ; $8392A3 |
  SEP #$20                                  ; $8392A5 |
  RTS                                       ; $8392A7 |

CODE_FN_8392A8:
  REP #$20                                  ; $8392A8 |
  LDA.W #$0100                              ; $8392AA |
  STA.B $26,X                               ; $8392AD |
  SEP #$20                                  ; $8392AF |
  RTS                                       ; $8392B1 |

CODE_FN_8392B2:
  REP #$20                                  ; $8392B2 |
  LDA.W #$FF00                              ; $8392B4 |
  STA.B $26,X                               ; $8392B7 |
  SEP #$20                                  ; $8392B9 |
  RTS                                       ; $8392BB |

CODE_FN_8392BC:
  STZ.B $33,X                               ; $8392BC |
  STZ.B $96,X                               ; $8392BE |
  LDA.B #$80                                ; $8392C0 |
  STA.B $52,X                               ; $8392C2 |
  STA.B $38,X                               ; $8392C4 |
  STZ.B $4E,X                               ; $8392C6 |
  STZ.B $4F,X                               ; $8392C8 |
  JSR.W CODE_FN_83CF4F                      ; $8392CA |
  LDA.W $0018,Y                             ; $8392CD |
  BEQ CODE_8392D7                           ; $8392D0 |
  LDA.B #$02                                ; $8392D2 |
  STA.W $001A,Y                             ; $8392D4 |

CODE_8392D7:
  RTS                                       ; $8392D7 |

CODE_FN_8392D8:
  REP #$20                                  ; $8392D8 |
  STZ.B $26,X                               ; $8392DA |
  STZ.B $28,X                               ; $8392DC |
  STZ.B $4A,X                               ; $8392DE |
  STZ.B $4C,X                               ; $8392E0 |
  SEP #$20                                  ; $8392E2 |
  JSR.W CODE_FN_8392BC                      ; $8392E4 |
  LDA.B #$30                                ; $8392E7 |
  JMP.W CODE_FN_83891C                      ; $8392E9 |

  SEP #$20                                  ; $8392EC |

CODE_JP_8392EE:
  JSR.W CODE_FN_83930B                      ; $8392EE |
  JSR.W CODE_FN_8392BC                      ; $8392F1 |
  REP #$20                                  ; $8392F4 |
  LDA.W #$0002                              ; $8392F6 |
  JSL.L CODE_FL_83D212                      ; $8392F9 |
  LDA.B $BA                                 ; $8392FD |
  BEQ CODE_839304                           ; $8392FF |
  LDA.W #$005F                              ; $839301 |

CODE_839304:
  INC A                                     ; $839304 |
  STA.B $52,X                               ; $839305 |
  SEP #$20                                  ; $839307 |
  SEC                                       ; $839309 |
  RTS                                       ; $83930A |

CODE_FN_83930B:
  REP #$20                                  ; $83930B |
  JSR.W CODE_FN_8393F6                      ; $83930D |
  BCC CODE_83931B                           ; $839310 |
  LDY.B $80,X                               ; $839312 |
  LDA.B $82,X                               ; $839314 |
  JSR.W CODE_FN_839363                      ; $839316 |
  BCS CODE_839350                           ; $839319 |

CODE_83931B:
  LDY.W #$0400                              ; $83931B |
  CPX.W #$0400                              ; $83931E |
  BNE CODE_839326                           ; $839321 |
  LDY.W #$04C0                              ; $839323 |

CODE_839326:
  LDA.W $0018,Y                             ; $839326 |
  BEQ CODE_839353                           ; $839329 |
  LDA.W $0092,Y                             ; $83932B |
  BIT.W #$0010                              ; $83932E |
  BNE CODE_839353                           ; $839331 |
  LDA.W $0048,Y                             ; $839333 |
  BEQ CODE_83933B                           ; $839336 |
  JMP.W CODE_JP_83941D                      ; $839338 |

CODE_83933B:
  JSR.W CODE_FN_839428                      ; $83933B |
  BCC CODE_839353                           ; $83933E |
  LDA.W $0080,Y                             ; $839340 |
  STA.B $08                                 ; $839343 |
  LDA.W $0082,Y                             ; $839345 |
  JSR.W CODE_FN_839365                      ; $839348 |
  BCC CODE_839353                           ; $83934B |
  JSR.W CODE_FN_839448                      ; $83934D |

CODE_839350:
  SEP #$20                                  ; $839350 |
  RTS                                       ; $839352 |

CODE_839353:
  JSL.L CODE_FL_9BFF1E                      ; $839353 |
  BCC CODE_839360                           ; $839357 |
  LDA.W #$0080                              ; $839359 |
  STA.B $09,X                               ; $83935C |
  STA.B $0D,X                               ; $83935E |

CODE_839360:
  SEP #$20                                  ; $839360 |
  RTS                                       ; $839362 |

CODE_FN_839363:
  STY.B $08                                 ; $839363 |

CODE_FN_839365:
  CLC                                       ; $839365 |
  ADC.W #$0004                              ; $839366 |
  STA.B $0A                                 ; $839369 |
  JSL.L CODE_FL_80CA8C                      ; $83936B |
  CMP.W #$0008                              ; $83936F |
  BCC CODE_83937C                           ; $839372 |
  LDA.B $80,X                               ; $839374 |
  STA.B $09,X                               ; $839376 |
  LDA.B $82,X                               ; $839378 |
  STA.B $0D,X                               ; $83937A |

CODE_83937C:
  RTS                                       ; $83937C |

CODE_JP_83937D:
  LDA.W $04D8                               ; $83937D |
  BEQ CODE_839392                           ; $839380 |
  LDY.W #$0400                              ; $839382 |
  CPX.W #$0400                              ; $839385 |
  BNE CODE_83938D                           ; $839388 |
  LDY.W #$04C0                              ; $83938A |

CODE_83938D:
  LDA.W $008E,Y                             ; $83938D |
  BNE CODE_839397                           ; $839390 |

CODE_839392:
  LDA.W #$672A                              ; $839392 |
  STA.B $8E,X                               ; $839395 |

CODE_839397:
  LDA.W #$0001                              ; $839397 |
  STA.B $E4                                 ; $83939A |
  STZ.B $98,X                               ; $83939C |
  STZ.B $9A,X                               ; $83939E |

CODE_FN_8393A0:
  JSR.W CODE_FN_8393C5                      ; $8393A0 |
  SEP #$20                                  ; $8393A3 |
  JSR.W CODE_FN_8392BC                      ; $8393A5 |
  REP #$20                                  ; $8393A8 |
  LDA.W #$005F                              ; $8393AA |
  INC A                                     ; $8393AD |
  STA.B $52,X                               ; $8393AE |
  SEP #$20                                  ; $8393B0 |
  LDA.B $3A,X                               ; $8393B2 |
  ORA.B #$0C                                ; $8393B4 |
  STA.B $3A,X                               ; $8393B6 |
  LDA.B $35,X                               ; $8393B8 |
  ORA.B #$80                                ; $8393BA |
  STA.B $35,X                               ; $8393BC |
  JSR.W CODE_FN_83BF1D                      ; $8393BE |
  REP #$20                                  ; $8393C1 |
  SEC                                       ; $8393C3 |
  RTS                                       ; $8393C4 |

CODE_FN_8393C5:
  STZ.B $26,X                               ; $8393C5 |
  STZ.B $28,X                               ; $8393C7 |
  JSR.W CODE_FN_8393F6                      ; $8393C9 |
  BCS CODE_8393EB                           ; $8393CC |
  LDY.W #$0400                              ; $8393CE |
  CPX.W #$0400                              ; $8393D1 |
  BNE CODE_8393D9                           ; $8393D4 |
  LDY.W #$04C0                              ; $8393D6 |

CODE_8393D9:
  LDA.W $0018,Y                             ; $8393D9 |
  BEQ CODE_8393EC                           ; $8393DC |
  LDA.W $0010,Y                             ; $8393DE |
  BEQ CODE_839418                           ; $8393E1 |
  JSR.W CODE_FN_839428                      ; $8393E3 |
  BCC CODE_8393EC                           ; $8393E6 |
  JSR.W CODE_FN_839446                      ; $8393E8 |

CODE_8393EB:
  RTS                                       ; $8393EB |

CODE_8393EC:
  LDA.W #$0080                              ; $8393EC |
  STA.B $09,X                               ; $8393EF |
  STA.B $0D,X                               ; $8393F1 |
  STZ.B $11,X                               ; $8393F3 |
  RTS                                       ; $8393F5 |

CODE_FN_8393F6:
  LDA.B $80,X                               ; $8393F6 |
  CMP.W #$0010                              ; $8393F8 |
  BCC CODE_839416                           ; $8393FB |
  CMP.W #$00F0                              ; $8393FD |
  BCS CODE_839416                           ; $839400 |
  STA.B $09,X                               ; $839402 |
  LDA.B $82,X                               ; $839404 |
  CMP.W #$0020                              ; $839406 |
  BCC CODE_839416                           ; $839409 |
  CMP.W #$00C8                              ; $83940B |
  BCS CODE_839416                           ; $83940E |
  STA.B $0D,X                               ; $839410 |
  STZ.B $11,X                               ; $839412 |
  SEC                                       ; $839414 |
  RTS                                       ; $839415 |

CODE_839416:
  CLC                                       ; $839416 |
  RTS                                       ; $839417 |

CODE_839418:
  LDA.W $0011,Y                             ; $839418 |
  STA.B $11,X                               ; $83941B |

CODE_JP_83941D:
  LDA.W $0009,Y                             ; $83941D |
  STA.B $09,X                               ; $839420 |
  LDA.W $000D,Y                             ; $839422 |
  STA.B $0D,X                               ; $839425 |
  RTS                                       ; $839427 |

CODE_FN_839428:
  LDA.W $0080,Y                             ; $839428 |
  CMP.W #$0010                              ; $83942B |
  BCC CODE_839444                           ; $83942E |
  CMP.W #$00F0                              ; $839430 |
  BCS CODE_839444                           ; $839433 |
  LDA.W $0082,Y                             ; $839435 |
  CMP.W #$0020                              ; $839438 |
  BCC CODE_839444                           ; $83943B |
  CMP.W #$00C8                              ; $83943D |
  BCS CODE_839444                           ; $839440 |
  SEC                                       ; $839442 |
  RTS                                       ; $839443 |

CODE_839444:
  CLC                                       ; $839444 |
  RTS                                       ; $839445 |

CODE_FN_839446:
  STZ.B $11,X                               ; $839446 |

CODE_FN_839448:
  LDA.W $0080,Y                             ; $839448 |
  STA.B $09,X                               ; $83944B |
  LDA.W $0082,Y                             ; $83944D |
  STA.B $0D,X                               ; $839450 |
  RTS                                       ; $839452 |

CODE_FN_839453:
  REP #$20                                  ; $839453 |
  LDA.B $92,X                               ; $839455 |
  BIT.W #$0080                              ; $839457 |
  BEQ CODE_839461                           ; $83945A |
  LDA.W #$00E0                              ; $83945C |
  BRA CODE_839470                           ; $83945F |

CODE_839461:
  LDA.B $18,X                               ; $839461 |
  CMP.W #$0004                              ; $839463 |
  BNE CODE_83946D                           ; $839466 |
  LDA.W #$00D8                              ; $839468 |
  BRA CODE_839470                           ; $83946B |

CODE_83946D:
  LDA.W #$0018                              ; $83946D |

CODE_839470:
  JSL.L CODE_FL_8089BD                      ; $839470 |
  SEP #$20                                  ; $839474 |
  RTS                                       ; $839476 |

CODE_FN_839477:
  REP #$20                                  ; $839477 |
  JSL.L CODE_FL_83CDD6                      ; $839479 |
  JSR.W CODE_FN_838621                      ; $83947D |
  SEP #$20                                  ; $839480 |
  LDA.B $22,X                               ; $839482 |
  CMP.B #$14                                ; $839484 |
  BEQ CODE_839493                           ; $839486 |
  JSR.W CODE_FN_8386CC                      ; $839488 |
  JSR.W CODE_FN_838F2D                      ; $83948B |
  BCS CODE_839493                           ; $83948E |
  JSR.W CODE_FN_83879F                      ; $839490 |

CODE_839493:
  LDA.B $22,X                               ; $839493 |
  ASL A                                     ; $839495 |
  REP #$20                                  ; $839496 |
  AND.W #$00FF                              ; $839498 |
  TAY                                       ; $83949B |
  LDA.W CODE_00D6AA,Y                       ; $83949C |
  PHA                                       ; $83949F |
  SEP #$20                                  ; $8394A0 |
  RTS                                       ; $8394A2 |

  STZ.B $26,X                               ; $8394A3 |
  STZ.B $27,X                               ; $8394A5 |

CODE_JP_8394A7:
  LDA.B $E4                                 ; $8394A7 |
  BEQ CODE_FN_8394AF                        ; $8394A9 |
  LDA.B #$FF                                ; $8394AB |
  STA.B $BA,X                               ; $8394AD |

CODE_FN_8394AF:
  LDA.B $48,X                               ; $8394AF |
  BNE CODE_8394B6                           ; $8394B1 |

CODE_FN_8394B3:
  JMP.W CODE_JP_83A188                      ; $8394B3 |

CODE_8394B6:
  JSR.W CODE_FN_83A2CE                      ; $8394B6 |
  BCC CODE_8394BE                           ; $8394B9 |
  JMP.W CODE_FN_83A29D                      ; $8394BB |

CODE_8394BE:
  LDA.B $9B                                 ; $8394BE |
  BIT.B #$80                                ; $8394C0 |
  BEQ CODE_8394C7                           ; $8394C2 |
  JMP.W CODE_FN_83A130                      ; $8394C4 |

CODE_8394C7:
  BIT.B #$40                                ; $8394C7 |
  BEQ CODE_8394CE                           ; $8394C9 |
  JMP.W CODE_JP_838CBA                      ; $8394CB |

CODE_8394CE:
  LDA.B $9A                                 ; $8394CE |
  BIT.B #$80                                ; $8394D0 |
  BEQ CODE_8394DC                           ; $8394D2 |
  JSR.W CODE_FN_83CED4                      ; $8394D4 |
  BCC CODE_8394DC                           ; $8394D7 |
  JMP.W CODE_JP_839EE4                      ; $8394D9 |

CODE_8394DC:
  LDA.B $97                                 ; $8394DC |
  BIT.B #$07                                ; $8394DE |
  BEQ CODE_8394E5                           ; $8394E0 |
  JMP.W CODE_FN_83A0D0                      ; $8394E2 |

CODE_8394E5:
  BIT.B #$08                                ; $8394E5 |
  BEQ CODE_8394F5                           ; $8394E7 |
  JMP.W CODE_FN_83A319                      ; $8394E9 |

  LDA.B $4A,X                               ; $8394EC |
  ORA.B $4B,X                               ; $8394EE |
  BEQ CODE_8394F5                           ; $8394F0 |
  JMP.W CODE_FN_83A0E4                      ; $8394F2 |

CODE_8394F5:
  RTS                                       ; $8394F5 |

CODE_FN_8394F6:
  JSR.W CODE_FN_839517                      ; $8394F6 |
  BCC CODE_8394F5                           ; $8394F9 |
  LDA.B $46,X                               ; $8394FB |
  BIT.B #$01                                ; $8394FD |
  BNE CODE_839507                           ; $8394FF |
  LDA.B $8D,X                               ; $839501 |
  BIT.B #$60                                ; $839503 |
  BEQ CODE_839512                           ; $839505 |

CODE_839507:
  INC.B $44,X                               ; $839507 |
  LDA.B $44,X                               ; $839509 |
  CMP.B #$08                                ; $83950B |
  BCC CODE_839514                           ; $83950D |
  JSR.W CODE_FN_83A17D                      ; $83950F |

CODE_839512:
  STZ.B $44,X                               ; $839512 |

CODE_839514:
  JMP.W CODE_FN_839570                      ; $839514 |

CODE_FN_839517:
  LDA.B $48,X                               ; $839517 |
  BNE CODE_839520                           ; $839519 |
  JSR.W CODE_FN_8394B3                      ; $83951B |
  BRA CODE_839557                           ; $83951E |

CODE_839520:
  LDA.B $9B                                 ; $839520 |
  BIT.B #$80                                ; $839522 |
  BEQ CODE_83952B                           ; $839524 |
  JSR.W CODE_FN_83A130                      ; $839526 |
  BRA CODE_839557                           ; $839529 |

CODE_83952B:
  BIT.B #$40                                ; $83952B |
  BEQ CODE_839534                           ; $83952D |
  JSR.W CODE_FN_838C6B                      ; $83952F |
  BRA CODE_839557                           ; $839532 |

CODE_839534:
  LDA.B $97                                 ; $839534 |
  BIT.B #$04                                ; $839536 |
  BEQ CODE_83953F                           ; $839538 |
  JSR.W CODE_FN_83A0F9                      ; $83953A |
  BRA CODE_839557                           ; $83953D |

CODE_83953F:
  BIT.B #$08                                ; $83953F |
  BEQ CODE_83954A                           ; $839541 |
  JSR.W CODE_FN_83A319                      ; $839543 |
  BCS CODE_839557                           ; $839546 |
  LDA.B $97                                 ; $839548 |

CODE_83954A:
  AND.B #$03                                ; $83954A |
  BNE CODE_839559                           ; $83954C |
  LDA.B $4A,X                               ; $83954E |
  ORA.B $4B,X                               ; $839550 |
  BNE CODE_83955B                           ; $839552 |
  JSR.W CODE_FN_839EDA                      ; $839554 |

CODE_839557:
  CLC                                       ; $839557 |
  RTS                                       ; $839558 |

CODE_839559:
  SEC                                       ; $839559 |
  RTS                                       ; $83955A |

CODE_83955B:
  LDA.B $42                                 ; $83955B |
  BIT.B #$03                                ; $83955D |
  BNE CODE_83956C                           ; $83955F |
  REP #$20                                  ; $839561 |
  LDA.W #$0017                              ; $839563 |
  JSL.L push_sound_queue                    ; $839566 |
  SEP #$20                                  ; $83956A |

CODE_83956C:
  SEC                                       ; $83956C |
  RTS                                       ; $83956D |

  REP #$20                                  ; $83956E |

CODE_FN_839570:
  LDA.B $97                                 ; $839570 |

CODE_FN_839572:
  AND.B #$03                                ; $839572 |

CODE_FN_839574:
  ASL A                                     ; $839574 |
  STA.B $00                                 ; $839575 |
  STZ.B $01                                 ; $839577 |
  REP #$20                                  ; $839579 |
  LDA.B $92,X                               ; $83957B |
  BIT.W #$0080                              ; $83957D |
  BEQ CODE_839587                           ; $839580 |
  LDY.W #$000A                              ; $839582 |
  BRA CODE_83958B                           ; $839585 |

CODE_839587:
  LDA.B $18,X                               ; $839587 |
  ASL A                                     ; $839589 |
  TAY                                       ; $83958A |

CODE_83958B:
  LDA.W CODE_00EAAE,Y                       ; $83958B |
  CLC                                       ; $83958E |
  ADC.B $00                                 ; $83958F |
  TAY                                       ; $839591 |
  LDA.W CODE_00EAB8,Y                       ; $839592 |
  STA.B $26,X                               ; $839595 |
  SEP #$20                                  ; $839597 |
  LDA.B $27,X                               ; $839599 |
  BEQ CODE_8395AE                           ; $83959B |
  BMI CODE_8395A8                           ; $83959D |
  LDA.B $04,X                               ; $83959F |
  AND.B #$DF                                ; $8395A1 |
  STA.B $04,X                               ; $8395A3 |
  JMP.W CODE_JP_838AD9                      ; $8395A5 |

CODE_8395A8:
  LDA.B $04,X                               ; $8395A8 |
  ORA.B #$20                                ; $8395AA |
  STA.B $04,X                               ; $8395AC |

CODE_8395AE:
  JMP.W CODE_JP_838AD9                      ; $8395AE |

  LDA.B $9B                                 ; $8395B1 |
  BIT.B #$40                                ; $8395B3 |
  BEQ CODE_8395BA                           ; $8395B5 |
  JMP.W CODE_JP_838CBA                      ; $8395B7 |

CODE_8395BA:
  LDA.B $97                                 ; $8395BA |
  BIT.B #$08                                ; $8395BC |
  BEQ CODE_8395C5                           ; $8395BE |
  JSR.W CODE_FN_83A343                      ; $8395C0 |
  BCS CODE_8395D6                           ; $8395C3 |

CODE_8395C5:
  LDA.B $29,X                               ; $8395C5 |
  BMI CODE_8395D0                           ; $8395C7 |
  LDA.B $48,X                               ; $8395C9 |
  BNE CODE_8395F2                           ; $8395CB |
  JMP.W CODE_JP_83A188                      ; $8395CD |

CODE_8395D0:
  JSR.W CODE_FN_839570                      ; $8395D0 |
  JMP.W CODE_FN_8385EA                      ; $8395D3 |

CODE_8395D6:
  RTS                                       ; $8395D6 |

  LDA.B $9B                                 ; $8395D7 |
  BIT.B #$40                                ; $8395D9 |
  BEQ CODE_8395E0                           ; $8395DB |
  JMP.W CODE_JP_838CBA                      ; $8395DD |

CODE_8395E0:
  LDA.B $97                                 ; $8395E0 |
  BIT.B #$08                                ; $8395E2 |
  BEQ CODE_8395EB                           ; $8395E4 |
  JSR.W CODE_FN_83A343                      ; $8395E6 |
  BCS CODE_8395D6                           ; $8395E9 |

CODE_8395EB:
  LDA.B $48,X                               ; $8395EB |
  BNE CODE_8395F2                           ; $8395ED |
  JMP.W CODE_FN_839570                      ; $8395EF |

CODE_8395F2:
  REP #$20                                  ; $8395F2 |
  LDY.B $18,X                               ; $8395F4 |
  LDA.W LOOSE_OP_00EB27,Y                   ; $8395F6 |
  AND.W #$00FF                              ; $8395F9 |
  JSL.L push_sound_queue                    ; $8395FC |
  SEP #$20                                  ; $839600 |
  LDA.B $9B                                 ; $839602 |
  BIT.B #$80                                ; $839604 |
  BEQ CODE_83960B                           ; $839606 |
  JMP.W CODE_FN_83A130                      ; $839608 |

CODE_83960B:
  BIT.B #$40                                ; $83960B |
  BEQ CODE_839612                           ; $83960D |
  JMP.W CODE_JP_838CBA                      ; $83960F |

CODE_839612:
  LDA.B $97                                 ; $839612 |
  BIT.B #$07                                ; $839614 |
  BEQ CODE_83961B                           ; $839616 |
  JMP.W CODE_FN_83A0D0                      ; $839618 |

CODE_83961B:
  JSR.W CODE_FN_839EDA                      ; $83961B |
  RTS                                       ; $83961E |

  LDA.B $48,X                               ; $83961F |
  BNE CODE_JP_839626                        ; $839621 |
  JMP.W CODE_JP_83A188                      ; $839623 |

CODE_JP_839626:
  STZ.B $18                                 ; $839626 |
  LDA.B $9B                                 ; $839628 |
  BIT.B #$80                                ; $83962A |
  BEQ CODE_839638                           ; $83962C |
  INC.B $18                                 ; $83962E |
  JSR.W CODE_FN_838A86                      ; $839630 |
  BCS CODE_83965C                           ; $839633 |
  JMP.W CODE_JP_83A145                      ; $839635 |

CODE_839638:
  LDA.B $9B                                 ; $839638 |
  BIT.B #$40                                ; $83963A |
  BEQ CODE_839641                           ; $83963C |
  JMP.W CODE_JP_838E56                      ; $83963E |

CODE_839641:
  LDA.B $97                                 ; $839641 |
  BIT.B #$04                                ; $839643 |
  BNE CODE_83965C                           ; $839645 |
  LDA.B $18                                 ; $839647 |
  BNE CODE_83965C                           ; $839649 |
  JSR.W CODE_FN_838A86                      ; $83964B |
  BCS CODE_83965C                           ; $83964E |

CODE_839650:
  LDA.B $97                                 ; $839650 |
  BIT.B #$03                                ; $839652 |
  BEQ CODE_839659                           ; $839654 |
  JMP.W CODE_FN_83A0E4                      ; $839656 |

CODE_839659:
  JMP.W CODE_FN_839EDA                      ; $839659 |

CODE_83965C:
  LDA.B $97                                 ; $83965C |
  BIT.B #$03                                ; $83965E |
  BEQ CODE_839665                           ; $839660 |
  JMP.W CODE_JP_83A128                      ; $839662 |

CODE_839665:
  STZ.B $26,X                               ; $839665 |
  STZ.B $27,X                               ; $839667 |
  RTS                                       ; $839669 |

  LDA.B $48,X                               ; $83966A |
  BNE CODE_839671                           ; $83966C |
  JMP.W CODE_JP_83A188                      ; $83966E |

CODE_839671:
  STZ.B $18                                 ; $839671 |
  LDA.B $9B                                 ; $839673 |
  BIT.B #$80                                ; $839675 |
  BEQ CODE_839683                           ; $839677 |
  INC.B $18                                 ; $839679 |
  JSR.W CODE_FN_838A86                      ; $83967B |
  BCS CODE_839683                           ; $83967E |
  JMP.W CODE_JP_83A145                      ; $839680 |

CODE_839683:
  LDA.B $9B                                 ; $839683 |
  BIT.B #$40                                ; $839685 |
  BEQ CODE_83968C                           ; $839687 |
  JMP.W CODE_JP_838E56                      ; $839689 |

CODE_83968C:
  LDA.B $97                                 ; $83968C |
  BIT.B #$04                                ; $83968E |
  BNE CODE_83969B                           ; $839690 |
  LDA.B $18                                 ; $839692 |
  BNE CODE_83969B                           ; $839694 |
  JSR.W CODE_FN_838A86                      ; $839696 |
  BCC CODE_839650                           ; $839699 |

CODE_83969B:
  LDA.B $97                                 ; $83969B |
  BIT.B #$03                                ; $83969D |
  BNE CODE_8396A4                           ; $83969F |
  JMP.W CODE_FN_83A123                      ; $8396A1 |

CODE_8396A4:
  JMP.W CODE_FN_839572                      ; $8396A4 |

CODE_JP_8396A7:
  JSR.W CODE_FN_838576                      ; $8396A7 |
  JSR.W CODE_FN_8385EA                      ; $8396AA |
  LDA.B $1E,X                               ; $8396AD |
  CMP.B #$02                                ; $8396AF |
  BCC CODE_JP_8396F4                        ; $8396B1 |
  CMP.B #$05                                ; $8396B3 |
  BCC CODE_FN_8396DF                        ; $8396B5 |

CODE_JP_8396B7:
  LDA.B $97                                 ; $8396B7 |
  AND.B #$03                                ; $8396B9 |
  STA.B $10                                 ; $8396BB |
  LDA.B $48,X                               ; $8396BD |
  BNE CODE_8396C8                           ; $8396BF |
  LDA.B $10                                 ; $8396C1 |
  BEQ CODE_8396F3                           ; $8396C3 |
  JMP.W CODE_FN_839574                      ; $8396C5 |

CODE_8396C8:
  JSR.W CODE_FN_8396E3                      ; $8396C8 |
  LDA.B $10                                 ; $8396CB |
  BEQ CODE_8396F3                           ; $8396CD |
  LDA.B $04,X                               ; $8396CF |
  LSR.B $10                                 ; $8396D1 |
  BCC CODE_8396DA                           ; $8396D3 |
  AND.B #$DF                                ; $8396D5 |
  STA.B $04,X                               ; $8396D7 |
  RTS                                       ; $8396D9 |

CODE_8396DA:
  ORA.B #$20                                ; $8396DA |
  STA.B $04,X                               ; $8396DC |
  RTS                                       ; $8396DE |

CODE_FN_8396DF:
  LDA.B $48,X                               ; $8396DF |
  BEQ CODE_8396F3                           ; $8396E1 |

CODE_FN_8396E3:
  JSR.W CODE_FN_838576                      ; $8396E3 |
  LDA.B $99                                 ; $8396E6 |
  AND.B #$80                                ; $8396E8 |
  BEQ CODE_8396F3                           ; $8396EA |
  LDA.B #$08                                ; $8396EC |
  STA.B $9C,X                               ; $8396EE |
  JMP.W CODE_FN_83A30B                      ; $8396F0 |

CODE_8396F3:
  RTS                                       ; $8396F3 |

CODE_JP_8396F4:
  LDA.B $BA,X                               ; $8396F4 |
  CMP.B #$FF                                ; $8396F6 |
  BNE CODE_8396FD                           ; $8396F8 |
  JSR.W CODE_FN_839EDA                      ; $8396FA |

CODE_8396FD:
  JMP.W CODE_FN_8394AF                      ; $8396FD |

  JSR.W CODE_FN_838576                      ; $839700 |
  JSR.W CODE_FN_8385EA                      ; $839703 |
  LDA.B $1E,X                               ; $839706 |
  CMP.B #$02                                ; $839708 |
  BCC CODE_JP_8396F4                        ; $83970A |
  CMP.B #$06                                ; $83970C |
  BCS CODE_JP_8396B7                        ; $83970E |
  CMP.B #$04                                ; $839710 |
  BNE CODE_83972B                           ; $839712 |
  LDA.B $22,X                               ; $839714 |
  CMP.B #$0E                                ; $839716 |
  BEQ CODE_839720                           ; $839718 |
  JSL.L CODE_FL_83EF0B                      ; $83971A |
  BRA CODE_839724                           ; $83971E |

CODE_839720:
  JSL.L CODE_FL_83EFAB                      ; $839720 |

CODE_839724:
  LDA.B $48,X                               ; $839724 |
  BEQ CODE_8396F3                           ; $839726 |
  JMP.W CODE_FN_8396E3                      ; $839728 |

CODE_83972B:
  RTS                                       ; $83972B |

  JSR.W CODE_FN_838576                      ; $83972C |
  LDA.B $1E,X                               ; $83972F |
  CMP.B #$02                                ; $839731 |
  BCC CODE_839754                           ; $839733 |
  LDA.B $99                                 ; $839735 |
  AND.B #$80                                ; $839737 |
  STA.B $99                                 ; $839739 |
  LDA.B $1E,X                               ; $83973B |
  CMP.B #$03                                ; $83973D |
  BCC CODE_FN_8396DF                        ; $83973F |
  JMP.W CODE_JP_8396B7                      ; $839741 |

  JSR.W CODE_FN_8385EA                      ; $839744 |
  LDA.B $1E,X                               ; $839747 |
  CMP.B #$02                                ; $839749 |
  BCC CODE_839754                           ; $83974B |
  CMP.B #$03                                ; $83974D |
  BCC CODE_FN_8396DF                        ; $83974F |
  JMP.W CODE_JP_8396B7                      ; $839751 |

CODE_839754:
  JSR.W CODE_FN_839798                      ; $839754 |
  BCS CODE_83977F                           ; $839757 |
  LDA.B $22,X                               ; $839759 |
  CMP.B #$0A                                ; $83975B |
  BNE CODE_83977E                           ; $83975D |
  LDY.B $5A,X                               ; $83975F |
  LDA.W $001A,Y                             ; $839761 |
  CMP.B #$02                                ; $839764 |
  BNE CODE_83977E                           ; $839766 |
  LDA.B $9B                                 ; $839768 |
  BIT.B #$80                                ; $83976A |
  BEQ CODE_83977E                           ; $83976C |
  REP #$20                                  ; $83976E |
  JSR.W CODE_FN_83A30B                      ; $839770 |
  SEP #$20                                  ; $839773 |
  LDA.B #$0C                                ; $839775 |
  STA.B $9C,X                               ; $839777 |
  LDA.B #$02                                ; $839779 |
  JMP.W CODE_FN_83891C                      ; $83977B |

CODE_83977E:
  RTS                                       ; $83977E |

CODE_83977F:
  LDY.B $5A,X                               ; $83977F |
  LDA.B #$03                                ; $839781 |
  STA.W $001A,Y                             ; $839783 |
  LDA.B $22,X                               ; $839786 |
  CMP.B #$0C                                ; $839788 |
  BEQ CODE_839792                           ; $83978A |
  JSR.W CODE_FN_839EDA                      ; $83978C |
  JMP.W CODE_FN_8394AF                      ; $83978F |

CODE_839792:
  JSR.W CODE_FN_83A123                      ; $839792 |
  JMP.W CODE_JP_839626                      ; $839795 |

CODE_FN_839798:
  LDA.B $1E,X                               ; $839798 |
  CMP.B #$01                                ; $83979A |
  BNE CODE_839801                           ; $83979C |
  REP #$20                                  ; $83979E |
  LDA.W #$0019                              ; $8397A0 |
  LDY.B $22,X                               ; $8397A3 |
  CPY.W #$000A                              ; $8397A5 |
  BEQ CODE_8397B5                           ; $8397A8 |
  LDA.W #$0016                              ; $8397AA |
  CPY.W #$0008                              ; $8397AD |
  BEQ CODE_8397B5                           ; $8397B0 |
  LDA.W #$0016                              ; $8397B2 |

CODE_8397B5:
  STA.B $10                                 ; $8397B5 |
  STY.B $12                                 ; $8397B7 |
  LDY.W #$0000                              ; $8397B9 |
  CPX.W #$0400                              ; $8397BC |
  BEQ CODE_8397C4                           ; $8397BF |
  LDY.W #$000C                              ; $8397C1 |

CODE_8397C4:
  STX.B $14                                 ; $8397C4 |
  LDA.W CODE_00EB38,Y                       ; $8397C6 |
  STA.B $5A,X                               ; $8397C9 |
  TAX                                       ; $8397CB |
  STX.B $16                                 ; $8397CC |
  JSL.L CODE_FL_86CA36                      ; $8397CE |
  LDA.B $10                                 ; $8397D2 |
  STA.B $18,X                               ; $8397D4 |
  LDA.W #$0080                              ; $8397D6 |
  STA.B $22,X                               ; $8397D9 |
  LDA.B $12                                 ; $8397DB |
  STA.B $3C,X                               ; $8397DD |
  LDA.B $14                                 ; $8397DF |
  STA.B $3A,X                               ; $8397E1 |
  LDA.W #$000B                              ; $8397E3 |
  JSL.L push_sound_queue                    ; $8397E6 |
  JSR.W CODE_FN_839882                      ; $8397EA |
  JSR.W CODE_FN_839882                      ; $8397ED |
  JSR.W CODE_FN_839882                      ; $8397F0 |
  JSR.W CODE_FN_839882                      ; $8397F3 |
  LDX.B $14                                 ; $8397F6 |
  LDA.W #$0008                              ; $8397F8 |
  STA.B $54,X                               ; $8397FB |
  STZ.B $58,X                               ; $8397FD |
  SEP #$20                                  ; $8397FF |

CODE_839801:
  LDA.B $58,X                               ; $839801 |
  BNE CODE_839831                           ; $839803 |
  LDA.B $54,X                               ; $839805 |
  CMP.B #$20                                ; $839807 |
  BCC CODE_839811                           ; $839809 |
  LDA.B $97                                 ; $83980B |
  BIT.B #$40                                ; $83980D |
  BEQ CODE_83982B                           ; $83980F |

CODE_839811:
  LDA.B $54,X                               ; $839811 |
  CLC                                       ; $839813 |
  ADC.B #$08                                ; $839814 |
  CMP.B #$60                                ; $839816 |
  BCS CODE_839827                           ; $839818 |
  STA.B $54,X                               ; $83981A |

CODE_83981C:
  LDA.B $22,X                               ; $83981C |
  CMP.B #$0C                                ; $83981E |
  BEQ CODE_839825                           ; $839820 |
  JSR.W CODE_FN_8396DF                      ; $839822 |

CODE_839825:
  CLC                                       ; $839825 |
  RTS                                       ; $839826 |

CODE_839827:
  LDA.B #$5F                                ; $839827 |
  STA.B $54,X                               ; $839829 |

CODE_83982B:
  LDA.B #$02                                ; $83982B |
  STA.B $58,X                               ; $83982D |
  BRA CODE_83981C                           ; $83982F |

CODE_839831:
  LDA.B $46,X                               ; $839831 |
  BNE CODE_83987E                           ; $839833 |
  LDA.B $54,X                               ; $839835 |
  CMP.B #$10                                ; $839837 |
  BCC CODE_839861                           ; $839839 |
  SEC                                       ; $83983B |
  SBC.B #$05                                ; $83983C |
  CMP.B #$10                                ; $83983E |
  STA.B $54,X                               ; $839840 |
  BCC CODE_839861                           ; $839842 |
  LDY.B $5A,X                               ; $839844 |
  LDA.W $001A,Y                             ; $839846 |
  CMP.B #$02                                ; $839849 |
  BNE CODE_83981C                           ; $83984B |
  LDA.B $22,X                               ; $83984D |
  CMP.B #$0A                                ; $83984F |
  BEQ CODE_839857                           ; $839851 |
  LDA.B #$B4                                ; $839853 |
  BRA CODE_839859                           ; $839855 |

CODE_839857:
  LDA.B #$B2                                ; $839857 |

CODE_839859:
  STA.B $20,X                               ; $839859 |
  STZ.B $1E,X                               ; $83985B |
  STZ.B $BA,X                               ; $83985D |
  BRA CODE_83981C                           ; $83985F |

CODE_839861:
  LDY.B $5A,X                               ; $839861 |
  LDA.W $001A,Y                             ; $839863 |
  CMP.B #$02                                ; $839866 |
  BNE CODE_83987E                           ; $839868 |
  LDA.B $22,X                               ; $83986A |
  CMP.B #$0A                                ; $83986C |
  BNE CODE_839878                           ; $83986E |
  LDA.B #$B0                                ; $839870 |
  STA.B $20,X                               ; $839872 |
  STZ.B $1E,X                               ; $839874 |
  STZ.B $BA,X                               ; $839876 |

CODE_839878:
  LDA.B $97                                 ; $839878 |
  BIT.B #$40                                ; $83987A |
  BNE CODE_839880                           ; $83987C |

CODE_83987E:
  SEC                                       ; $83987E |
  RTS                                       ; $83987F |

CODE_839880:
  CLC                                       ; $839880 |
  RTS                                       ; $839881 |

CODE_FN_839882:
  INY                                       ; $839882 |
  INY                                       ; $839883 |
  LDX.W CODE_00EB38,Y                       ; $839884 |
  JSL.L CODE_FL_86CA36                      ; $839887 |
  LDA.W #$0017                              ; $83988B |
  STA.B $18,X                               ; $83988E |
  LDA.B $16                                 ; $839890 |
  STA.B $3A,X                               ; $839892 |
  RTS                                       ; $839894 |

  JSR.W CODE_FN_838576                      ; $839895 |
  LDA.B $1E,X                               ; $839898 |
  CMP.B #$04                                ; $83989A |
  BCC CODE_8398AE                           ; $83989C |
  LDA.B $97                                 ; $83989E |
  AND.B #$03                                ; $8398A0 |
  BEQ CODE_8398BE                           ; $8398A2 |
  STA.B $10                                 ; $8398A4 |
  LDA.B $04,X                               ; $8398A6 |
  LSR.B $10                                 ; $8398A8 |
  BCC CODE_8398DB                           ; $8398AA |
  BRA CODE_8398D6                           ; $8398AC |

CODE_8398AE:
  CMP.B #$02                                ; $8398AE |
  BCS CODE_8398BE                           ; $8398B0 |
  LDA.B $BA,X                               ; $8398B2 |
  CMP.B #$FF                                ; $8398B4 |
  BNE CODE_8398BB                           ; $8398B6 |
  JSR.W CODE_FN_83A123                      ; $8398B8 |

CODE_8398BB:
  JMP.W CODE_JP_839626                      ; $8398BB |

CODE_8398BE:
  RTS                                       ; $8398BE |

  JSR.W CODE_FN_838576                      ; $8398BF |
  LDA.B $1E,X                               ; $8398C2 |
  CMP.B #$05                                ; $8398C4 |
  BCC CODE_8398E0                           ; $8398C6 |
  LDA.B $97                                 ; $8398C8 |
  AND.B #$03                                ; $8398CA |
  BEQ CODE_8398F0                           ; $8398CC |
  STA.B $10                                 ; $8398CE |
  LDA.B $04,X                               ; $8398D0 |
  LSR.B $10                                 ; $8398D2 |
  BCC CODE_8398DB                           ; $8398D4 |

CODE_8398D6:
  AND.B #$DF                                ; $8398D6 |
  STA.B $04,X                               ; $8398D8 |
  RTS                                       ; $8398DA |

CODE_8398DB:
  ORA.B #$20                                ; $8398DB |
  STA.B $04,X                               ; $8398DD |
  RTS                                       ; $8398DF |

CODE_8398E0:
  CMP.B #$02                                ; $8398E0 |
  BCS CODE_8398F0                           ; $8398E2 |
  LDA.B $BA,X                               ; $8398E4 |
  CMP.B #$FF                                ; $8398E6 |
  BNE CODE_8398ED                           ; $8398E8 |
  JSR.W CODE_FN_83A123                      ; $8398EA |

CODE_8398ED:
  JMP.W CODE_JP_839626                      ; $8398ED |

CODE_8398F0:
  CMP.B #$04                                ; $8398F0 |
  BNE CODE_8398F8                           ; $8398F2 |
  JSL.L CODE_FL_83EF0B                      ; $8398F4 |

CODE_8398F8:
  RTS                                       ; $8398F8 |

  JSR.W CODE_FN_839570                      ; $8398F9 |
  LDA.B $97                                 ; $8398FC |
  AND.B #$0F                                ; $8398FE |
  BEQ CODE_839908                           ; $839900 |
  LDA.B $BA,X                               ; $839902 |
  BEQ CODE_839908                           ; $839904 |
  DEC.B $BA,X                               ; $839906 |

CODE_839908:
  REP #$20                                  ; $839908 |
  LDA.W $1C6C                               ; $83990A |
  AND.W #$7FFF                              ; $83990D |
  BEQ CODE_83991E                           ; $839910 |
  SEC                                       ; $839912 |
  SBC.B $0D,X                               ; $839913 |
  BPL CODE_83991E                           ; $839915 |
  CMP.W #$FFFC                              ; $839917 |
  SEP #$20                                  ; $83991A |
  BCS CODE_839929                           ; $83991C |

CODE_83991E:
  SEP #$20                                  ; $83991E |
  LDA.B $9B                                 ; $839920 |
  BIT.B #$80                                ; $839922 |
  BEQ CODE_839929                           ; $839924 |
  JMP.W CODE_FN_83A130                      ; $839926 |

CODE_839929:
  LDA.B $9A                                 ; $839929 |
  BIT.B #$80                                ; $83992B |
  BEQ CODE_83993D                           ; $83992D |
  LDA.B $18,X                               ; $83992F |
  CMP.B #$04                                ; $839931 |
  BNE CODE_83993D                           ; $839933 |
  JSR.W CODE_FN_83CED4                      ; $839935 |
  BCC CODE_83993D                           ; $839938 |
  JMP.W CODE_JP_839EE4                      ; $83993A |

CODE_83993D:
  JSR.W CODE_FN_83A2CE                      ; $83993D |
  BCC CODE_839945                           ; $839940 |
  JMP.W CODE_FN_83A29D                      ; $839942 |

CODE_839945:
  RTS                                       ; $839945 |

  JSR.W CODE_FN_8399E3                      ; $839946 |
  BRA CODE_83994F                           ; $839949 |

  STZ.B $28,X                               ; $83994B |
  STZ.B $29,X                               ; $83994D |

CODE_83994F:
  REP #$20                                  ; $83994F |
  STZ.B $26,X                               ; $839951 |
  STZ.B $78,X                               ; $839953 |
  LDA.W #$0050                              ; $839955 |
  STA.B $4C,X                               ; $839958 |
  SEP #$20                                  ; $83995A |
  LDA.B $48,X                               ; $83995C |
  BEQ CODE_83996D                           ; $83995E |
  LDA.B $97                                 ; $839960 |
  BIT.B #$08                                ; $839962 |
  BNE CODE_83996D                           ; $839964 |
  BIT.B #$07                                ; $839966 |
  BEQ CODE_83996D                           ; $839968 |
  JMP.W CODE_FN_839ECD                      ; $83996A |

CODE_83996D:
  LDA.B $9B                                 ; $83996D |
  BIT.B #$80                                ; $83996F |
  BEQ CODE_839976                           ; $839971 |
  JMP.W CODE_FN_83A130                      ; $839973 |

CODE_839976:
  BIT.B #$40                                ; $839976 |
  BEQ CODE_83997D                           ; $839978 |
  JMP.W CODE_JP_838CBA                      ; $83997A |

CODE_83997D:
  REP #$20                                  ; $83997D |
  LDA.B $09,X                               ; $83997F |
  STA.B $08                                 ; $839981 |
  LDA.B $0D,X                               ; $839983 |
  SEC                                       ; $839985 |
  SBC.W #$0014                              ; $839986 |
  STA.B $0A                                 ; $839989 |
  JSL.L CODE_FL_80CA7D                      ; $83998B |
  AND.W #$007F                              ; $83998F |
  CMP.W #$0006                              ; $839992 |
  BEQ CODE_8399C2                           ; $839995 |
  LDA.B $0A                                 ; $839997 |
  CLC                                       ; $839999 |
  ADC.W #$000D                              ; $83999A |
  STA.B $0A                                 ; $83999D |
  JSL.L CODE_FL_80CA7D                      ; $83999F |
  CMP.W #$0006                              ; $8399A3 |
  BEQ CODE_8399C2                           ; $8399A6 |
  LDA.B $0D,X                               ; $8399A8 |
  STA.B $0A                                 ; $8399AA |
  JSL.L CODE_FL_80CA7D                      ; $8399AC |
  AND.W #$007F                              ; $8399B0 |
  CMP.W #$0006                              ; $8399B3 |
  BNE CODE_8399BD                           ; $8399B6 |
  SEP #$20                                  ; $8399B8 |
  JMP.W CODE_JP_83A02B                      ; $8399BA |

CODE_8399BD:
  SEP #$20                                  ; $8399BD |
  JMP.W CODE_FN_8394AF                      ; $8399BF |

CODE_8399C2:
  SEP #$20                                  ; $8399C2 |
  LDA.B $97                                 ; $8399C4 |
  BIT.B #$0C                                ; $8399C6 |
  BEQ CODE_8399D3                           ; $8399C8 |
  LDA.B $22,X                               ; $8399CA |
  CMP.B #$23                                ; $8399CC |
  BEQ CODE_8399DC                           ; $8399CE |
  JMP.W CODE_FN_83A01F                      ; $8399D0 |

CODE_8399D3:
  LDA.B $22,X                               ; $8399D3 |
  CMP.B #$22                                ; $8399D5 |
  BEQ CODE_8399DC                           ; $8399D7 |
  JMP.W CODE_FN_83A012                      ; $8399D9 |

CODE_8399DC:
  STZ.B $4C,X                               ; $8399DC |
  STZ.B $4D,X                               ; $8399DE |
  STZ.B $44,X                               ; $8399E0 |
  RTS                                       ; $8399E2 |

CODE_FN_8399E3:
  LDY.W #$FF00                              ; $8399E3 |
  LDA.B $97                                 ; $8399E6 |
  BIT.B #$08                                ; $8399E8 |
  BNE CODE_8399EF                           ; $8399EA |
  LDY.W #$0100                              ; $8399EC |

CODE_8399EF:
  STY.B $28,X                               ; $8399EF |
  RTS                                       ; $8399F1 |

  LDA.B $BA,X                               ; $8399F2 |
  CMP.B #$FF                                ; $8399F4 |
  BNE CODE_8399FE                           ; $8399F6 |
  JSR.W CODE_FN_839ECD                      ; $8399F8 |
  JMP.W CODE_FN_8394AF                      ; $8399FB |

CODE_8399FE:
  LDA.B $9B                                 ; $8399FE |
  BIT.B #$80                                ; $839A00 |
  BEQ CODE_839A07                           ; $839A02 |
  JMP.W CODE_FN_83A130                      ; $839A04 |

CODE_839A07:
  BIT.B #$40                                ; $839A07 |
  BEQ CODE_839A0E                           ; $839A09 |
  JMP.W CODE_JP_838CBA                      ; $839A0B |

CODE_839A0E:
  REP #$20                                  ; $839A0E |
  STZ.B $78,X                               ; $839A10 |
  STZ.B $7A,X                               ; $839A12 |
  STZ.B $26,X                               ; $839A14 |
  SEP #$20                                  ; $839A16 |
  RTS                                       ; $839A18 |

  LDA.B $9B                                 ; $839A19 |
  BIT.B #$80                                ; $839A1B |
  BEQ CODE_839A22                           ; $839A1D |
  JMP.W CODE_FN_83A130                      ; $839A1F |

CODE_839A22:
  BIT.B #$40                                ; $839A22 |
  BEQ CODE_839A29                           ; $839A24 |
  JMP.W CODE_JP_838CBA                      ; $839A26 |

CODE_839A29:
  LDA.B $BA,X                               ; $839A29 |
  CMP.B #$FF                                ; $839A2B |
  BNE CODE_839A38                           ; $839A2D |
  LDA.B #$09                                ; $839A2F |
  STA.B $7B,X                               ; $839A31 |
  STZ.B $7A,X                               ; $839A33 |
  JMP.W CODE_FN_83A012                      ; $839A35 |

CODE_839A38:
  REP #$20                                  ; $839A38 |
  STZ.B $78,X                               ; $839A3A |
  STZ.B $7A,X                               ; $839A3C |
  STZ.B $26,X                               ; $839A3E |
  SEP #$20                                  ; $839A40 |
  RTS                                       ; $839A42 |

CODE_JP_839A43:
  INC.B $44,X                               ; $839A43 |
  LDA.B $44,X                               ; $839A45 |
  CMP.B #$10                                ; $839A47 |
  BCC CODE_839A53                           ; $839A49 |
  LDY.W $197E                               ; $839A4B |
  BNE CODE_839A53                           ; $839A4E |
  STX.W $197E                               ; $839A50 |

CODE_839A53:
  RTS                                       ; $839A53 |

CODE_JP_839A54:
  INC.B $44,X                               ; $839A54 |
  LDA.B $44,X                               ; $839A56 |
  CMP.B #$10                                ; $839A58 |
  BCC CODE_839A64                           ; $839A5A |
  LDY.W $197E                               ; $839A5C |
  BNE CODE_839A64                           ; $839A5F |
  STX.W $197E                               ; $839A61 |

CODE_839A64:
  RTS                                       ; $839A64 |

  JSR.W CODE_FN_839517                      ; $839A65 |
  BCC CODE_839A64                           ; $839A68 |
  LDA.B $8D,X                               ; $839A6A |
  BIT.B #$20                                ; $839A6C |
  BEQ CODE_839AB8                           ; $839A6E |
  REP #$20                                  ; $839A70 |
  LDY.W #$0000                              ; $839A72 |
  CPX.W #$0400                              ; $839A75 |
  BEQ CODE_839A7C                           ; $839A78 |
  INY                                       ; $839A7A |
  INY                                       ; $839A7B |

CODE_839A7C:
  LDA.W $1C4A,Y                             ; $839A7C |
  TAY                                       ; $839A7F |
  LDA.W $0046,Y                             ; $839A80 |
  STA.B $00                                 ; $839A83 |
  AND.W #$FFB7                              ; $839A85 |
  STA.W $0046,Y                             ; $839A88 |
  LDA.B $00                                 ; $839A8B |
  BIT.W #$0248                              ; $839A8D |
  BNE CODE_839AB5                           ; $839A90 |
  LDA.B $8C,X                               ; $839A92 |
  BIT.W #$0400                              ; $839A94 |
  BNE CODE_839AB5                           ; $839A97 |
  LDA.B $04,X                               ; $839A99 |
  BIT.W #$0020                              ; $839A9B |
  BNE CODE_839AA5                           ; $839A9E |
  LDA.W #$00C0                              ; $839AA0 |
  BRA CODE_839AA8                           ; $839AA3 |

CODE_839AA5:
  LDA.W #$FF40                              ; $839AA5 |

CODE_839AA8:
  STA.W $0026,Y                             ; $839AA8 |
  SEP #$20                                  ; $839AAB |
  JMP.W CODE_FN_839570                      ; $839AAD |

  SEP #$20                                  ; $839AB0 |
  JMP.W CODE_FN_839570                      ; $839AB2 |

CODE_839AB5:
  SEP #$20                                  ; $839AB5 |
  RTS                                       ; $839AB7 |

CODE_839AB8:
  BIT.B #$40                                ; $839AB8 |
  BNE CODE_839AC3                           ; $839ABA |
  LDA.B $46,X                               ; $839ABC |
  BNE CODE_839AC3                           ; $839ABE |
  JSR.W CODE_FN_83A0D0                      ; $839AC0 |

CODE_839AC3:
  JMP.W CODE_FN_839570                      ; $839AC3 |

  LDA.B $BA,X                               ; $839AC6 |
  CMP.B #$FF                                ; $839AC8 |
  BNE CODE_839ACF                           ; $839ACA |
  JSR.W CODE_FN_83A1A3                      ; $839ACC |

CODE_839ACF:
  LDA.B $1E,X                               ; $839ACF |
  JMP.W CODE_FN_8385C4                      ; $839AD1 |

  LDY.B $6C,X                               ; $839AD4 |
  LDA.W $003A,Y                             ; $839AD6 |
  STA.B $20                                 ; $839AD9 |
  BEQ CODE_839AE0                           ; $839ADB |
  JMP.W CODE_JP_839B87                      ; $839ADD |

CODE_839AE0:
  LDA.B #$04                                ; $839AE0 |
  JSR.W CODE_FN_8385C4                      ; $839AE2 |
  JSR.W CODE_FN_839AF4                      ; $839AE5 |
  BCC CODE_839AFC                           ; $839AE8 |
  LDA.B $97                                 ; $839AEA |
  BIT.B #$03                                ; $839AEC |
  BEQ CODE_839AF3                           ; $839AEE |
  JSR.W CODE_FN_83A1A8                      ; $839AF0 |

CODE_839AF3:
  RTS                                       ; $839AF3 |

CODE_FN_839AF4:
  LDA.B $48,X                               ; $839AF4 |
  BNE CODE_FN_839AFD                        ; $839AF6 |
  JSR.W CODE_FN_83A1D1                      ; $839AF8 |
  CLC                                       ; $839AFB |

CODE_839AFC:
  RTS                                       ; $839AFC |

CODE_FN_839AFD:
  LDA.B $9B                                 ; $839AFD |
  BIT.B #$80                                ; $839AFF |
  BEQ CODE_839B08                           ; $839B01 |
  JSR.W CODE_FN_83A1B0                      ; $839B03 |
  CLC                                       ; $839B06 |
  RTS                                       ; $839B07 |

CODE_839B08:
  BIT.B #$40                                ; $839B08 |
  BEQ CODE_839B11                           ; $839B0A |
  JSR.W CODE_FN_83A1D6                      ; $839B0C |
  CLC                                       ; $839B0F |
  RTS                                       ; $839B10 |

CODE_839B11:
  SEC                                       ; $839B11 |
  RTS                                       ; $839B12 |

  LDY.B $6C,X                               ; $839B13 |
  LDA.W $003A,Y                             ; $839B15 |
  STA.B $20                                 ; $839B18 |
  BEQ CODE_839B1F                           ; $839B1A |
  JMP.W CODE_JP_839B87                      ; $839B1C |

CODE_839B1F:
  LDA.B $1E,X                               ; $839B1F |
  CLC                                       ; $839B21 |
  ADC.B #$04                                ; $839B22 |
  JSR.W CODE_FN_8385C4                      ; $839B24 |
  JSR.W CODE_FN_839AF4                      ; $839B27 |
  BCC CODE_839AFC                           ; $839B2A |
  LDA.B $97                                 ; $839B2C |
  BIT.B #$03                                ; $839B2E |
  BNE CODE_839B35                           ; $839B30 |
  JMP.W CODE_FN_83A1A3                      ; $839B32 |

CODE_839B35:
  JMP.W CODE_FN_839570                      ; $839B35 |

  LDY.B $6C,X                               ; $839B38 |
  LDA.W $003A,Y                             ; $839B3A |
  STA.B $20                                 ; $839B3D |
  BEQ CODE_839B44                           ; $839B3F |
  JMP.W CODE_JP_839B87                      ; $839B41 |

CODE_839B44:
  LDA.B #$04                                ; $839B44 |
  JSR.W CODE_FN_8385C4                      ; $839B46 |
  LDA.B $9B                                 ; $839B49 |
  BIT.B #$40                                ; $839B4B |
  BEQ CODE_839B52                           ; $839B4D |
  JSR.W CODE_FN_83A1E7                      ; $839B4F |

CODE_839B52:
  LDA.B $29,X                               ; $839B52 |
  BMI CODE_839B5A                           ; $839B54 |
  LDA.B $48,X                               ; $839B56 |
  BNE CODE_839B61                           ; $839B58 |

CODE_839B5A:
  JSR.W CODE_FN_839570                      ; $839B5A |
  JMP.W CODE_FN_8385EA                      ; $839B5D |

  RTS                                       ; $839B60 |

CODE_839B61:
  REP #$20                                  ; $839B61 |
  LDY.B $18,X                               ; $839B63 |
  LDA.W LOOSE_OP_00EB27,Y                   ; $839B65 |
  AND.W #$00FF                              ; $839B68 |
  JSL.L push_sound_queue                    ; $839B6B |
  SEP #$20                                  ; $839B6F |
  JSR.W CODE_FN_839AFD                      ; $839B71 |
  BCC CODE_839B86                           ; $839B74 |
  LDA.B $97                                 ; $839B76 |
  BIT.B #$03                                ; $839B78 |
  BEQ CODE_839B83                           ; $839B7A |
  BIT.B #$01                                ; $839B7C |
  BNE CODE_839B83                           ; $839B7E |
  JMP.W CODE_FN_83A1A8                      ; $839B80 |

CODE_839B83:
  JMP.W CODE_FN_83A1A3                      ; $839B83 |

CODE_839B86:
  RTS                                       ; $839B86 |

CODE_JP_839B87:
  LDY.B $6C,X                               ; $839B87 |
  JSR.W CODE_FN_83857F                      ; $839B89 |
  REP #$20                                  ; $839B8C |
  LDA.W #$0000                              ; $839B8E |
  STA.W $0026,Y                             ; $839B91 |
  STA.W $0028,Y                             ; $839B94 |
  BRA CODE_839BC9                           ; $839B97 |

  LDY.B $6C,X                               ; $839B99 |
  LDA.W $003A,Y                             ; $839B9B |
  STA.B $20                                 ; $839B9E |
  LDA.B $BA,X                               ; $839BA0 |
  CMP.B #$FF                                ; $839BA2 |
  BEQ CODE_839BE3                           ; $839BA4 |

CODE_839BA6:
  LDY.B $6C,X                               ; $839BA6 |
  JSR.W CODE_FN_83857F                      ; $839BA8 |
  REP #$20                                  ; $839BAB |
  BCC CODE_839BBA                           ; $839BAD |
  LDA.B $26,X                               ; $839BAF |
  CLC                                       ; $839BB1 |
  ADC.W #$FF00                              ; $839BB2 |
  STA.W $0026,Y                             ; $839BB5 |
  BRA CODE_839BC3                           ; $839BB8 |

CODE_839BBA:
  LDA.B $26,X                               ; $839BBA |
  CLC                                       ; $839BBC |
  ADC.W #$0100                              ; $839BBD |
  STA.W $0026,Y                             ; $839BC0 |

CODE_839BC3:
  LDA.W #$FD00                              ; $839BC3 |
  STA.W $0028,Y                             ; $839BC6 |

CODE_839BC9:
  LDA.W $0046,Y                             ; $839BC9 |
  AND.W #$FDFF                              ; $839BCC |
  STA.W $0046,Y                             ; $839BCF |
  LDA.W $0034,Y                             ; $839BD2 |
  ORA.W #$1000                              ; $839BD5 |
  STA.W $0034,Y                             ; $839BD8 |
  SEP #$20                                  ; $839BDB |
  JSR.W CODE_FN_839ECD                      ; $839BDD |
  JMP.W CODE_JP_8394A7                      ; $839BE0 |

CODE_839BE3:
  LDA.B #$04                                ; $839BE3 |
  JMP.W CODE_FN_8385C4                      ; $839BE5 |

  LDY.B $6C,X                               ; $839BE8 |
  LDA.W $003A,Y                             ; $839BEA |
  STA.B $20                                 ; $839BED |
  LDA.B $48,X                               ; $839BEF |
  BEQ CODE_839BF6                           ; $839BF1 |
  JSR.W CODE_FN_839570                      ; $839BF3 |

CODE_839BF6:
  LDA.B $BA,X                               ; $839BF6 |
  CMP.B #$FF                                ; $839BF8 |
  BEQ CODE_839BE3                           ; $839BFA |
  BRA CODE_839BA6                           ; $839BFC |

  STZ.B $26,X                               ; $839BFE |
  STZ.B $27,X                               ; $839C00 |
  STZ.B $28,X                               ; $839C02 |
  STZ.B $29,X                               ; $839C04 |
  RTS                                       ; $839C06 |

CODE_839C07:
  AND.B #$7F                                ; $839C07 |
  BNE CODE_839C12                           ; $839C09 |
  LDA.B #$08                                ; $839C0B |
  STA.B $2C,X                               ; $839C0D |
  INC.B $44,X                               ; $839C0F |
  RTS                                       ; $839C11 |

CODE_839C12:
  DEC.B $2C,X                               ; $839C12 |
  BEQ CODE_839C66                           ; $839C14 |
  RTS                                       ; $839C16 |

CODE_JP_839C17:
  LDA.B #$50                                ; $839C17 |
  STA.B $4C,X                               ; $839C19 |
  LDA.B $44,X                               ; $839C1B |
  BIT.B #$80                                ; $839C1D |
  BNE CODE_839C07                           ; $839C1F |
  AND.B #$7F                                ; $839C21 |
  BNE CODE_839C34                           ; $839C23 |
  INC.B $44,X                               ; $839C25 |
  REP #$20                                  ; $839C27 |

CODE_839C29:
  LDA.W #$FCC0                              ; $839C29 |
  STA.B $28,X                               ; $839C2C |
  JSR.W CODE_FN_83A316                      ; $839C2E |
  SEP #$20                                  ; $839C31 |
  RTS                                       ; $839C33 |

CODE_839C34:
  LDA.B $BA,X                               ; $839C34 |
  CMP.B #$FF                                ; $839C36 |
  BEQ CODE_839C66                           ; $839C38 |
  LDA.B $48,X                               ; $839C3A |
  BEQ CODE_839C65                           ; $839C3C |
  LDA.B $44,X                               ; $839C3E |
  CMP.B #$03                                ; $839C40 |
  BCS CODE_839C66                           ; $839C42 |
  LDA.B $92,X                               ; $839C44 |
  BIT.B #$80                                ; $839C46 |
  BNE CODE_839C53                           ; $839C48 |
  JSR.W CODE_FN_8394AF                      ; $839C4A |
  LDA.B $22,X                               ; $839C4D |
  CMP.B #$13                                ; $839C4F |
  BNE CODE_839C66                           ; $839C51 |

CODE_839C53:
  INC.B $44,X                               ; $839C53 |
  REP #$20                                  ; $839C55 |
  LDY.B $18,X                               ; $839C57 |
  LDA.W LOOSE_OP_00EB27,Y                   ; $839C59 |
  AND.W #$00FF                              ; $839C5C |
  JSL.L push_sound_queue                    ; $839C5F |
  BRA CODE_839C29                           ; $839C63 |

CODE_839C65:
  RTS                                       ; $839C65 |

CODE_839C66:
  LDA.B #$60                                ; $839C66 |
  STA.B $52,X                               ; $839C68 |
  LDA.B $92,X                               ; $839C6A |
  BIT.B #$80                                ; $839C6C |
  BNE CODE_839C76                           ; $839C6E |
  JSR.W CODE_FN_839EDA                      ; $839C70 |
  JMP.W CODE_FN_8394AF                      ; $839C73 |

CODE_839C76:
  JMP.W CODE_FN_83A684                      ; $839C76 |

  LDA.B $BA,X                               ; $839C79 |
  CMP.B #$FF                                ; $839C7B |
  BNE CODE_839CBF                           ; $839C7D |
  PHX                                       ; $839C7F |
  JSR.W CODE_FN_83CF5E                      ; $839C80 |
  REP #$20                                  ; $839C83 |
  LDA.B $04,X                               ; $839C85 |
  ORA.W #$1898                              ; $839C87 |
  STA.B $04,X                               ; $839C8A |
  LDA.B $06,X                               ; $839C8C |
  STA.B $00                                 ; $839C8E |
  TXA                                       ; $839C90 |
  STA.W $003A,Y                             ; $839C91 |
  TYX                                       ; $839C94 |
  LDA.W #$0023                              ; $839C95 |
  STA.B $18,X                               ; $839C98 |
  LDA.B $00                                 ; $839C9A |
  STA.B $06,X                               ; $839C9C |
  LDA.B $04,X                               ; $839C9E |
  ORA.W #$1898                              ; $839CA0 |
  STA.B $04,X                               ; $839CA3 |
  LDA.W #$001A                              ; $839CA5 |
  JSL.L CODE_FL_86CAEE                      ; $839CA8 |
  STZ.B $22,X                               ; $839CAC |
  LDA.W #$0030                              ; $839CAE |
  STA.B $14,X                               ; $839CB1 |
  STZ.B $14,X                               ; $839CB3 |
  SEP #$20                                  ; $839CB5 |
  PLX                                       ; $839CB7 |
  JSR.W CODE_FN_83D0B7                      ; $839CB8 |
  RTS                                       ; $839CBB |

  SEP #$20                                  ; $839CBC |
  PLX                                       ; $839CBE |

CODE_839CBF:
  RTS                                       ; $839CBF |

  LDA.B $44,X                               ; $839CC0 |
  BNE CODE_839CFB                           ; $839CC2 |
  DEC.B $2C,X                               ; $839CC4 |
  BNE CODE_839CFA                           ; $839CC6 |
  INC.B $44,X                               ; $839CC8 |
  REP #$20                                  ; $839CCA |
  LDA.W #$FBF2                              ; $839CCC |
  STA.B $3A,X                               ; $839CCF |
  LDA.W #$1898                              ; $839CD1 |
  STA.B $04,X                               ; $839CD4 |
  STZ.B $00                                 ; $839CD6 |
  LDA.B $0D,X                               ; $839CD8 |
  CMP.W #$0040                              ; $839CDA |
  BCC CODE_839CEF                           ; $839CDD |
  INC.B $00                                 ; $839CDF |
  CMP.W #$0080                              ; $839CE1 |
  BCC CODE_839CEF                           ; $839CE4 |
  INC.B $00                                 ; $839CE6 |
  CMP.W #$00C0                              ; $839CE8 |
  BCC CODE_839CEF                           ; $839CEB |
  INC.B $00                                 ; $839CED |

CODE_839CEF:
  LDA.B $00                                 ; $839CEF |
  ASL A                                     ; $839CF1 |
  TAY                                       ; $839CF2 |
  LDA.W CODE_00EB30,Y                       ; $839CF3 |
  STA.B $28,X                               ; $839CF6 |
  SEP #$20                                  ; $839CF8 |

CODE_839CFA:
  RTS                                       ; $839CFA |

CODE_839CFB:
  CMP.B #$02                                ; $839CFB |
  BEQ CODE_839D10                           ; $839CFD |
  LDA.B $29,X                               ; $839CFF |
  BMI CODE_839CFA                           ; $839D01 |
  LDA.B $3A,X                               ; $839D03 |
  AND.B #$F0                                ; $839D05 |
  STA.B $3A,X                               ; $839D07 |
  INC.B $44,X                               ; $839D09 |
  LDA.B #$1F                                ; $839D0B |
  JMP.W CODE_FN_8388C5                      ; $839D0D |

CODE_839D10:
  LDA.B $0E,X                               ; $839D10 |
  BEQ CODE_839CFA                           ; $839D12 |
  BMI CODE_839CFA                           ; $839D14 |
  JMP.W CODE_FN_83D0B7                      ; $839D16 |

  LDA.B $44,X                               ; $839D19 |
  BNE CODE_839D3C                           ; $839D1B |
  REP #$20                                  ; $839D1D |
  INC.B $2C,X                               ; $839D1F |
  LDA.B $2C,X                               ; $839D21 |
  AND.W #$000F                              ; $839D23 |
  BNE CODE_839D2F                           ; $839D26 |
  LDA.W #$0017                              ; $839D28 |
  JSL.L push_sound_queue                    ; $839D2B |

CODE_839D2F:
  LDA.B $56,X                               ; $839D2F |
  STA.B $4A,X                               ; $839D31 |
  SEP #$20                                  ; $839D33 |
  LDA.B $04,X                               ; $839D35 |
  AND.B #$DF                                ; $839D37 |
  STA.B $04,X                               ; $839D39 |
  RTS                                       ; $839D3B |

CODE_839D3C:
  REP #$20                                  ; $839D3C |
  LDA.W #$0050                              ; $839D3E |
  STA.B $4C,X                               ; $839D41 |
  LDA.B $35,X                               ; $839D43 |
  ORA.W #$0080                              ; $839D45 |
  STA.B $35,X                               ; $839D48 |
  SEP #$20                                  ; $839D4A |
  JSR.W CODE_FN_839EDA                      ; $839D4C |
  JMP.W CODE_FN_8394AF                      ; $839D4F |

  DEC.B $2C,X                               ; $839D52 |
  BNE CODE_839D6B                           ; $839D54 |
  LDA.B #$02                                ; $839D56 |
  STA.B $67,X                               ; $839D58 |
  STZ.B $66,X                               ; $839D5A |
  JSR.W CODE_FN_839FDA                      ; $839D5C |
  LDA.B $93,X                               ; $839D5F |
  ORA.B #$80                                ; $839D61 |
  STA.B $93,X                               ; $839D63 |
  JSR.W CODE_FN_839EDA                      ; $839D65 |
  JMP.W CODE_FN_8394AF                      ; $839D68 |

CODE_839D6B:
  RTS                                       ; $839D6B |

  REP #$20                                  ; $839D6C |
  LDY.W #$0400                              ; $839D6E |
  CPX.W #$0400                              ; $839D71 |
  BNE CODE_839D79                           ; $839D74 |
  LDY.W #$04C0                              ; $839D76 |

CODE_839D79:
  LDA.W $0092,Y                             ; $839D79 |
  BIT.W #$00C0                              ; $839D7C |
  BNE CODE_839D95                           ; $839D7F |
  LDA.B $96                                 ; $839D81 |
  AND.W #$0030                              ; $839D83 |
  CMP.W #$0030                              ; $839D86 |
  BNE CODE_839D95                           ; $839D89 |
  LDA.B $9A                                 ; $839D8B |
  BIT.W #$0080                              ; $839D8D |
  BEQ CODE_839D95                           ; $839D90 |
  JMP.W CODE_FN_839E23                      ; $839D92 |

CODE_839D95:
  LDA.W #$0620                              ; $839D95 |
  LDY.W #$04C0                              ; $839D98 |
  CPX.W #$0400                              ; $839D9B |
  BEQ CODE_839DA6                           ; $839D9E |
  LDA.W #$08F0                              ; $839DA0 |
  LDY.W #$0400                              ; $839DA3 |

CODE_839DA6:
  STA.B $20                                 ; $839DA6 |
  LDA.W $0009,Y                             ; $839DA8 |
  STA.B $09,X                               ; $839DAB |
  LDA.W $000D,Y                             ; $839DAD |
  STA.B $0D,X                               ; $839DB0 |
  LDA.W $0004,Y                             ; $839DB2 |
  AND.W #$DFDF                              ; $839DB5 |
  STA.B $04,X                               ; $839DB8 |
  LDA.B $02,X                               ; $839DBA |
  ORA.W #$0080                              ; $839DBC |
  STA.B $02,X                               ; $839DBF |
  LDA.B $5A,X                               ; $839DC1 |
  CLC                                       ; $839DC3 |
  ADC.W #$0008                              ; $839DC4 |
  AND.W #$01FF                              ; $839DC7 |
  STA.B $5A,X                               ; $839DCA |
  LDY.W #$0010                              ; $839DCC |
  JSL.L CODE_FL_8AB51A                      ; $839DCF |
  LDA.B $5A,X                               ; $839DD3 |
  CMP.W #$0100                              ; $839DD5 |
  BCC CODE_839DDF                           ; $839DD8 |
  LDA.W #$002C                              ; $839DDA |
  BRA CODE_839DE2                           ; $839DDD |

CODE_839DDF:
  LDA.W #$004C                              ; $839DDF |

CODE_839DE2:
  STA.B $14,X                               ; $839DE2 |
  STX.B $22                                 ; $839DE4 |
  LDA.B $05                                 ; $839DE6 |
  BMI CODE_839DF2                           ; $839DE8 |
  LSR.B $05                                 ; $839DEA |
  LSR.B $05                                 ; $839DEC |
  LSR.B $05                                 ; $839DEE |
  BRA CODE_839DFB                           ; $839DF0 |

CODE_839DF2:
  SEC                                       ; $839DF2 |
  ROR.B $05                                 ; $839DF3 |
  SEC                                       ; $839DF5 |
  ROR.B $05                                 ; $839DF6 |
  SEC                                       ; $839DF8 |
  ROR.B $05                                 ; $839DF9 |

CODE_839DFB:
  LDX.B $22                                 ; $839DFB |
  LDY.B $20                                 ; $839DFD |
  LDA.B $09,X                               ; $839DFF |
  CLC                                       ; $839E01 |
  ADC.B $01                                 ; $839E02 |
  STA.W $0009,Y                             ; $839E04 |
  LDA.B $0D,X                               ; $839E07 |
  CLC                                       ; $839E09 |
  ADC.B $05                                 ; $839E0A |
  SEC                                       ; $839E0C |
  SBC.W #$0008                              ; $839E0D |
  STA.W $000D,Y                             ; $839E10 |
  LDA.B $04,X                               ; $839E13 |
  AND.W #$DFDF                              ; $839E15 |
  STA.W $0004,Y                             ; $839E18 |
  LDA.B $14,X                               ; $839E1B |
  STA.W $0014,Y                             ; $839E1D |
  SEP #$20                                  ; $839E20 |
  RTS                                       ; $839E22 |

CODE_FN_839E23:
  JSL.L CODE_FL_83CBC9                      ; $839E23 |

CODE_FN_839E27:
  SEP #$20                                  ; $839E27 |
  JSL.L CODE_FL_83CD69                      ; $839E29 |
  REP #$20                                  ; $839E2D |
  LDA.W #$FBFF                              ; $839E2F |
  STA.B $3A,X                               ; $839E32 |
  LDA.W #$0050                              ; $839E34 |
  STA.B $4C,X                               ; $839E37 |
  LDA.B $02,X                               ; $839E39 |
  AND.W #$FF7F                              ; $839E3B |
  STA.B $02,X                               ; $839E3E |
  LDA.W #$0040                              ; $839E40 |
  CPX.W #$0400                              ; $839E43 |
  BEQ CODE_839E4B                           ; $839E46 |
  LDA.W #$0048                              ; $839E48 |

CODE_839E4B:
  STA.B $14,X                               ; $839E4B |
  LDY.W #$04C0                              ; $839E4D |
  CPX.W #$0400                              ; $839E50 |
  BEQ CODE_839E58                           ; $839E53 |
  LDY.W #$0400                              ; $839E55 |

CODE_839E58:
  LDA.W $0009,Y                             ; $839E58 |
  STA.B $09,X                               ; $839E5B |
  LDA.W $000D,Y                             ; $839E5D |
  STA.B $0D,X                               ; $839E60 |
  JSL.L CODE_FL_83CBB6                      ; $839E62 |
  SEP #$20                                  ; $839E66 |
  LDA.B #$C0                                ; $839E68 |
  STA.B $35,X                               ; $839E6A |
  LDA.W $0092,Y                             ; $839E6C |
  BIT.B #$04                                ; $839E6F |
  BNE CODE_839E76                           ; $839E71 |
  JMP.W CODE_FN_839EDA                      ; $839E73 |

CODE_839E76:
  JMP.W CODE_FN_83A123                      ; $839E76 |

  LDA.B $97                                 ; $839E79 |
  BIT.B #$03                                ; $839E7B |
  BEQ CODE_839E82                           ; $839E7D |
  JSR.W CODE_FN_83A0A4                      ; $839E7F |

CODE_839E82:
  REP #$20                                  ; $839E82 |
  LDA.B $96                                 ; $839E84 |
  STA.B $98,X                               ; $839E86 |
  LDA.B $9A                                 ; $839E88 |
  STA.B $9A,X                               ; $839E8A |
  SEP #$20                                  ; $839E8C |
  LDA.B $48,X                               ; $839E8E |
  BNE CODE_839E97                           ; $839E90 |
  STZ.B $96,X                               ; $839E92 |
  JMP.W CODE_JP_83A188                      ; $839E94 |

CODE_839E97:
  LDA.B $9B                                 ; $839E97 |
  BIT.B #$80                                ; $839E99 |
  BEQ CODE_839EA8                           ; $839E9B |
  LDA.B $97                                 ; $839E9D |
  BIT.B #$08                                ; $839E9F |
  BEQ CODE_839EA8                           ; $839EA1 |
  STZ.B $96,X                               ; $839EA3 |
  JMP.W CODE_FN_83A130                      ; $839EA5 |

CODE_839EA8:
  RTS                                       ; $839EA8 |

  LDA.B $97                                 ; $839EA9 |
  BIT.B #$03                                ; $839EAB |
  BNE CODE_839E82                           ; $839EAD |
  JSR.W CODE_FN_83A092                      ; $839EAF |
  BRA CODE_839E82                           ; $839EB2 |

  LDA.B $97                                 ; $839EB4 |
  BIT.B #$03                                ; $839EB6 |
  BEQ CODE_839E82                           ; $839EB8 |
  JSR.W CODE_FN_83A09C                      ; $839EBA |
  BRA CODE_839E82                           ; $839EBD |

  JSR.W CODE_FN_839570                      ; $839EBF |
  LDA.B $97                                 ; $839EC2 |
  BIT.B #$03                                ; $839EC4 |
  BNE CODE_839E82                           ; $839EC6 |
  JSR.W CODE_FN_83A097                      ; $839EC8 |
  BRA CODE_839E82                           ; $839ECB |

CODE_FN_839ECD:
  LDA.B #$00                                ; $839ECD |
  JMP.W CODE_FN_83891C                      ; $839ECF |

CODE_FL_839ED2:
  SEP #$20                                  ; $839ED2 |
  JSR.W CODE_FN_839EDA                      ; $839ED4 |
  REP #$20                                  ; $839ED7 |
  RTL                                       ; $839ED9 |

CODE_FN_839EDA:
  LDA.B #$00                                ; $839EDA |
  JMP.W CODE_FN_838948                      ; $839EDC |

CODE_FN_839EDF:
  LDA.B #$1B                                ; $839EDF |
  JMP.W CODE_FN_83891C                      ; $839EE1 |

CODE_JP_839EE4:
  LDA.B $18,X                               ; $839EE4 |
  CMP.B #$01                                ; $839EE6 |
  BNE CODE_839EED                           ; $839EE8 |
  JMP.W CODE_JP_839FA2                      ; $839EEA |

CODE_839EED:
  CMP.B #$04                                ; $839EED |
  BEQ CODE_FN_839F03                        ; $839EEF |
  CMP.B #$03                                ; $839EF1 |
  BNE CODE_839EF8                           ; $839EF3 |
  JMP.W CODE_JP_839F8C                      ; $839EF5 |

CODE_839EF8:
  JSL.L CODE_FL_83CBC9                      ; $839EF8 |
  LDA.B #$10                                ; $839EFC |
  STA.B $2C,X                               ; $839EFE |
  JMP.W CODE_FN_83A684                      ; $839F00 |

CODE_FN_839F03:
  LDA.B $22,X                               ; $839F03 |
  CMP.B #$1B                                ; $839F05 |
  BEQ CODE_839F2E                           ; $839F07 |

CODE_JP_839F09:
  LDA.B #$30                                ; $839F09 |
  STA.B $2C,X                               ; $839F0B |
  REP #$20                                  ; $839F0D |
  STZ.B $26,X                               ; $839F0F |
  STZ.B $28,X                               ; $839F11 |
  STZ.B $4A,X                               ; $839F13 |
  LDA.W #$0050                              ; $839F15 |
  STA.B $4C,X                               ; $839F18 |
  SEP #$20                                  ; $839F1A |
  LDA.B $3B,X                               ; $839F1C |
  AND.B #$FB                                ; $839F1E |
  STA.B $3B,X                               ; $839F20 |
  JSL.L CODE_FL_83CBC9                      ; $839F22 |
  JSR.W CODE_FN_839F54                      ; $839F26 |
  LDA.B #$1C                                ; $839F29 |
  JMP.W CODE_FN_838948                      ; $839F2B |

CODE_839F2E:
  STZ.B $4C,X                               ; $839F2E |
  STZ.B $4D,X                               ; $839F30 |
  LDA.B $35,X                               ; $839F32 |
  ORA.B #$08                                ; $839F34 |
  STA.B $35,X                               ; $839F36 |
  LDY.W #$0006                              ; $839F38 |
  LDA.B $04,X                               ; $839F3B |
  BIT.B #$20                                ; $839F3D |
  BNE CODE_839F44                           ; $839F3F |
  LDY.W #$0002                              ; $839F41 |

CODE_839F44:
  STY.B $94,X                               ; $839F44 |
  JSR.W CODE_FN_839F54                      ; $839F46 |

CODE_FN_839F49:
  LDA.B $3B,X                               ; $839F49 |
  ORA.B #$04                                ; $839F4B |
  STA.B $3B,X                               ; $839F4D |
  LDA.B #$21                                ; $839F4F |
  JMP.W CODE_FN_83891C                      ; $839F51 |

CODE_FN_839F54:
  REP #$20                                  ; $839F54 |
  JSL.L CODE_FL_83CBC9                      ; $839F56 |

CODE_FN_839F5A:
  REP #$20                                  ; $839F5A |
  PHX                                       ; $839F5C |
  CPX.W #$0400                              ; $839F5D |
  BNE CODE_839F74                           ; $839F60 |
  LDX.W #$1F40                              ; $839F62 |
  LDA.W $046E                               ; $839F65 |
  BNE CODE_839F6F                           ; $839F68 |
  LDY.W #$B795                              ; $839F6A |
  BRA CODE_839F84                           ; $839F6D |

CODE_839F6F:
  LDY.W #$B7A3                              ; $839F6F |
  BRA CODE_839F84                           ; $839F72 |

CODE_839F74:
  LDX.W #$1F50                              ; $839F74 |
  LDA.W $052E                               ; $839F77 |
  BNE CODE_839F81                           ; $839F7A |
  LDY.W #$B79C                              ; $839F7C |
  BRA CODE_839F84                           ; $839F7F |

CODE_839F81:
  LDY.W #$B7AA                              ; $839F81 |

CODE_839F84:
  JSL.L CODE_FL_80C27F                      ; $839F84 |
  PLX                                       ; $839F88 |
  SEP #$20                                  ; $839F89 |
  RTS                                       ; $839F8B |

CODE_JP_839F8C:
  REP #$20                                  ; $839F8C |
  LDA.W #$0040                              ; $839F8E |
  JSL.L CODE_FL_8089BD                      ; $839F91 |
  SEP #$20                                  ; $839F95 |
  LDA.B $35,X                               ; $839F97 |
  AND.B #$7F                                ; $839F99 |
  STA.B $35,X                               ; $839F9B |
  LDA.B #$10                                ; $839F9D |
  JMP.W CODE_FN_83891C                      ; $839F9F |

CODE_JP_839FA2:
  JSR.W CODE_FN_839FBC                      ; $839FA2 |
  REP #$20                                  ; $839FA5 |
  LDA.W #$0040                              ; $839FA7 |
  JSL.L push_sound_queue                    ; $839FAA |
  SEP #$20                                  ; $839FAE |
  LDA.B #$30                                ; $839FB0 |
  STA.B $2C,X                               ; $839FB2 |
  STZ.B $34,X                               ; $839FB4 |
  LDA.B #$10                                ; $839FB6 |
  JMP.W CODE_FN_838948                      ; $839FB8 |

  RTS                                       ; $839FBB |

CODE_FN_839FBC:
  REP #$20                                  ; $839FBC |
  PHX                                       ; $839FBE |
  CPX.W #$0400                              ; $839FBF |
  BNE CODE_839FCC                           ; $839FC2 |
  LDX.W #$1F40                              ; $839FC4 |
  LDY.W #$B76B                              ; $839FC7 |
  BRA CODE_839FD2                           ; $839FCA |

CODE_839FCC:
  LDX.W #$1F50                              ; $839FCC |
  LDY.W #$B772                              ; $839FCF |

CODE_839FD2:
  JSL.L CODE_FL_80C27F                      ; $839FD2 |
  PLX                                       ; $839FD6 |
  SEP #$20                                  ; $839FD7 |
  RTS                                       ; $839FD9 |

CODE_FN_839FDA:
  REP #$20                                  ; $839FDA |
  PHX                                       ; $839FDC |
  CPX.W #$0400                              ; $839FDD |
  BNE CODE_839FF4                           ; $839FE0 |
  LDX.W #$1F40                              ; $839FE2 |
  LDA.W $046E                               ; $839FE5 |
  BNE CODE_839FEF                           ; $839FE8 |
  LDY.W #$B779                              ; $839FEA |
  BRA CODE_83A004                           ; $839FED |

CODE_839FEF:
  LDY.W #$B787                              ; $839FEF |
  BRA CODE_83A004                           ; $839FF2 |

CODE_839FF4:
  LDX.W #$1F50                              ; $839FF4 |
  LDA.W $052E                               ; $839FF7 |
  BNE CODE_83A001                           ; $839FFA |
  LDY.W #$B780                              ; $839FFC |
  BRA CODE_83A004                           ; $839FFF |

CODE_83A001:
  LDY.W #$B78E                              ; $83A001 |

CODE_83A004:
  JSL.L CODE_FL_80C27F                      ; $83A004 |
  PLX                                       ; $83A008 |
  SEP #$20                                  ; $83A009 |
  RTS                                       ; $83A00B |

CODE_JP_83A00C:
  LDA.B $97                                 ; $83A00C |
  AND.B #$0C                                ; $83A00E |
  BNE CODE_FN_83A01F                        ; $83A010 |

CODE_FN_83A012:
  STZ.B $4C,X                               ; $83A012 |
  STZ.B $4D,X                               ; $83A014 |
  STZ.B $28,X                               ; $83A016 |
  STZ.B $29,X                               ; $83A018 |
  LDA.B #$22                                ; $83A01A |
  JMP.W CODE_FN_83891C                      ; $83A01C |

CODE_FN_83A01F:
  STZ.B $4C,X                               ; $83A01F |
  STZ.B $4D,X                               ; $83A021 |
  JSR.W CODE_FN_8399E3                      ; $83A023 |
  LDA.B #$23                                ; $83A026 |
  JMP.W CODE_FN_83891C                      ; $83A028 |

CODE_JP_83A02B:
  LDA.W $1672                               ; $83A02B |
  CLC                                       ; $83A02E |
  ADC.B $0D,X                               ; $83A02F |
  AND.B #$0F                                ; $83A031 |
  EOR.B #$FF                                ; $83A033 |
  INC A                                     ; $83A035 |
  STA.B $7B,X                               ; $83A036 |
  STZ.B $7A,X                               ; $83A038 |
  STZ.B $29,X                               ; $83A03A |
  STZ.B $28,X                               ; $83A03C |
  LDA.B #$24                                ; $83A03E |
  JMP.W CODE_FN_83891C                      ; $83A040 |

CODE_FN_83A043:
  REP #$20                                  ; $83A043 |
  LDA.B $09,X                               ; $83A045 |
  CLC                                       ; $83A047 |
  ADC.W $1662                               ; $83A048 |
  AND.W #$000F                              ; $83A04B |
  SEC                                       ; $83A04E |
  SBC.W #$0002                              ; $83A04F |
  BCC CODE_83A08E                           ; $83A052 |
  CMP.W #$0011                              ; $83A054 |
  BCS CODE_83A08E                           ; $83A057 |
  SEC                                       ; $83A059 |
  SBC.W #$0008                              ; $83A05A |
  STZ.B $78,X                               ; $83A05D |
  SEP #$20                                  ; $83A05F |
  EOR.B #$FF                                ; $83A061 |
  INC A                                     ; $83A063 |
  STA.B $27,X                               ; $83A064 |
  STZ.B $26,X                               ; $83A066 |
  REP #$20                                  ; $83A068 |
  LDA.B $09,X                               ; $83A06A |
  STA.B $08                                 ; $83A06C |
  LDA.B $0D,X                               ; $83A06E |
  SEC                                       ; $83A070 |
  SBC.W #$0004                              ; $83A071 |
  STA.B $0A                                 ; $83A074 |
  JSL.L CODE_FL_80CA7D                      ; $83A076 |
  AND.W #$007F                              ; $83A07A |
  CMP.W #$0006                              ; $83A07D |
  SEP #$20                                  ; $83A080 |
  BNE CODE_83A087                           ; $83A082 |
  JMP.W CODE_JP_83A00C                      ; $83A084 |

CODE_83A087:
  LDA.B #$25                                ; $83A087 |
  JSR.W CODE_FN_83891C                      ; $83A089 |
  SEC                                       ; $83A08C |
  RTS                                       ; $83A08D |

CODE_83A08E:
  SEP #$20                                  ; $83A08E |
  CLC                                       ; $83A090 |
  RTS                                       ; $83A091 |

CODE_FN_83A092:
  LDA.B #$16                                ; $83A092 |
  JMP.W CODE_FN_83891C                      ; $83A094 |

CODE_FN_83A097:
  LDA.B #$17                                ; $83A097 |
  JMP.W CODE_FN_83891C                      ; $83A099 |

CODE_FN_83A09C:
  JSR.W CODE_FN_839570                      ; $83A09C |
  LDA.B #$18                                ; $83A09F |
  JMP.W CODE_FN_83891C                      ; $83A0A1 |

CODE_FN_83A0A4:
  LDA.B #$19                                ; $83A0A4 |
  JMP.W CODE_FN_83891C                      ; $83A0A6 |

CODE_83A0A9:
  LDA.B #$1A                                ; $83A0A9 |
  JMP.W CODE_FN_83891C                      ; $83A0AB |

  PHB                                       ; $83A0AE |
  PEA.W $8181                               ; $83A0AF |
  PLB                                       ; $83A0B2 |
  PLB                                       ; $83A0B3 |
  SEP #$20                                  ; $83A0B4 |
  LDA.B $92,X                               ; $83A0B6 |
  BIT.B #$00                                ; $83A0B8 |
  BEQ CODE_83A0BF                           ; $83A0BA |
  JSR.W CODE_FN_839E23                      ; $83A0BC |

CODE_83A0BF:
  LDA.B $35,X                               ; $83A0BF |
  AND.B #$7F                                ; $83A0C1 |
  STA.B $35,X                               ; $83A0C3 |
  LDA.B #$1F                                ; $83A0C5 |
  JSR.W CODE_FN_83891C                      ; $83A0C7 |
  REP #$20                                  ; $83A0CA |
  STZ.B $2C,X                               ; $83A0CC |
  PLB                                       ; $83A0CE |
  RTL                                       ; $83A0CF |

CODE_FN_83A0D0:
  LDA.B $96,X                               ; $83A0D0 |
  BEQ CODE_83A0DE                           ; $83A0D2 |
  CMP.B #$01                                ; $83A0D4 |
  BEQ CODE_FN_83A09C                        ; $83A0D6 |
  CMP.B #$02                                ; $83A0D8 |
  BEQ CODE_FN_83A092                        ; $83A0DA |
  BRA CODE_83A0A9                           ; $83A0DC |

CODE_83A0DE:
  LDA.B $97                                 ; $83A0DE |
  BIT.B #$04                                ; $83A0E0 |
  BNE CODE_FN_83A0F9                        ; $83A0E2 |

CODE_FN_83A0E4:
  LDA.B $04,X                               ; $83A0E4 |
  STA.B $18                                 ; $83A0E6 |
  JSR.W CODE_FN_839570                      ; $83A0E8 |
  LDA.B #$01                                ; $83A0EB |
  JSR.W CODE_FN_83891C                      ; $83A0ED |
  LDA.B $18                                 ; $83A0F0 |
  CMP.B $04,X                               ; $83A0F2 |
  BNE CODE_83A0F8                           ; $83A0F4 |
  STZ.B $1E,X                               ; $83A0F6 |

CODE_83A0F8:
  RTS                                       ; $83A0F8 |

CODE_FN_83A0F9:
  LDA.B $92,X                               ; $83A0F9 |
  BIT.B #$20                                ; $83A0FB |
  BNE CODE_83A107                           ; $83A0FD |
  LDA.B $33,X                               ; $83A0FF |
  BIT.B #$08                                ; $83A101 |
  BEQ CODE_83A112                           ; $83A103 |
  BRA CODE_83A10D                           ; $83A105 |

CODE_83A107:
  LDA.B $33,X                               ; $83A107 |
  BIT.B #$02                                ; $83A109 |
  BEQ CODE_83A112                           ; $83A10B |

CODE_83A10D:
  LDA.B #$27                                ; $83A10D |
  JMP.W CODE_FN_838948                      ; $83A10F |

CODE_83A112:
  LDA.B $48,X                               ; $83A112 |
  CMP.B #$06                                ; $83A114 |
  BNE CODE_83A11D                           ; $83A116 |
  JSR.W CODE_FN_83A043                      ; $83A118 |
  BCS CODE_83A0F8                           ; $83A11B |

CODE_83A11D:
  LDA.B $97                                 ; $83A11D |
  BIT.B #$03                                ; $83A11F |
  BNE CODE_JP_83A128                        ; $83A121 |

CODE_FN_83A123:
  LDA.B #$05                                ; $83A123 |
  JMP.W CODE_FN_838948                      ; $83A125 |

CODE_JP_83A128:
  JSR.W CODE_FN_839572                      ; $83A128 |
  LDA.B #$06                                ; $83A12B |
  JMP.W CODE_FN_83891C                      ; $83A12D |

CODE_FN_83A130:
  LDA.B $18,X                               ; $83A130 |
  CMP.B #$04                                ; $83A132 |
  BNE CODE_83A13F                           ; $83A134 |
  LDA.B $97                                 ; $83A136 |
  BIT.B #$40                                ; $83A138 |
  BEQ CODE_83A13F                           ; $83A13A |
  JMP.W CODE_JP_83AA11                      ; $83A13C |

CODE_83A13F:
  LDA.B $97                                 ; $83A13F |
  BIT.B #$04                                ; $83A141 |
  BEQ CODE_JP_83A151                        ; $83A143 |

CODE_JP_83A145:
  REP #$20                                  ; $83A145 |
  LDY.B $48,X                               ; $83A147 |
  LDA.W CODE_00EEFA,Y                       ; $83A149 |
  BIT.W #$0002                              ; $83A14C |
  BNE CODE_83A182                           ; $83A14F |

CODE_JP_83A151:
  REP #$20                                  ; $83A151 |
  LDY.B $18,X                               ; $83A153 |
  LDA.W CODE_00EB2B,Y                       ; $83A155 |
  AND.W #$00FF                              ; $83A158 |
  JSL.L push_sound_queue                    ; $83A15B |
  JSR.W CODE_FN_83A30B                      ; $83A15F |
  LDA.B $97                                 ; $83A162 |
  AND.B #$03                                ; $83A164 |
  BNE CODE_83A171                           ; $83A166 |
  LDA.B #$08                                ; $83A168 |
  STA.B $9C,X                               ; $83A16A |
  LDA.B #$02                                ; $83A16C |
  JMP.W CODE_FN_83891C                      ; $83A16E |

CODE_83A171:
  JSR.W CODE_FN_839570                      ; $83A171 |
  LDA.B #$0A                                ; $83A174 |
  STA.B $9C,X                               ; $83A176 |
  LDA.B #$03                                ; $83A178 |
  JMP.W CODE_FN_83891C                      ; $83A17A |

CODE_FN_83A17D:
  LDA.B #$28                                ; $83A17D |
  JMP.W CODE_FN_83891C                      ; $83A17F |

CODE_83A182:
  SEP #$20                                  ; $83A182 |
  STA.B $AE,X                               ; $83A184 |
  STA.B $8A,X                               ; $83A186 |

CODE_JP_83A188:
  JSR.W CODE_FN_839570                      ; $83A188 |
  LDA.B #$04                                ; $83A18B |
  JMP.W CODE_FN_83891C                      ; $83A18D |

CODE_JP_83A190:
  REP #$20                                  ; $83A190 |
  LDA.W #$0003                              ; $83A192 |
  JSL.L push_sound_queue                    ; $83A195 |
  SEP #$20                                  ; $83A199 |
  JSR.W CODE_FN_8385C7                      ; $83A19B |
  LDA.B #$29                                ; $83A19E |
  JMP.W CODE_FN_838948                      ; $83A1A0 |

CODE_FN_83A1A3:
  LDA.B #$2A                                ; $83A1A3 |
  JMP.W CODE_FN_838948                      ; $83A1A5 |

CODE_FN_83A1A8:
  JSR.W CODE_FN_839570                      ; $83A1A8 |
  LDA.B #$2B                                ; $83A1AB |
  JMP.W CODE_FN_83891C                      ; $83A1AD |

CODE_FN_83A1B0:
  LDA.B $20                                 ; $83A1B0 |
  BIT.B #$03                                ; $83A1B2 |
  BNE CODE_83A1D0                           ; $83A1B4 |
  REP #$20                                  ; $83A1B6 |
  LDY.B $18,X                               ; $83A1B8 |
  LDA.W CODE_00EB2B,Y                       ; $83A1BA |
  AND.W #$00FF                              ; $83A1BD |
  JSL.L push_sound_queue                    ; $83A1C0 |
  JSR.W CODE_FN_83A2FD                      ; $83A1C4 |
  LDA.B #$08                                ; $83A1C7 |
  STA.B $9C,X                               ; $83A1C9 |
  LDA.B #$2C                                ; $83A1CB |
  JMP.W CODE_FN_83891C                      ; $83A1CD |

CODE_83A1D0:
  RTS                                       ; $83A1D0 |

CODE_FN_83A1D1:
  LDA.B #$2D                                ; $83A1D1 |
  JMP.W CODE_FN_83891C                      ; $83A1D3 |

CODE_FN_83A1D6:
  LDA.B $20                                 ; $83A1D6 |
  BIT.B #$03                                ; $83A1D8 |
  BNE CODE_83A1D0                           ; $83A1DA |
  LDA.B #$1C                                ; $83A1DC |
  JSL.L push_sound_queue                    ; $83A1DE |
  LDA.B #$2E                                ; $83A1E2 |
  JMP.W CODE_FN_838948                      ; $83A1E4 |

CODE_FN_83A1E7:
  LDA.B $20                                 ; $83A1E7 |
  BIT.B #$03                                ; $83A1E9 |
  BNE CODE_83A1D0                           ; $83A1EB |
  LDA.B #$2F                                ; $83A1ED |
  JMP.W CODE_FN_83891C                      ; $83A1EF |

CODE_FL_83A1F2:
  PHX                                       ; $83A1F2 |
  PHY                                       ; $83A1F3 |
  TYX                                       ; $83A1F4 |
  PHB                                       ; $83A1F5 |
  PEA.W $8181                               ; $83A1F6 |
  PLB                                       ; $83A1F9 |
  PLB                                       ; $83A1FA |
  SEP #$20                                  ; $83A1FB |
  LDA.B #$01                                ; $83A1FD |
  STA.B $E4                                 ; $83A1FF |
  STZ.B $26,X                               ; $83A201 |
  STZ.B $27,X                               ; $83A203 |
  STZ.B $28,X                               ; $83A205 |
  STZ.B $29,X                               ; $83A207 |
  JSL.L CODE_FL_83CE22                      ; $83A209 |
  LDA.B $92,X                               ; $83A20D |
  BIT.B #$DA                                ; $83A20F |
  BNE CODE_83A221                           ; $83A211 |
  BIT.B #$20                                ; $83A213 |
  BEQ CODE_83A21C                           ; $83A215 |
  JSR.W CODE_FN_83B075                      ; $83A217 |
  BRA CODE_83A221                           ; $83A21A |

CODE_83A21C:
  LDA.B #$15                                ; $83A21C |
  JSR.W CODE_FN_838948                      ; $83A21E |

CODE_83A221:
  REP #$20                                  ; $83A221 |
  PLB                                       ; $83A223 |
  PLY                                       ; $83A224 |
  PLX                                       ; $83A225 |
  LDA.W $0009,Y                             ; $83A226 |
  STA.B $09,X                               ; $83A229 |
  LDA.W $000D,Y                             ; $83A22B |
  SEC                                       ; $83A22E |
  SBC.W $0030,Y                             ; $83A22F |
  STA.B $0D,X                               ; $83A232 |
  LDA.W $0014,Y                             ; $83A234 |
  DEC A                                     ; $83A237 |
  DEC A                                     ; $83A238 |
  STA.B $14,X                               ; $83A239 |
  SEC                                       ; $83A23B |
  RTL                                       ; $83A23C |

  CLC                                       ; $83A23D |
  RTL                                       ; $83A23E |

CODE_FL_83A23F:
  PHX                                       ; $83A23F |
  PHY                                       ; $83A240 |
  TYX                                       ; $83A241 |
  PHB                                       ; $83A242 |
  PEA.W $8181                               ; $83A243 |
  PLB                                       ; $83A246 |
  PLB                                       ; $83A247 |
  SEP #$20                                  ; $83A248 |
  STZ.B $E4                                 ; $83A24A |
  LDA.B $92,X                               ; $83A24C |
  BIT.B #$20                                ; $83A24E |
  BEQ CODE_83A257                           ; $83A250 |
  JSR.W CODE_FN_83B094                      ; $83A252 |
  BRA CODE_83A25A                           ; $83A255 |

CODE_83A257:
  JSR.W CODE_FN_839EDA                      ; $83A257 |

CODE_83A25A:
  REP #$20                                  ; $83A25A |
  PLB                                       ; $83A25C |
  PLY                                       ; $83A25D |
  PLX                                       ; $83A25E |
  RTL                                       ; $83A25F |

CODE_FN_83A260:
  JSR.W CODE_FN_83CF40                      ; $83A260 |
  JSR.W CODE_FN_8392BC                      ; $83A263 |
  LDA.B #$18                                ; $83A266 |
  STA.B $2C,X                               ; $83A268 |
  LDA.B #$80                                ; $83A26A |
  STA.B $35,X                               ; $83A26C |
  REP #$20                                  ; $83A26E |
  STZ.B $14,X                               ; $83A270 |
  LDA.W #$FBB2                              ; $83A272 |
  STA.B $3A,X                               ; $83A275 |
  STZ.B $26,X                               ; $83A277 |
  STZ.B $28,X                               ; $83A279 |
  STZ.B $2A,X                               ; $83A27B |
  SEP #$20                                  ; $83A27D |
  LDA.B #$14                                ; $83A27F |
  JMP.W CODE_FN_838948                      ; $83A281 |

  LDA.W #$0080                              ; $83A284 |
  STA.B $2C,X                               ; $83A287 |
  JSR.W CODE_FN_83CFE4                      ; $83A289 |
  RTL                                       ; $83A28C |

  LDA.W #$007F                              ; $83A28D |
  JSR.W CODE_FN_83CFE4                      ; $83A290 |
  SEP #$20                                  ; $83A293 |
  LDA.B #$04                                ; $83A295 |
  JSR.W CODE_FN_83891C                      ; $83A297 |
  REP #$20                                  ; $83A29A |
  RTL                                       ; $83A29C |

CODE_FN_83A29D:
  JSL.L CODE_FL_83CBC9                      ; $83A29D |
  REP #$20                                  ; $83A2A1 |
  LDA.W #$002C                              ; $83A2A3 |
  STA.B $14,X                               ; $83A2A6 |
  BRA CODE_83A2B1                           ; $83A2A8 |

CODE_FN_83A2AA:
  REP #$20                                  ; $83A2AA |
  LDA.W #$002C                              ; $83A2AC |
  STA.B $14,X                               ; $83A2AF |

CODE_83A2B1:
  STZ.B $66,X                               ; $83A2B1 |
  STZ.B $4C,X                               ; $83A2B3 |
  JSL.L CODE_FL_83CB78                      ; $83A2B5 |
  SEP #$20                                  ; $83A2B9 |
  JSL.L CODE_FL_83C08C                      ; $83A2BB |
  LDA.B $9A                                 ; $83A2BF |
  AND.B #$7F                                ; $83A2C1 |
  STA.B $9A                                 ; $83A2C3 |
  LDA.B #$20                                ; $83A2C5 |
  STA.B $35,X                               ; $83A2C7 |
  LDA.B #$44                                ; $83A2C9 |
  JMP.W CODE_FN_83891C                      ; $83A2CB |

CODE_FN_83A2CE:
  REP #$20                                  ; $83A2CE |
  LDA.B $96                                 ; $83A2D0 |
  AND.W #$0030                              ; $83A2D2 |
  CMP.W #$0030                              ; $83A2D5 |
  SEP #$20                                  ; $83A2D8 |
  BNE CODE_83A2FB                           ; $83A2DA |
  LDA.B $9A                                 ; $83A2DC |
  BIT.B #$80                                ; $83A2DE |
  BEQ CODE_83A2FB                           ; $83A2E0 |
  LDY.W #$04C0                              ; $83A2E2 |
  CPX.W #$0400                              ; $83A2E5 |
  BEQ CODE_83A2ED                           ; $83A2E8 |
  LDY.W #$0400                              ; $83A2EA |

CODE_83A2ED:
  LDA.W $0018,Y                             ; $83A2ED |
  BEQ CODE_83A2FB                           ; $83A2F0 |
  LDA.W $0092,Y                             ; $83A2F2 |
  BIT.B #$D0                                ; $83A2F5 |
  BNE CODE_83A2FB                           ; $83A2F7 |
  SEC                                       ; $83A2F9 |
  RTS                                       ; $83A2FA |

CODE_83A2FB:
  CLC                                       ; $83A2FB |
  RTS                                       ; $83A2FC |

CODE_FN_83A2FD:
  REP #$20                                  ; $83A2FD |
  LDA.B $18,X                               ; $83A2FF |
  ASL A                                     ; $83A301 |
  TAY                                       ; $83A302 |
  LDA.W CODE_00EB1E,Y                       ; $83A303 |
  STA.B $28,X                               ; $83A306 |
  SEP #$20                                  ; $83A308 |
  RTS                                       ; $83A30A |

CODE_FN_83A30B:
  REP #$20                                  ; $83A30B |
  LDA.B $18,X                               ; $83A30D |
  ASL A                                     ; $83A30F |
  TAY                                       ; $83A310 |
  LDA.W LOOSE_OP_00EB16,Y                   ; $83A311 |
  STA.B $28,X                               ; $83A314 |

CODE_FN_83A316:
  SEP #$20                                  ; $83A316 |
  RTS                                       ; $83A318 |

CODE_FN_83A319:
  LDA.W $19B2                               ; $83A319 |
  BEQ CODE_FN_83A343                        ; $83A31C |
  REP #$20                                  ; $83A31E |
  LDA.B $09,X                               ; $83A320 |
  STA.B $08                                 ; $83A322 |
  LDA.B $0D,X                               ; $83A324 |
  SEC                                       ; $83A326 |
  SBC.W #$0010                              ; $83A327 |
  STA.B $0A                                 ; $83A32A |
  JSL.L CODE_FL_80CA7D                      ; $83A32C |
  SEP #$20                                  ; $83A330 |
  AND.B #$7F                                ; $83A332 |
  CMP.B #$02                                ; $83A334 |
  BEQ CODE_83A33C                           ; $83A336 |
  CMP.B #$01                                ; $83A338 |
  BNE CODE_FN_83A343                        ; $83A33A |

CODE_83A33C:
  LDA.B #$26                                ; $83A33C |
  JSR.W CODE_FN_838948                      ; $83A33E |
  SEC                                       ; $83A341 |
  RTS                                       ; $83A342 |

CODE_FN_83A343:
  REP #$20                                  ; $83A343 |
  LDA.B $09,X                               ; $83A345 |
  STA.B $08                                 ; $83A347 |
  LDA.B $0D,X                               ; $83A349 |
  SEC                                       ; $83A34B |
  SBC.W #$0004                              ; $83A34C |
  STA.B $0A                                 ; $83A34F |
  JSL.L CODE_FL_80CA7D                      ; $83A351 |
  AND.W #$007F                              ; $83A355 |
  CMP.W #$0006                              ; $83A358 |
  BNE CODE_83A390                           ; $83A35B |
  LDA.B $09,X                               ; $83A35D |
  CLC                                       ; $83A35F |
  ADC.W $1662                               ; $83A360 |
  AND.W #$000F                              ; $83A363 |
  SEC                                       ; $83A366 |
  SBC.W #$0006                              ; $83A367 |
  BCC CODE_83A390                           ; $83A36A |
  CMP.W #$0005                              ; $83A36C |
  BCS CODE_83A390                           ; $83A36F |
  SEC                                       ; $83A371 |
  SBC.W #$0002                              ; $83A372 |
  STZ.B $78,X                               ; $83A375 |
  SEP #$20                                  ; $83A377 |
  EOR.B #$FF                                ; $83A379 |
  INC A                                     ; $83A37B |
  STA.B $27,X                               ; $83A37C |
  STZ.B $26,X                               ; $83A37E |
  LDA.B $97                                 ; $83A380 |
  AND.B #$0C                                ; $83A382 |
  BNE CODE_83A38B                           ; $83A384 |
  JSR.W CODE_FN_83A012                      ; $83A386 |
  SEC                                       ; $83A389 |
  RTS                                       ; $83A38A |

CODE_83A38B:
  JSR.W CODE_FN_83A01F                      ; $83A38B |
  SEC                                       ; $83A38E |
  RTS                                       ; $83A38F |

CODE_83A390:
  SEP #$20                                  ; $83A390 |
  CLC                                       ; $83A392 |
  RTS                                       ; $83A393 |

CODE_FN_83A394:
  REP #$20                                  ; $83A394 |
  JSR.W CODE_FN_838621                      ; $83A396 |
  SEP #$20                                  ; $83A399 |
  LDA.B $22,X                               ; $83A39B |
  CMP.B #$14                                ; $83A39D |
  BEQ CODE_83A3AC                           ; $83A39F |
  JSR.W CODE_FN_8386CC                      ; $83A3A1 |
  JSR.W CODE_FN_838F2D                      ; $83A3A4 |
  BCS CODE_83A3AC                           ; $83A3A7 |
  JSR.W CODE_FN_83879F                      ; $83A3A9 |

CODE_83A3AC:
  LDA.B $22,X                               ; $83A3AC |
  ASL A                                     ; $83A3AE |
  REP #$20                                  ; $83A3AF |
  AND.W #$00FF                              ; $83A3B1 |
  TAY                                       ; $83A3B4 |
  LDA.W LOOSE_OP_00D73C,Y                   ; $83A3B5 |
  PHA                                       ; $83A3B8 |
  SEP #$20                                  ; $83A3B9 |
  RTS                                       ; $83A3BB |

  JSR.W CODE_FN_838576                      ; $83A3BC |
  STZ.B $58,X                               ; $83A3BF |
  LDA.B $97                                 ; $83A3C1 |
  BIT.B #$40                                ; $83A3C3 |
  BEQ CODE_83A3D8                           ; $83A3C5 |
  LDA.B $48,X                               ; $83A3C7 |
  BNE CODE_83A3CE                           ; $83A3C9 |
  JMP.W CODE_JP_83A5A6                      ; $83A3CB |

CODE_83A3CE:
  LDA.B $9B                                 ; $83A3CE |
  BIT.B #$80                                ; $83A3D0 |
  BEQ CODE_83A3D7                           ; $83A3D2 |
  JMP.W CODE_JP_83A584                      ; $83A3D4 |

CODE_83A3D7:
  RTS                                       ; $83A3D7 |

CODE_83A3D8:
  JSR.W CODE_FN_839EDA                      ; $83A3D8 |
  JMP.W CODE_FN_8394AF                      ; $83A3DB |

  STZ.B $58,X                               ; $83A3DE |
  JSR.W CODE_FN_839570                      ; $83A3E0 |
  LDA.B $97                                 ; $83A3E3 |
  BIT.B #$40                                ; $83A3E5 |
  BEQ CODE_83A3D8                           ; $83A3E7 |
  LDA.B $48,X                               ; $83A3E9 |
  BEQ CODE_83A3F0                           ; $83A3EB |
  JMP.W CODE_JP_83A57D                      ; $83A3ED |

CODE_83A3F0:
  LDA.B $29,X                               ; $83A3F0 |
  BMI CODE_83A3F7                           ; $83A3F2 |
  JMP.W CODE_JP_83A5A6                      ; $83A3F4 |

CODE_83A3F7:
  JMP.W CODE_FN_8385EA                      ; $83A3F7 |

  JSR.W CODE_FN_839570                      ; $83A3FA |
  LDA.B $58,X                               ; $83A3FD |
  STA.B $10                                 ; $83A3FF |
  STZ.B $58,X                               ; $83A401 |
  LDA.B $97                                 ; $83A403 |
  BIT.B #$40                                ; $83A405 |
  BEQ CODE_83A3D8                           ; $83A407 |
  LDA.B $48,X                               ; $83A409 |
  BEQ CODE_83A410                           ; $83A40B |
  JMP.W CODE_JP_83A57D                      ; $83A40D |

CODE_83A410:
  LDA.B $10                                 ; $83A410 |
  BNE CODE_83A419                           ; $83A412 |
  JSR.W CODE_FN_83A4AB                      ; $83A414 |
  BCC CODE_83A434                           ; $83A417 |

CODE_83A419:
  LDA.B $97                                 ; $83A419 |
  BIT.B #$80                                ; $83A41B |
  BEQ CODE_83A422                           ; $83A41D |
  JMP.W CODE_JP_83A584                      ; $83A41F |

CODE_83A422:
  LDA.B $2C,X                               ; $83A422 |
  BNE CODE_83A433                           ; $83A424 |
  INC.B $2C,X                               ; $83A426 |
  REP #$20                                  ; $83A428 |
  LDA.W #$009C                              ; $83A42A |
  JSL.L CODE_FL_8089BD                      ; $83A42D |
  SEP #$20                                  ; $83A431 |

CODE_83A433:
  RTS                                       ; $83A433 |

CODE_83A434:
  STZ.B $2C,X                               ; $83A434 |
  RTS                                       ; $83A436 |

  JMP.W CODE_JP_8396A7                      ; $83A437 |

  JSR.W CODE_FN_838576                      ; $83A43A |
  JSR.W CODE_FN_8385EA                      ; $83A43D |
  LDA.B $1E,X                               ; $83A440 |
  CMP.B #$10                                ; $83A442 |
  BCC CODE_83A458                           ; $83A444 |
  LDA.B $48,X                               ; $83A446 |
  BEQ CODE_83A457                           ; $83A448 |
  LDA.B $99                                 ; $83A44A |
  AND.B #$80                                ; $83A44C |
  BEQ CODE_83A457                           ; $83A44E |
  LDA.B #$08                                ; $83A450 |
  STA.B $9C,X                               ; $83A452 |
  JMP.W CODE_FN_83A30B                      ; $83A454 |

CODE_83A457:
  RTS                                       ; $83A457 |

CODE_83A458:
  LDA.B $BA,X                               ; $83A458 |
  CMP.B #$FF                                ; $83A45A |
  BEQ CODE_83A470                           ; $83A45C |
  LDA.B $9B                                 ; $83A45E |
  BIT.B #$40                                ; $83A460 |
  BEQ CODE_83A476                           ; $83A462 |
  LDA.B $5A,X                               ; $83A464 |
  CMP.B #$0A                                ; $83A466 |
  BCS CODE_83A46D                           ; $83A468 |
  JMP.W CODE_JP_83A6CF                      ; $83A46A |

CODE_83A46D:
  JMP.W CODE_JP_83A6D6                      ; $83A46D |

CODE_83A470:
  JSR.W CODE_FN_839EDA                      ; $83A470 |
  JMP.W CODE_FN_8394AF                      ; $83A473 |

CODE_83A476:
  RTS                                       ; $83A476 |

  JSR.W CODE_FN_838576                      ; $83A477 |
  INC.B $2C,X                               ; $83A47A |
  LDA.B $2C,X                               ; $83A47C |
  AND.B #$01                                ; $83A47E |
  BNE CODE_83A48A                           ; $83A480 |
  LDA.B $58,X                               ; $83A482 |
  CMP.B #$50                                ; $83A484 |
  BCS CODE_83A48A                           ; $83A486 |
  INC.B $58,X                               ; $83A488 |

CODE_83A48A:
  LDA.B $BA,X                               ; $83A48A |
  CMP.B #$FF                                ; $83A48C |
  BNE CODE_83A49C                           ; $83A48E |
  LDA.B $5A,X                               ; $83A490 |
  CMP.B #$09                                ; $83A492 |
  BCS CODE_83A499                           ; $83A494 |
  JMP.W CODE_JP_83A6D6                      ; $83A496 |

CODE_83A499:
  JMP.W CODE_JP_83A6E6                      ; $83A499 |

CODE_83A49C:
  RTS                                       ; $83A49C |

  JSR.W CODE_FN_838576                      ; $83A49D |
  DEC.B $2C,X                               ; $83A4A0 |
  BNE CODE_83A4AA                           ; $83A4A2 |
  JSR.W CODE_FN_839EDA                      ; $83A4A4 |
  JMP.W CODE_FN_8394AF                      ; $83A4A7 |

CODE_83A4AA:
  RTS                                       ; $83A4AA |

CODE_FN_83A4AB:
  REP #$20                                  ; $83A4AB |
  LDA.B $09,X                               ; $83A4AD |
  STA.B $08                                 ; $83A4AF |
  LDA.B $0D,X                               ; $83A4B1 |
  SEC                                       ; $83A4B3 |
  SBC.W #$0030                              ; $83A4B4 |
  STA.B $0A                                 ; $83A4B7 |
  JSL.L CODE_FL_80CA7D                      ; $83A4B9 |
  AND.W #$00FF                              ; $83A4BD |
  CMP.W #$0005                              ; $83A4C0 |
  BNE CODE_83A504                           ; $83A4C3 |
  LDA.B $0A                                 ; $83A4C5 |
  CLC                                       ; $83A4C7 |
  ADC.W $1672                               ; $83A4C8 |
  AND.W #$000F                              ; $83A4CB |
  SEC                                       ; $83A4CE |
  SBC.W #$0004                              ; $83A4CF |
  STA.B $12                                 ; $83A4D2 |
  LDA.W $1662                               ; $83A4D4 |
  CLC                                       ; $83A4D7 |
  ADC.B $08                                 ; $83A4D8 |
  AND.W #$000F                              ; $83A4DA |
  SEC                                       ; $83A4DD |
  SBC.W #$0008                              ; $83A4DE |
  STA.B $10                                 ; $83A4E1 |
  SEP #$20                                  ; $83A4E3 |
  LDA.B $10                                 ; $83A4E5 |
  EOR.B #$FF                                ; $83A4E7 |
  INC A                                     ; $83A4E9 |
  STA.B $27,X                               ; $83A4EA |
  LDA.B $12                                 ; $83A4EC |
  EOR.B #$FF                                ; $83A4EE |
  INC A                                     ; $83A4F0 |
  STA.B $29,X                               ; $83A4F1 |
  STZ.B $26,X                               ; $83A4F3 |
  STZ.B $28,X                               ; $83A4F5 |
  REP #$20                                  ; $83A4F7 |
  LDA.B $28,X                               ; $83A4F9 |
  SEC                                       ; $83A4FB |
  SBC.B $4C,X                               ; $83A4FC |
  STA.B $28,X                               ; $83A4FE |
  SEP #$20                                  ; $83A500 |
  SEC                                       ; $83A502 |
  RTS                                       ; $83A503 |

CODE_83A504:
  SEP #$20                                  ; $83A504 |
  CLC                                       ; $83A506 |
  RTS                                       ; $83A507 |

  JSR.W CODE_FN_838576                      ; $83A508 |
  LDA.B $1E,X                               ; $83A50B |
  CMP.B #$04                                ; $83A50D |
  BCC CODE_83A529                           ; $83A50F |
  LDA.B $97                                 ; $83A511 |
  AND.B #$03                                ; $83A513 |
  BEQ CODE_83A539                           ; $83A515 |
  STA.B $10                                 ; $83A517 |
  LDA.B $04,X                               ; $83A519 |
  LSR.B $10                                 ; $83A51B |
  BCC CODE_83A524                           ; $83A51D |
  AND.B #$DF                                ; $83A51F |
  STA.B $04,X                               ; $83A521 |
  RTS                                       ; $83A523 |

CODE_83A524:
  ORA.B #$20                                ; $83A524 |
  STA.B $04,X                               ; $83A526 |
  RTS                                       ; $83A528 |

CODE_83A529:
  CMP.B #$02                                ; $83A529 |
  BCS CODE_83A539                           ; $83A52B |
  LDA.B $BA,X                               ; $83A52D |
  CMP.B #$FF                                ; $83A52F |
  BNE CODE_83A536                           ; $83A531 |
  JSR.W CODE_FN_83A123                      ; $83A533 |

CODE_83A536:
  JMP.W CODE_JP_839626                      ; $83A536 |

CODE_83A539:
  RTS                                       ; $83A539 |

  JSR.W CODE_FN_838576                      ; $83A53A |
  JSR.W CODE_FN_8385EA                      ; $83A53D |
  LDA.B $1E,X                               ; $83A540 |
  CMP.B #$02                                ; $83A542 |
  BCC CODE_83A54C                           ; $83A544 |
  CMP.B #$06                                ; $83A546 |
  BCS CODE_83A54F                           ; $83A548 |
  BRA CODE_83A552                           ; $83A54A |

CODE_83A54C:
  JMP.W CODE_JP_8396F4                      ; $83A54C |

CODE_83A54F:
  JMP.W CODE_JP_8396B7                      ; $83A54F |

CODE_83A552:
  CMP.B #$04                                ; $83A552 |
  BNE CODE_83A561                           ; $83A554 |
  JSL.L CODE_FL_83F66B                      ; $83A556 |
  LDA.B $48,X                               ; $83A55A |
  BEQ CODE_83A561                           ; $83A55C |
  JMP.W CODE_FN_8396E3                      ; $83A55E |

CODE_83A561:
  RTS                                       ; $83A561 |

  JSR.W CODE_FN_838576                      ; $83A562 |
  LDA.B $1E,X                               ; $83A565 |
  CMP.B #$02                                ; $83A567 |
  BCC CODE_83A571                           ; $83A569 |
  CMP.B #$06                                ; $83A56B |
  BCS CODE_83A54F                           ; $83A56D |
  BRA CODE_83A552                           ; $83A56F |

CODE_83A571:
  LDA.B $BA,X                               ; $83A571 |
  CMP.B #$FF                                ; $83A573 |
  BNE CODE_83A57A                           ; $83A575 |
  JSR.W CODE_FN_83A123                      ; $83A577 |

CODE_83A57A:
  JMP.W CODE_JP_839626                      ; $83A57A |

CODE_JP_83A57D:
  STZ.B $58,X                               ; $83A57D |
  LDA.B #$09                                ; $83A57F |
  JMP.W CODE_FN_838948                      ; $83A581 |

CODE_JP_83A584:
  STZ.B $58,X                               ; $83A584 |
  JSR.W CODE_FN_839570                      ; $83A586 |
  REP #$20                                  ; $83A589 |
  LDY.B $18,X                               ; $83A58B |
  LDA.W CODE_00EB2B,Y                       ; $83A58D |
  AND.W #$00FF                              ; $83A590 |
  JSL.L push_sound_queue                    ; $83A593 |
  LDA.W #$000C                              ; $83A597 |
  STA.B $9C,X                               ; $83A59A |
  JSR.W CODE_FN_83A30B                      ; $83A59C |
  SEP #$20                                  ; $83A59F |
  LDA.B #$0A                                ; $83A5A1 |
  JMP.W CODE_FN_83891C                      ; $83A5A3 |

CODE_JP_83A5A6:
  STZ.B $2C,X                               ; $83A5A6 |
  STZ.B $58,X                               ; $83A5A8 |
  LDA.B #$10                                ; $83A5AA |
  JMP.W CODE_FN_83891C                      ; $83A5AC |

  JSR.W CODE_FN_838576                      ; $83A5AF |
  LDA.B $48,X                               ; $83A5B2 |
  BNE CODE_83A5B9                           ; $83A5B4 |
  JMP.W CODE_FN_83A6AE                      ; $83A5B6 |

CODE_83A5B9:
  LDA.B $9B                                 ; $83A5B9 |
  BIT.B #$80                                ; $83A5BB |
  BEQ CODE_83A5C2                           ; $83A5BD |
  JMP.W CODE_FN_83A691                      ; $83A5BF |

CODE_83A5C2:
  LDA.B $9A                                 ; $83A5C2 |
  BIT.B #$80                                ; $83A5C4 |
  BEQ CODE_83A5D0                           ; $83A5C6 |
  JSR.W CODE_FN_838A86                      ; $83A5C8 |
  BCS CODE_83A5D0                           ; $83A5CB |
  JMP.W CODE_FN_83A6B3                      ; $83A5CD |

CODE_83A5D0:
  LDA.B $97                                 ; $83A5D0 |
  BIT.B #$07                                ; $83A5D2 |
  BEQ CODE_83A5D9                           ; $83A5D4 |
  JMP.W CODE_JP_83A6FA                      ; $83A5D6 |

CODE_83A5D9:
  BIT.B #$08                                ; $83A5D9 |
  BEQ CODE_83A5E0                           ; $83A5DB |
  JMP.W CODE_FN_83A70E                      ; $83A5DD |

CODE_83A5E0:
  RTS                                       ; $83A5E0 |

  JSR.W CODE_FN_83A5E9                      ; $83A5E1 |
  BCC CODE_83A5E0                           ; $83A5E4 |
  JMP.W CODE_FN_839570                      ; $83A5E6 |

CODE_FN_83A5E9:
  LDA.B $48,X                               ; $83A5E9 |
  BNE CODE_83A5F2                           ; $83A5EB |
  JSR.W CODE_FN_83A6AE                      ; $83A5ED |
  BRA CODE_83A636                           ; $83A5F0 |

CODE_83A5F2:
  LDA.B $9B                                 ; $83A5F2 |
  BIT.B #$80                                ; $83A5F4 |
  BEQ CODE_83A5FD                           ; $83A5F6 |
  JSR.W CODE_FN_83A691                      ; $83A5F8 |
  BRA CODE_83A636                           ; $83A5FB |

CODE_83A5FD:
  LDA.B $9A                                 ; $83A5FD |
  BIT.B #$80                                ; $83A5FF |
  BEQ CODE_83A60D                           ; $83A601 |
  JSR.W CODE_FN_838A86                      ; $83A603 |
  BCS CODE_83A60D                           ; $83A606 |
  JSR.W CODE_FN_83A6B3                      ; $83A608 |
  BRA CODE_83A636                           ; $83A60B |

CODE_83A60D:
  LDA.B $97                                 ; $83A60D |
  BIT.B #$04                                ; $83A60F |
  BEQ CODE_83A61E                           ; $83A611 |
  LDA.B $33,X                               ; $83A613 |
  BIT.B #$08                                ; $83A615 |
  BEQ CODE_83A627                           ; $83A617 |
  JSR.W CODE_FN_83A708                      ; $83A619 |
  BRA CODE_83A636                           ; $83A61C |

CODE_83A61E:
  BIT.B #$08                                ; $83A61E |
  BEQ CODE_83A629                           ; $83A620 |
  JSR.W CODE_FN_83A70E                      ; $83A622 |
  BCS CODE_83A636                           ; $83A625 |

CODE_83A627:
  LDA.B $97                                 ; $83A627 |

CODE_83A629:
  AND.B #$03                                ; $83A629 |
  BNE CODE_83A638                           ; $83A62B |
  LDA.B $4A,X                               ; $83A62D |
  ORA.B $4B,X                               ; $83A62F |
  BNE CODE_83A638                           ; $83A631 |
  JSR.W CODE_FN_83A684                      ; $83A633 |

CODE_83A636:
  CLC                                       ; $83A636 |
  RTS                                       ; $83A637 |

CODE_83A638:
  SEC                                       ; $83A638 |
  RTS                                       ; $83A639 |

  LDA.B $29,X                               ; $83A63A |
  BMI CODE_83A645                           ; $83A63C |
  LDA.B $48,X                               ; $83A63E |
  BNE CODE_83A652                           ; $83A640 |
  JMP.W CODE_FN_83A6AE                      ; $83A642 |

CODE_83A645:
  JSR.W CODE_FN_839570                      ; $83A645 |
  JMP.W CODE_FN_8385EA                      ; $83A648 |

  LDA.B $48,X                               ; $83A64B |
  BNE CODE_83A652                           ; $83A64D |
  JMP.W CODE_FN_839570                      ; $83A64F |

CODE_83A652:
  REP #$20                                  ; $83A652 |
  LDA.W #$0007                              ; $83A654 |
  JSL.L push_sound_queue                    ; $83A657 |
  SEP #$20                                  ; $83A65B |
  JMP.W CODE_FN_83A684                      ; $83A65D |

  JSR.W CODE_FN_839570                      ; $83A660 |
  LDA.B $9B                                 ; $83A663 |
  BIT.B #$80                                ; $83A665 |
  BEQ CODE_83A66C                           ; $83A667 |
  JMP.W CODE_FN_83A691                      ; $83A669 |

CODE_83A66C:
  LDA.B $9A                                 ; $83A66C |
  BIT.B #$80                                ; $83A66E |
  BEQ CODE_83A67A                           ; $83A670 |
  JSR.W CODE_FN_838A86                      ; $83A672 |
  BCS CODE_83A67A                           ; $83A675 |
  JMP.W CODE_FN_83A6B3                      ; $83A677 |

CODE_83A67A:
  RTS                                       ; $83A67A |

  JMP.W CODE_JP_839A43                      ; $83A67B |

  JMP.W CODE_JP_839A54                      ; $83A67E |

  JMP.W CODE_JP_839C17                      ; $83A681 |

CODE_FN_83A684:
  LDA.B #$16                                ; $83A684 |
  JMP.W CODE_FN_838948                      ; $83A686 |

CODE_83A689:
  JSR.W CODE_FN_839570                      ; $83A689 |
  LDA.B #$17                                ; $83A68C |
  JMP.W CODE_FN_83891C                      ; $83A68E |

CODE_FN_83A691:
  REP #$20                                  ; $83A691 |
  LDA.W #$0006                              ; $83A693 |
  JSL.L push_sound_queue                    ; $83A696 |
  SEP #$20                                  ; $83A69A |
  JSR.W CODE_FN_83A30B                      ; $83A69C |
  LDA.B #$06                                ; $83A69F |
  STA.B $9C,X                               ; $83A6A1 |
  LDA.B #$30                                ; $83A6A3 |
  JMP.W CODE_FN_83891C                      ; $83A6A5 |

  LDA.B #$01                                ; $83A6A8 |
  STA.B $AE,X                               ; $83A6AA |
  STA.B $8A,X                               ; $83A6AC |

CODE_FN_83A6AE:
  LDA.B #$31                                ; $83A6AE |
  JMP.W CODE_FN_83891C                      ; $83A6B0 |

CODE_FN_83A6B3:
  JSL.L CODE_FL_83CBC9                      ; $83A6B3 |
  LDA.B $22,X                               ; $83A6B7 |
  CMP.B #$18                                ; $83A6B9 |
  BNE CODE_83A6C0                           ; $83A6BB |
  JMP.W CODE_FN_839EDF                      ; $83A6BD |

CODE_83A6C0:
  JMP.W CODE_FN_839ECD                      ; $83A6C0 |

CODE_FN_83A6C3:
  LDA.B #$18                                ; $83A6C3 |
  JMP.W CODE_FN_83891C                      ; $83A6C5 |

CODE_FN_83A6C8:
  LDA.B #$47                                ; $83A6C8 |
  JMP.W CODE_FN_83891C                      ; $83A6CA |

CODE_JP_83A6CD:
  STZ.B $5A,X                               ; $83A6CD |

CODE_JP_83A6CF:
  INC.B $5A,X                               ; $83A6CF |
  LDA.B #$08                                ; $83A6D1 |
  JMP.W CODE_FN_83891C                      ; $83A6D3 |

CODE_JP_83A6D6:
  STZ.B $2C,X                               ; $83A6D6 |
  LDA.B #$10                                ; $83A6D8 |
  STA.B $58,X                               ; $83A6DA |
  JSR.W CODE_FN_83F1F9                      ; $83A6DC |
  INC.B $5A,X                               ; $83A6DF |
  LDA.B #$11                                ; $83A6E1 |
  JMP.W CODE_FN_83891C                      ; $83A6E3 |

CODE_JP_83A6E6:
  REP #$20                                  ; $83A6E6 |
  LDA.W #$0114                              ; $83A6E8 |
  JSL.L CODE_FL_8089BD                      ; $83A6EB |
  SEP #$20                                  ; $83A6EF |
  LDA.B #$A0                                ; $83A6F1 |
  STA.B $2C,X                               ; $83A6F3 |
  LDA.B #$12                                ; $83A6F5 |
  JMP.W CODE_FN_83891C                      ; $83A6F7 |

CODE_JP_83A6FA:
  LDA.B $97                                 ; $83A6FA |
  BIT.B #$04                                ; $83A6FC |
  BNE CODE_83A702                           ; $83A6FE |
  BRA CODE_83A689                           ; $83A700 |

CODE_83A702:
  LDA.B $33,X                               ; $83A702 |
  BIT.B #$08                                ; $83A704 |
  BEQ CODE_83A70D                           ; $83A706 |

CODE_FN_83A708:
  LDA.B #$33                                ; $83A708 |
  JMP.W CODE_FN_838948                      ; $83A70A |

CODE_83A70D:
  RTS                                       ; $83A70D |

CODE_FN_83A70E:
  LDA.W $19B2                               ; $83A70E |
  BEQ CODE_83A70D                           ; $83A711 |
  REP #$20                                  ; $83A713 |
  LDA.B $09,X                               ; $83A715 |
  STA.B $08                                 ; $83A717 |
  LDA.B $0D,X                               ; $83A719 |
  SEC                                       ; $83A71B |
  SBC.W #$0010                              ; $83A71C |
  STA.B $0A                                 ; $83A71F |
  JSL.L CODE_FL_80CA7D                      ; $83A721 |
  SEP #$20                                  ; $83A725 |
  AND.B #$7F                                ; $83A727 |
  CMP.B #$02                                ; $83A729 |
  BEQ CODE_83A731                           ; $83A72B |
  CMP.B #$01                                ; $83A72D |
  BNE CODE_83A736                           ; $83A72F |

CODE_83A731:
  LDA.B #$32                                ; $83A731 |
  JSR.W CODE_FN_838948                      ; $83A733 |

CODE_83A736:
  RTS                                       ; $83A736 |

CODE_FN_83A737:
  REP #$20                                  ; $83A737 |
  JSR.W CODE_FN_838621                      ; $83A739 |
  SEP #$20                                  ; $83A73C |
  LDA.B $22,X                               ; $83A73E |
  CMP.B #$14                                ; $83A740 |
  BEQ CODE_83A74F                           ; $83A742 |
  JSR.W CODE_FN_8386CC                      ; $83A744 |
  JSR.W CODE_FN_838F2D                      ; $83A747 |
  BCS CODE_83A74F                           ; $83A74A |
  JSR.W CODE_FN_83879F                      ; $83A74C |

CODE_83A74F:
  LDA.B $22,X                               ; $83A74F |
  ASL A                                     ; $83A751 |
  REP #$20                                  ; $83A752 |
  AND.W #$00FF                              ; $83A754 |
  TAY                                       ; $83A757 |
  LDA.W CODE_00D7CE,Y                       ; $83A758 |
  PHA                                       ; $83A75B |
  SEP #$20                                  ; $83A75C |
  RTS                                       ; $83A75E |

  JMP.W CODE_JP_8396A7                      ; $83A75F |

  JSR.W CODE_FN_83A768                      ; $83A762 |
  JMP.W CODE_JP_8396A7                      ; $83A765 |

CODE_FN_83A768:
  LDA.B $44,X                               ; $83A768 |
  BNE CODE_83A7E1                           ; $83A76A |
  LDA.B $1E,X                               ; $83A76C |
  CMP.B #$07                                ; $83A76E |
  BNE CODE_83A7E1                           ; $83A770 |
  INC.B $44,X                               ; $83A772 |
  REP #$20                                  ; $83A774 |
  STX.B $10                                 ; $83A776 |
  JSR.W CODE_FN_83F036                      ; $83A778 |
  BPL CODE_83A783                           ; $83A77B |
  LDX.B $10                                 ; $83A77D |
  SEP #$20                                  ; $83A77F |
  BRA CODE_83A7E1                           ; $83A781 |

CODE_83A783:
  LDY.B $10                                 ; $83A783 |
  LDA.W $0006,Y                             ; $83A785 |
  STA.B $06,X                               ; $83A788 |
  LDA.W #$000C                              ; $83A78A |
  JSL.L CODE_FL_86CAEE                      ; $83A78D |
  LDA.W #$006A                              ; $83A791 |
  STA.B $18,X                               ; $83A794 |
  LDA.W $0004,Y                             ; $83A796 |
  LDY.W #$0000                              ; $83A799 |
  BIT.W #$2020                              ; $83A79C |
  BEQ CODE_83A7A6                           ; $83A79F |
  ORA.W #$2020                              ; $83A7A1 |
  INY                                       ; $83A7A4 |
  INY                                       ; $83A7A5 |

CODE_83A7A6:
  ORA.W $1968                               ; $83A7A6 |
  STA.B $04,X                               ; $83A7A9 |
  LDA.W CODE_00EB4C,Y                       ; $83A7AB |
  STA.B $26,X                               ; $83A7AE |
  LDA.W CODE_00EB50,Y                       ; $83A7B0 |
  STA.B $00                                 ; $83A7B3 |
  LDA.W LOOSE_OP_00EB54,Y                   ; $83A7B5 |
  STA.B $02                                 ; $83A7B8 |
  LDY.B $10                                 ; $83A7BA |
  LDA.W $0009,Y                             ; $83A7BC |
  CLC                                       ; $83A7BF |
  ADC.B $00                                 ; $83A7C0 |
  STA.B $09,X                               ; $83A7C2 |
  LDA.W $000D,Y                             ; $83A7C4 |
  CLC                                       ; $83A7C7 |
  ADC.B $02                                 ; $83A7C8 |
  STA.B $0D,X                               ; $83A7CA |
  LDA.W #$E000                              ; $83A7CC |
  STA.B $34,X                               ; $83A7CF |
  LDA.W #$0010                              ; $83A7D1 |
  STA.B $4E,X                               ; $83A7D4 |
  LDA.W #$0004                              ; $83A7D6 |
  STA.B $2E,X                               ; $83A7D9 |
  STA.B $30,X                               ; $83A7DB |
  LDX.B $10                                 ; $83A7DD |
  SEP #$20                                  ; $83A7DF |

CODE_83A7E1:
  RTS                                       ; $83A7E1 |

  JSR.W CODE_FN_8385EA                      ; $83A7E2 |
  LDA.B $1E,X                               ; $83A7E5 |
  CMP.B #$02                                ; $83A7E7 |
  BCC CODE_83A7F1                           ; $83A7E9 |
  CMP.B #$06                                ; $83A7EB |
  BCS CODE_83A7F4                           ; $83A7ED |
  BRA CODE_83A7F7                           ; $83A7EF |

CODE_83A7F1:
  JMP.W CODE_JP_8396F4                      ; $83A7F1 |

CODE_83A7F4:
  JMP.W CODE_JP_8396B7                      ; $83A7F4 |

CODE_83A7F7:
  CMP.B #$04                                ; $83A7F7 |
  BNE CODE_83A80A                           ; $83A7F9 |
  LDA.B $22,X                               ; $83A7FB |
  CMP.B #$08                                ; $83A7FD |
  BEQ CODE_83A803                           ; $83A7FF |
  BRA CODE_83A803                           ; $83A801 |

CODE_83A803:
  LDA.B $48,X                               ; $83A803 |
  BEQ CODE_83A80A                           ; $83A805 |
  JMP.W CODE_FN_8396E3                      ; $83A807 |

CODE_83A80A:
  RTS                                       ; $83A80A |

  LDA.B $97                                 ; $83A80B |
  AND.B #$0F                                ; $83A80D |
  BEQ CODE_83A813                           ; $83A80F |
  STA.B $58,X                               ; $83A811 |

CODE_83A813:
  AND.B #$03                                ; $83A813 |
  BEQ CODE_83A822                           ; $83A815 |
  STA.B $10                                 ; $83A817 |
  LDA.B $48,X                               ; $83A819 |
  BNE CODE_83A83C                           ; $83A81B |
  LDA.B $10                                 ; $83A81D |
  JSR.W CODE_FN_839574                      ; $83A81F |

CODE_83A822:
  LDA.B $BA,X                               ; $83A822 |
  CMP.B #$FF                                ; $83A824 |
  BNE CODE_83A82E                           ; $83A826 |
  JSR.W CODE_FN_839EDA                      ; $83A828 |
  JMP.W CODE_FN_8394AF                      ; $83A82B |

CODE_83A82E:
  LDA.B $1E,X                               ; $83A82E |
  CMP.B #$02                                ; $83A830 |
  BNE CODE_83A80A                           ; $83A832 |
  LDA.B $22,X                               ; $83A834 |
  CMP.B #$0A                                ; $83A836 |
  BEQ CODE_83A83B                           ; $83A838 |
  RTS                                       ; $83A83A |

CODE_83A83B:
  RTS                                       ; $83A83B |

CODE_83A83C:
  STZ.B $26,X                               ; $83A83C |
  STZ.B $27,X                               ; $83A83E |
  LDA.B $04,X                               ; $83A840 |
  LSR.B $10                                 ; $83A842 |
  BCC CODE_83A84C                           ; $83A844 |
  AND.B #$DF                                ; $83A846 |
  STA.B $04,X                               ; $83A848 |
  BRA CODE_83A822                           ; $83A84A |

CODE_83A84C:
  ORA.B #$20                                ; $83A84C |
  STA.B $04,X                               ; $83A84E |
  BRA CODE_83A822                           ; $83A850 |

  JSR.W CODE_FN_838576                      ; $83A852 |
  LDA.B $1E,X                               ; $83A855 |
  CMP.B #$03                                ; $83A857 |
  BCC CODE_83A880                           ; $83A859 |
  LDA.B $97                                 ; $83A85B |
  AND.B #$03                                ; $83A85D |
  BEQ CODE_83A80A                           ; $83A85F |
  STA.B $10                                 ; $83A861 |
  LDA.B $48,X                               ; $83A863 |
  BNE CODE_83A86C                           ; $83A865 |
  LDA.B $10                                 ; $83A867 |
  JMP.W CODE_FN_839574                      ; $83A869 |

CODE_83A86C:
  STZ.B $26,X                               ; $83A86C |
  STZ.B $27,X                               ; $83A86E |
  LDA.B $04,X                               ; $83A870 |
  LSR.B $10                                 ; $83A872 |
  BCC CODE_83A87B                           ; $83A874 |
  AND.B #$DF                                ; $83A876 |
  STA.B $04,X                               ; $83A878 |
  RTS                                       ; $83A87A |

CODE_83A87B:
  ORA.B #$20                                ; $83A87B |
  STA.B $04,X                               ; $83A87D |

CODE_83A87F:
  RTS                                       ; $83A87F |

CODE_83A880:
  LDA.B $04,X                               ; $83A880 |
  STA.B $A4,X                               ; $83A882 |
  LDA.B $1E,X                               ; $83A884 |
  CMP.B #$02                                ; $83A886 |
  BCS CODE_83A87F                           ; $83A888 |
  CMP.B #$01                                ; $83A88A |
  BNE CODE_83A8CE                           ; $83A88C |
  REP #$20                                  ; $83A88E |
  LDA.W #$001C                              ; $83A890 |
  LDY.B $22,X                               ; $83A893 |
  CPY.W #$000B                              ; $83A895 |
  BEQ CODE_83A89D                           ; $83A898 |
  LDA.W #$0103                              ; $83A89A |

CODE_83A89D:
  STA.B $10                                 ; $83A89D |
  STY.B $12                                 ; $83A89F |
  LDA.B $14,X                               ; $83A8A1 |
  INC A                                     ; $83A8A3 |
  STA.B $14                                 ; $83A8A4 |
  PHX                                       ; $83A8A6 |
  JSR.W CODE_FN_83F038                      ; $83A8A7 |
  LDA.B $10                                 ; $83A8AA |
  STA.B $18,X                               ; $83A8AC |
  LDA.B $12                                 ; $83A8AE |
  STA.B $40,X                               ; $83A8B0 |
  LDA.W #$8000                              ; $83A8B2 |
  STA.B $22,X                               ; $83A8B5 |
  STZ.B $1A,X                               ; $83A8B7 |
  STZ.B $02,X                               ; $83A8B9 |
  LDA.B $14                                 ; $83A8BB |
  STA.B $14,X                               ; $83A8BD |
  PLA                                       ; $83A8BF |
  STA.B $3A,X                               ; $83A8C0 |
  TXY                                       ; $83A8C2 |
  TAX                                       ; $83A8C3 |
  STY.B $56,X                               ; $83A8C4 |
  SEP #$20                                  ; $83A8C6 |
  LDA.B #$08                                ; $83A8C8 |
  STA.B $54,X                               ; $83A8CA |
  STZ.B $58,X                               ; $83A8CC |

CODE_83A8CE:
  LDA.B $58,X                               ; $83A8CE |
  BNE CODE_83A8F3                           ; $83A8D0 |
  LDA.B $54,X                               ; $83A8D2 |
  CMP.B #$20                                ; $83A8D4 |
  BCC CODE_83A8DE                           ; $83A8D6 |
  LDA.B $97                                 ; $83A8D8 |
  BIT.B #$40                                ; $83A8DA |
  BEQ CODE_83A8EB                           ; $83A8DC |

CODE_83A8DE:
  LDA.B $54,X                               ; $83A8DE |
  CLC                                       ; $83A8E0 |
  ADC.B #$05                                ; $83A8E1 |
  CMP.B #$1C                                ; $83A8E3 |
  BCC CODE_83A8F0                           ; $83A8E5 |
  LDA.B #$1C                                ; $83A8E7 |
  STA.B $54,X                               ; $83A8E9 |

CODE_83A8EB:
  LDA.B #$02                                ; $83A8EB |
  STA.B $58,X                               ; $83A8ED |
  RTS                                       ; $83A8EF |

CODE_83A8F0:
  STA.B $54,X                               ; $83A8F0 |
  RTS                                       ; $83A8F2 |

CODE_83A8F3:
  LDA.B $54,X                               ; $83A8F3 |
  SEC                                       ; $83A8F5 |
  SBC.B #$05                                ; $83A8F6 |
  CMP.B #$08                                ; $83A8F8 |
  BCC CODE_83A8FF                           ; $83A8FA |
  STA.B $54,X                               ; $83A8FC |
  RTS                                       ; $83A8FE |

CODE_83A8FF:
  LDY.B $56,X                               ; $83A8FF |
  LDA.B #$02                                ; $83A901 |
  STA.W $001A,Y                             ; $83A903 |
  LDA.B $22,X                               ; $83A906 |
  CMP.B #$0B                                ; $83A908 |
  BEQ CODE_83A912                           ; $83A90A |
  JSR.W CODE_FN_839EDA                      ; $83A90C |
  JMP.W CODE_FN_8394AF                      ; $83A90F |

CODE_83A912:
  JSR.W CODE_FN_83A123                      ; $83A912 |
  JMP.W CODE_JP_839626                      ; $83A915 |

  JSR.W CODE_FN_838576                      ; $83A918 |
  JSR.W CODE_FN_8385EA                      ; $83A91B |
  LDA.B $1E,X                               ; $83A91E |
  CMP.B #$05                                ; $83A920 |
  BCC CODE_83A949                           ; $83A922 |
  LDA.B $97                                 ; $83A924 |
  AND.B #$03                                ; $83A926 |
  BEQ CODE_83A943                           ; $83A928 |
  STA.B $10                                 ; $83A92A |
  LDA.B $48,X                               ; $83A92C |
  BNE CODE_83A935                           ; $83A92E |
  LDA.B $10                                 ; $83A930 |
  JMP.W CODE_FN_839574                      ; $83A932 |

CODE_83A935:
  STZ.B $26,X                               ; $83A935 |
  STZ.B $27,X                               ; $83A937 |
  LDA.B $04,X                               ; $83A939 |
  LSR.B $10                                 ; $83A93B |
  BCC CODE_83A944                           ; $83A93D |
  AND.B #$DF                                ; $83A93F |
  STA.B $04,X                               ; $83A941 |

CODE_83A943:
  RTS                                       ; $83A943 |

CODE_83A944:
  ORA.B #$20                                ; $83A944 |
  STA.B $04,X                               ; $83A946 |
  RTS                                       ; $83A948 |

CODE_83A949:
  CMP.B #$03                                ; $83A949 |
  BCS CODE_83A959                           ; $83A94B |
  LDA.B $BA,X                               ; $83A94D |
  CMP.B #$FF                                ; $83A94F |
  BNE CODE_83A956                           ; $83A951 |
  JSR.W CODE_FN_839EDA                      ; $83A953 |

CODE_83A956:
  JMP.W CODE_FN_8394AF                      ; $83A956 |

CODE_83A959:
  BNE CODE_83A96A                           ; $83A959 |
  LDA.B $22,X                               ; $83A95B |
  CMP.B #$0E                                ; $83A95D |
  BEQ CODE_83A966                           ; $83A95F |
  JSL.L CODE_FL_83F09F                      ; $83A961 |
  RTS                                       ; $83A965 |

CODE_83A966:
  JSL.L CODE_FL_83F111                      ; $83A966 |

CODE_83A96A:
  RTS                                       ; $83A96A |

  JSR.W CODE_FN_838576                      ; $83A96B |
  LDA.B $1E,X                               ; $83A96E |
  CMP.B #$05                                ; $83A970 |
  BCC CODE_83A985                           ; $83A972 |
  LDA.B $97                                 ; $83A974 |
  AND.B #$03                                ; $83A976 |
  BEQ CODE_83A943                           ; $83A978 |
  STA.B $10                                 ; $83A97A |
  LDA.B $48,X                               ; $83A97C |
  BNE CODE_83A935                           ; $83A97E |
  LDA.B $10                                 ; $83A980 |
  JMP.W CODE_FN_839574                      ; $83A982 |

CODE_83A985:
  CMP.B #$03                                ; $83A985 |
  BCS CODE_83A995                           ; $83A987 |
  LDA.B $BA,X                               ; $83A989 |
  CMP.B #$FF                                ; $83A98B |
  BNE CODE_83A992                           ; $83A98D |
  JSR.W CODE_FN_83A123                      ; $83A98F |

CODE_83A992:
  JMP.W CODE_JP_839626                      ; $83A992 |

CODE_83A995:
  BNE CODE_83A99B                           ; $83A995 |
  JSL.L CODE_FL_83F070                      ; $83A997 |

CODE_83A99B:
  RTS                                       ; $83A99B |

  JSR.W CODE_FN_8394F6                      ; $83A99C |
  RTS                                       ; $83A99F |

  LDA.B $1E,X                               ; $83A9A0 |
  CMP.B #$02                                ; $83A9A2 |
  BNE CODE_83A9AB                           ; $83A9A4 |
  JSL.L CODE_FL_83F144                      ; $83A9A6 |

CODE_83A9AA:
  RTS                                       ; $83A9AA |

CODE_83A9AB:
  LDA.B $BA,X                               ; $83A9AB |
  CMP.B #$FF                                ; $83A9AD |
  BNE CODE_83A9AA                           ; $83A9AF |
  LDA.B $35,X                               ; $83A9B1 |
  ORA.B #$80                                ; $83A9B3 |
  STA.B $35,X                               ; $83A9B5 |
  JSR.W CODE_FN_839EDA                      ; $83A9B7 |
  JMP.W CODE_FN_8394AF                      ; $83A9BA |

CODE_FN_83A9BD:
  REP #$20                                  ; $83A9BD |
  JSR.W CODE_FN_838621                      ; $83A9BF |
  SEP #$20                                  ; $83A9C2 |
  LDA.B $22,X                               ; $83A9C4 |
  CMP.B #$14                                ; $83A9C6 |
  BEQ CODE_83A9D5                           ; $83A9C8 |
  JSR.W CODE_FN_8386CC                      ; $83A9CA |
  JSR.W CODE_FN_838F2D                      ; $83A9CD |
  BCS CODE_83A9D5                           ; $83A9D0 |
  JSR.W CODE_FN_83879F                      ; $83A9D2 |

CODE_83A9D5:
  LDA.B $22,X                               ; $83A9D5 |
  ASL A                                     ; $83A9D7 |
  REP #$20                                  ; $83A9D8 |
  AND.W #$00FF                              ; $83A9DA |
  TAY                                       ; $83A9DD |
  LDA.W LOOSE_OP_00D860,Y                   ; $83A9DE |
  PHA                                       ; $83A9E1 |
  SEP #$20                                  ; $83A9E2 |
  RTS                                       ; $83A9E4 |

  JSR.W CODE_FN_8385EA                      ; $83A9E5 |
  LDA.B $1E,X                               ; $83A9E8 |
  CMP.B #$02                                ; $83A9EA |
  BCC CODE_83A9FD                           ; $83A9EC |
  CMP.B #$05                                ; $83A9EE |
  BCC CODE_83A9F5                           ; $83A9F0 |
  JMP.W CODE_JP_8396B7                      ; $83A9F2 |

CODE_83A9F5:
  LDA.B $48,X                               ; $83A9F5 |
  BEQ CODE_83A9FC                           ; $83A9F7 |
  JSR.W CODE_FN_8396E3                      ; $83A9F9 |

CODE_83A9FC:
  RTS                                       ; $83A9FC |

CODE_83A9FD:
  LDA.B $BA,X                               ; $83A9FD |
  CMP.B #$FF                                ; $83A9FF |
  BNE CODE_83AA06                           ; $83AA01 |
  JSR.W CODE_FN_839EDA                      ; $83AA03 |

CODE_83AA06:
  LDA.B $97                                 ; $83AA06 |
  AND.B #$C0                                ; $83AA08 |
  CMP.B #$C0                                ; $83AA0A |
  BEQ CODE_JP_83AA11                        ; $83AA0C |
  JMP.W CODE_FN_8394AF                      ; $83AA0E |

CODE_JP_83AA11:
  LDA.B $35,X                               ; $83AA11 |
  AND.B #$7F                                ; $83AA13 |
  STA.B $35,X                               ; $83AA15 |
  LDA.B #$11                                ; $83AA17 |
  JMP.W CODE_FN_83891C                      ; $83AA19 |

  JSR.W CODE_FN_8385EA                      ; $83AA1C |
  JSR.W CODE_FN_83AA4F                      ; $83AA1F |
  JSR.W CODE_FN_8385EA                      ; $83AA22 |
  LDA.B $1E,X                               ; $83AA25 |
  CMP.B #$02                                ; $83AA27 |
  BCC CODE_83AA3A                           ; $83AA29 |
  CMP.B #$05                                ; $83AA2B |
  BCC CODE_83AA32                           ; $83AA2D |
  JMP.W CODE_JP_8396B7                      ; $83AA2F |

CODE_83AA32:
  LDA.B $48,X                               ; $83AA32 |
  BEQ CODE_83AA39                           ; $83AA34 |
  JSR.W CODE_FN_8396E3                      ; $83AA36 |

CODE_83AA39:
  RTS                                       ; $83AA39 |

CODE_83AA3A:
  LDA.B $22,X                               ; $83AA3A |
  CMP.B #$0F                                ; $83AA3C |
  BEQ CODE_83AA43                           ; $83AA3E |
  JMP.W CODE_JP_8396F4                      ; $83AA40 |

CODE_83AA43:
  LDA.B $BA,X                               ; $83AA43 |
  CMP.B #$FF                                ; $83AA45 |
  BNE CODE_83AA4C                           ; $83AA47 |
  JSR.W CODE_FN_83A123                      ; $83AA49 |

CODE_83AA4C:
  JMP.W CODE_JP_839626                      ; $83AA4C |

CODE_FN_83AA4F:
  LDA.B $44,X                               ; $83AA4F |
  BNE CODE_83AA6A                           ; $83AA51 |
  LDA.B $1E,X                               ; $83AA53 |
  CMP.B #$03                                ; $83AA55 |
  BNE CODE_83AA6A                           ; $83AA57 |
  INC.B $44,X                               ; $83AA59 |
  REP #$20                                  ; $83AA5B |
  LDA.W #$0070                              ; $83AA5D |
  JSL.L CODE_FL_8089BD                      ; $83AA60 |
  SEP #$20                                  ; $83AA64 |
  JSL.L CODE_FL_83F758                      ; $83AA66 |

CODE_83AA6A:
  RTS                                       ; $83AA6A |

  LDA.B $48,X                               ; $83AA6B |
  BEQ CODE_83AA75                           ; $83AA6D |

CODE_JP_83AA6F:
  JSR.W CODE_FN_839ECD                      ; $83AA6F |
  JMP.W CODE_FN_8394AF                      ; $83AA72 |

CODE_83AA75:
  JSR.W CODE_FN_8385EA                      ; $83AA75 |
  JSR.W CODE_FN_839570                      ; $83AA78 |
  LDA.B $44,X                               ; $83AA7B |
  CMP.B #$10                                ; $83AA7D |
  BCS CODE_83AA84                           ; $83AA7F |
  INC.B $44,X                               ; $83AA81 |
  RTS                                       ; $83AA83 |

CODE_83AA84:
  LDA.B $97                                 ; $83AA84 |
  BIT.B #$04                                ; $83AA86 |
  BEQ CODE_JP_83AA6F                        ; $83AA88 |
  RTS                                       ; $83AA8A |

  JSR.W CODE_FN_838576                      ; $83AA8B |
  LDA.B $97                                 ; $83AA8E |
  AND.B #$C0                                ; $83AA90 |
  CMP.B #$C0                                ; $83AA92 |
  BNE CODE_83AAA6                           ; $83AA94 |
  LDA.B $97                                 ; $83AA96 |
  BIT.B #$03                                ; $83AA98 |
  BEQ CODE_83AAA5                           ; $83AA9A |
  LDA.B $35,X                               ; $83AA9C |
  ORA.B #$80                                ; $83AA9E |
  STA.B $35,X                               ; $83AAA0 |
  JMP.W CODE_FN_83A0E4                      ; $83AAA2 |

CODE_83AAA5:
  RTS                                       ; $83AAA5 |

CODE_83AAA6:
  LDA.B $35,X                               ; $83AAA6 |
  ORA.B #$80                                ; $83AAA8 |
  STA.B $35,X                               ; $83AAAA |
  JMP.W CODE_JP_83AA6F                      ; $83AAAC |

  LDA.B $2C,X                               ; $83AAAF |
  BEQ CODE_83AAC3                           ; $83AAB1 |
  DEC.B $2C,X                               ; $83AAB3 |
  LDA.B $48,X                               ; $83AAB5 |
  BEQ CODE_83AAC2                           ; $83AAB7 |
  REP #$20                                  ; $83AAB9 |
  LDA.W #$FF00                              ; $83AABB |
  STA.B $28,X                               ; $83AABE |
  SEP #$20                                  ; $83AAC0 |

CODE_83AAC2:
  RTS                                       ; $83AAC2 |

CODE_83AAC3:
  LDA.B $9A                                 ; $83AAC3 |
  BIT.B #$80                                ; $83AAC5 |
  BEQ CODE_83AADB                           ; $83AAC7 |
  AND.B #$7F                                ; $83AAC9 |
  STA.B $9A                                 ; $83AACB |
  JSL.L CODE_FL_83CD69                      ; $83AACD |
  JSL.L CODE_FL_83CBC9                      ; $83AAD1 |
  JSR.W CODE_FN_839EDA                      ; $83AAD5 |
  JMP.W CODE_FN_8394AF                      ; $83AAD8 |

CODE_83AADB:
  RTS                                       ; $83AADB |

  REP #$20                                  ; $83AADC |
  STZ.B $5A,X                               ; $83AADE |
  LDA.W #$0200                              ; $83AAE0 |
  STA.B $08                                 ; $83AAE3 |
  LDA.W #$FE00                              ; $83AAE5 |
  STA.B $0A                                 ; $83AAE8 |
  JSR.W CODE_FN_83ABB4                      ; $83AAEA |
  LDA.B $9B                                 ; $83AAED |
  BIT.B #$40                                ; $83AAEF |
  BEQ CODE_83AB03                           ; $83AAF1 |
  LDA.B #$20                                ; $83AAF3 |
  JSR.W CODE_FN_838948                      ; $83AAF5 |
  LDA.B #$01                                ; $83AAF8 |
  STA.B $5A,X                               ; $83AAFA |
  JSR.W CODE_FN_83AC0B                      ; $83AAFC |
  JMP.W CODE_FN_83AC47                      ; $83AAFF |

CODE_83AB02:
  RTS                                       ; $83AB02 |

CODE_83AB03:
  JSR.W CODE_FN_83AC47                      ; $83AB03 |
  LDA.B $00                                 ; $83AB06 |
  BEQ CODE_83AB02                           ; $83AB08 |
  LDA.B $98                                 ; $83AB0A |
  BIT.B #$80                                ; $83AB0C |
  BEQ CODE_83AB02                           ; $83AB0E |

CODE_FN_83AB10:
  REP #$20                                  ; $83AB10 |
  LDA.W #$0050                              ; $83AB12 |
  STA.B $4C,X                               ; $83AB15 |
  LDA.B $3A,X                               ; $83AB17 |
  AND.W #$FBFF                              ; $83AB19 |
  STA.B $3A,X                               ; $83AB1C |
  JSL.L CODE_FL_83CD69                      ; $83AB1E |
  JSL.L CODE_FL_83CBC9                      ; $83AB22 |
  SEP #$20                                  ; $83AB26 |
  LDA.B #$1B                                ; $83AB28 |
  JMP.W CODE_FN_83891C                      ; $83AB2A |

CODE_FL_83AB2D:
  PHB                                       ; $83AB2D |
  PEA.W $8181                               ; $83AB2E |
  PLB                                       ; $83AB31 |
  PLB                                       ; $83AB32 |
  JSR.W CODE_FN_83AB10                      ; $83AB33 |
  REP #$20                                  ; $83AB36 |
  PLB                                       ; $83AB38 |
  RTL                                       ; $83AB39 |

  REP #$20                                  ; $83AB3A |
  STZ.B $26,X                               ; $83AB3C |
  STZ.B $28,X                               ; $83AB3E |
  LDA.B $44,X                               ; $83AB40 |
  BNE CODE_83AB7D                           ; $83AB42 |
  STZ.B $4A,X                               ; $83AB44 |
  STZ.B $4C,X                               ; $83AB46 |
  STZ.B $26,X                               ; $83AB48 |
  STZ.B $28,X                               ; $83AB4A |
  LDA.B $BA,X                               ; $83AB4C |
  AND.W #$00FF                              ; $83AB4E |
  CMP.W #$00FF                              ; $83AB51 |
  BNE CODE_83AB78                           ; $83AB54 |
  LDA.W #$00B0                              ; $83AB56 |
  JSL.L CODE_FL_8089BD                      ; $83AB59 |
  INC.B $44,X                               ; $83AB5D |
  LDA.W #$0020                              ; $83AB5F |
  STA.B $2C,X                               ; $83AB62 |
  LDA.W #$0002                              ; $83AB64 |
  STA.B $5A,X                               ; $83AB67 |
  LDA.B $94,X                               ; $83AB69 |
  ASL A                                     ; $83AB6B |
  ASL A                                     ; $83AB6C |
  TAY                                       ; $83AB6D |
  LDA.W CODE_00EB88,Y                       ; $83AB6E |
  STA.B $4A,X                               ; $83AB71 |
  LDA.W LOOSE_OP_00EB8A,Y                   ; $83AB73 |
  STA.B $4C,X                               ; $83AB76 |

CODE_83AB78:
  SEP #$20                                  ; $83AB78 |
  JMP.W CODE_FN_83AC47                      ; $83AB7A |

CODE_83AB7D:
  LDA.W #$0400                              ; $83AB7D |
  STA.B $08                                 ; $83AB80 |
  LDA.W #$FC00                              ; $83AB82 |
  STA.B $0A                                 ; $83AB85 |
  LDA.B $94,X                               ; $83AB87 |
  JSR.W CODE_FN_83ABD5                      ; $83AB89 |
  LDA.B $46,X                               ; $83AB8C |
  ORA.B $48,X                               ; $83AB8E |
  BNE CODE_83AB96                           ; $83AB90 |
  DEC.B $2C,X                               ; $83AB92 |
  BNE CODE_83AB78                           ; $83AB94 |

CODE_83AB96:
  LDA.B #$21                                ; $83AB96 |
  JSR.W CODE_FN_83891C                      ; $83AB98 |
  LDA.B #$01                                ; $83AB9B |
  STA.B $5A,X                               ; $83AB9D |
  JSR.W CODE_FN_83AC0B                      ; $83AB9F |
  BRA CODE_83AB78                           ; $83ABA2 |

  LDA.B $BA,X                               ; $83ABA4 |
  CMP.B #$FF                                ; $83ABA6 |
  BNE CODE_83ABB3                           ; $83ABA8 |
  LDA.B #$60                                ; $83ABAA |
  STA.B $52,X                               ; $83ABAC |
  LDA.B #$21                                ; $83ABAE |
  JMP.W CODE_FN_83891C                      ; $83ABB0 |

CODE_83ABB3:
  RTS                                       ; $83ABB3 |

CODE_FN_83ABB4:
  STZ.B $26,X                               ; $83ABB4 |
  STZ.B $28,X                               ; $83ABB6 |
  LDA.W #$0008                              ; $83ABB8 |
  JSL.L CODE_FL_83CE07                      ; $83ABBB |
  SEP #$20                                  ; $83ABBF |
  LDA.B $97                                 ; $83ABC1 |
  AND.B #$0F                                ; $83ABC3 |
  BEQ CODE_FN_83AC0B                        ; $83ABC5 |
  REP #$20                                  ; $83ABC7 |
  AND.W #$00FF                              ; $83ABC9 |
  TAY                                       ; $83ABCC |
  LDA.W LOOSE_OP_00EB58,Y                   ; $83ABCD |
  AND.W #$00FF                              ; $83ABD0 |
  STA.B $94,X                               ; $83ABD3 |

CODE_FN_83ABD5:
  ASL A                                     ; $83ABD5 |
  ASL A                                     ; $83ABD6 |
  AND.W #$00FF                              ; $83ABD7 |
  TAY                                       ; $83ABDA |
  LDA.B $4A,X                               ; $83ABDB |
  CLC                                       ; $83ABDD |
  ADC.W LOOSE_OP_00EB68,Y                   ; $83ABDE |
  BPL CODE_83ABEB                           ; $83ABE1 |
  CMP.B $0A                                 ; $83ABE3 |
  BCS CODE_83ABF1                           ; $83ABE5 |
  LDA.B $0A                                 ; $83ABE7 |
  BRA CODE_83ABF1                           ; $83ABE9 |

CODE_83ABEB:
  CMP.B $08                                 ; $83ABEB |
  BCC CODE_83ABF1                           ; $83ABED |
  LDA.B $08                                 ; $83ABEF |

CODE_83ABF1:
  STA.B $4A,X                               ; $83ABF1 |
  LDA.B $4C,X                               ; $83ABF3 |
  CLC                                       ; $83ABF5 |
  ADC.W LOOSE_OP_00EB6A,Y                   ; $83ABF6 |
  BPL CODE_83AC03                           ; $83ABF9 |
  CMP.B $0A                                 ; $83ABFB |
  BCS CODE_83AC09                           ; $83ABFD |
  LDA.B $0A                                 ; $83ABFF |
  BRA CODE_83AC09                           ; $83AC01 |

CODE_83AC03:
  CMP.B $08                                 ; $83AC03 |
  BCC CODE_83AC09                           ; $83AC05 |
  LDA.B $08                                 ; $83AC07 |

CODE_83AC09:
  STA.B $4C,X                               ; $83AC09 |

CODE_FN_83AC0B:
  REP #$20                                  ; $83AC0B |
  LDA.B $94,X                               ; $83AC0D |
  ASL A                                     ; $83AC0F |
  ASL A                                     ; $83AC10 |
  ASL A                                     ; $83AC11 |
  TAY                                       ; $83AC12 |
  LDA.B $04,X                               ; $83AC13 |
  AND.W #$DFDF                              ; $83AC15 |
  ORA.W LOOSE_OP_00EBAE,Y                   ; $83AC18 |
  STA.B $04,X                               ; $83AC1B |
  LDA.B $5A,X                               ; $83AC1D |
  BEQ CODE_83AC3A                           ; $83AC1F |
  CMP.W #$0001                              ; $83AC21 |
  BEQ CODE_83AC30                           ; $83AC24 |
  LDA.W LOOSE_OP_00EBAC,Y                   ; $83AC26 |
  CMP.B $20,X                               ; $83AC29 |
  BEQ CODE_83AC44                           ; $83AC2B |
  JMP.W CODE_JP_8388DB                      ; $83AC2D |

CODE_83AC30:
  LDA.W CODE_00EBAA,Y                       ; $83AC30 |
  CMP.B $20,X                               ; $83AC33 |
  BEQ CODE_83AC44                           ; $83AC35 |
  JMP.W CODE_JP_8388DB                      ; $83AC37 |

CODE_83AC3A:
  LDA.W LOOSE_OP_00EBA8,Y                   ; $83AC3A |
  CMP.B $20,X                               ; $83AC3D |
  BEQ CODE_83AC44                           ; $83AC3F |
  JMP.W CODE_JP_8388DB                      ; $83AC41 |

CODE_83AC44:
  SEP #$20                                  ; $83AC44 |
  RTS                                       ; $83AC46 |

CODE_FN_83AC47:
  STZ.B $00                                 ; $83AC47 |
  REP #$20                                  ; $83AC49 |
  LDA.W $1C6C                               ; $83AC4B |
  SEC                                       ; $83AC4E |
  SBC.B $0D,X                               ; $83AC4F |
  BMI CODE_83AC6E                           ; $83AC51 |
  SEP #$20                                  ; $83AC53 |
  INC.B $00                                 ; $83AC55 |
  INC A                                     ; $83AC57 |
  CMP.B #$04                                ; $83AC58 |
  BCC CODE_83AC5E                           ; $83AC5A |
  LDA.B #$04                                ; $83AC5C |

CODE_83AC5E:
  STA.B $29,X                               ; $83AC5E |
  LDA.B $48,X                               ; $83AC60 |
  BEQ CODE_83AC67                           ; $83AC62 |
  JMP.W CODE_JP_839F09                      ; $83AC64 |

CODE_83AC67:
  STZ.B $28,X                               ; $83AC67 |
  STZ.B $4C,X                               ; $83AC69 |
  STZ.B $4D,X                               ; $83AC6B |
  RTS                                       ; $83AC6D |

CODE_83AC6E:
  CMP.W #$FFF8                              ; $83AC6E |
  BCC CODE_83AC75                           ; $83AC71 |
  INC.B $00                                 ; $83AC73 |

CODE_83AC75:
  SEP #$20                                  ; $83AC75 |
  RTS                                       ; $83AC77 |

CODE_FL_83AC78:
  PHB                                       ; $83AC78 |
  PEA.W $8181                               ; $83AC79 |
  PLB                                       ; $83AC7C |
  PLB                                       ; $83AC7D |
  LDX.W #$0B20                              ; $83AC7E |
  LDA.B $1A,X                               ; $83AC81 |
  BNE CODE_83AC87                           ; $83AC83 |
  PLB                                       ; $83AC85 |
  RTL                                       ; $83AC86 |

CODE_83AC87:
  JSR.W CODE_FN_83AC94                      ; $83AC87 |
  SEP #$20                                  ; $83AC8A |
  JSL.L CODE_FL_8FFEF2                      ; $83AC8C |
  REP #$20                                  ; $83AC90 |
  PLB                                       ; $83AC92 |
  RTL                                       ; $83AC93 |

CODE_FN_83AC94:
  LDY.B $A6                                 ; $83AC94 |
  BNE CODE_83ACDF                           ; $83AC96 |
  PHX                                       ; $83AC98 |
  PHY                                       ; $83AC99 |
  STX.B $FC                                 ; $83AC9A |
  PHB                                       ; $83AC9C |
  PEA.W $8787                               ; $83AC9D |
  PLB                                       ; $83ACA0 |
  PLB                                       ; $83ACA1 |
  LDA.W #$0080                              ; $83ACA2 |
  STA.B $4C,X                               ; $83ACA5 |
  LDA.B $0D,X                               ; $83ACA7 |
  BMI CODE_83ACB9                           ; $83ACA9 |
  CMP.W #$4000                              ; $83ACAB |
  BCS CODE_83ACD9                           ; $83ACAE |
  LDA.B $0D,X                               ; $83ACB0 |
  ORA.B $09,X                               ; $83ACB2 |
  AND.W #$FF00                              ; $83ACB4 |
  BNE CODE_83ACD9                           ; $83ACB7 |

CODE_83ACB9:
  LDA.B $09,X                               ; $83ACB9 |
  PHA                                       ; $83ACBB |
  SEC                                       ; $83ACBC |
  SBC.W #$0010                              ; $83ACBD |
  STA.B $09,X                               ; $83ACC0 |
  JSL.L CODE_FL_85A62E                      ; $83ACC2 |
  LDA.B $09,X                               ; $83ACC6 |
  CLC                                       ; $83ACC8 |
  ADC.W #$0020                              ; $83ACC9 |
  STA.B $09,X                               ; $83ACCC |
  JSL.L CODE_FL_85A62E                      ; $83ACCE |
  PLA                                       ; $83ACD2 |
  STA.B $09,X                               ; $83ACD3 |
  JSL.L CODE_FL_86C870                      ; $83ACD5 |

CODE_83ACD9:
  PLB                                       ; $83ACD9 |
  PLY                                       ; $83ACDA |
  PLX                                       ; $83ACDB |
  JMP.W CODE_JP_83B1F2                      ; $83ACDC |

CODE_83ACDF:
  LDA.W $0009,Y                             ; $83ACDF |
  STA.B $09,X                               ; $83ACE2 |
  LDA.W $000D,Y                             ; $83ACE4 |
  STA.B $0D,X                               ; $83ACE7 |
  LDA.W $0022,Y                             ; $83ACE9 |
  CMP.W #$003F                              ; $83ACEC |
  BEQ CODE_83ACF6                           ; $83ACEF |
  CMP.W #$0041                              ; $83ACF1 |
  BNE CODE_83ACF9                           ; $83ACF4 |

CODE_83ACF6:
  TDC                                       ; $83ACF6 |
  BRA CODE_83AD04                           ; $83ACF7 |

CODE_83ACF9:
  LDA.W $0004,Y                             ; $83ACF9 |
  AND.W #$0020                              ; $83ACFC |
  BEQ CODE_83AD04                           ; $83ACFF |
  LDA.W #$2020                              ; $83AD01 |

CODE_83AD04:
  ORA.W $1968                               ; $83AD04 |
  STA.B $04,X                               ; $83AD07 |
  RTS                                       ; $83AD09 |

CODE_FN_83AD0A:
  STA.W $0B3C                               ; $83AD0A |
  STZ.W $0B3E                               ; $83AD0D |
  STZ.W $0B40                               ; $83AD10 |
  RTS                                       ; $83AD13 |

  STZ.B $26,X                               ; $83AD14 |
  STZ.B $27,X                               ; $83AD16 |

CODE_FN_83AD18:
  LDA.B $48,X                               ; $83AD18 |
  BNE CODE_83AD1F                           ; $83AD1A |

CODE_FN_83AD1C:
  JMP.W CODE_FN_83B1B1                      ; $83AD1C |

CODE_83AD1F:
  LDA.B $9B                                 ; $83AD1F |
  BIT.B #$80                                ; $83AD21 |
  BEQ CODE_83AD28                           ; $83AD23 |
  JMP.W CODE_FN_83B16B                      ; $83AD25 |

CODE_83AD28:
  BIT.B #$40                                ; $83AD28 |
  BEQ CODE_83AD2F                           ; $83AD2A |
  JMP.W CODE_FN_83B0EE                      ; $83AD2C |

CODE_83AD2F:
  LDA.B $9A                                 ; $83AD2F |
  BIT.B #$80                                ; $83AD31 |
  BEQ CODE_83AD38                           ; $83AD33 |
  JMP.W CODE_FN_83B114                      ; $83AD35 |

CODE_83AD38:
  LDA.B $97                                 ; $83AD38 |
  BIT.B #$07                                ; $83AD3A |
  BEQ CODE_83AD41                           ; $83AD3C |
  JMP.W CODE_JP_83B0A4                      ; $83AD3E |

CODE_83AD41:
  BIT.B #$08                                ; $83AD41 |
  BEQ CODE_83AD48                           ; $83AD43 |
  JMP.W CODE_JP_83B0C5                      ; $83AD45 |

CODE_83AD48:
  LDA.B $4A,X                               ; $83AD48 |
  ORA.B $4B,X                               ; $83AD4A |
  BEQ CODE_83AD51                           ; $83AD4C |
  JMP.W CODE_JP_83B0BB                      ; $83AD4E |

CODE_83AD51:
  RTS                                       ; $83AD51 |

  JSR.W CODE_FN_83AD7C                      ; $83AD52 |
  BCC CODE_83AD51                           ; $83AD55 |
  LDA.B $46,X                               ; $83AD57 |
  BNE CODE_83AD61                           ; $83AD59 |
  LDA.B $8D,X                               ; $83AD5B |
  BIT.B #$60                                ; $83AD5D |
  BEQ CODE_83AD6E                           ; $83AD5F |

CODE_83AD61:
  INC.B $44,X                               ; $83AD61 |
  LDA.B $44,X                               ; $83AD63 |
  CMP.B #$28                                ; $83AD65 |
  BCC CODE_83AD70                           ; $83AD67 |
  STZ.B $44,X                               ; $83AD69 |
  JMP.W CODE_FN_839570                      ; $83AD6B |

CODE_83AD6E:
  STZ.B $44,X                               ; $83AD6E |

CODE_83AD70:
  LDA.B $97                                 ; $83AD70 |
  BIT.B #$40                                ; $83AD72 |
  BEQ CODE_83AD79                           ; $83AD74 |
  JMP.W CODE_JP_83B1BB                      ; $83AD76 |

CODE_83AD79:
  JMP.W CODE_FN_839570                      ; $83AD79 |

CODE_FN_83AD7C:
  LDA.B $48,X                               ; $83AD7C |
  BNE CODE_83AD85                           ; $83AD7E |
  JSR.W CODE_FN_83AD1C                      ; $83AD80 |
  BRA CODE_83ADB3                           ; $83AD83 |

CODE_83AD85:
  LDA.B $9B                                 ; $83AD85 |
  BIT.B #$80                                ; $83AD87 |
  BEQ CODE_83AD90                           ; $83AD89 |
  JSR.W CODE_FN_83B16B                      ; $83AD8B |
  BRA CODE_83ADB3                           ; $83AD8E |

CODE_83AD90:
  BIT.B #$40                                ; $83AD90 |
  BEQ CODE_83AD99                           ; $83AD92 |
  JSR.W CODE_FN_83B0EE                      ; $83AD94 |
  BRA CODE_83ADB3                           ; $83AD97 |

CODE_83AD99:
  LDA.B $9A                                 ; $83AD99 |
  BIT.B #$80                                ; $83AD9B |
  BEQ CODE_83ADA4                           ; $83AD9D |
  JSR.W CODE_FN_83B114                      ; $83AD9F |
  BRA CODE_83ADB3                           ; $83ADA2 |

CODE_83ADA4:
  LDA.B $97                                 ; $83ADA4 |
  AND.B #$03                                ; $83ADA6 |
  BNE CODE_83ADB5                           ; $83ADA8 |
  LDA.B $4A,X                               ; $83ADAA |
  ORA.B $4B,X                               ; $83ADAC |
  BNE CODE_83ADB5                           ; $83ADAE |
  JSR.W CODE_FN_83B094                      ; $83ADB0 |

CODE_83ADB3:
  CLC                                       ; $83ADB3 |
  RTS                                       ; $83ADB4 |

CODE_83ADB5:
  SEC                                       ; $83ADB5 |
  RTS                                       ; $83ADB6 |

  LDA.W $0B40                               ; $83ADB7 |
  CMP.B #$FF                                ; $83ADBA |
  BNE CODE_83ADC1                           ; $83ADBC |
  JMP.W CODE_FN_83B094                      ; $83ADBE |

CODE_83ADC1:
  RTS                                       ; $83ADC1 |

  JSR.W CODE_FN_8385EA                      ; $83ADC2 |
  LDA.W $0B3E                               ; $83ADC5 |
  CMP.B #$02                                ; $83ADC8 |
  BCC CODE_83AE0E                           ; $83ADCA |
  CMP.B #$08                                ; $83ADCC |
  BCC CODE_83ADF8                           ; $83ADCE |
  LDA.B $97                                 ; $83ADD0 |
  AND.B #$03                                ; $83ADD2 |
  STA.B $10                                 ; $83ADD4 |
  LDA.B $48,X                               ; $83ADD6 |
  BNE CODE_83ADE1                           ; $83ADD8 |
  LDA.B $10                                 ; $83ADDA |
  BEQ CODE_83AE0D                           ; $83ADDC |
  JMP.W CODE_FN_839574                      ; $83ADDE |

CODE_83ADE1:
  JSR.W CODE_FN_83ADFC                      ; $83ADE1 |
  LDA.B $10                                 ; $83ADE4 |
  BEQ CODE_83AE0D                           ; $83ADE6 |
  LDA.B $04,X                               ; $83ADE8 |
  LSR.B $10                                 ; $83ADEA |
  BCC CODE_83ADF3                           ; $83ADEC |
  AND.B #$DF                                ; $83ADEE |
  STA.B $04,X                               ; $83ADF0 |
  RTS                                       ; $83ADF2 |

CODE_83ADF3:
  ORA.B #$20                                ; $83ADF3 |
  STA.B $04,X                               ; $83ADF5 |
  RTS                                       ; $83ADF7 |

CODE_83ADF8:
  LDA.B $48,X                               ; $83ADF8 |
  BEQ CODE_83AE0D                           ; $83ADFA |

CODE_FN_83ADFC:
  STZ.B $26,X                               ; $83ADFC |
  STZ.B $27,X                               ; $83ADFE |
  LDA.B $99                                 ; $83AE00 |
  AND.B #$80                                ; $83AE02 |
  BEQ CODE_83AE0D                           ; $83AE04 |
  LDA.B #$08                                ; $83AE06 |
  STA.B $9C,X                               ; $83AE08 |
  JMP.W CODE_FN_83A30B                      ; $83AE0A |

CODE_83AE0D:
  RTS                                       ; $83AE0D |

CODE_83AE0E:
  LDA.W $0B40                               ; $83AE0E |
  CMP.B #$FF                                ; $83AE11 |
  BNE CODE_83AE18                           ; $83AE13 |
  JSR.W CODE_FN_83B094                      ; $83AE15 |

CODE_83AE18:
  JMP.W CODE_FN_83AD18                      ; $83AE18 |

  LDA.B $9B                                 ; $83AE1B |
  BIT.B #$40                                ; $83AE1D |
  BEQ CODE_83AE24                           ; $83AE1F |
  JMP.W CODE_FN_83B0EE                      ; $83AE21 |

CODE_83AE24:
  LDA.B $9A                                 ; $83AE24 |
  BIT.B #$80                                ; $83AE26 |
  BEQ CODE_83AE2D                           ; $83AE28 |
  JMP.W CODE_FN_83B114                      ; $83AE2A |

CODE_83AE2D:
  LDA.B $44,X                               ; $83AE2D |
  BNE CODE_83AE4A                           ; $83AE2F |
  LDA.W $0B40                               ; $83AE31 |
  CMP.B #$FF                                ; $83AE34 |
  BNE CODE_83AE6F                           ; $83AE36 |
  INC.B $44,X                               ; $83AE38 |
  REP #$20                                  ; $83AE3A |
  LDA.W #$FF00                              ; $83AE3C |
  STA.B $58,X                               ; $83AE3F |
  SEP #$20                                  ; $83AE41 |
  JSL.L CODE_FL_83F88D                      ; $83AE43 |
  JMP.W CODE_FN_839570                      ; $83AE47 |

CODE_83AE4A:
  DEC.B $2C,X                               ; $83AE4A |
  BMI CODE_83AE6C                           ; $83AE4C |
  LDA.B $97                                 ; $83AE4E |
  BIT.B #$80                                ; $83AE50 |
  BEQ CODE_83AE6C                           ; $83AE52 |
  REP #$20                                  ; $83AE54 |
  LDA.B $58,X                               ; $83AE56 |
  CMP.W #$FD00                              ; $83AE58 |
  BCC CODE_83AE63                           ; $83AE5B |
  SEC                                       ; $83AE5D |
  SBC.W #$0020                              ; $83AE5E |
  STA.B $58,X                               ; $83AE61 |

CODE_83AE63:
  LDA.B $58,X                               ; $83AE63 |
  STA.B $28,X                               ; $83AE65 |
  SEP #$20                                  ; $83AE67 |
  JMP.W CODE_FN_839570                      ; $83AE69 |

CODE_83AE6C:
  JSR.W CODE_FN_83B1B1                      ; $83AE6C |

CODE_83AE6F:
  JMP.W CODE_FN_839570                      ; $83AE6F |

  LDA.B $44,X                               ; $83AE72 |
  BNE CODE_83AEA5                           ; $83AE74 |
  LDA.B $9B                                 ; $83AE76 |
  BIT.B #$40                                ; $83AE78 |
  BEQ CODE_83AE7F                           ; $83AE7A |
  JMP.W CODE_FN_83B0EE                      ; $83AE7C |

CODE_83AE7F:
  LDA.B $9A                                 ; $83AE7F |
  BIT.B #$80                                ; $83AE81 |
  BEQ CODE_83AE88                           ; $83AE83 |
  JMP.W CODE_FN_83B114                      ; $83AE85 |

CODE_83AE88:
  LDA.B $48,X                               ; $83AE88 |
  BNE CODE_83AE8F                           ; $83AE8A |
  JMP.W CODE_FN_839570                      ; $83AE8C |

CODE_83AE8F:
  REP #$20                                  ; $83AE8F |
  LDA.W #$0037                              ; $83AE91 |
  JSL.L push_sound_queue                    ; $83AE94 |
  SEP #$20                                  ; $83AE98 |
  STZ.B $26,X                               ; $83AE9A |
  STZ.B $27,X                               ; $83AE9C |
  INC.B $44,X                               ; $83AE9E |
  LDA.B #$0E                                ; $83AEA0 |
  JMP.W CODE_FN_83AD0A                      ; $83AEA2 |

CODE_83AEA5:
  LDA.W $0B40                               ; $83AEA5 |
  CMP.B #$FF                                ; $83AEA8 |
  BNE CODE_83AED1                           ; $83AEAA |
  LDA.B $9B                                 ; $83AEAC |
  BIT.B #$80                                ; $83AEAE |
  BEQ CODE_83AEB5                           ; $83AEB0 |
  JMP.W CODE_FN_83B16B                      ; $83AEB2 |

CODE_83AEB5:
  BIT.B #$40                                ; $83AEB5 |
  BEQ CODE_83AEBC                           ; $83AEB7 |
  JMP.W CODE_FN_83B0EE                      ; $83AEB9 |

CODE_83AEBC:
  LDA.B $9A                                 ; $83AEBC |
  BIT.B #$40                                ; $83AEBE |
  BEQ CODE_83AEC5                           ; $83AEC0 |
  JMP.W CODE_FN_83B0EE                      ; $83AEC2 |

CODE_83AEC5:
  LDA.B $97                                 ; $83AEC5 |
  BIT.B #$07                                ; $83AEC7 |
  BEQ CODE_83AECE                           ; $83AEC9 |
  JMP.W CODE_JP_83B0BB                      ; $83AECB |

CODE_83AECE:
  JSR.W CODE_FN_83B094                      ; $83AECE |

CODE_83AED1:
  RTS                                       ; $83AED1 |

  JSR.W CODE_FN_83AD7C                      ; $83AED2 |
  BCC CODE_83AEE3                           ; $83AED5 |
  JSR.W CODE_FN_83AEE4                      ; $83AED7 |
  LDA.B $97                                 ; $83AEDA |
  BIT.B #$40                                ; $83AEDC |
  BNE CODE_83AEE3                           ; $83AEDE |
  JMP.W CODE_JP_83B0BB                      ; $83AEE0 |

CODE_83AEE3:
  RTS                                       ; $83AEE3 |

CODE_FN_83AEE4:
  LDY.W #$0300                              ; $83AEE4 |
  LDA.B $04,X                               ; $83AEE7 |
  BIT.B #$20                                ; $83AEE9 |
  BEQ CODE_83AEF0                           ; $83AEEB |
  LDY.W #$FD00                              ; $83AEED |

CODE_83AEF0:
  REP #$20                                  ; $83AEF0 |
  TYA                                       ; $83AEF2 |
  STA.B $26,X                               ; $83AEF3 |
  SEP #$20                                  ; $83AEF5 |
  RTS                                       ; $83AEF7 |

  LDA.B $44,X                               ; $83AEF8 |
  CMP.B #$01                                ; $83AEFA |
  BEQ CODE_83AF12                           ; $83AEFC |
  CMP.B #$02                                ; $83AEFE |
  BEQ CODE_83AF51                           ; $83AF00 |
  LDA.W $0B40                               ; $83AF02 |
  CMP.B #$FF                                ; $83AF05 |
  BNE CODE_83AF11                           ; $83AF07 |
  STZ.B $2C,X                               ; $83AF09 |
  INC.B $44,X                               ; $83AF0B |
  JSL.L CODE_FL_83F82B                      ; $83AF0D |

CODE_83AF11:
  RTS                                       ; $83AF11 |

CODE_83AF12:
  INC.B $2C,X                               ; $83AF12 |
  LDA.B $2C,X                               ; $83AF14 |
  CMP.B #$0A                                ; $83AF16 |
  BCC CODE_83AF2E                           ; $83AF18 |
  STZ.B $2C,X                               ; $83AF1A |
  REP #$20                                  ; $83AF1C |
  LDA.W #$0001                              ; $83AF1E |
  JSL.L CODE_FL_83D2E8                      ; $83AF21 |
  LDA.W #$0021                              ; $83AF25 |
  JSL.L push_sound_queue                    ; $83AF28 |
  SEP #$20                                  ; $83AF2C |

CODE_83AF2E:
  REP #$20                                  ; $83AF2E |
  LDA.L $7002E2                             ; $83AF30 |
  SEP #$20                                  ; $83AF34 |
  BEQ CODE_83AF3E                           ; $83AF36 |
  LDA.B $96                                 ; $83AF38 |
  BIT.B #$80                                ; $83AF3A |
  BNE CODE_83AF50                           ; $83AF3C |

CODE_83AF3E:
  INC.B $44,X                               ; $83AF3E |
  LDA.B $22,X                               ; $83AF40 |
  CMP.B #$3F                                ; $83AF42 |
  BEQ CODE_83AF4B                           ; $83AF44 |
  LDA.B #$16                                ; $83AF46 |
  JMP.W CODE_FN_83AD0A                      ; $83AF48 |

CODE_83AF4B:
  LDA.B #$4E                                ; $83AF4B |
  JMP.W CODE_FN_83AD0A                      ; $83AF4D |

CODE_83AF50:
  RTS                                       ; $83AF50 |

CODE_83AF51:
  LDA.W $0B40                               ; $83AF51 |
  CMP.B #$FF                                ; $83AF54 |
  BNE CODE_83AF50                           ; $83AF56 |
  JSR.W CODE_FN_83B094                      ; $83AF58 |
  JMP.W CODE_FN_83AD18                      ; $83AF5B |

  LDA.B $44,X                               ; $83AF5E |
  BNE CODE_83AF8B                           ; $83AF60 |
  LDA.W $0B40                               ; $83AF62 |
  CMP.B #$FF                                ; $83AF65 |
  BNE CODE_83AF8A                           ; $83AF67 |
  INC.B $44,X                               ; $83AF69 |
  REP #$20                                  ; $83AF6B |
  LDA.L $7002E2                             ; $83AF6D |
  CMP.W #$0002                              ; $83AF71 |
  BCC CODE_83AF83                           ; $83AF74 |
  LDA.W #$0002                              ; $83AF76 |
  JSL.L CODE_FL_83D2E8                      ; $83AF79 |
  SEP #$20                                  ; $83AF7D |
  JSL.L CODE_FL_83F855                      ; $83AF7F |

CODE_83AF83:
  SEP #$20                                  ; $83AF83 |
  LDA.B #$1A                                ; $83AF85 |
  JMP.W CODE_FN_83AD0A                      ; $83AF87 |

CODE_83AF8A:
  RTS                                       ; $83AF8A |

CODE_83AF8B:
  LDA.W $0B40                               ; $83AF8B |
  CMP.B #$FF                                ; $83AF8E |
  BNE CODE_83AF8A                           ; $83AF90 |
  JSR.W CODE_FN_83B094                      ; $83AF92 |
  JMP.W CODE_FN_83AD18                      ; $83AF95 |

  LDA.B $44,X                               ; $83AF98 |
  BNE CODE_83AFC4                           ; $83AF9A |
  LDA.W $0B40                               ; $83AF9C |
  CMP.B #$FF                                ; $83AF9F |
  BNE CODE_83AF8A                           ; $83AFA1 |
  INC.B $44,X                               ; $83AFA3 |
  REP #$20                                  ; $83AFA5 |
  LDA.L $7002E2                             ; $83AFA7 |
  CMP.W #$0005                              ; $83AFAB |
  BCC CODE_83AFBD                           ; $83AFAE |
  LDA.W #$0005                              ; $83AFB0 |
  JSL.L CODE_FL_83D2E8                      ; $83AFB3 |
  SEP #$20                                  ; $83AFB7 |
  JSL.L CODE_FL_83F855                      ; $83AFB9 |

CODE_83AFBD:
  SEP #$20                                  ; $83AFBD |
  LDA.B #$56                                ; $83AFBF |
  JMP.W CODE_FN_83AD0A                      ; $83AFC1 |

CODE_83AFC4:
  LDA.W $0B40                               ; $83AFC4 |
  CMP.B #$FF                                ; $83AFC7 |
  BNE CODE_83AF8A                           ; $83AFC9 |
  JSR.W CODE_FN_83B094                      ; $83AFCB |
  JMP.W CODE_FN_83AD18                      ; $83AFCE |

  LDA.B $44,X                               ; $83AFD1 |
  BNE CODE_83AFEE                           ; $83AFD3 |
  LDA.W $0B40                               ; $83AFD5 |
  CMP.B #$FF                                ; $83AFD8 |
  BNE CODE_83B018                           ; $83AFDA |
  INC.B $44,X                               ; $83AFDC |
  REP #$20                                  ; $83AFDE |
  LDA.W #$FF00                              ; $83AFE0 |
  STA.B $58,X                               ; $83AFE3 |
  SEP #$20                                  ; $83AFE5 |
  JSL.L CODE_FL_83F88D                      ; $83AFE7 |
  JMP.W CODE_FN_839570                      ; $83AFEB |

CODE_83AFEE:
  DEC.B $2C,X                               ; $83AFEE |
  BMI CODE_83B010                           ; $83AFF0 |
  LDA.B $96                                 ; $83AFF2 |
  BIT.B #$80                                ; $83AFF4 |
  BEQ CODE_83B010                           ; $83AFF6 |
  REP #$20                                  ; $83AFF8 |
  LDA.B $58,X                               ; $83AFFA |
  CMP.W #$FD00                              ; $83AFFC |
  BCC CODE_83B007                           ; $83AFFF |
  SEC                                       ; $83B001 |
  SBC.W #$0020                              ; $83B002 |
  STA.B $58,X                               ; $83B005 |

CODE_83B007:
  LDA.B $58,X                               ; $83B007 |
  STA.B $28,X                               ; $83B009 |
  SEP #$20                                  ; $83B00B |
  JMP.W CODE_FN_839570                      ; $83B00D |

CODE_83B010:
  LDA.B #$20                                ; $83B010 |
  JSR.W CODE_FN_83AD0A                      ; $83B012 |
  JSR.W CODE_FN_83B1B6                      ; $83B015 |

CODE_83B018:
  JMP.W CODE_FN_839570                      ; $83B018 |

  JMP.W CODE_JP_839A43                      ; $83B01B |

  JMP.W CODE_JP_839A54                      ; $83B01E |

CODE_83B021:
  AND.B #$7F                                ; $83B021 |
  BNE CODE_83B02C                           ; $83B023 |
  LDA.B #$08                                ; $83B025 |
  STA.B $2C,X                               ; $83B027 |
  INC.B $44,X                               ; $83B029 |
  RTS                                       ; $83B02B |

CODE_83B02C:
  DEC.B $2C,X                               ; $83B02C |
  BEQ CODE_83B06A                           ; $83B02E |
  RTS                                       ; $83B030 |

  LDA.B $44,X                               ; $83B031 |
  BIT.B #$80                                ; $83B033 |
  BNE CODE_83B021                           ; $83B035 |
  AND.B #$7F                                ; $83B037 |
  BNE CODE_83B04A                           ; $83B039 |
  INC.B $44,X                               ; $83B03B |
  REP #$20                                  ; $83B03D |

CODE_83B03F:
  LDA.W #$FCC0                              ; $83B03F |
  STA.B $28,X                               ; $83B042 |
  JSR.W CODE_FN_83A316                      ; $83B044 |
  SEP #$20                                  ; $83B047 |
  RTS                                       ; $83B049 |

CODE_83B04A:
  LDA.B $BA,X                               ; $83B04A |
  CMP.B #$FF                                ; $83B04C |
  BEQ CODE_83B06A                           ; $83B04E |
  LDA.B $48,X                               ; $83B050 |
  BEQ CODE_83B069                           ; $83B052 |
  LDA.B $44,X                               ; $83B054 |
  CMP.B #$03                                ; $83B056 |
  BCS CODE_83B06A                           ; $83B058 |
  JSR.W CODE_FN_83AD18                      ; $83B05A |
  LDA.B $22,X                               ; $83B05D |
  CMP.B #$43                                ; $83B05F |
  BNE CODE_83B06A                           ; $83B061 |
  INC.B $44,X                               ; $83B063 |
  REP #$20                                  ; $83B065 |
  BRA CODE_83B03F                           ; $83B067 |

CODE_83B069:
  RTS                                       ; $83B069 |

CODE_83B06A:
  LDA.B #$60                                ; $83B06A |
  STA.B $52,X                               ; $83B06C |
  JSR.W CODE_FN_83B094                      ; $83B06E |
  JMP.W CODE_FN_83AD18                      ; $83B071 |

  RTS                                       ; $83B074 |

CODE_FN_83B075:
  LDA.B #$6C                                ; $83B075 |
  JSR.W CODE_FN_83AD0A                      ; $83B077 |
  LDA.B #$48                                ; $83B07A |
  JMP.W CODE_FN_838948                      ; $83B07C |

CODE_FN_83B07F:
  REP #$20                                  ; $83B07F |
  LDA.W #$003A                              ; $83B081 |
  JSL.L push_sound_queue                    ; $83B084 |
  SEP #$20                                  ; $83B088 |
  LDA.B #$06                                ; $83B08A |
  JSR.W CODE_FN_83AD0A                      ; $83B08C |
  LDA.B #$35                                ; $83B08F |
  JMP.W CODE_FN_838948                      ; $83B091 |

CODE_FN_83B094:
  LDA.B #$06                                ; $83B094 |
  STA.B $14,X                               ; $83B096 |
  STZ.B $15,X                               ; $83B098 |
  LDA.B #$04                                ; $83B09A |
  JSR.W CODE_FN_83AD0A                      ; $83B09C |
  LDA.B #$36                                ; $83B09F |
  JMP.W CODE_FN_838948                      ; $83B0A1 |

CODE_JP_83B0A4:
  LDA.B $97                                 ; $83B0A4 |
  BIT.B #$04                                ; $83B0A6 |
  BEQ CODE_JP_83B0BB                        ; $83B0A8 |
  LDA.B $33,X                               ; $83B0AA |
  BIT.B #$02                                ; $83B0AC |
  BEQ CODE_83B0BA                           ; $83B0AE |
  LDA.B #$24                                ; $83B0B0 |
  JSR.W CODE_FN_83AD0A                      ; $83B0B2 |
  LDA.B #$45                                ; $83B0B5 |
  JMP.W CODE_FN_838948                      ; $83B0B7 |

CODE_83B0BA:
  RTS                                       ; $83B0BA |

CODE_JP_83B0BB:
  LDA.B #$02                                ; $83B0BB |
  JSR.W CODE_FN_83AD0A                      ; $83B0BD |
  LDA.B #$37                                ; $83B0C0 |
  JMP.W CODE_FN_838948                      ; $83B0C2 |

CODE_JP_83B0C5:
  LDA.W $19B2                               ; $83B0C5 |
  BEQ CODE_83B0BA                           ; $83B0C8 |
  REP #$20                                  ; $83B0CA |
  LDA.B $09,X                               ; $83B0CC |
  STA.B $08                                 ; $83B0CE |
  LDA.B $0D,X                               ; $83B0D0 |
  SEC                                       ; $83B0D2 |
  SBC.W #$0010                              ; $83B0D3 |
  STA.B $0A                                 ; $83B0D6 |
  JSL.L CODE_FL_80CA7D                      ; $83B0D8 |
  SEP #$20                                  ; $83B0DC |
  AND.B #$7F                                ; $83B0DE |
  CMP.B #$01                                ; $83B0E0 |
  BNE CODE_83B0BA                           ; $83B0E2 |
  LDA.B #$26                                ; $83B0E4 |
  JSR.W CODE_FN_83AD0A                      ; $83B0E6 |
  LDA.B #$46                                ; $83B0E9 |
  JMP.W CODE_FN_838948                      ; $83B0EB |

CODE_FN_83B0EE:
  REP #$20                                  ; $83B0EE |
  LDA.W #$0008                              ; $83B0F0 |
  JSL.L push_sound_queue                    ; $83B0F3 |
  SEP #$20                                  ; $83B0F7 |
  LDA.B $97                                 ; $83B0F9 |
  BIT.B #$08                                ; $83B0FB |
  BEQ CODE_83B109                           ; $83B0FD |
  LDA.B #$42                                ; $83B0FF |
  JSR.W CODE_FN_83AD0A                      ; $83B101 |
  LDA.B #$3C                                ; $83B104 |
  JMP.W CODE_FN_838948                      ; $83B106 |

CODE_83B109:
  LDA.B #$10                                ; $83B109 |
  JSR.W CODE_FN_83AD0A                      ; $83B10B |
  LDA.B #$3B                                ; $83B10E |
  JMP.W CODE_FN_838948                      ; $83B110 |

CODE_83B113:
  RTS                                       ; $83B113 |

CODE_FN_83B114:
  LDA.L $7002E0                             ; $83B114 |
  BEQ CODE_83B113                           ; $83B118 |
  CMP.B #$01                                ; $83B11A |
  BEQ CODE_83B14D                           ; $83B11C |
  LDA.B $97                                 ; $83B11E |
  BIT.B #$08                                ; $83B120 |
  BEQ CODE_83B132                           ; $83B122 |
  REP #$20                                  ; $83B124 |
  SEP #$20                                  ; $83B126 |
  LDA.B #$52                                ; $83B128 |
  JSR.W CODE_FN_83AD0A                      ; $83B12A |
  LDA.B #$41                                ; $83B12D |
  JMP.W CODE_FN_838948                      ; $83B12F |

CODE_83B132:
  LDA.B #$18                                ; $83B132 |
  JSR.W CODE_FN_83AD0A                      ; $83B134 |
  LDA.B #$40                                ; $83B137 |
  JMP.W CODE_FN_838948                      ; $83B139 |

  LDA.B #$20                                ; $83B13C |
  STA.B $2C,X                               ; $83B13E |
  LDA.B #$1C                                ; $83B140 |
  JSR.W CODE_FN_83AD0A                      ; $83B142 |
  LDA.B #$42                                ; $83B145 |
  JSR.W CODE_FN_83891C                      ; $83B147 |
  JMP.W CODE_FN_839570                      ; $83B14A |

CODE_83B14D:
  LDA.B $97                                 ; $83B14D |
  BIT.B #$08                                ; $83B14F |
  BEQ CODE_83B161                           ; $83B151 |
  REP #$20                                  ; $83B153 |
  SEP #$20                                  ; $83B155 |
  LDA.B #$4A                                ; $83B157 |
  JSR.W CODE_FN_83AD0A                      ; $83B159 |
  LDA.B #$3F                                ; $83B15C |
  JMP.W CODE_FN_838948                      ; $83B15E |

CODE_83B161:
  LDA.B #$14                                ; $83B161 |
  JSR.W CODE_FN_83AD0A                      ; $83B163 |
  LDA.B #$3E                                ; $83B166 |
  JMP.W CODE_FN_838948                      ; $83B168 |

CODE_FN_83B16B:
  REP #$20                                  ; $83B16B |
  LDA.B $48,X                               ; $83B16D |
  BEQ CODE_83B17D                           ; $83B16F |
  CMP.W #$007F                              ; $83B171 |
  BEQ CODE_83B17D                           ; $83B174 |
  LDA.B $97                                 ; $83B176 |
  BIT.W #$0008                              ; $83B178 |
  BNE CODE_83B19D                           ; $83B17B |

CODE_83B17D:
  LDA.W #$00D0                              ; $83B17D |
  JSL.L CODE_FL_8089BD                      ; $83B180 |
  LDA.W #$0018                              ; $83B184 |
  STA.B $2C,X                               ; $83B187 |
  LDY.W #$FF00                              ; $83B189 |
  STY.B $28,X                               ; $83B18C |
  LDA.W #$001C                              ; $83B18E |
  JSR.W CODE_FN_83AD0A                      ; $83B191 |
  LDA.W #$0039                              ; $83B194 |
  JSR.W CODE_FN_83891C                      ; $83B197 |
  JMP.W CODE_FN_839570                      ; $83B19A |

CODE_83B19D:
  REP #$20                                  ; $83B19D |
  JSL.L CODE_FL_83B367                      ; $83B19F |
  JSL.L CODE_FL_83B3D9                      ; $83B1A3 |
  SEP #$20                                  ; $83B1A7 |
  LDA.B #$22                                ; $83B1A9 |
  JSR.W CODE_FN_83AD0A                      ; $83B1AB |
  JMP.W CODE_JP_83A151                      ; $83B1AE |

CODE_FN_83B1B1:
  LDA.B #$20                                ; $83B1B1 |
  JSR.W CODE_FN_83AD0A                      ; $83B1B3 |

CODE_FN_83B1B6:
  LDA.B #$3A                                ; $83B1B6 |
  JMP.W CODE_FN_83891C                      ; $83B1B8 |

CODE_JP_83B1BB:
  REP #$20                                  ; $83B1BB |
  LDA.W #$00B8                              ; $83B1BD |
  JSL.L CODE_FL_8089BD                      ; $83B1C0 |
  SEP #$20                                  ; $83B1C4 |
  JSR.W CODE_FN_83AEE4                      ; $83B1C6 |
  LDA.B #$12                                ; $83B1C9 |
  JSR.W CODE_FN_83AD0A                      ; $83B1CB |
  LDA.B #$3D                                ; $83B1CE |
  JMP.W CODE_FN_83891C                      ; $83B1D0 |

CODE_FN_83B1D3:
  LDA.B #$43                                ; $83B1D3 |
  JMP.W CODE_FN_83891C                      ; $83B1D5 |

CODE_FL_83B1D8:
  JSR.W CODE_FN_83B1E8                      ; $83B1D8 |
  STA.L $7002E8                             ; $83B1DB |
  RTL                                       ; $83B1DF |

CODE_FL_83B1E0:
  JSR.W CODE_FN_83B1E8                      ; $83B1E0 |
  CMP.L $7002E8                             ; $83B1E3 |
  RTL                                       ; $83B1E7 |

CODE_FN_83B1E8:
  LDA.B $C0                                 ; $83B1E8 |
  AND.W #$007F                              ; $83B1EA |
  XBA                                       ; $83B1ED |
  ASL A                                     ; $83B1EE |
  ORA.B $8E                                 ; $83B1EF |
  RTS                                       ; $83B1F1 |

CODE_JP_83B1F2:
  LDY.W #$0400                              ; $83B1F2 |
  JSR.W CODE_FN_83B200                      ; $83B1F5 |
  BCS CODE_83B23A                           ; $83B1F8 |
  LDY.W #$04C0                              ; $83B1FA |
  JMP.W CODE_FN_83B200                      ; $83B1FD |

CODE_FN_83B200:
  LDA.W $0048,Y                             ; $83B200 |
  BNE CODE_83B23B                           ; $83B203 |
  LDA.W $0028,Y                             ; $83B205 |
  BMI CODE_83B23B                           ; $83B208 |
  LDA.W $0022,Y                             ; $83B20A |
  CMP.W #$0004                              ; $83B20D |
  BNE CODE_83B23B                           ; $83B210 |
  LDA.B $09,X                               ; $83B212 |
  SBC.W $0009,Y                             ; $83B214 |
  BMI CODE_83B220                           ; $83B217 |
  CMP.W #$0010                              ; $83B219 |
  BCC CODE_83B225                           ; $83B21C |
  BRA CODE_83B23B                           ; $83B21E |

CODE_83B220:
  CMP.W #$FFF0                              ; $83B220 |
  BCC CODE_83B23B                           ; $83B223 |

CODE_83B225:
  SEC                                       ; $83B225 |
  LDA.B $0D,X                               ; $83B226 |
  SBC.W #$0010                              ; $83B228 |
  SBC.W $000D,Y                             ; $83B22B |
  BCC CODE_83B23B                           ; $83B22E |
  CMP.W #$000C                              ; $83B230 |
  BCS CODE_83B23B                           ; $83B233 |
  JSL.L CODE_FL_83B23D                      ; $83B235 |
  SEC                                       ; $83B239 |

CODE_83B23A:
  RTS                                       ; $83B23A |

CODE_83B23B:
  CLC                                       ; $83B23B |
  RTS                                       ; $83B23C |

CODE_FL_83B23D:
  STY.B $A6                                 ; $83B23D |
  LDA.W #$0000                              ; $83B23F |
  STA.L $7002E0                             ; $83B242 |
  JSR.W CODE_FN_83B3F7                      ; $83B246 |
  LDA.B $09,X                               ; $83B249 |
  STA.W $0009,Y                             ; $83B24B |
  LDA.B $0D,X                               ; $83B24E |
  STA.W $000D,Y                             ; $83B250 |
  TDC                                       ; $83B253 |
  STA.W $0026,Y                             ; $83B254 |
  STA.W $004A,Y                             ; $83B257 |
  STA.W $0028,Y                             ; $83B25A |
  STA.W $0000,Y                             ; $83B25D |
  STA.W $001C,Y                             ; $83B260 |
  JSL.L CODE_FL_83B330                      ; $83B263 |
  SEP #$20                                  ; $83B267 |
  LDA.B #$06                                ; $83B269 |
  JSR.W CODE_FN_83AD0A                      ; $83B26B |
  TYX                                       ; $83B26E |
  JSR.W CODE_FN_83B07F                      ; $83B26F |
  LDA.B #$70                                ; $83B272 |
  STA.B $48,X                               ; $83B274 |
  LDX.W #$0B20                              ; $83B276 |
  REP #$20                                  ; $83B279 |
  RTL                                       ; $83B27B |

CODE_FL_83B27C:
  LDA.L $7002EE                             ; $83B27C |
  BEQ CODE_83B2F9                           ; $83B280 |
  JSL.L CODE_FL_83B1E0                      ; $83B282 |
  BEQ CODE_FL_83B28B                        ; $83B286 |
  JMP.W CODE_JP_83B2F5                      ; $83B288 |

CODE_FL_83B28B:
  PHB                                       ; $83B28B |
  PEA.W $8181                               ; $83B28C |
  PLB                                       ; $83B28F |
  PLB                                       ; $83B290 |
  LDX.W #$0B20                              ; $83B291 |
  INC.B $1A,X                               ; $83B294 |
  LDA.W $1968                               ; $83B296 |
  STA.B $04,X                               ; $83B299 |
  STZ.B $02,X                               ; $83B29B |
  STZ.B $06,X                               ; $83B29D |
  LDA.W #$8000                              ; $83B29F |
  STA.B $22,X                               ; $83B2A2 |
  STZ.B $34,X                               ; $83B2A4 |
  LDY.B $A6                                 ; $83B2A6 |
  BEQ CODE_83B2AD                           ; $83B2A8 |
  JMP.W CODE_JP_83B300                      ; $83B2AA |

CODE_83B2AD:
  TDC                                       ; $83B2AD |
  STA.L $7002E0                             ; $83B2AE |
  LDA.L $7002EA                             ; $83B2B2 |
  SEC                                       ; $83B2B6 |
  SBC.W $1662                               ; $83B2B7 |
  STA.B $09,X                               ; $83B2BA |
  LDA.L $7002EC                             ; $83B2BC |
  SEC                                       ; $83B2C0 |
  SBC.W $1672                               ; $83B2C1 |
  STA.B $0D,X                               ; $83B2C4 |
  STZ.B $11,X                               ; $83B2C6 |
  STZ.W $179C                               ; $83B2C8 |
  STZ.W $17A8                               ; $83B2CB |
  SEP #$20                                  ; $83B2CE |
  JSR.W CODE_FN_83B9C9                      ; $83B2D0 |
  LDA.B $90                                 ; $83B2D3 |
  CMP.B #$00                                ; $83B2D5 |
  BEQ CODE_83B2E6                           ; $83B2D7 |
  LDA.B #$3C                                ; $83B2D9 |
  STA.B $14,X                               ; $83B2DB |
  STZ.B $15,X                               ; $83B2DD |
  LDA.B #$08                                ; $83B2DF |
  JSR.W CODE_FN_83AD0A                      ; $83B2E1 |
  BRA CODE_83B2F1                           ; $83B2E4 |

CODE_83B2E6:
  LDA.B #$06                                ; $83B2E6 |
  STA.B $14,X                               ; $83B2E8 |
  STZ.B $15,X                               ; $83B2EA |
  LDA.B #$08                                ; $83B2EC |
  JSR.W CODE_FN_83B477                      ; $83B2EE |

CODE_83B2F1:
  REP #$20                                  ; $83B2F1 |
  PLB                                       ; $83B2F3 |
  RTL                                       ; $83B2F4 |

CODE_JP_83B2F5:
  LDA.B $A6                                 ; $83B2F5 |
  BNE CODE_83B301                           ; $83B2F7 |

CODE_83B2F9:
  LDX.W #$0B20                              ; $83B2F9 |
  JML.L CODE_FL_86CA36                      ; $83B2FC |

CODE_JP_83B300:
  PLB                                       ; $83B300 |

CODE_83B301:
  LDY.B $A6                                 ; $83B301 |
  LDX.W #$0B20                              ; $83B303 |
  STZ.W $179C                               ; $83B306 |
  STZ.W $17A8                               ; $83B309 |
  LDA.W #$0001                              ; $83B30C |
  STA.B $1A,X                               ; $83B30F |
  LDA.W $0009,Y                             ; $83B311 |
  STA.B $09,X                               ; $83B314 |
  LDA.W $000D,Y                             ; $83B316 |
  STA.B $0D,X                               ; $83B319 |
  STZ.B $11,X                               ; $83B31B |
  LDA.B $90                                 ; $83B31D |
  CMP.W #$0000                              ; $83B31F |
  BEQ CODE_83B32A                           ; $83B322 |
  LDA.W #$003C                              ; $83B324 |
  STA.B $14,X                               ; $83B327 |
  RTL                                       ; $83B329 |

CODE_83B32A:
  LDA.W #$0006                              ; $83B32A |
  STA.B $14,X                               ; $83B32D |
  RTL                                       ; $83B32F |

CODE_FL_83B330:
  PHX                                       ; $83B330 |
  PHY                                       ; $83B331 |
  LDY.B $A6                                 ; $83B332 |
  BEQ CODE_83B364                           ; $83B334 |
  LDA.W #$0620                              ; $83B336 |
  CPY.W #$0400                              ; $83B339 |
  BEQ CODE_83B341                           ; $83B33C |
  LDA.W #$08F0                              ; $83B33E |

CODE_83B341:
  TAX                                       ; $83B341 |
  LDY.W #$0037                              ; $83B342 |
  LDA.B $90                                 ; $83B345 |
  CMP.W #$0000                              ; $83B347 |
  BEQ CODE_83B34F                           ; $83B34A |
  LDY.W #$0036                              ; $83B34C |

CODE_83B34F:
  STY.B $18,X                               ; $83B34F |
  LDY.B $A6                                 ; $83B351 |
  LDA.W #$C100                              ; $83B353 |
  STA.B $22,X                               ; $83B356 |
  LDA.W $0002,Y                             ; $83B358 |
  STA.B $02,X                               ; $83B35B |
  LDA.W $0006,Y                             ; $83B35D |
  STA.B $06,X                               ; $83B360 |
  STZ.B $34,X                               ; $83B362 |

CODE_83B364:
  PLY                                       ; $83B364 |
  PLX                                       ; $83B365 |
  RTL                                       ; $83B366 |

CODE_FL_83B367:
  LDA.W #$0000                              ; $83B367 |
  STA.L $7002E0                             ; $83B36A |
  SEP #$20                                  ; $83B36E |
  PHX                                       ; $83B370 |
  JSR.W CODE_FN_83B9C9                      ; $83B371 |
  PLX                                       ; $83B374 |
  REP #$20                                  ; $83B375 |

CODE_83B377:
  PHX                                       ; $83B377 |
  LDA.W #$0620                              ; $83B378 |
  LDY.B $A6                                 ; $83B37B |
  CPY.W #$0400                              ; $83B37D |
  BEQ CODE_83B385                           ; $83B380 |
  LDA.W #$08F0                              ; $83B382 |

CODE_83B385:
  TAX                                       ; $83B385 |
  JSL.L CODE_FL_86CA36                      ; $83B386 |
  PLX                                       ; $83B38A |
  STZ.B $A6                                 ; $83B38B |
  RTL                                       ; $83B38D |

CODE_FL_83B38E:
  LDA.B $A6                                 ; $83B38E |
  BEQ CODE_83B3AE                           ; $83B390 |
  PHB                                       ; $83B392 |
  PEA.W $8181                               ; $83B393 |
  PLB                                       ; $83B396 |
  PLB                                       ; $83B397 |
  SEP #$20                                  ; $83B398 |
  PHX                                       ; $83B39A |
  TAX                                       ; $83B39B |
  LDA.B $90                                 ; $83B39C |
  CMP.B #$00                                ; $83B39E |
  BEQ CODE_83B3A7                           ; $83B3A0 |
  JSR.W CODE_FN_839ECD                      ; $83B3A2 |
  BRA CODE_83B3AA                           ; $83B3A5 |

CODE_83B3A7:
  JSR.W CODE_FN_83BF1D                      ; $83B3A7 |

CODE_83B3AA:
  PLX                                       ; $83B3AA |
  REP #$20                                  ; $83B3AB |
  PLB                                       ; $83B3AD |

CODE_83B3AE:
  STZ.W $0B3C                               ; $83B3AE |
  STZ.W $0B20                               ; $83B3B1 |
  STZ.W $0B68                               ; $83B3B4 |
  STZ.W $00A8                               ; $83B3B7 |
  BRA CODE_83B377                           ; $83B3BA |

CODE_FL_83B3BC:
  LDA.W $0B5E                               ; $83B3BC |
  STA.W $0B60                               ; $83B3BF |
  LDA.W $0B5A                               ; $83B3C2 |
  STA.W $0B5C                               ; $83B3C5 |
  RTL                                       ; $83B3C8 |

CODE_FL_83B3C9:
  LDA.B $C0                                 ; $83B3C9 |
  AND.W #$007F                              ; $83B3CB |
  XBA                                       ; $83B3CE |
  ASL A                                     ; $83B3CF |
  ORA.W $1938                               ; $83B3D0 |
  STA.L $7002E8                             ; $83B3D3 |
  BRA CODE_83B3DD                           ; $83B3D7 |

CODE_FL_83B3D9:
  JSL.L CODE_FL_83B1D8                      ; $83B3D9 |

CODE_83B3DD:
  LDY.W #$0B20                              ; $83B3DD |

CODE_FL_83B3E0:
  LDA.W $1662                               ; $83B3E0 |
  CLC                                       ; $83B3E3 |
  ADC.W $0009,Y                             ; $83B3E4 |
  STA.L $7002EA                             ; $83B3E7 |
  LDA.W $1672                               ; $83B3EB |
  CLC                                       ; $83B3EE |
  ADC.W $000D,Y                             ; $83B3EF |
  STA.L $7002EC                             ; $83B3F2 |
  RTL                                       ; $83B3F6 |

CODE_FN_83B3F7:
  LDA.L $7002EE                             ; $83B3F7 |
  BNE CODE_83B412                           ; $83B3FB |
  LDA.W #$0001                              ; $83B3FD |
  STA.L $7002EE                             ; $83B400 |
  LDA.W #$0300                              ; $83B404 |
  STA.L $7002E2                             ; $83B407 |
  LDA.W #$0300                              ; $83B40B |
  STA.L $7002E4                             ; $83B40E |

CODE_83B412:
  RTS                                       ; $83B412 |

CODE_FL_83B413:
  PHB                                       ; $83B413 |
  PEA.W $8181                               ; $83B414 |
  PLB                                       ; $83B417 |
  PLB                                       ; $83B418 |
  LDX.W #$0B20                              ; $83B419 |
  LDA.B $1A,X                               ; $83B41C |
  BEQ CODE_83B42B                           ; $83B41E |
  JSR.W CODE_FN_83B42D                      ; $83B420 |
  SEP #$20                                  ; $83B423 |
  JSL.L CODE_FL_8FFEF2                      ; $83B425 |
  REP #$20                                  ; $83B429 |

CODE_83B42B:
  PLB                                       ; $83B42B |
  RTL                                       ; $83B42C |

CODE_FN_83B42D:
  LDY.B $A6                                 ; $83B42D |
  BNE CODE_83B434                           ; $83B42F |
  JMP.W CODE_JP_83B916                      ; $83B431 |

CODE_83B434:
  LDA.W $0009,Y                             ; $83B434 |
  STA.B $09,X                               ; $83B437 |
  LDA.W $000D,Y                             ; $83B439 |
  STA.B $0D,X                               ; $83B43C |
  LDA.W $0011,Y                             ; $83B43E |
  STA.B $11,X                               ; $83B441 |
  LDA.W $0004,Y                             ; $83B443 |
  STA.B $04,X                               ; $83B446 |
  RTS                                       ; $83B448 |

CODE_FN_83B449:
  LDA.B $94,X                               ; $83B449 |
  CMP.W $0B64                               ; $83B44B |
  BEQ CODE_83B476                           ; $83B44E |
  STA.W $0B64                               ; $83B450 |
  LDY.W $0B66                               ; $83B453 |
  BEQ CODE_83B476                           ; $83B456 |
  LDA.W $0B64                               ; $83B458 |
  BEQ CODE_83B46B                           ; $83B45B |
  CMP.B #$01                                ; $83B45D |
  BEQ CODE_83B466                           ; $83B45F |
  LDA.W CODE_00EC0A,Y                       ; $83B461 |
  BRA CODE_83B46E                           ; $83B464 |

CODE_83B466:
  LDA.W LOOSE_OP_00EC2C,Y                   ; $83B466 |
  BRA CODE_83B46E                           ; $83B469 |

CODE_83B46B:
  LDA.W LOOSE_OP_00EBE8,Y                   ; $83B46B |

CODE_83B46E:
  STA.W $0B3C                               ; $83B46E |
  LDA.B #$01                                ; $83B471 |
  STA.W $0B40                               ; $83B473 |

CODE_83B476:
  RTS                                       ; $83B476 |

CODE_FN_83B477:
  STA.W $0B66                               ; $83B477 |
  REP #$20                                  ; $83B47A |
  AND.W #$00FF                              ; $83B47C |
  TAY                                       ; $83B47F |
  BEQ CODE_83B476                           ; $83B480 |
  LDA.W $0B64                               ; $83B482 |
  BEQ CODE_83B496                           ; $83B485 |
  CMP.W #$0001                              ; $83B487 |
  BEQ CODE_83B491                           ; $83B48A |
  LDA.W CODE_00EC0A,Y                       ; $83B48C |
  BRA CODE_83B499                           ; $83B48F |

CODE_83B491:
  LDA.W LOOSE_OP_00EC2C,Y                   ; $83B491 |
  BRA CODE_83B499                           ; $83B494 |

CODE_83B496:
  LDA.W LOOSE_OP_00EBE8,Y                   ; $83B496 |

CODE_83B499:
  STA.W $0B3C                               ; $83B499 |
  STZ.W $0B3E                               ; $83B49C |
  STZ.W $0B40                               ; $83B49F |
  SEP #$20                                  ; $83B4A2 |
  RTS                                       ; $83B4A4 |

CODE_FN_83B4A5:
  STZ.B $26,X                               ; $83B4A5 |
  STZ.B $27,X                               ; $83B4A7 |

CODE_JP_83B4A9:
  LDA.B $48,X                               ; $83B4A9 |
  BNE CODE_83B4B0                           ; $83B4AB |

CODE_FN_83B4AD:
  JMP.W CODE_FN_83B8B8                      ; $83B4AD |

CODE_83B4B0:
  LDA.B $9B                                 ; $83B4B0 |
  BIT.B #$80                                ; $83B4B2 |
  BEQ CODE_83B4C3                           ; $83B4B4 |
  LDA.B $48,X                               ; $83B4B6 |
  BEQ CODE_83B4C3                           ; $83B4B8 |
  LDA.B $97                                 ; $83B4BA |
  BIT.B #$08                                ; $83B4BC |
  BEQ CODE_83B4C3                           ; $83B4BE |
  JMP.W CODE_FN_83B8A4                      ; $83B4C0 |

CODE_83B4C3:
  BIT.B #$40                                ; $83B4C3 |
  BEQ CODE_83B4CA                           ; $83B4C5 |
  JMP.W CODE_FN_83B848                      ; $83B4C7 |

CODE_83B4CA:
  LDA.B $9A                                 ; $83B4CA |
  BIT.B #$80                                ; $83B4CC |
  BEQ CODE_83B4D3                           ; $83B4CE |
  JMP.W CODE_FN_83B85E                      ; $83B4D0 |

CODE_83B4D3:
  LDA.B $97                                 ; $83B4D3 |
  BIT.B #$0F                                ; $83B4D5 |
  BEQ CODE_83B4DC                           ; $83B4D7 |
  JMP.W CODE_JP_83B83E                      ; $83B4D9 |

CODE_83B4DC:
  LDA.B $4A,X                               ; $83B4DC |
  ORA.B $4B,X                               ; $83B4DE |
  BEQ CODE_83B4E5                           ; $83B4E0 |
  JMP.W CODE_JP_83B83E                      ; $83B4E2 |

CODE_83B4E5:
  RTS                                       ; $83B4E5 |

  JSR.W CODE_FN_83B51C                      ; $83B4E6 |
  BCC CODE_83B4E5                           ; $83B4E9 |
  LDA.B $46,X                               ; $83B4EB |
  BNE CODE_83B4F5                           ; $83B4ED |
  LDA.B $8D,X                               ; $83B4EF |
  BIT.B #$60                                ; $83B4F1 |
  BEQ CODE_83B508                           ; $83B4F3 |

CODE_83B4F5:
  INC.B $44,X                               ; $83B4F5 |
  LDA.B $44,X                               ; $83B4F7 |
  CMP.B #$28                                ; $83B4F9 |
  BCC CODE_83B50A                           ; $83B4FB |
  STZ.B $44,X                               ; $83B4FD |
  JSR.W CODE_FN_83BAA7                      ; $83B4FF |
  JSR.W CODE_FN_838839                      ; $83B502 |
  JMP.W CODE_FN_83B449                      ; $83B505 |

CODE_83B508:
  STZ.B $44,X                               ; $83B508 |

CODE_83B50A:
  LDA.B $97                                 ; $83B50A |
  BIT.B #$40                                ; $83B50C |
  BEQ CODE_83B513                           ; $83B50E |
  JMP.W CODE_JP_83B8BE                      ; $83B510 |

CODE_83B513:
  JSR.W CODE_FN_83BAA7                      ; $83B513 |
  JSR.W CODE_FN_838839                      ; $83B516 |
  JMP.W CODE_FN_83B449                      ; $83B519 |

CODE_FN_83B51C:
  LDA.B $48,X                               ; $83B51C |
  BNE CODE_83B525                           ; $83B51E |
  JSR.W CODE_FN_83B4AD                      ; $83B520 |
  BRA CODE_83B559                           ; $83B523 |

CODE_83B525:
  LDA.B $9B                                 ; $83B525 |
  BIT.B #$80                                ; $83B527 |
  BEQ CODE_83B536                           ; $83B529 |
  LDA.B $97                                 ; $83B52B |
  BIT.B #$08                                ; $83B52D |
  BEQ CODE_83B536                           ; $83B52F |
  JSR.W CODE_FN_83B8A4                      ; $83B531 |
  BRA CODE_83B559                           ; $83B534 |

CODE_83B536:
  BIT.B #$40                                ; $83B536 |
  BEQ CODE_83B53F                           ; $83B538 |
  JSR.W CODE_FN_83B848                      ; $83B53A |
  BRA CODE_83B559                           ; $83B53D |

CODE_83B53F:
  LDA.B $9A                                 ; $83B53F |
  BIT.B #$80                                ; $83B541 |
  BEQ CODE_83B54A                           ; $83B543 |
  JSR.W CODE_FN_83B85E                      ; $83B545 |
  BRA CODE_83B559                           ; $83B548 |

CODE_83B54A:
  LDA.B $97                                 ; $83B54A |
  AND.B #$0F                                ; $83B54C |
  BNE CODE_83B55B                           ; $83B54E |
  LDA.B $4A,X                               ; $83B550 |
  ORA.B $4B,X                               ; $83B552 |
  BNE CODE_83B55B                           ; $83B554 |
  JSR.W CODE_FN_83B82E                      ; $83B556 |

CODE_83B559:
  CLC                                       ; $83B559 |
  RTS                                       ; $83B55A |

CODE_83B55B:
  SEC                                       ; $83B55B |
  RTS                                       ; $83B55C |

  LDA.W $0B40                               ; $83B55D |
  CMP.B #$FF                                ; $83B560 |
  BNE CODE_83B567                           ; $83B562 |
  JMP.W CODE_FN_83B82E                      ; $83B564 |

CODE_83B567:
  RTS                                       ; $83B567 |

  JSR.W CODE_FN_838605                      ; $83B568 |
  LDA.W $0B3E                               ; $83B56B |
  CMP.B #$02                                ; $83B56E |
  BCC CODE_83B59D                           ; $83B570 |
  CMP.B #$08                                ; $83B572 |
  BCC CODE_83B590                           ; $83B574 |
  LDA.B $97                                 ; $83B576 |
  AND.B #$0F                                ; $83B578 |
  STA.B $10                                 ; $83B57A |
  LDA.B $48,X                               ; $83B57C |
  BNE CODE_83B587                           ; $83B57E |
  LDA.B $10                                 ; $83B580 |
  BEQ CODE_83B59C                           ; $83B582 |
  JMP.W CODE_JP_83BAAD                      ; $83B584 |

CODE_83B587:
  JSR.W CODE_FN_83B594                      ; $83B587 |
  JSR.W CODE_FN_838839                      ; $83B58A |
  JMP.W CODE_FN_83B449                      ; $83B58D |

CODE_83B590:
  LDA.B $48,X                               ; $83B590 |
  BEQ CODE_83B59C                           ; $83B592 |

CODE_FN_83B594:
  REP #$20                                  ; $83B594 |
  STZ.B $26,X                               ; $83B596 |
  STZ.B $28,X                               ; $83B598 |
  SEP #$20                                  ; $83B59A |

CODE_83B59C:
  RTS                                       ; $83B59C |

CODE_83B59D:
  LDA.W $0B40                               ; $83B59D |
  CMP.B #$FF                                ; $83B5A0 |
  BNE CODE_83B5A7                           ; $83B5A2 |
  JSR.W CODE_FN_83B82E                      ; $83B5A4 |

CODE_83B5A7:
  JMP.W CODE_JP_83B4A9                      ; $83B5A7 |

  LDA.B $9B                                 ; $83B5AA |
  BIT.B #$40                                ; $83B5AC |
  BEQ CODE_83B5B3                           ; $83B5AE |
  JMP.W CODE_FN_83B848                      ; $83B5B0 |

CODE_83B5B3:
  LDA.B $9A                                 ; $83B5B3 |
  BIT.B #$80                                ; $83B5B5 |
  BEQ CODE_83B5BC                           ; $83B5B7 |
  JMP.W CODE_FN_83B85E                      ; $83B5B9 |

CODE_83B5BC:
  LDA.B $44,X                               ; $83B5BC |
  BNE CODE_83B5DF                           ; $83B5BE |
  LDA.W $0B40                               ; $83B5C0 |
  CMP.B #$FF                                ; $83B5C3 |
  BNE CODE_83B60A                           ; $83B5C5 |
  INC.B $44,X                               ; $83B5C7 |
  REP #$20                                  ; $83B5C9 |
  LDA.W #$0080                              ; $83B5CB |
  STA.B $58,X                               ; $83B5CE |
  SEP #$20                                  ; $83B5D0 |
  JSL.L CODE_FL_83F88D                      ; $83B5D2 |
  JSR.W CODE_FN_839570                      ; $83B5D6 |
  JSR.W CODE_FN_838839                      ; $83B5D9 |
  JMP.W CODE_FN_83B449                      ; $83B5DC |

CODE_83B5DF:
  DEC.B $2C,X                               ; $83B5DF |
  BMI CODE_83B607                           ; $83B5E1 |
  LDA.B $97                                 ; $83B5E3 |
  BIT.B #$40                                ; $83B5E5 |
  BEQ CODE_83B607                           ; $83B5E7 |
  REP #$20                                  ; $83B5E9 |
  LDA.B $58,X                               ; $83B5EB |
  CMP.W #$0200                              ; $83B5ED |
  BCC CODE_83B5F8                           ; $83B5F0 |
  SEC                                       ; $83B5F2 |
  SBC.W #$0020                              ; $83B5F3 |
  STA.B $58,X                               ; $83B5F6 |

CODE_83B5F8:
  LDA.B $58,X                               ; $83B5F8 |
  STA.B $2A,X                               ; $83B5FA |
  SEP #$20                                  ; $83B5FC |
  JSR.W CODE_FN_839570                      ; $83B5FE |
  JSR.W CODE_FN_838839                      ; $83B601 |
  JMP.W CODE_FN_83B449                      ; $83B604 |

CODE_83B607:
  JSR.W CODE_FN_83B8B8                      ; $83B607 |

CODE_83B60A:
  JSR.W CODE_FN_83BAA7                      ; $83B60A |
  JSR.W CODE_FN_838839                      ; $83B60D |
  JMP.W CODE_FN_83B449                      ; $83B610 |

  LDA.B $44,X                               ; $83B613 |
  BNE CODE_JP_83B64C                        ; $83B615 |
  LDA.B $9B                                 ; $83B617 |
  BIT.B #$40                                ; $83B619 |
  BEQ CODE_83B620                           ; $83B61B |
  JMP.W CODE_FN_83B848                      ; $83B61D |

CODE_83B620:
  LDA.B $9A                                 ; $83B620 |
  BIT.B #$80                                ; $83B622 |
  BEQ CODE_83B629                           ; $83B624 |
  JMP.W CODE_FN_83B85E                      ; $83B626 |

CODE_83B629:
  LDA.B $48,X                               ; $83B629 |
  BNE CODE_JP_83B636                        ; $83B62B |
  JSR.W CODE_FN_83BAA7                      ; $83B62D |
  JSR.W CODE_FN_838839                      ; $83B630 |
  JMP.W CODE_FN_83B449                      ; $83B633 |

CODE_JP_83B636:
  REP #$20                                  ; $83B636 |
  LDA.W #$0037                              ; $83B638 |
  JSL.L push_sound_queue                    ; $83B63B |
  STZ.B $26,X                               ; $83B63F |
  STZ.B $28,X                               ; $83B641 |
  SEP #$20                                  ; $83B643 |
  INC.B $44,X                               ; $83B645 |
  LDA.B #$0C                                ; $83B647 |
  JMP.W CODE_FN_83B477                      ; $83B649 |

CODE_JP_83B64C:
  LDA.W $0B40                               ; $83B64C |
  CMP.B #$FF                                ; $83B64F |
  BNE CODE_83B67E                           ; $83B651 |
  LDA.B $9B                                 ; $83B653 |
  BIT.B #$80                                ; $83B655 |
  BEQ CODE_83B662                           ; $83B657 |
  LDA.B $97                                 ; $83B659 |
  BIT.B #$08                                ; $83B65B |
  BEQ CODE_83B662                           ; $83B65D |
  JMP.W CODE_FN_83B8A4                      ; $83B65F |

CODE_83B662:
  BIT.B #$40                                ; $83B662 |
  BEQ CODE_83B669                           ; $83B664 |
  JMP.W CODE_FN_83B848                      ; $83B666 |

CODE_83B669:
  LDA.B $9A                                 ; $83B669 |
  BIT.B #$40                                ; $83B66B |
  BEQ CODE_83B672                           ; $83B66D |
  JMP.W CODE_FN_83B848                      ; $83B66F |

CODE_83B672:
  LDA.B $97                                 ; $83B672 |
  BIT.B #$07                                ; $83B674 |
  BEQ CODE_83B67B                           ; $83B676 |
  JMP.W CODE_JP_83B83E                      ; $83B678 |

CODE_83B67B:
  JSR.W CODE_FN_83B82E                      ; $83B67B |

CODE_83B67E:
  RTS                                       ; $83B67E |

  JSR.W CODE_FN_83B51C                      ; $83B67F |
  BCC CODE_83B699                           ; $83B682 |
  JSR.W CODE_FN_83B69A                      ; $83B684 |
  LDA.B $97                                 ; $83B687 |
  BIT.B #$40                                ; $83B689 |
  BNE CODE_83B690                           ; $83B68B |
  JMP.W CODE_JP_83B83E                      ; $83B68D |

CODE_83B690:
  LDA.B $97                                 ; $83B690 |
  BIT.B #$0F                                ; $83B692 |
  BNE CODE_83B699                           ; $83B694 |
  JMP.W CODE_FN_83B82E                      ; $83B696 |

CODE_83B699:
  RTS                                       ; $83B699 |

CODE_FN_83B69A:
  REP #$20                                  ; $83B69A |
  LDA.B $5C,X                               ; $83B69C |
  BRA CODE_83B6A9                           ; $83B69E |

CODE_FN_83B6A0:
  REP #$20                                  ; $83B6A0 |
  LDA.B $97                                 ; $83B6A2 |
  AND.W #$000F                              ; $83B6A4 |
  STA.B $5C,X                               ; $83B6A7 |

CODE_83B6A9:
  ASL A                                     ; $83B6A9 |
  ASL A                                     ; $83B6AA |
  TAY                                       ; $83B6AB |
  LDA.W LOOSE_OP_00EC52,Y                   ; $83B6AC |
  STA.B $26,X                               ; $83B6AF |
  LDA.W LOOSE_OP_00EC54,Y                   ; $83B6B1 |
  STA.B $28,X                               ; $83B6B4 |
  SEP #$20                                  ; $83B6B6 |
  RTS                                       ; $83B6B8 |

  LDA.B $44,X                               ; $83B6B9 |
  CMP.B #$01                                ; $83B6BB |
  BEQ CODE_83B6D3                           ; $83B6BD |
  CMP.B #$02                                ; $83B6BF |
  BEQ CODE_83B707                           ; $83B6C1 |
  LDA.W $0B40                               ; $83B6C3 |
  CMP.B #$FF                                ; $83B6C6 |
  BNE CODE_83B6D2                           ; $83B6C8 |
  STZ.B $2C,X                               ; $83B6CA |
  INC.B $44,X                               ; $83B6CC |
  JSL.L CODE_FL_83F8CF                      ; $83B6CE |

CODE_83B6D2:
  RTS                                       ; $83B6D2 |

CODE_83B6D3:
  INC.B $2C,X                               ; $83B6D3 |
  LDA.B $2C,X                               ; $83B6D5 |
  CMP.B #$0A                                ; $83B6D7 |
  BCC CODE_83B6EF                           ; $83B6D9 |
  STZ.B $2C,X                               ; $83B6DB |
  REP #$20                                  ; $83B6DD |
  LDA.W #$0001                              ; $83B6DF |
  JSL.L CODE_FL_83D2E8                      ; $83B6E2 |
  LDA.W #$0021                              ; $83B6E6 |
  JSL.L push_sound_queue                    ; $83B6E9 |
  SEP #$20                                  ; $83B6ED |

CODE_83B6EF:
  REP #$20                                  ; $83B6EF |
  LDA.L $7002E2                             ; $83B6F1 |
  SEP #$20                                  ; $83B6F5 |
  BEQ CODE_83B6FF                           ; $83B6F7 |
  LDA.B $96                                 ; $83B6F9 |
  BIT.B #$80                                ; $83B6FB |
  BNE CODE_83B706                           ; $83B6FD |

CODE_83B6FF:
  INC.B $44,X                               ; $83B6FF |
  LDA.B #$16                                ; $83B701 |
  JMP.W CODE_FN_83B477                      ; $83B703 |

CODE_83B706:
  RTS                                       ; $83B706 |

CODE_83B707:
  LDA.W $0B40                               ; $83B707 |
  CMP.B #$FF                                ; $83B70A |
  BNE CODE_83B706                           ; $83B70C |
  JSR.W CODE_FN_83B82E                      ; $83B70E |
  JMP.W CODE_JP_83B4A9                      ; $83B711 |

  LDA.B $44,X                               ; $83B714 |
  BNE CODE_83B741                           ; $83B716 |
  LDA.W $0B40                               ; $83B718 |
  CMP.B #$FF                                ; $83B71B |
  BNE CODE_83B740                           ; $83B71D |
  INC.B $44,X                               ; $83B71F |
  REP #$20                                  ; $83B721 |
  LDA.L $7002E2                             ; $83B723 |
  CMP.W #$0002                              ; $83B727 |
  BCC CODE_83B739                           ; $83B72A |
  LDA.W #$0002                              ; $83B72C |
  JSL.L CODE_FL_83D2E8                      ; $83B72F |
  SEP #$20                                  ; $83B733 |
  JSL.L CODE_FL_83FA13                      ; $83B735 |

CODE_83B739:
  SEP #$20                                  ; $83B739 |
  LDA.B #$1A                                ; $83B73B |
  JMP.W CODE_FN_83B477                      ; $83B73D |

CODE_83B740:
  RTS                                       ; $83B740 |

CODE_83B741:
  LDA.W $0B40                               ; $83B741 |
  CMP.B #$FF                                ; $83B744 |
  BNE CODE_83B740                           ; $83B746 |
  JSR.W CODE_FN_83B82E                      ; $83B748 |
  JMP.W CODE_JP_83B4A9                      ; $83B74B |

  LDA.B $44,X                               ; $83B74E |
  BNE CODE_83B76B                           ; $83B750 |
  LDA.W $0B40                               ; $83B752 |
  CMP.B #$FF                                ; $83B755 |
  BNE CODE_83B795                           ; $83B757 |
  INC.B $44,X                               ; $83B759 |
  REP #$20                                  ; $83B75B |
  LDA.W #$0200                              ; $83B75D |
  STA.B $58,X                               ; $83B760 |
  SEP #$20                                  ; $83B762 |
  JSL.L CODE_FL_83F88D                      ; $83B764 |
  JMP.W CODE_FN_839570                      ; $83B768 |

CODE_83B76B:
  DEC.B $2C,X                               ; $83B76B |
  BMI CODE_83B78D                           ; $83B76D |
  LDA.B $96                                 ; $83B76F |
  BIT.B #$80                                ; $83B771 |
  BEQ CODE_83B78D                           ; $83B773 |
  REP #$20                                  ; $83B775 |
  LDA.B $58,X                               ; $83B777 |
  CMP.W #$FD00                              ; $83B779 |
  BCC CODE_83B784                           ; $83B77C |
  SEC                                       ; $83B77E |
  SBC.W #$0020                              ; $83B77F |
  STA.B $58,X                               ; $83B782 |

CODE_83B784:
  LDA.B $58,X                               ; $83B784 |
  STA.B $28,X                               ; $83B786 |
  SEP #$20                                  ; $83B788 |
  JMP.W CODE_FN_839570                      ; $83B78A |

CODE_83B78D:
  LDA.B #$20                                ; $83B78D |
  JSR.W CODE_FN_83B477                      ; $83B78F |
  JSR.W CODE_FN_83B8BD                      ; $83B792 |

CODE_83B795:
  JMP.W CODE_FN_839570                      ; $83B795 |

CODE_83B798:
  AND.B #$7F                                ; $83B798 |
  BNE CODE_83B7A3                           ; $83B79A |
  LDA.B #$08                                ; $83B79C |
  STA.B $2C,X                               ; $83B79E |
  INC.B $44,X                               ; $83B7A0 |
  RTS                                       ; $83B7A2 |

CODE_83B7A3:
  DEC.B $2C,X                               ; $83B7A3 |
  BEQ CODE_83B7D3                           ; $83B7A5 |
  RTS                                       ; $83B7A7 |

  LDA.B $44,X                               ; $83B7A8 |
  BIT.B #$80                                ; $83B7AA |
  BNE CODE_83B798                           ; $83B7AC |
  LDA.B $BA,X                               ; $83B7AE |
  CMP.B #$FF                                ; $83B7B0 |
  BEQ CODE_83B7D3                           ; $83B7B2 |
  LDA.B $44,X                               ; $83B7B4 |
  AND.B #$7F                                ; $83B7B6 |
  BEQ CODE_83B7BE                           ; $83B7B8 |
  LDA.B $48,X                               ; $83B7BA |
  BEQ CODE_83B7D2                           ; $83B7BC |

CODE_83B7BE:
  INC.B $44,X                               ; $83B7BE |
  LDA.B $BA,X                               ; $83B7C0 |
  CMP.B #$0A                                ; $83B7C2 |
  BCC CODE_83B7D2                           ; $83B7C4 |
  REP #$20                                  ; $83B7C6 |
  LDA.B $2A,X                               ; $83B7C8 |
  CLC                                       ; $83B7CA |
  ADC.W #$0340                              ; $83B7CB |
  STA.B $2A,X                               ; $83B7CE |
  SEP #$20                                  ; $83B7D0 |

CODE_83B7D2:
  RTS                                       ; $83B7D2 |

CODE_83B7D3:
  LDA.B #$60                                ; $83B7D3 |
  STA.B $52,X                               ; $83B7D5 |
  JSR.W CODE_FN_83B82E                      ; $83B7D7 |
  JMP.W CODE_JP_83B4A9                      ; $83B7DA |

  REP #$20                                  ; $83B7DD |
  LDA.B $54,X                               ; $83B7DF |
  STA.B $26,X                               ; $83B7E1 |
  LDA.B $56,X                               ; $83B7E3 |
  STA.B $28,X                               ; $83B7E5 |
  SEP #$20                                  ; $83B7E7 |
  LDA.B $2B,X                               ; $83B7E9 |
  BPL CODE_83B7F0                           ; $83B7EB |
  JMP.W CODE_JP_83B907                      ; $83B7ED |

CODE_83B7F0:
  RTS                                       ; $83B7F0 |

  LDA.B $44,X                               ; $83B7F1 |
  BEQ CODE_83B7F8                           ; $83B7F3 |
  JMP.W CODE_JP_83B64C                      ; $83B7F5 |

CODE_83B7F8:
  REP #$20                                  ; $83B7F8 |
  LDA.B $54,X                               ; $83B7FA |
  STA.B $26,X                               ; $83B7FC |
  LDA.B $56,X                               ; $83B7FE |
  STA.B $28,X                               ; $83B800 |
  SEP #$20                                  ; $83B802 |
  LDA.B $48,X                               ; $83B804 |
  BEQ CODE_83B7F0                           ; $83B806 |
  STZ.B $92                                 ; $83B808 |
  LDA.B $3A,X                               ; $83B80A |
  ORA.B #$0C                                ; $83B80C |
  STA.B $3A,X                               ; $83B80E |
  LDA.B $35,X                               ; $83B810 |
  ORA.B #$80                                ; $83B812 |
  STA.B $35,X                               ; $83B814 |
  JMP.W CODE_JP_83B636                      ; $83B816 |

CODE_FN_83B819:
  REP #$20                                  ; $83B819 |
  LDA.W #$003A                              ; $83B81B |
  JSL.L push_sound_queue                    ; $83B81E |
  SEP #$20                                  ; $83B822 |
  LDA.B #$06                                ; $83B824 |
  JSR.W CODE_FN_83B477                      ; $83B826 |
  LDA.B #$35                                ; $83B829 |
  JMP.W CODE_JP_8389B9                      ; $83B82B |

CODE_FN_83B82E:
  LDA.B #$06                                ; $83B82E |
  STA.B $14,X                               ; $83B830 |
  STZ.B $15,X                               ; $83B832 |
  LDA.B #$02                                ; $83B834 |
  JSR.W CODE_FN_83B477                      ; $83B836 |
  LDA.B #$36                                ; $83B839 |
  JMP.W CODE_JP_8389B9                      ; $83B83B |

CODE_JP_83B83E:
  LDA.B #$04                                ; $83B83E |
  JSR.W CODE_FN_83B477                      ; $83B840 |
  LDA.B #$37                                ; $83B843 |
  JMP.W CODE_FN_83897A                      ; $83B845 |

CODE_FN_83B848:
  REP #$20                                  ; $83B848 |
  LDA.W #$0008                              ; $83B84A |
  JSL.L push_sound_queue                    ; $83B84D |
  SEP #$20                                  ; $83B851 |
  LDA.B #$10                                ; $83B853 |
  JSR.W CODE_FN_83B477                      ; $83B855 |
  LDA.B #$3B                                ; $83B858 |
  JMP.W CODE_JP_8389B9                      ; $83B85A |

CODE_83B85D:
  RTS                                       ; $83B85D |

CODE_FN_83B85E:
  LDA.L $7002E0                             ; $83B85E |
  BEQ CODE_83B85D                           ; $83B862 |
  CMP.B #$01                                ; $83B864 |
  BEQ CODE_83B883                           ; $83B866 |
  LDA.B #$18                                ; $83B868 |
  JSR.W CODE_FN_83B477                      ; $83B86A |
  LDA.B #$40                                ; $83B86D |
  JMP.W CODE_JP_8389B9                      ; $83B86F |

  LDA.B #$20                                ; $83B872 |
  STA.B $2C,X                               ; $83B874 |
  LDA.B #$1C                                ; $83B876 |
  JSR.W CODE_FN_83B477                      ; $83B878 |
  LDA.B #$42                                ; $83B87B |
  JSR.W CODE_FN_83897A                      ; $83B87D |
  JMP.W CODE_FN_83BAA7                      ; $83B880 |

CODE_83B883:
  LDA.B #$14                                ; $83B883 |
  JSR.W CODE_FN_83B477                      ; $83B885 |
  LDA.B #$3E                                ; $83B888 |
  JMP.W CODE_JP_8389B9                      ; $83B88A |

  REP #$20                                  ; $83B88D |
  JSR.W CODE_FN_83BFBF                      ; $83B88F |
  SEP #$20                                  ; $83B892 |
  LDA.B $48,X                               ; $83B894 |
  BEQ CODE_83B89E                           ; $83B896 |
  LDA.B $97                                 ; $83B898 |
  BIT.B #$08                                ; $83B89A |
  BNE CODE_FN_83B8A4                        ; $83B89C |

CODE_83B89E:
  LDA.B #$0A                                ; $83B89E |
  JSR.W CODE_FN_83B477                      ; $83B8A0 |
  RTS                                       ; $83B8A3 |

CODE_FN_83B8A4:
  REP #$20                                  ; $83B8A4 |
  JSL.L CODE_FL_83B367                      ; $83B8A6 |
  JSL.L CODE_FL_83B3D9                      ; $83B8AA |
  SEP #$20                                  ; $83B8AE |
  LDA.B #$22                                ; $83B8B0 |
  JSR.W CODE_FN_83B477                      ; $83B8B2 |
  JMP.W CODE_JP_83BF44                      ; $83B8B5 |

CODE_FN_83B8B8:
  LDA.B #$0C                                ; $83B8B8 |
  JSR.W CODE_FN_83B477                      ; $83B8BA |

CODE_FN_83B8BD:
  RTS                                       ; $83B8BD |

CODE_JP_83B8BE:
  LDA.B $48,X                               ; $83B8BE |
  BEQ CODE_83B8CD                           ; $83B8C0 |
  REP #$20                                  ; $83B8C2 |
  LDA.W #$00B8                              ; $83B8C4 |
  JSL.L CODE_FL_8089BD                      ; $83B8C7 |
  SEP #$20                                  ; $83B8CB |

CODE_83B8CD:
  JSR.W CODE_FN_83B6A0                      ; $83B8CD |
  LDA.B #$12                                ; $83B8D0 |
  JSR.W CODE_FN_83B477                      ; $83B8D2 |
  LDA.B #$3D                                ; $83B8D5 |
  JMP.W CODE_FN_83897A                      ; $83B8D7 |

CODE_JP_83B8DA:
  LDA.W #$0011                              ; $83B8DA |
  STA.B $92                                 ; $83B8DD |
  STZ.W $1960                               ; $83B8DF |
  STZ.W $1962                               ; $83B8E2 |
  LDA.W #$00D0                              ; $83B8E5 |
  JSL.L push_sound_queue                    ; $83B8E8 |
  SEP #$20                                  ; $83B8EC |
  LDA.B $3A,X                               ; $83B8EE |
  AND.B #$F3                                ; $83B8F0 |
  STA.B $3A,X                               ; $83B8F2 |
  LDA.B $35,X                               ; $83B8F4 |
  AND.B #$7F                                ; $83B8F6 |
  STA.B $35,X                               ; $83B8F8 |
  LDA.B #$0A                                ; $83B8FA |
  JSR.W CODE_FN_83B477                      ; $83B8FC |
  LDA.B #$39                                ; $83B8FF |
  JSR.W CODE_FN_83897A                      ; $83B901 |
  REP #$20                                  ; $83B904 |
  RTS                                       ; $83B906 |

CODE_JP_83B907:
  LDA.B #$20                                ; $83B907 |
  JSR.W CODE_FN_83B477                      ; $83B909 |
  LDA.B #$3A                                ; $83B90C |
  JMP.W CODE_FN_83897A                      ; $83B90E |

CODE_FN_83B911:
  LDA.B #$43                                ; $83B911 |
  JMP.W CODE_FN_83897A                      ; $83B913 |

CODE_JP_83B916:
  LDY.W #$0400                              ; $83B916 |
  JSR.W CODE_FN_83B924                      ; $83B919 |
  BCS CODE_83B96D                           ; $83B91C |
  LDY.W #$04C0                              ; $83B91E |
  JMP.W CODE_FN_83B924                      ; $83B921 |

CODE_FN_83B924:
  LDA.B $E4                                 ; $83B924 |
  BNE CODE_83B96E                           ; $83B926 |
  LDA.W $0048,Y                             ; $83B928 |
  BNE CODE_83B96E                           ; $83B92B |
  LDA.W $0028,Y                             ; $83B92D |
  BMI CODE_83B96E                           ; $83B930 |
  LDA.W $0022,Y                             ; $83B932 |
  CMP.W #$0004                              ; $83B935 |
  BNE CODE_83B96E                           ; $83B938 |
  LDA.B $09,X                               ; $83B93A |
  SBC.W $0009,Y                             ; $83B93C |
  BMI CODE_83B948                           ; $83B93F |
  CMP.W #$0010                              ; $83B941 |
  BCC CODE_83B94D                           ; $83B944 |
  BRA CODE_83B96E                           ; $83B946 |

CODE_83B948:
  CMP.W #$FFF0                              ; $83B948 |
  BCC CODE_83B96E                           ; $83B94B |

CODE_83B94D:
  LDA.B $0D,X                               ; $83B94D |
  SBC.W $000D,Y                             ; $83B94F |
  BMI CODE_83B95B                           ; $83B952 |
  CMP.W #$000C                              ; $83B954 |
  BCC CODE_83B960                           ; $83B957 |
  BRA CODE_83B96E                           ; $83B959 |

CODE_83B95B:
  CMP.W #$FFF4                              ; $83B95B |
  BCC CODE_83B96E                           ; $83B95E |

CODE_83B960:
  LDA.W $0011,Y                             ; $83B960 |
  CMP.W #$0010                              ; $83B963 |
  BCC CODE_83B96E                           ; $83B966 |
  JSL.L CODE_FL_83B970                      ; $83B968 |
  SEC                                       ; $83B96C |

CODE_83B96D:
  RTS                                       ; $83B96D |

CODE_83B96E:
  CLC                                       ; $83B96E |
  RTS                                       ; $83B96F |

CODE_FL_83B970:
  STY.B $A6                                 ; $83B970 |
  LDA.W #$0000                              ; $83B972 |
  STA.L $7002E0                             ; $83B975 |
  LDA.B $09,X                               ; $83B979 |
  STA.W $0009,Y                             ; $83B97B |
  LDA.B $0D,X                               ; $83B97E |
  STA.W $000D,Y                             ; $83B980 |
  TDC                                       ; $83B983 |
  STA.W $004A,Y                             ; $83B984 |
  STA.W $0028,Y                             ; $83B987 |
  STA.W $0000,Y                             ; $83B98A |
  STA.W $001C,Y                             ; $83B98D |
  JSL.L CODE_FL_83B330                      ; $83B990 |
  SEP #$20                                  ; $83B994 |
  LDA.B #$06                                ; $83B996 |
  JSR.W CODE_FN_83B477                      ; $83B998 |
  LDX.B $A6                                 ; $83B99B |
  JSR.W CODE_FN_83B819                      ; $83B99D |
  LDA.B #$70                                ; $83B9A0 |
  STA.W $0048,X                             ; $83B9A2 |
  STZ.B $11,X                               ; $83B9A5 |
  JSR.W CODE_FN_83B449                      ; $83B9A7 |
  LDX.W #$0B20                              ; $83B9AA |
  REP #$20                                  ; $83B9AD |
  RTL                                       ; $83B9AF |

  LDA.B $00,X                               ; $83B9B0 |
  STA.W $0620                               ; $83B9B2 |
  LDA.B $09,X                               ; $83B9B5 |
  STA.W $0629                               ; $83B9B7 |
  LDA.B $11,X                               ; $83B9BA |
  STA.W $0631                               ; $83B9BC |
  LDA.W $0B60                               ; $83B9BF |
  CLC                                       ; $83B9C2 |
  ADC.B $0D,X                               ; $83B9C3 |
  STA.W $062D                               ; $83B9C5 |
  RTL                                       ; $83B9C8 |

CODE_FN_83B9C9:
  PHX                                       ; $83B9C9 |
  REP #$20                                  ; $83B9CA |
  LDX.B $A6                                 ; $83B9CC |
  CPX.W #$0400                              ; $83B9CE |
  BNE CODE_83B9D8                           ; $83B9D1 |
  LDX.W #$1F40                              ; $83B9D3 |
  BRA CODE_83B9DB                           ; $83B9D6 |

CODE_83B9D8:
  LDX.W #$1F50                              ; $83B9D8 |

CODE_83B9DB:
  LDA.L $7002E0                             ; $83B9DB |
  ASL A                                     ; $83B9DF |
  TAY                                       ; $83B9E0 |
  LDA.W CODE_00EC8E,Y                       ; $83B9E1 |
  TAY                                       ; $83B9E4 |
  JSL.L CODE_FL_80C27F                      ; $83B9E5 |
  PLX                                       ; $83B9E9 |
  SEP #$20                                  ; $83B9EA |
  RTS                                       ; $83B9EC |

CODE_FN_83B9ED:
  REP #$20                                  ; $83B9ED |
  JSL.L CODE_FL_83CDD6                      ; $83B9EF |
  SEP #$20                                  ; $83B9F3 |
  LDA.B $22,X                               ; $83B9F5 |
  CMP.B #$14                                ; $83B9F7 |
  BEQ CODE_83BA06                           ; $83B9F9 |
  JSR.W CODE_FN_8386CC                      ; $83B9FB |
  JSR.W CODE_FN_838FAD                      ; $83B9FE |
  BCS CODE_83BA06                           ; $83BA01 |
  JSR.W CODE_FN_83879F                      ; $83BA03 |

CODE_83BA06:
  LDA.B $22,X                               ; $83BA06 |
  ASL A                                     ; $83BA08 |
  REP #$20                                  ; $83BA09 |
  AND.W #$00FF                              ; $83BA0B |
  TAY                                       ; $83BA0E |
  LDA.W CODE_00D8F2,Y                       ; $83BA0F |
  PHA                                       ; $83BA12 |
  SEP #$20                                  ; $83BA13 |

CODE_83BA15:
  RTS                                       ; $83BA15 |

  REP #$20                                  ; $83BA16 |
  LDA.B $8E,X                               ; $83BA18 |
  BEQ CODE_83BA37                           ; $83BA1A |
  CPX.W #$0400                              ; $83BA1C |
  BNE CODE_83BA29                           ; $83BA1F |
  JSL.L CODE_FL_80993E                      ; $83BA21 |
  BCC CODE_83BA2F                           ; $83BA25 |
  BRA CODE_83BA32                           ; $83BA27 |

CODE_83BA29:
  JSL.L CODE_FL_809939                      ; $83BA29 |
  BCS CODE_83BA32                           ; $83BA2D |

CODE_83BA2F:
  SEP #$20                                  ; $83BA2F |
  RTS                                       ; $83BA31 |

CODE_83BA32:
  STZ.B $8E,X                               ; $83BA32 |
  STZ.W $00E4                               ; $83BA34 |

CODE_83BA37:
  SEP #$20                                  ; $83BA37 |
  LDA.B $E4                                 ; $83BA39 |
  BPL CODE_JP_83BA42                        ; $83BA3B |
  LDA.B #$00                                ; $83BA3D |
  JSR.W CODE_FN_8388E4                      ; $83BA3F |

CODE_JP_83BA42:
  LDA.B $48,X                               ; $83BA42 |
  BNE CODE_83BA49                           ; $83BA44 |

CODE_83BA46:
  JMP.W CODE_JP_83BFB2                      ; $83BA46 |

CODE_83BA49:
  JSR.W CODE_FN_83A2CE                      ; $83BA49 |
  BCC CODE_83BA51                           ; $83BA4C |
  JMP.W CODE_FN_83C03D                      ; $83BA4E |

CODE_83BA51:
  LDA.B $9B                                 ; $83BA51 |
  BIT.B #$80                                ; $83BA53 |
  BEQ CODE_83BA5A                           ; $83BA55 |
  JMP.W CODE_JP_83BF44                      ; $83BA57 |

CODE_83BA5A:
  BIT.B #$40                                ; $83BA5A |
  BEQ CODE_83BA61                           ; $83BA5C |
  JMP.W CODE_JP_838B74                      ; $83BA5E |

CODE_83BA61:
  LDA.B $9A                                 ; $83BA61 |
  BIT.B #$80                                ; $83BA63 |
  BEQ CODE_83BA6F                           ; $83BA65 |
  JSR.W CODE_FN_83CED4                      ; $83BA67 |
  BCC CODE_83BA6F                           ; $83BA6A |
  JMP.W CODE_JP_83BFEF                      ; $83BA6C |

CODE_83BA6F:
  LDA.B $97                                 ; $83BA6F |
  BIT.B #$0F                                ; $83BA71 |
  BEQ CODE_83BA15                           ; $83BA73 |
  JMP.W CODE_JP_83BF2F                      ; $83BA75 |

  LDA.B $48,X                               ; $83BA78 |
  BEQ CODE_83BA46                           ; $83BA7A |
  LDA.B $9B                                 ; $83BA7C |
  BIT.B #$80                                ; $83BA7E |
  BEQ CODE_83BA85                           ; $83BA80 |
  JMP.W CODE_JP_83BF44                      ; $83BA82 |

CODE_83BA85:
  BIT.B #$40                                ; $83BA85 |
  BEQ CODE_83BA8C                           ; $83BA87 |
  JMP.W CODE_JP_838B74                      ; $83BA89 |

CODE_83BA8C:
  BIT.B #$80                                ; $83BA8C |
  BEQ CODE_83BA98                           ; $83BA8E |
  JSR.W CODE_FN_83CED4                      ; $83BA90 |
  BCC CODE_83BA98                           ; $83BA93 |
  JMP.W CODE_JP_83BFEF                      ; $83BA95 |

CODE_83BA98:
  LDA.B $97                                 ; $83BA98 |
  AND.B #$0F                                ; $83BA9A |
  BEQ CODE_83BAA4                           ; $83BA9C |
  JSR.W CODE_FN_83BAA7                      ; $83BA9E |
  JMP.W CODE_FN_838839                      ; $83BAA1 |

CODE_83BAA4:
  JMP.W CODE_FN_83BF2A                      ; $83BAA4 |

CODE_FN_83BAA7:
  LDA.B $97                                 ; $83BAA7 |
  AND.B #$0F                                ; $83BAA9 |
  STA.B $10                                 ; $83BAAB |

CODE_JP_83BAAD:
  ASL A                                     ; $83BAAD |
  ASL A                                     ; $83BAAE |
  STA.B $00                                 ; $83BAAF |
  STZ.B $01                                 ; $83BAB1 |
  REP #$20                                  ; $83BAB3 |
  LDA.B $92,X                               ; $83BAB5 |
  BIT.W #$0080                              ; $83BAB7 |
  BEQ CODE_83BAC1                           ; $83BABA |
  LDY.W #$000A                              ; $83BABC |
  BRA CODE_83BAC5                           ; $83BABF |

CODE_83BAC1:
  LDA.B $18,X                               ; $83BAC1 |
  ASL A                                     ; $83BAC3 |
  TAY                                       ; $83BAC4 |

CODE_83BAC5:
  LDA.W CODE_00EC93,Y                       ; $83BAC5 |
  CLC                                       ; $83BAC8 |
  ADC.B $00                                 ; $83BAC9 |
  TAY                                       ; $83BACB |
  LDA.W LOOSE_OP_00EC9F,Y                   ; $83BACC |
  STA.B $26,X                               ; $83BACF |
  LDA.W LOOSE_OP_00ECA1,Y                   ; $83BAD1 |
  STA.B $28,X                               ; $83BAD4 |
  SEP #$20                                  ; $83BAD6 |
  JMP.W CODE_JP_838B1A                      ; $83BAD8 |

  REP #$20                                  ; $83BADB |
  LDA.B $54,X                               ; $83BADD |
  STA.B $26,X                               ; $83BADF |
  LDA.B $56,X                               ; $83BAE1 |
  STA.B $28,X                               ; $83BAE3 |
  SEP #$20                                  ; $83BAE5 |
  LDA.B $2B,X                               ; $83BAE7 |
  BPL CODE_83BB22                           ; $83BAE9 |
  JMP.W CODE_JP_83BFBA                      ; $83BAEB |

  RTS                                       ; $83BAEE |

  LDA.B $60,X                               ; $83BAEF |
  BNE CODE_83BB05                           ; $83BAF1 |
  REP #$20                                  ; $83BAF3 |
  LDY.B $18,X                               ; $83BAF5 |
  LDA.W CODE_00EB2B,Y                       ; $83BAF7 |
  AND.W #$00FF                              ; $83BAFA |
  JSL.L push_sound_queue                    ; $83BAFD |
  INC.B $60,X                               ; $83BB01 |
  SEP #$20                                  ; $83BB03 |

CODE_83BB05:
  LDA.B $9B                                 ; $83BB05 |
  BIT.B #$40                                ; $83BB07 |
  BEQ CODE_83BB0E                           ; $83BB09 |
  JMP.W CODE_JP_838B74                      ; $83BB0B |

CODE_83BB0E:
  LDA.B $2B,X                               ; $83BB0E |
  BPL CODE_83BB19                           ; $83BB10 |
  LDA.B $48,X                               ; $83BB12 |
  BNE CODE_83BB57                           ; $83BB14 |
  JMP.W CODE_JP_83BFB2                      ; $83BB16 |

CODE_83BB19:
  JSR.W CODE_FN_83BAA7                      ; $83BB19 |
  JSR.W CODE_FN_838839                      ; $83BB1C |
  JMP.W CODE_FN_838605                      ; $83BB1F |

CODE_83BB22:
  RTS                                       ; $83BB22 |

  REP #$20                                  ; $83BB23 |
  LDA.B $54,X                               ; $83BB25 |
  STA.B $26,X                               ; $83BB27 |
  LDA.B $56,X                               ; $83BB29 |
  STA.B $28,X                               ; $83BB2B |
  SEP #$20                                  ; $83BB2D |
  LDA.B $48,X                               ; $83BB2F |
  BEQ CODE_83BB22                           ; $83BB31 |
  STZ.W $0092                               ; $83BB33 |
  LDA.B $3A,X                               ; $83BB36 |
  ORA.B #$0C                                ; $83BB38 |
  STA.B $3A,X                               ; $83BB3A |
  LDA.B $35,X                               ; $83BB3C |
  ORA.B #$80                                ; $83BB3E |
  STA.B $35,X                               ; $83BB40 |
  BRA CODE_83BB57                           ; $83BB42 |

  LDA.B $9B                                 ; $83BB44 |
  BIT.B #$40                                ; $83BB46 |
  BEQ CODE_83BB4D                           ; $83BB48 |
  JMP.W CODE_JP_838B74                      ; $83BB4A |

CODE_83BB4D:
  LDA.B $48,X                               ; $83BB4D |
  BNE CODE_83BB57                           ; $83BB4F |
  JSR.W CODE_FN_83BAA7                      ; $83BB51 |
  JMP.W CODE_FN_838839                      ; $83BB54 |

CODE_83BB57:
  REP #$20                                  ; $83BB57 |
  LDY.B $18,X                               ; $83BB59 |
  LDA.W LOOSE_OP_00EB27,Y                   ; $83BB5B |
  AND.W #$00FF                              ; $83BB5E |
  JSL.L push_sound_queue                    ; $83BB61 |
  SEP #$20                                  ; $83BB65 |
  LDA.B $9B                                 ; $83BB67 |
  BIT.B #$80                                ; $83BB69 |
  BEQ CODE_83BB70                           ; $83BB6B |
  JMP.W CODE_JP_83BF44                      ; $83BB6D |

CODE_83BB70:
  BIT.B #$40                                ; $83BB70 |
  BEQ CODE_83BB77                           ; $83BB72 |
  JMP.W CODE_JP_838B74                      ; $83BB74 |

CODE_83BB77:
  LDA.B $97                                 ; $83BB77 |
  BIT.B #$0F                                ; $83BB79 |
  BEQ CODE_83BB80                           ; $83BB7B |
  JMP.W CODE_JP_83BF2F                      ; $83BB7D |

CODE_83BB80:
  JMP.W CODE_FN_83BF2A                      ; $83BB80 |

CODE_JP_83BB83:
  JSR.W CODE_FN_838605                      ; $83BB83 |
  LDA.B $1E,X                               ; $83BB86 |
  CMP.B #$02                                ; $83BB88 |
  BCC CODE_JP_83BBC1                        ; $83BB8A |
  CMP.B #$05                                ; $83BB8C |
  BCC CODE_FN_83BBA7                        ; $83BB8E |

CODE_JP_83BB90:
  LDA.B $97                                 ; $83BB90 |
  AND.B #$0F                                ; $83BB92 |
  STA.B $10                                 ; $83BB94 |
  LDA.B $48,X                               ; $83BB96 |
  BNE CODE_83BBA1                           ; $83BB98 |
  LDA.B $10                                 ; $83BB9A |
  BEQ CODE_83BBC0                           ; $83BB9C |
  JMP.W CODE_JP_83BAAD                      ; $83BB9E |

CODE_83BBA1:
  JSR.W CODE_FN_83BBAB                      ; $83BBA1 |
  JMP.W CODE_FN_838839                      ; $83BBA4 |

CODE_FN_83BBA7:
  LDA.B $48,X                               ; $83BBA7 |
  BEQ CODE_83BBC0                           ; $83BBA9 |

CODE_FN_83BBAB:
  REP #$20                                  ; $83BBAB |
  STZ.B $26,X                               ; $83BBAD |
  STZ.B $28,X                               ; $83BBAF |
  SEP #$20                                  ; $83BBB1 |
  LDA.B $99                                 ; $83BBB3 |
  AND.B #$80                                ; $83BBB5 |
  BEQ CODE_83BBC0                           ; $83BBB7 |
  LDA.B #$08                                ; $83BBB9 |
  STA.B $9C,X                               ; $83BBBB |
  JMP.W CODE_FN_83BFBF                      ; $83BBBD |

CODE_83BBC0:
  RTS                                       ; $83BBC0 |

CODE_JP_83BBC1:
  LDA.B $BA,X                               ; $83BBC1 |
  CMP.B #$FF                                ; $83BBC3 |
  BNE CODE_83BBCA                           ; $83BBC5 |
  JSR.W CODE_FN_83BF2A                      ; $83BBC7 |

CODE_83BBCA:
  JMP.W CODE_JP_83BA42                      ; $83BBCA |

  JSR.W CODE_FN_838605                      ; $83BBCD |
  LDA.B $1E,X                               ; $83BBD0 |
  CMP.B #$02                                ; $83BBD2 |
  BCC CODE_JP_83BBC1                        ; $83BBD4 |
  CMP.B #$06                                ; $83BBD6 |
  BCS CODE_JP_83BB90                        ; $83BBD8 |
  CMP.B #$04                                ; $83BBDA |
  BNE CODE_83BBE9                           ; $83BBDC |
  JSL.L CODE_FL_83F281                      ; $83BBDE |
  LDA.B $48,X                               ; $83BBE2 |
  BEQ CODE_83BBC0                           ; $83BBE4 |
  JMP.W CODE_FN_83BBAB                      ; $83BBE6 |

CODE_83BBE9:
  RTS                                       ; $83BBE9 |

  JSR.W CODE_FN_838605                      ; $83BBEA |
  LDA.B $1E,X                               ; $83BBED |
  CMP.B #$02                                ; $83BBEF |
  BCC CODE_83BBFA                           ; $83BBF1 |
  CMP.B #$03                                ; $83BBF3 |
  BCC CODE_FN_83BBA7                        ; $83BBF5 |
  JMP.W CODE_JP_83BB90                      ; $83BBF7 |

CODE_83BBFA:
  JSR.W CODE_FN_83BC0D                      ; $83BBFA |
  BCS CODE_83BC00                           ; $83BBFD |
  RTS                                       ; $83BBFF |

CODE_83BC00:
  LDY.B $5A,X                               ; $83BC00 |
  LDA.B #$03                                ; $83BC02 |
  STA.W $001A,Y                             ; $83BC04 |
  JSR.W CODE_FN_83BF2A                      ; $83BC07 |
  JMP.W CODE_JP_83BA42                      ; $83BC0A |

CODE_FN_83BC0D:
  LDA.B $1E,X                               ; $83BC0D |
  CMP.B #$01                                ; $83BC0F |
  BEQ CODE_83BC16                           ; $83BC11 |
  JMP.W CODE_JP_83BC9E                      ; $83BC13 |

CODE_83BC16:
  REP #$20                                  ; $83BC16 |
  LDA.W #$000B                              ; $83BC18 |
  JSL.L push_sound_queue                    ; $83BC1B |
  LDA.W #$002B                              ; $83BC1F |
  STA.B $10                                 ; $83BC22 |
  LDA.B $22,X                               ; $83BC24 |
  STA.B $12                                 ; $83BC26 |
  LDA.W $0094,X                             ; $83BC28 |
  BNE CODE_83BC3D                           ; $83BC2B |
  LDA.W $0004,X                             ; $83BC2D |
  LDY.W #$0000                              ; $83BC30 |
  BIT.W #$0020                              ; $83BC33 |
  BEQ CODE_83BC41                           ; $83BC36 |
  LDY.W #$0004                              ; $83BC38 |
  BRA CODE_83BC41                           ; $83BC3B |

CODE_83BC3D:
  INC A                                     ; $83BC3D |
  ASL A                                     ; $83BC3E |
  ASL A                                     ; $83BC3F |
  TAY                                       ; $83BC40 |

CODE_83BC41:
  LDA.W LOOSE_OP_00ED5B,Y                   ; $83BC41 |
  STA.B $18                                 ; $83BC44 |
  LDA.W LOOSE_OP_00ED5D,Y                   ; $83BC46 |
  STA.B $1A                                 ; $83BC49 |
  LDA.W $0004,X                             ; $83BC4B |
  BIT.W #$1898                              ; $83BC4E |
  STA.B $1C                                 ; $83BC51 |
  LDY.W #$0000                              ; $83BC53 |
  CPX.W #$0400                              ; $83BC56 |
  BEQ CODE_83BC5E                           ; $83BC59 |
  LDY.W #$000C                              ; $83BC5B |

CODE_83BC5E:
  STX.B $14                                 ; $83BC5E |
  LDA.W CODE_00EB38,Y                       ; $83BC60 |
  STA.B $5A,X                               ; $83BC63 |
  TAX                                       ; $83BC65 |
  STX.B $16                                 ; $83BC66 |
  JSL.L CODE_FL_86CA36                      ; $83BC68 |
  LDA.B $10                                 ; $83BC6C |
  STA.B $18,X                               ; $83BC6E |
  LDA.W #$0080                              ; $83BC70 |
  STA.B $22,X                               ; $83BC73 |
  LDA.B $14                                 ; $83BC75 |
  STA.B $3A,X                               ; $83BC77 |
  LDA.B $12                                 ; $83BC79 |
  STA.B $3C,X                               ; $83BC7B |
  LDA.B $18                                 ; $83BC7D |
  STA.B $3E,X                               ; $83BC7F |
  LDA.B $1A                                 ; $83BC81 |
  ORA.B $1C                                 ; $83BC83 |
  STA.B $04,X                               ; $83BC85 |
  JSR.W CODE_FN_83BCF2                      ; $83BC87 |
  JSR.W CODE_FN_83BCF2                      ; $83BC8A |
  JSR.W CODE_FN_83BCF2                      ; $83BC8D |
  JSR.W CODE_FN_83BCF2                      ; $83BC90 |
  LDX.B $14                                 ; $83BC93 |
  LDA.W #$0008                              ; $83BC95 |
  STA.B $54,X                               ; $83BC98 |
  STZ.B $58,X                               ; $83BC9A |
  SEP #$20                                  ; $83BC9C |

CODE_JP_83BC9E:
  LDA.B $58,X                               ; $83BC9E |
  BNE CODE_83BCCA                           ; $83BCA0 |
  LDA.B $54,X                               ; $83BCA2 |
  CMP.B #$20                                ; $83BCA4 |
  BCC CODE_83BCAE                           ; $83BCA6 |
  LDA.B $97                                 ; $83BCA8 |
  BIT.B #$40                                ; $83BCAA |
  BEQ CODE_83BCC4                           ; $83BCAC |

CODE_83BCAE:
  LDA.B $54,X                               ; $83BCAE |
  CLC                                       ; $83BCB0 |
  ADC.B #$08                                ; $83BCB1 |
  CMP.B #$60                                ; $83BCB3 |
  BCS CODE_83BCC0                           ; $83BCB5 |
  STA.B $54,X                               ; $83BCB7 |

CODE_83BCB9:
  LDA.B $22,X                               ; $83BCB9 |
  JSR.W CODE_FN_83BBA7                      ; $83BCBB |
  CLC                                       ; $83BCBE |
  RTS                                       ; $83BCBF |

CODE_83BCC0:
  LDA.B #$5F                                ; $83BCC0 |
  STA.B $54,X                               ; $83BCC2 |

CODE_83BCC4:
  LDA.B #$02                                ; $83BCC4 |
  STA.B $58,X                               ; $83BCC6 |
  BRA CODE_83BCB9                           ; $83BCC8 |

CODE_83BCCA:
  LDA.B $46,X                               ; $83BCCA |
  BNE CODE_83BCEE                           ; $83BCCC |
  LDA.B $54,X                               ; $83BCCE |
  CMP.B #$10                                ; $83BCD0 |
  BCC CODE_83BCDF                           ; $83BCD2 |
  SEC                                       ; $83BCD4 |
  SBC.B #$05                                ; $83BCD5 |
  CMP.B #$10                                ; $83BCD7 |
  STA.B $54,X                               ; $83BCD9 |
  BCC CODE_83BCDF                           ; $83BCDB |
  BRA CODE_83BCB9                           ; $83BCDD |

CODE_83BCDF:
  LDY.B $5A,X                               ; $83BCDF |
  LDA.W $001A,Y                             ; $83BCE1 |
  CMP.B #$02                                ; $83BCE4 |
  BNE CODE_83BCEE                           ; $83BCE6 |
  LDA.B $97                                 ; $83BCE8 |
  BIT.B #$40                                ; $83BCEA |
  BNE CODE_83BCF0                           ; $83BCEC |

CODE_83BCEE:
  SEC                                       ; $83BCEE |
  RTS                                       ; $83BCEF |

CODE_83BCF0:
  CLC                                       ; $83BCF0 |
  RTS                                       ; $83BCF1 |

CODE_FN_83BCF2:
  INY                                       ; $83BCF2 |
  INY                                       ; $83BCF3 |
  LDX.W CODE_00EB38,Y                       ; $83BCF4 |
  JSL.L CODE_FL_86CA36                      ; $83BCF7 |
  LDA.W #$002C                              ; $83BCFB |
  STA.B $18,X                               ; $83BCFE |
  LDA.B $16                                 ; $83BD00 |
  STA.B $3A,X                               ; $83BD02 |
  RTS                                       ; $83BD04 |

  LDA.B $48,X                               ; $83BD05 |
  CMP.B #$18                                ; $83BD07 |
  BEQ CODE_83BD11                           ; $83BD09 |
  JSR.W CODE_FN_83BF2A                      ; $83BD0B |
  JMP.W CODE_JP_83BA42                      ; $83BD0E |

CODE_83BD11:
  LDA.B $44,X                               ; $83BD11 |
  BNE CODE_83BD1D                           ; $83BD13 |
  REP #$20                                  ; $83BD15 |
  JSL.L CODE_FL_8BFFA5                      ; $83BD17 |
  SEP #$20                                  ; $83BD1B |

CODE_83BD1D:
  LDA.B #$01                                ; $83BD1D |
  STA.B $44,X                               ; $83BD1F |
  JSR.W CODE_FN_83BAA7                      ; $83BD21 |
  JSR.W CODE_FN_838839                      ; $83BD24 |
  LDA.B $97                                 ; $83BD27 |
  AND.B #$0F                                ; $83BD29 |
  BEQ CODE_83BD33                           ; $83BD2B |
  LDA.B $BA,X                               ; $83BD2D |
  BEQ CODE_83BD33                           ; $83BD2F |
  DEC.B $BA,X                               ; $83BD31 |

CODE_83BD33:
  LDA.B $9A                                 ; $83BD33 |
  BIT.B #$80                                ; $83BD35 |
  BEQ CODE_83BD47                           ; $83BD37 |
  LDA.B $18,X                               ; $83BD39 |
  CMP.B #$04                                ; $83BD3B |
  BNE CODE_83BD47                           ; $83BD3D |
  JSR.W CODE_FN_83CED4                      ; $83BD3F |
  BCC CODE_83BD47                           ; $83BD42 |
  JMP.W CODE_FN_83C566                      ; $83BD44 |

CODE_83BD47:
  RTS                                       ; $83BD47 |

CODE_83BD48:
  AND.B #$7F                                ; $83BD48 |
  BNE CODE_83BD53                           ; $83BD4A |
  LDA.B #$08                                ; $83BD4C |
  STA.B $2C,X                               ; $83BD4E |
  INC.B $44,X                               ; $83BD50 |
  RTS                                       ; $83BD52 |

CODE_83BD53:
  DEC.B $2C,X                               ; $83BD53 |
  BEQ CODE_83BD83                           ; $83BD55 |
  RTS                                       ; $83BD57 |

CODE_JP_83BD58:
  LDA.B $44,X                               ; $83BD58 |
  BIT.B #$80                                ; $83BD5A |
  BNE CODE_83BD48                           ; $83BD5C |
  LDA.B $BA,X                               ; $83BD5E |
  CMP.B #$FF                                ; $83BD60 |
  BEQ CODE_83BD83                           ; $83BD62 |
  LDA.B $44,X                               ; $83BD64 |
  AND.B #$7F                                ; $83BD66 |
  BEQ CODE_83BD6E                           ; $83BD68 |
  LDA.B $48,X                               ; $83BD6A |
  BEQ CODE_83BD82                           ; $83BD6C |

CODE_83BD6E:
  INC.B $44,X                               ; $83BD6E |
  LDA.B $BA,X                               ; $83BD70 |
  CMP.B #$0A                                ; $83BD72 |
  BCC CODE_83BD82                           ; $83BD74 |
  REP #$20                                  ; $83BD76 |
  LDA.B $2A,X                               ; $83BD78 |
  CLC                                       ; $83BD7A |
  ADC.W #$0340                              ; $83BD7B |
  STA.B $2A,X                               ; $83BD7E |
  SEP #$20                                  ; $83BD80 |

CODE_83BD82:
  RTS                                       ; $83BD82 |

CODE_83BD83:
  LDA.B #$60                                ; $83BD83 |
  STA.B $52,X                               ; $83BD85 |
  LDA.B $92,X                               ; $83BD87 |
  BIT.B #$80                                ; $83BD89 |
  BNE CODE_83BD93                           ; $83BD8B |
  JSR.W CODE_FN_83BF2A                      ; $83BD8D |
  JMP.W CODE_JP_83BA42                      ; $83BD90 |

CODE_83BD93:
  JMP.W CODE_FN_83C22A                      ; $83BD93 |

  LDA.B $44,X                               ; $83BD96 |
  BNE CODE_83BDFE                           ; $83BD98 |
  LDA.B $BA,X                               ; $83BD9A |
  CMP.B #$FF                                ; $83BD9C |
  BNE CODE_83BDFD                           ; $83BD9E |
  PHX                                       ; $83BDA0 |
  JSR.W CODE_FN_83CF5E                      ; $83BDA1 |
  REP #$20                                  ; $83BDA4 |
  LDA.B $04,X                               ; $83BDA6 |
  ORA.W #$1898                              ; $83BDA8 |
  STA.B $04,X                               ; $83BDAB |
  LDA.B $06,X                               ; $83BDAD |
  STA.B $00                                 ; $83BDAF |
  TXA                                       ; $83BDB1 |
  STA.W $003A,Y                             ; $83BDB2 |
  TYX                                       ; $83BDB5 |
  LDA.W #$0023                              ; $83BDB6 |
  STA.B $18,X                               ; $83BDB9 |
  LDA.B $00                                 ; $83BDBB |
  STA.B $06,X                               ; $83BDBD |
  LDA.B $04,X                               ; $83BDBF |
  ORA.W #$1898                              ; $83BDC1 |
  STA.B $04,X                               ; $83BDC4 |
  LDA.W #$001A                              ; $83BDC6 |
  JSL.L CODE_FL_86CAEE                      ; $83BDC9 |
  STZ.B $22,X                               ; $83BDCD |
  LDA.W #$0030                              ; $83BDCF |
  STA.B $14,X                               ; $83BDD2 |
  STZ.B $14,X                               ; $83BDD4 |
  LDA.B $3A,X                               ; $83BDD6 |
  CMP.W #$0400                              ; $83BDD8 |
  BNE CODE_83BDF3                           ; $83BDDB |
  LDY.W #$B9BB                              ; $83BDDD |
  JSL.L CODE_FL_80C27C                      ; $83BDE0 |
  LDX.W #$1F40                              ; $83BDE4 |
  LDY.W #$B9C0                              ; $83BDE7 |
  JSL.L CODE_FL_80C27F                      ; $83BDEA |
  SEP #$20                                  ; $83BDEE |
  JSR.W CODE_FN_83D0B7                      ; $83BDF0 |

CODE_83BDF3:
  SEP #$20                                  ; $83BDF3 |
  PLX                                       ; $83BDF5 |
  RTS                                       ; $83BDF6 |

  INC.B $44,X                               ; $83BDF7 |
  LDA.B #$40                                ; $83BDF9 |
  STA.B $2C,X                               ; $83BDFB |

CODE_83BDFD:
  RTS                                       ; $83BDFD |

CODE_83BDFE:
  CPX.W #$0400                              ; $83BDFE |
  BNE CODE_83BDFD                           ; $83BE01 |
  DEC.B $2C,X                               ; $83BE03 |
  BNE CODE_83BDFD                           ; $83BE05 |
  JMP.W CODE_FN_83D0B7                      ; $83BE07 |

  REP #$20                                  ; $83BE0A |
  LDY.W #$0400                              ; $83BE0C |
  CPX.W #$0400                              ; $83BE0F |
  BNE CODE_83BE17                           ; $83BE12 |
  LDY.W #$04C0                              ; $83BE14 |

CODE_83BE17:
  LDA.W $0092,Y                             ; $83BE17 |
  BIT.W #$00C0                              ; $83BE1A |
  BNE CODE_83BE30                           ; $83BE1D |
  LDA.B $96                                 ; $83BE1F |
  AND.W #$0030                              ; $83BE21 |
  CMP.W #$0030                              ; $83BE24 |
  BNE CODE_83BE30                           ; $83BE27 |
  LDA.B $9A                                 ; $83BE29 |
  BIT.W #$0080                              ; $83BE2B |
  BNE CODE_FN_83BEAE                        ; $83BE2E |

CODE_83BE30:
  LDA.W #$0620                              ; $83BE30 |
  LDY.W #$04C0                              ; $83BE33 |
  CPX.W #$0400                              ; $83BE36 |
  BEQ CODE_83BE41                           ; $83BE39 |
  LDA.W #$08F0                              ; $83BE3B |
  LDY.W #$0400                              ; $83BE3E |

CODE_83BE41:
  STA.B $20                                 ; $83BE41 |
  LDA.W $0009,Y                             ; $83BE43 |
  STA.B $09,X                               ; $83BE46 |
  LDA.W $000D,Y                             ; $83BE48 |
  STA.B $0D,X                               ; $83BE4B |
  LDA.W $0011,Y                             ; $83BE4D |
  STA.B $11,X                               ; $83BE50 |
  LDA.W $0004,Y                             ; $83BE52 |
  AND.W #$DFDF                              ; $83BE55 |
  STA.B $04,X                               ; $83BE58 |
  LDA.B $02,X                               ; $83BE5A |
  ORA.W #$0080                              ; $83BE5C |
  STA.B $02,X                               ; $83BE5F |
  LDA.B $5A,X                               ; $83BE61 |
  CLC                                       ; $83BE63 |
  ADC.W #$0008                              ; $83BE64 |
  AND.W #$01FF                              ; $83BE67 |
  STA.B $5A,X                               ; $83BE6A |
  LDY.W #$0010                              ; $83BE6C |
  JSL.L CODE_FL_8AB51A                      ; $83BE6F |
  LDA.B $05                                 ; $83BE73 |
  BMI CODE_83BE7F                           ; $83BE75 |
  LSR.B $05                                 ; $83BE77 |
  LSR.B $05                                 ; $83BE79 |
  LSR.B $05                                 ; $83BE7B |
  BRA CODE_83BE88                           ; $83BE7D |

CODE_83BE7F:
  SEC                                       ; $83BE7F |
  ROR.B $05                                 ; $83BE80 |
  SEC                                       ; $83BE82 |
  ROR.B $05                                 ; $83BE83 |
  SEC                                       ; $83BE85 |
  ROR.B $05                                 ; $83BE86 |

CODE_83BE88:
  LDY.B $20                                 ; $83BE88 |
  LDA.B $09,X                               ; $83BE8A |
  CLC                                       ; $83BE8C |
  ADC.B $01                                 ; $83BE8D |
  STA.W $0009,Y                             ; $83BE8F |
  LDA.B $0D,X                               ; $83BE92 |
  CLC                                       ; $83BE94 |
  ADC.B $05                                 ; $83BE95 |
  STA.W $000D,Y                             ; $83BE97 |
  LDA.B $11,X                               ; $83BE9A |
  CLC                                       ; $83BE9C |
  ADC.W #$0008                              ; $83BE9D |
  STA.W $0011,Y                             ; $83BEA0 |
  LDA.B $04,X                               ; $83BEA3 |
  AND.W #$DFDF                              ; $83BEA5 |
  STA.W $0004,Y                             ; $83BEA8 |
  SEP #$20                                  ; $83BEAB |
  RTS                                       ; $83BEAD |

CODE_FN_83BEAE:
  REP #$20                                  ; $83BEAE |
  JSL.L CODE_FL_83CBC9                      ; $83BEB0 |

CODE_FN_83BEB4:
  LDA.W #$FBFF                              ; $83BEB4 |
  STA.B $3A,X                               ; $83BEB7 |
  SEP #$20                                  ; $83BEB9 |
  JSL.L CODE_FL_83CD69                      ; $83BEBB |
  REP #$20                                  ; $83BEBF |
  LDA.W #$6000                              ; $83BEC1 |
  STA.B $4C,X                               ; $83BEC4 |
  LDA.B $02,X                               ; $83BEC6 |
  AND.W #$FF7F                              ; $83BEC8 |
  STA.B $02,X                               ; $83BECB |
  LDY.W #$04C0                              ; $83BECD |
  CPX.W #$0400                              ; $83BED0 |
  BEQ CODE_83BED8                           ; $83BED3 |
  LDY.W #$0400                              ; $83BED5 |

CODE_83BED8:
  LDA.W $0009,Y                             ; $83BED8 |
  STA.B $09,X                               ; $83BEDB |
  LDA.W $000D,Y                             ; $83BEDD |
  STA.B $0D,X                               ; $83BEE0 |
  LDA.W $0011,Y                             ; $83BEE2 |
  STA.B $11,X                               ; $83BEE5 |
  JSL.L CODE_FL_83CBB6                      ; $83BEE7 |
  SEP #$20                                  ; $83BEEB |
  LDA.B #$C0                                ; $83BEED |
  STA.B $35,X                               ; $83BEEF |
  JMP.W CODE_FN_83BF2A                      ; $83BEF1 |

  LDA.B $BA,X                               ; $83BEF4 |
  CMP.B #$FF                                ; $83BEF6 |
  BNE CODE_83BF01                           ; $83BEF8 |
  REP #$20                                  ; $83BEFA |
  JSR.W CODE_FN_8393A0                      ; $83BEFC |
  SEP #$20                                  ; $83BEFF |

CODE_83BF01:
  RTS                                       ; $83BF01 |

  DEC.B $2C,X                               ; $83BF02 |
  BNE CODE_83BF1B                           ; $83BF04 |
  JSR.W CODE_FN_839FDA                      ; $83BF06 |
  LDA.B #$02                                ; $83BF09 |
  STA.B $67,X                               ; $83BF0B |
  STZ.B $66,X                               ; $83BF0D |
  LDA.B $93,X                               ; $83BF0F |
  ORA.B #$80                                ; $83BF11 |
  STA.B $93,X                               ; $83BF13 |
  JSR.W CODE_FN_83BF2A                      ; $83BF15 |
  JMP.W CODE_JP_83BA42                      ; $83BF18 |

CODE_83BF1B:
  RTS                                       ; $83BF1B |

  RTL                                       ; $83BF1C |

CODE_FN_83BF1D:
  LDA.B #$00                                ; $83BF1D |
  JMP.W CODE_FN_83897A                      ; $83BF1F |

CODE_FL_83BF22:
  SEP #$20                                  ; $83BF22 |
  JSR.W CODE_FN_83BF2A                      ; $83BF24 |
  REP #$20                                  ; $83BF27 |
  RTL                                       ; $83BF29 |

CODE_FN_83BF2A:
  LDA.B #$00                                ; $83BF2A |
  JMP.W CODE_JP_8389B9                      ; $83BF2C |

CODE_JP_83BF2F:
  LDA.B $04,X                               ; $83BF2F |
  STA.B $18                                 ; $83BF31 |
  JSR.W CODE_FN_83BAA7                      ; $83BF33 |
  LDA.B #$01                                ; $83BF36 |
  JSR.W CODE_FN_83897A                      ; $83BF38 |
  LDA.B $18                                 ; $83BF3B |
  CMP.B $04,X                               ; $83BF3D |
  BNE CODE_83BF43                           ; $83BF3F |
  STZ.B $1E,X                               ; $83BF41 |

CODE_83BF43:
  RTS                                       ; $83BF43 |

CODE_JP_83BF44:
  LDA.B $18,X                               ; $83BF44 |
  CMP.B #$04                                ; $83BF46 |
  BNE CODE_83BF53                           ; $83BF48 |
  LDA.B $97                                 ; $83BF4A |
  BIT.B #$40                                ; $83BF4C |
  BEQ CODE_83BF53                           ; $83BF4E |
  JMP.W CODE_JP_83C431                      ; $83BF50 |

CODE_83BF53:
  STZ.B $60,X                               ; $83BF53 |
  JSR.W CODE_FN_83BFBF                      ; $83BF55 |
  LDA.B $97                                 ; $83BF58 |
  AND.B #$0F                                ; $83BF5A |
  BNE CODE_83BF67                           ; $83BF5C |
  LDA.B #$08                                ; $83BF5E |
  STA.B $9C,X                               ; $83BF60 |
  LDA.B #$02                                ; $83BF62 |
  JMP.W CODE_FN_83897A                      ; $83BF64 |

CODE_83BF67:
  JSR.W CODE_FN_83BAA7                      ; $83BF67 |
  LDA.B #$0A                                ; $83BF6A |
  STA.B $9C,X                               ; $83BF6C |
  LDA.B #$03                                ; $83BF6E |
  JMP.W CODE_FN_83897A                      ; $83BF70 |

CODE_FN_83BF73:
  STA.B $2A,X                               ; $83BF73 |
  LDA.W #$0011                              ; $83BF75 |
  STA.B $92                                 ; $83BF78 |
  STZ.W $1960                               ; $83BF7A |
  STZ.W $1962                               ; $83BF7D |
  LDA.B $92,X                               ; $83BF80 |
  BIT.W #$0020                              ; $83BF82 |
  BEQ CODE_83BF8A                           ; $83BF85 |
  JMP.W CODE_JP_83B8DA                      ; $83BF87 |

CODE_83BF8A:
  LDY.B $18,X                               ; $83BF8A |
  LDA.W CODE_00EB2B,Y                       ; $83BF8C |
  AND.W #$00FF                              ; $83BF8F |
  JSL.L push_sound_queue                    ; $83BF92 |
  SEP #$20                                  ; $83BF96 |
  LDA.B $3A,X                               ; $83BF98 |
  AND.B #$F3                                ; $83BF9A |
  STA.B $3A,X                               ; $83BF9C |
  LDA.B $35,X                               ; $83BF9E |
  AND.B #$7F                                ; $83BFA0 |
  STA.B $35,X                               ; $83BFA2 |
  LDA.B #$1D                                ; $83BFA4 |
  JSR.W CODE_FN_83897A                      ; $83BFA6 |
  REP #$20                                  ; $83BFA9 |
  RTS                                       ; $83BFAB |

  SEP #$20                                  ; $83BFAC |
  STA.B $AE,X                               ; $83BFAE |
  STA.B $8A,X                               ; $83BFB0 |

CODE_JP_83BFB2:
  JSR.W CODE_FN_83BAA7                      ; $83BFB2 |
  LDA.B #$04                                ; $83BFB5 |
  JMP.W CODE_FN_83897A                      ; $83BFB7 |

CODE_JP_83BFBA:
  LDA.B #$1E                                ; $83BFBA |
  JMP.W CODE_FN_83897A                      ; $83BFBC |

CODE_FN_83BFBF:
  REP #$20                                  ; $83BFBF |
  LDA.B $18,X                               ; $83BFC1 |
  ASL A                                     ; $83BFC3 |
  TAY                                       ; $83BFC4 |
  LDA.W CODE_00ED51,Y                       ; $83BFC5 |
  STA.B $2A,X                               ; $83BFC8 |
  SEP #$20                                  ; $83BFCA |
  RTS                                       ; $83BFCC |

CODE_FN_83BFCD:
  LDA.W #$0004                              ; $83BFCD |
  JSL.L CODE_FL_8089BD                      ; $83BFD0 |
  SEP #$20                                  ; $83BFD4 |
  LDA.B $3A,X                               ; $83BFD6 |
  ORA.B #$0C                                ; $83BFD8 |
  STA.B $3A,X                               ; $83BFDA |
  LDA.B #$1B                                ; $83BFDC |
  JSR.W CODE_FN_83897A                      ; $83BFDE |
  REP #$20                                  ; $83BFE1 |
  RTS                                       ; $83BFE3 |

CODE_JP_83BFE4:
  LDA.B $3A,X                               ; $83BFE4 |
  ORA.B #$0C                                ; $83BFE6 |
  STA.B $3A,X                               ; $83BFE8 |
  LDA.B #$1B                                ; $83BFEA |
  JMP.W CODE_FN_83897A                      ; $83BFEC |

CODE_JP_83BFEF:
  LDA.B $18,X                               ; $83BFEF |
  CMP.B #$01                                ; $83BFF1 |
  BEQ CODE_83BFFF                           ; $83BFF3 |
  CMP.B #$02                                ; $83BFF5 |
  BEQ CODE_83C002                           ; $83BFF7 |
  CMP.B #$03                                ; $83BFF9 |
  BEQ CODE_83C00D                           ; $83BFFB |
  BRA CODE_83C023                           ; $83BFFD |

CODE_83BFFF:
  JMP.W CODE_JP_83C026                      ; $83BFFF |

CODE_83C002:
  LDA.B #$00                                ; $83C002 |
  STA.B $14,X                               ; $83C004 |
  JSL.L CODE_FL_83CBC9                      ; $83C006 |
  JMP.W CODE_FN_83C22A                      ; $83C00A |

CODE_83C00D:
  REP #$20                                  ; $83C00D |
  LDA.W #$0040                              ; $83C00F |
  JSL.L CODE_FL_8089BD                      ; $83C012 |
  SEP #$20                                  ; $83C016 |
  LDA.B $35,X                               ; $83C018 |
  AND.B #$7F                                ; $83C01A |
  STA.B $35,X                               ; $83C01C |
  LDA.B #$10                                ; $83C01E |
  JMP.W CODE_FN_83897A                      ; $83C020 |

CODE_83C023:
  JMP.W CODE_JP_83C481                      ; $83C023 |

CODE_JP_83C026:
  REP #$20                                  ; $83C026 |
  LDA.W #$0040                              ; $83C028 |
  JSL.L push_sound_queue                    ; $83C02B |
  SEP #$20                                  ; $83C02F |
  JSR.W CODE_FN_839FBC                      ; $83C031 |
  LDA.B #$30                                ; $83C034 |
  STA.B $2C,X                               ; $83C036 |
  LDA.B #$10                                ; $83C038 |
  JMP.W CODE_FN_83897A                      ; $83C03A |

CODE_FN_83C03D:
  REP #$20                                  ; $83C03D |
  JSL.L CODE_FL_83CBC9                      ; $83C03F |

CODE_FN_83C043:
  REP #$20                                  ; $83C043 |
  STZ.B $4C,X                               ; $83C045 |
  STZ.B $66,X                               ; $83C047 |
  JSL.L CODE_FL_83CB78                      ; $83C049 |
  LDA.W #$0000                              ; $83C04D |
  STA.B $3A,X                               ; $83C050 |
  SEP #$20                                  ; $83C052 |
  JSL.L CODE_FL_83C08C                      ; $83C054 |
  LDA.B $9A                                 ; $83C058 |
  AND.B #$7F                                ; $83C05A |
  STA.B $9A                                 ; $83C05C |
  LDA.B #$20                                ; $83C05E |
  STA.B $35,X                               ; $83C060 |
  LDA.B #$44                                ; $83C062 |
  JMP.W CODE_FN_83897A                      ; $83C064 |

CODE_JL_83C067:
  SEP #$20                                  ; $83C067 |
  LDA.B $92,X                               ; $83C069 |
  BIT.B #$10                                ; $83C06B |
  BEQ CODE_83C072                           ; $83C06D |
  JSR.W CODE_FN_83BEAE                      ; $83C06F |

CODE_83C072:
  CPX.B $A6                                 ; $83C072 |
  BNE CODE_83C079                           ; $83C074 |
  JSR.W CODE_FN_83B8A4                      ; $83C076 |

CODE_83C079:
  STZ.B $14,X                               ; $83C079 |
  LDA.B $35,X                               ; $83C07B |
  AND.B #$5F                                ; $83C07D |
  STA.B $35,X                               ; $83C07F |
  LDA.B #$1A                                ; $83C081 |
  JSR.W CODE_FN_83897A                      ; $83C083 |
  JSR.W CODE_FN_839453                      ; $83C086 |
  REP #$20                                  ; $83C089 |
  RTS                                       ; $83C08B |

CODE_FL_83C08C:
  REP #$20                                  ; $83C08C |
  PHB                                       ; $83C08E |
  PEA.W $8181                               ; $83C08F |
  PLB                                       ; $83C092 |
  PLB                                       ; $83C093 |
  PHX                                       ; $83C094 |
  LDA.B $18,X                               ; $83C095 |
  BEQ CODE_83C0B8                           ; $83C097 |
  ASL A                                     ; $83C099 |
  TAY                                       ; $83C09A |
  CPX.W #$0400                              ; $83C09B |
  BNE CODE_83C0AD                           ; $83C09E |
  LDA.W CODE_00ED69,Y                       ; $83C0A0 |
  TAY                                       ; $83C0A3 |
  LDX.W #$1F40                              ; $83C0A4 |
  JSL.L CODE_FL_80C27F                      ; $83C0A7 |
  BRA CODE_83C0B8                           ; $83C0AB |

CODE_83C0AD:
  LDA.W LOOSE_OP_00ED71,Y                   ; $83C0AD |
  TAY                                       ; $83C0B0 |
  LDX.W #$1F50                              ; $83C0B1 |
  JSL.L CODE_FL_80C27F                      ; $83C0B4 |

CODE_83C0B8:
  PLX                                       ; $83C0B8 |
  PLB                                       ; $83C0B9 |
  SEP #$20                                  ; $83C0BA |
  RTL                                       ; $83C0BC |

CODE_FN_83C0BD:
  LDA.B $22,X                               ; $83C0BD |
  CMP.B #$14                                ; $83C0BF |
  BEQ CODE_83C0CE                           ; $83C0C1 |
  JSR.W CODE_FN_8386CC                      ; $83C0C3 |
  JSR.W CODE_FN_838FAD                      ; $83C0C6 |
  BCS CODE_83C0CE                           ; $83C0C9 |
  JSR.W CODE_FN_83879F                      ; $83C0CB |

CODE_83C0CE:
  LDA.B $22,X                               ; $83C0CE |
  ASL A                                     ; $83C0D0 |
  REP #$20                                  ; $83C0D1 |
  AND.W #$00FF                              ; $83C0D3 |
  TAY                                       ; $83C0D6 |
  LDA.W LOOSE_OP_00D984,Y                   ; $83C0D7 |
  PHA                                       ; $83C0DA |
  SEP #$20                                  ; $83C0DB |
  RTS                                       ; $83C0DD |

  JMP.W CODE_JP_83BB83                      ; $83C0DE |

  JSR.W CODE_FN_838605                      ; $83C0E1 |
  LDA.B $1E,X                               ; $83C0E4 |
  CMP.B #$10                                ; $83C0E6 |
  BCC CODE_83C104                           ; $83C0E8 |
  LDA.B $48,X                               ; $83C0EA |
  BEQ CODE_83C103                           ; $83C0EC |
  REP #$20                                  ; $83C0EE |
  STZ.B $26,X                               ; $83C0F0 |
  STZ.B $28,X                               ; $83C0F2 |
  SEP #$20                                  ; $83C0F4 |
  LDA.B $99                                 ; $83C0F6 |
  AND.B #$80                                ; $83C0F8 |
  BEQ CODE_83C103                           ; $83C0FA |
  LDA.B #$08                                ; $83C0FC |
  STA.B $9C,X                               ; $83C0FE |
  JMP.W CODE_FN_83BFBF                      ; $83C100 |

CODE_83C103:
  RTS                                       ; $83C103 |

CODE_83C104:
  LDA.B $BA,X                               ; $83C104 |
  CMP.B #$FF                                ; $83C106 |
  BEQ CODE_83C11C                           ; $83C108 |
  LDA.B $9B                                 ; $83C10A |
  BIT.B #$40                                ; $83C10C |
  BEQ CODE_83C122                           ; $83C10E |
  LDA.B $5A,X                               ; $83C110 |
  CMP.B #$0A                                ; $83C112 |
  BCS CODE_83C119                           ; $83C114 |
  JMP.W CODE_JP_83C2F4                      ; $83C116 |

CODE_83C119:
  JMP.W CODE_JP_83C2FB                      ; $83C119 |

CODE_83C11C:
  JSR.W CODE_FN_83BF2A                      ; $83C11C |
  JMP.W CODE_JP_83BA42                      ; $83C11F |

CODE_83C122:
  RTS                                       ; $83C122 |

  INC.B $2C,X                               ; $83C123 |
  LDA.B $2C,X                               ; $83C125 |
  AND.B #$01                                ; $83C127 |
  BNE CODE_83C133                           ; $83C129 |
  LDA.B $58,X                               ; $83C12B |
  CMP.B #$50                                ; $83C12D |
  BCS CODE_83C133                           ; $83C12F |
  INC.B $58,X                               ; $83C131 |

CODE_83C133:
  LDA.B $BA,X                               ; $83C133 |
  CMP.B #$FF                                ; $83C135 |
  BNE CODE_83C145                           ; $83C137 |
  LDA.B $5A,X                               ; $83C139 |
  CMP.B #$09                                ; $83C13B |
  BCS CODE_83C142                           ; $83C13D |
  JMP.W CODE_JP_83C2FB                      ; $83C13F |

CODE_83C142:
  JMP.W CODE_JP_83C30B                      ; $83C142 |

CODE_83C145:
  RTS                                       ; $83C145 |

  DEC.B $2C,X                               ; $83C146 |
  BNE CODE_83C150                           ; $83C148 |
  JSR.W CODE_FN_83BF2A                      ; $83C14A |
  JMP.W CODE_JP_83BA42                      ; $83C14D |

CODE_83C150:
  RTS                                       ; $83C150 |

  JSR.W CODE_FN_838605                      ; $83C151 |
  LDA.B $1E,X                               ; $83C154 |
  CMP.B #$02                                ; $83C156 |
  BCC CODE_83C160                           ; $83C158 |
  CMP.B #$06                                ; $83C15A |
  BCS CODE_83C163                           ; $83C15C |
  BRA CODE_83C166                           ; $83C15E |

CODE_83C160:
  JMP.W CODE_JP_83BBC1                      ; $83C160 |

CODE_83C163:
  JMP.W CODE_JP_83BB90                      ; $83C163 |

CODE_83C166:
  CMP.B #$04                                ; $83C166 |
  BNE CODE_83C175                           ; $83C168 |
  JSL.L CODE_FL_83F31D                      ; $83C16A |
  LDA.B $48,X                               ; $83C16E |
  BEQ CODE_83C175                           ; $83C170 |
  JMP.W CODE_FN_83BBAB                      ; $83C172 |

CODE_83C175:
  RTS                                       ; $83C175 |

CODE_JP_83C176:
  LDA.B $48,X                               ; $83C176 |
  BNE CODE_83C17D                           ; $83C178 |

CODE_83C17A:
  JMP.W CODE_JP_83C24C                      ; $83C17A |

CODE_83C17D:
  LDA.B $9B                                 ; $83C17D |
  BIT.B #$80                                ; $83C17F |
  BEQ CODE_83C186                           ; $83C181 |
  JMP.W CODE_JP_83C239                      ; $83C183 |

CODE_83C186:
  LDA.B $9A                                 ; $83C186 |
  BIT.B #$80                                ; $83C188 |
  BEQ CODE_83C194                           ; $83C18A |
  JSR.W CODE_FN_83C268                      ; $83C18C |
  BCS CODE_83C194                           ; $83C18F |
  JMP.W CODE_JP_83C254                      ; $83C191 |

CODE_83C194:
  LDA.B $97                                 ; $83C194 |
  BIT.B #$0F                                ; $83C196 |
  BEQ CODE_83C19D                           ; $83C198 |
  JMP.W CODE_JP_83C231                      ; $83C19A |

CODE_83C19D:
  RTS                                       ; $83C19D |

  LDA.B $48,X                               ; $83C19E |
  BEQ CODE_83C17A                           ; $83C1A0 |
  LDA.B $9B                                 ; $83C1A2 |
  BIT.B #$80                                ; $83C1A4 |
  BEQ CODE_83C1AB                           ; $83C1A6 |
  JMP.W CODE_JP_83C239                      ; $83C1A8 |

CODE_83C1AB:
  BIT.B #$80                                ; $83C1AB |
  BEQ CODE_83C1B7                           ; $83C1AD |
  JSR.W CODE_FN_83C268                      ; $83C1AF |
  BCS CODE_83C1B7                           ; $83C1B2 |
  JMP.W CODE_JP_83C254                      ; $83C1B4 |

CODE_83C1B7:
  LDA.B $97                                 ; $83C1B7 |
  AND.B #$0F                                ; $83C1B9 |
  BEQ CODE_83C1C3                           ; $83C1BB |
  JSR.W CODE_FN_83BAA7                      ; $83C1BD |
  JMP.W CODE_FN_838839                      ; $83C1C0 |

CODE_83C1C3:
  JMP.W CODE_FN_83C22A                      ; $83C1C3 |

  LDA.B $2B,X                               ; $83C1C6 |
  BPL CODE_83C1D1                           ; $83C1C8 |
  LDA.B $48,X                               ; $83C1CA |
  BNE CODE_83C1E5                           ; $83C1CC |
  JMP.W CODE_JP_83C24C                      ; $83C1CE |

CODE_83C1D1:
  JSR.W CODE_FN_83BAA7                      ; $83C1D1 |
  JSR.W CODE_FN_838839                      ; $83C1D4 |
  JMP.W CODE_FN_838605                      ; $83C1D7 |

  RTS                                       ; $83C1DA |

  LDA.B $48,X                               ; $83C1DB |
  BNE CODE_83C1E5                           ; $83C1DD |
  JSR.W CODE_FN_83BAA7                      ; $83C1DF |
  JMP.W CODE_FN_838839                      ; $83C1E2 |

CODE_83C1E5:
  REP #$20                                  ; $83C1E5 |
  LDA.W #$0007                              ; $83C1E7 |
  JSL.L push_sound_queue                    ; $83C1EA |
  SEP #$20                                  ; $83C1EE |
  LDA.B $9B                                 ; $83C1F0 |
  BIT.B #$80                                ; $83C1F2 |
  BEQ CODE_83C1F9                           ; $83C1F4 |
  JMP.W CODE_JP_83C239                      ; $83C1F6 |

CODE_83C1F9:
  LDA.B $97                                 ; $83C1F9 |
  BIT.B #$0F                                ; $83C1FB |
  BEQ CODE_83C202                           ; $83C1FD |
  JMP.W CODE_JP_83C231                      ; $83C1FF |

CODE_83C202:
  JMP.W CODE_FN_83C22A                      ; $83C202 |

  LDA.B $48,X                               ; $83C205 |
  CMP.B #$18                                ; $83C207 |
  BEQ CODE_83C211                           ; $83C209 |
  JSR.W CODE_FN_83C22A                      ; $83C20B |
  JMP.W CODE_JP_83C176                      ; $83C20E |

CODE_83C211:
  LDA.B $44,X                               ; $83C211 |
  BNE CODE_83C21D                           ; $83C213 |
  REP #$20                                  ; $83C215 |
  JSL.L CODE_FL_8BFFA5                      ; $83C217 |
  SEP #$20                                  ; $83C21B |

CODE_83C21D:
  LDA.B #$01                                ; $83C21D |
  STA.B $44,X                               ; $83C21F |
  JSR.W CODE_FN_83BAA7                      ; $83C221 |
  JMP.W CODE_FN_838839                      ; $83C224 |

  JMP.W CODE_JP_83BD58                      ; $83C227 |

CODE_FN_83C22A:
  STZ.B $14,X                               ; $83C22A |
  LDA.B #$16                                ; $83C22C |
  JMP.W CODE_FN_83897A                      ; $83C22E |

CODE_JP_83C231:
  JSR.W CODE_FN_83BAA7                      ; $83C231 |
  LDA.B #$17                                ; $83C234 |
  JMP.W CODE_FN_83897A                      ; $83C236 |

CODE_JP_83C239:
  JSR.W CODE_FN_83BFBF                      ; $83C239 |
  REP #$20                                  ; $83C23C |
  LDA.W #$0006                              ; $83C23E |
  JSL.L push_sound_queue                    ; $83C241 |
  SEP #$20                                  ; $83C245 |
  LDA.B #$30                                ; $83C247 |
  JMP.W CODE_FN_83897A                      ; $83C249 |

CODE_JP_83C24C:
  JSR.W CODE_FN_83BAA7                      ; $83C24C |
  LDA.B #$31                                ; $83C24F |
  JMP.W CODE_FN_83897A                      ; $83C251 |

CODE_JP_83C254:
  LDA.B #$04                                ; $83C254 |
  STA.B $14,X                               ; $83C256 |
  JSL.L CODE_FL_83CBC9                      ; $83C258 |
  LDA.B $22,X                               ; $83C25C |
  CMP.B #$18                                ; $83C25E |
  BNE CODE_83C265                           ; $83C260 |
  JMP.W CODE_FN_83BFCD                      ; $83C262 |

CODE_83C265:
  JMP.W CODE_FN_83BF1D                      ; $83C265 |

CODE_FN_83C268:
  REP #$20                                  ; $83C268 |
  LDA.B $09,X                               ; $83C26A |
  CLC                                       ; $83C26C |
  ADC.W #$0008                              ; $83C26D |
  STA.B $08                                 ; $83C270 |
  LDA.B $0D,X                               ; $83C272 |
  SEC                                       ; $83C274 |
  SBC.W #$0008                              ; $83C275 |
  STA.B $0A                                 ; $83C278 |
  JSR.W CODE_FN_83C2C4                      ; $83C27A |
  BCS CODE_83C2C1                           ; $83C27D |
  LDA.B $09,X                               ; $83C27F |
  CLC                                       ; $83C281 |
  ADC.W #$0008                              ; $83C282 |
  STA.B $08                                 ; $83C285 |
  LDA.B $0D,X                               ; $83C287 |
  CLC                                       ; $83C289 |
  ADC.W #$0008                              ; $83C28A |
  STA.B $0A                                 ; $83C28D |
  JSR.W CODE_FN_83C2C4                      ; $83C28F |
  BCS CODE_83C2C1                           ; $83C292 |
  LDA.B $09,X                               ; $83C294 |
  SEC                                       ; $83C296 |
  SBC.W #$0008                              ; $83C297 |
  STA.B $08                                 ; $83C29A |
  LDA.B $0D,X                               ; $83C29C |
  SEC                                       ; $83C29E |
  SBC.W #$0008                              ; $83C29F |
  STA.B $0A                                 ; $83C2A2 |
  JSR.W CODE_FN_83C2C4                      ; $83C2A4 |
  BCS CODE_83C2C1                           ; $83C2A7 |
  LDA.B $09,X                               ; $83C2A9 |
  SEC                                       ; $83C2AB |
  SBC.W #$0008                              ; $83C2AC |
  STA.B $08                                 ; $83C2AF |
  LDA.B $0D,X                               ; $83C2B1 |
  CLC                                       ; $83C2B3 |
  ADC.W #$0008                              ; $83C2B4 |
  STA.B $0A                                 ; $83C2B7 |
  JSR.W CODE_FN_83C2C4                      ; $83C2B9 |
  BCS CODE_83C2C1                           ; $83C2BC |
  SEP #$20                                  ; $83C2BE |
  RTS                                       ; $83C2C0 |

CODE_83C2C1:
  SEP #$20                                  ; $83C2C1 |
  RTS                                       ; $83C2C3 |

CODE_FN_83C2C4:
  JSL.L CODE_FL_80CC03                      ; $83C2C4 |
  AND.W #$003F                              ; $83C2C8 |
  BEQ CODE_83C2D4                           ; $83C2CB |
  CMP.W #$0017                              ; $83C2CD |
  BCS CODE_83C2D4                           ; $83C2D0 |
  SEC                                       ; $83C2D2 |
  RTS                                       ; $83C2D3 |

CODE_83C2D4:
  CLC                                       ; $83C2D4 |
  RTS                                       ; $83C2D5 |

CODE_JL_83C2D6:
  LDA.W #$0004                              ; $83C2D6 |
  JSL.L CODE_FL_8089BD                      ; $83C2D9 |
  SEP #$20                                  ; $83C2DD |
  LDA.B $3A,X                               ; $83C2DF |
  ORA.B #$0C                                ; $83C2E1 |
  STA.B $3A,X                               ; $83C2E3 |
  LDA.B #$18                                ; $83C2E5 |
  JSR.W CODE_FN_83897A                      ; $83C2E7 |
  REP #$20                                  ; $83C2EA |
  RTS                                       ; $83C2EC |

CODE_FN_83C2ED:
  LDA.B #$47                                ; $83C2ED |
  JMP.W CODE_FN_83897A                      ; $83C2EF |

CODE_JP_83C2F2:
  STZ.B $5A,X                               ; $83C2F2 |

CODE_JP_83C2F4:
  INC.B $5A,X                               ; $83C2F4 |
  LDA.B #$08                                ; $83C2F6 |
  JMP.W CODE_FN_83897A                      ; $83C2F8 |

CODE_JP_83C2FB:
  STZ.B $2C,X                               ; $83C2FB |
  LDA.B #$10                                ; $83C2FD |
  STA.B $58,X                               ; $83C2FF |
  JSR.W CODE_FN_83F5FC                      ; $83C301 |
  INC.B $5A,X                               ; $83C304 |
  LDA.B #$11                                ; $83C306 |
  JMP.W CODE_FN_83897A                      ; $83C308 |

CODE_JP_83C30B:
  REP #$20                                  ; $83C30B |
  LDA.W #$0114                              ; $83C30D |
  JSL.L CODE_FL_8089BD                      ; $83C310 |
  SEP #$20                                  ; $83C314 |
  LDA.B #$A0                                ; $83C316 |
  STA.B $2C,X                               ; $83C318 |
  LDA.B #$12                                ; $83C31A |
  JMP.W CODE_FN_83897A                      ; $83C31C |

CODE_FN_83C31F:
  LDA.B $22,X                               ; $83C31F |
  CMP.B #$14                                ; $83C321 |
  BEQ CODE_83C330                           ; $83C323 |
  JSR.W CODE_FN_8386CC                      ; $83C325 |
  JSR.W CODE_FN_838FAD                      ; $83C328 |
  BCS CODE_83C330                           ; $83C32B |
  JSR.W CODE_FN_83879F                      ; $83C32D |

CODE_83C330:
  LDA.B $22,X                               ; $83C330 |
  ASL A                                     ; $83C332 |
  REP #$20                                  ; $83C333 |
  AND.W #$00FF                              ; $83C335 |
  TAY                                       ; $83C338 |
  LDA.W CODE_00DA16,Y                       ; $83C339 |
  PHA                                       ; $83C33C |
  SEP #$20                                  ; $83C33D |
  RTS                                       ; $83C33F |

  JMP.W CODE_JP_83BB83                      ; $83C340 |

  JSR.W CODE_FN_83C349                      ; $83C343 |
  JMP.W CODE_JP_83BB83                      ; $83C346 |

CODE_FN_83C349:
  LDA.B $44,X                               ; $83C349 |
  BNE CODE_83C359                           ; $83C34B |
  LDA.B $1E,X                               ; $83C34D |
  CMP.B #$07                                ; $83C34F |
  BNE CODE_83C359                           ; $83C351 |
  INC.B $44,X                               ; $83C353 |
  JSL.L CODE_FL_83F3C8                      ; $83C355 |

CODE_83C359:
  RTS                                       ; $83C359 |

  JSR.W CODE_FN_838605                      ; $83C35A |
  LDA.B $1E,X                               ; $83C35D |
  CMP.B #$05                                ; $83C35F |
  BCC CODE_83C388                           ; $83C361 |
  LDA.B $97                                 ; $83C363 |
  AND.B #$0F                                ; $83C365 |
  BEQ CODE_83C382                           ; $83C367 |
  STA.B $10                                 ; $83C369 |
  LDA.B $48,X                               ; $83C36B |
  BNE CODE_83C374                           ; $83C36D |
  LDA.B $10                                 ; $83C36F |
  JMP.W CODE_JP_83BAAD                      ; $83C371 |

CODE_83C374:
  STZ.B $26,X                               ; $83C374 |
  STZ.B $27,X                               ; $83C376 |
  LDA.B $04,X                               ; $83C378 |
  LSR.B $10                                 ; $83C37A |
  BCC CODE_83C383                           ; $83C37C |
  AND.B #$DF                                ; $83C37E |
  STA.B $04,X                               ; $83C380 |

CODE_83C382:
  RTS                                       ; $83C382 |

CODE_83C383:
  ORA.B #$20                                ; $83C383 |
  STA.B $04,X                               ; $83C385 |
  RTS                                       ; $83C387 |

CODE_83C388:
  CMP.B #$03                                ; $83C388 |
  BCS CODE_83C398                           ; $83C38A |
  LDA.B $BA,X                               ; $83C38C |
  CMP.B #$FF                                ; $83C38E |
  BNE CODE_83C395                           ; $83C390 |
  JSR.W CODE_FN_83BF2A                      ; $83C392 |

CODE_83C395:
  JMP.W CODE_JP_83BA42                      ; $83C395 |

CODE_83C398:
  BNE CODE_83C39E                           ; $83C398 |
  JSL.L CODE_FL_83F4F2                      ; $83C39A |

CODE_83C39E:
  RTS                                       ; $83C39E |

  LDA.B $1E,X                               ; $83C39F |
  LDY.W #$0000                              ; $83C3A1 |
  CMP.B #$10                                ; $83C3A4 |
  BEQ CODE_83C3CB                           ; $83C3A6 |
  INY                                       ; $83C3A8 |
  CMP.B #$0E                                ; $83C3A9 |
  BEQ CODE_83C3CB                           ; $83C3AB |
  INY                                       ; $83C3AD |
  CMP.B #$0C                                ; $83C3AE |
  BEQ CODE_83C3CB                           ; $83C3B0 |
  INY                                       ; $83C3B2 |
  CMP.B #$0A                                ; $83C3B3 |
  BEQ CODE_83C3CB                           ; $83C3B5 |
  INY                                       ; $83C3B7 |
  CMP.B #$08                                ; $83C3B8 |
  BEQ CODE_83C3CB                           ; $83C3BA |
  INY                                       ; $83C3BC |
  CMP.B #$06                                ; $83C3BD |
  BEQ CODE_83C3CB                           ; $83C3BF |
  INY                                       ; $83C3C1 |
  CMP.B #$04                                ; $83C3C2 |
  BEQ CODE_83C3CB                           ; $83C3C4 |
  INY                                       ; $83C3C6 |
  CMP.B #$02                                ; $83C3C7 |
  BNE CODE_83C3D1                           ; $83C3C9 |

CODE_83C3CB:
  TYA                                       ; $83C3CB |
  JSL.L CODE_FL_83F566                      ; $83C3CC |
  RTS                                       ; $83C3D0 |

CODE_83C3D1:
  LDA.B $BA,X                               ; $83C3D1 |
  CMP.B #$FF                                ; $83C3D3 |
  BNE CODE_83C3E3                           ; $83C3D5 |
  LDA.B $35,X                               ; $83C3D7 |
  ORA.B #$80                                ; $83C3D9 |
  STA.B $35,X                               ; $83C3DB |
  JSR.W CODE_FN_83BF2A                      ; $83C3DD |
  JMP.W CODE_JP_83BA42                      ; $83C3E0 |

CODE_83C3E3:
  RTS                                       ; $83C3E3 |

CODE_FN_83C3E4:
  LDA.B $22,X                               ; $83C3E4 |
  CMP.B #$14                                ; $83C3E6 |
  BEQ CODE_83C3F5                           ; $83C3E8 |
  JSR.W CODE_FN_8386CC                      ; $83C3EA |
  JSR.W CODE_FN_838FAD                      ; $83C3ED |
  BCS CODE_83C3F5                           ; $83C3F0 |
  JSR.W CODE_FN_83879F                      ; $83C3F2 |

CODE_83C3F5:
  LDA.B $22,X                               ; $83C3F5 |
  ASL A                                     ; $83C3F7 |
  REP #$20                                  ; $83C3F8 |
  AND.W #$00FF                              ; $83C3FA |
  TAY                                       ; $83C3FD |
  LDA.W LOOSE_OP_00DAA8,Y                   ; $83C3FE |
  PHA                                       ; $83C401 |
  SEP #$20                                  ; $83C402 |
  RTS                                       ; $83C404 |

  JSR.W CODE_FN_838605                      ; $83C405 |
  LDA.B $1E,X                               ; $83C408 |
  CMP.B #$02                                ; $83C40A |
  BCC CODE_83C41D                           ; $83C40C |
  CMP.B #$05                                ; $83C40E |
  BCC CODE_83C415                           ; $83C410 |
  JMP.W CODE_JP_83BB90                      ; $83C412 |

CODE_83C415:
  LDA.B $48,X                               ; $83C415 |
  BEQ CODE_83C41C                           ; $83C417 |
  JSR.W CODE_FN_83BBAB                      ; $83C419 |

CODE_83C41C:
  RTS                                       ; $83C41C |

CODE_83C41D:
  LDA.B $BA,X                               ; $83C41D |
  CMP.B #$FF                                ; $83C41F |
  BNE CODE_83C426                           ; $83C421 |
  JSR.W CODE_FN_83BF2A                      ; $83C423 |

CODE_83C426:
  LDA.B $97                                 ; $83C426 |
  AND.B #$C0                                ; $83C428 |
  CMP.B #$C0                                ; $83C42A |
  BEQ CODE_JP_83C431                        ; $83C42C |
  JMP.W CODE_JP_83BA42                      ; $83C42E |

CODE_JP_83C431:
  LDA.B #$11                                ; $83C431 |
  JMP.W CODE_FN_83897A                      ; $83C433 |

  JSR.W CODE_FN_83C4AD                      ; $83C436 |
  JSR.W CODE_FN_838605                      ; $83C439 |
  LDA.B $1E,X                               ; $83C43C |
  CMP.B #$02                                ; $83C43E |
  BCC CODE_83C451                           ; $83C440 |
  CMP.B #$05                                ; $83C442 |
  BCC CODE_83C449                           ; $83C444 |
  JMP.W CODE_JP_83BB90                      ; $83C446 |

CODE_83C449:
  LDA.B $48,X                               ; $83C449 |
  BEQ CODE_83C450                           ; $83C44B |
  JSR.W CODE_FN_83BBAB                      ; $83C44D |

CODE_83C450:
  RTS                                       ; $83C450 |

CODE_83C451:
  JMP.W CODE_JP_83BBC1                      ; $83C451 |

  LDA.B $2C,X                               ; $83C454 |
  BEQ CODE_83C468                           ; $83C456 |
  DEC.B $2C,X                               ; $83C458 |
  LDA.B $48,X                               ; $83C45A |
  BEQ CODE_83C467                           ; $83C45C |
  REP #$20                                  ; $83C45E |
  LDA.W #$0100                              ; $83C460 |
  STA.B $2A,X                               ; $83C463 |
  SEP #$20                                  ; $83C465 |

CODE_83C467:
  RTS                                       ; $83C467 |

CODE_83C468:
  LDA.B $9A                                 ; $83C468 |
  BIT.B #$80                                ; $83C46A |
  BEQ CODE_83C480                           ; $83C46C |
  AND.B #$7F                                ; $83C46E |
  STA.B $9A                                 ; $83C470 |
  JSL.L CODE_FL_83CD69                      ; $83C472 |
  JSL.L CODE_FL_83CBC9                      ; $83C476 |
  JSR.W CODE_FN_83BF2A                      ; $83C47A |
  JMP.W CODE_JP_83BA42                      ; $83C47D |

CODE_83C480:
  RTS                                       ; $83C480 |

CODE_JP_83C481:
  JSR.W CODE_FN_839F5A                      ; $83C481 |
  LDA.B #$30                                ; $83C484 |
  STA.B $2C,X                               ; $83C486 |
  REP #$20                                  ; $83C488 |
  STZ.B $26,X                               ; $83C48A |
  STZ.B $28,X                               ; $83C48C |
  STZ.B $4A,X                               ; $83C48E |
  LDA.W #$6000                              ; $83C490 |
  STA.B $4C,X                               ; $83C493 |
  LDA.B $34,X                               ; $83C495 |
  BIT.W #$F7FF                              ; $83C497 |
  STA.B $34,X                               ; $83C49A |
  SEP #$20                                  ; $83C49C |
  LDA.B $3B,X                               ; $83C49E |
  AND.B #$FB                                ; $83C4A0 |
  STA.B $3B,X                               ; $83C4A2 |
  JSL.L CODE_FL_83CBC9                      ; $83C4A4 |
  LDA.B #$1C                                ; $83C4A8 |
  JMP.W CODE_JP_8389B9                      ; $83C4AA |

CODE_FN_83C4AD:
  LDA.B $44,X                               ; $83C4AD |
  BNE CODE_83C4BD                           ; $83C4AF |
  LDA.B $1E,X                               ; $83C4B1 |
  CMP.B #$03                                ; $83C4B3 |
  BNE CODE_83C4BD                           ; $83C4B5 |
  INC.B $44,X                               ; $83C4B7 |
  JSL.L CODE_FL_83F44A                      ; $83C4B9 |

CODE_83C4BD:
  RTS                                       ; $83C4BD |

  LDA.B $97                                 ; $83C4BE |
  AND.B #$C0                                ; $83C4C0 |
  CMP.B #$C0                                ; $83C4C2 |
  BNE CODE_83C4D5                           ; $83C4C4 |
  LDA.B $97                                 ; $83C4C6 |
  BIT.B #$0F                                ; $83C4C8 |
  BEQ CODE_83C4BD                           ; $83C4CA |
  LDA.B $35,X                               ; $83C4CC |
  ORA.B #$80                                ; $83C4CE |
  STA.B $35,X                               ; $83C4D0 |
  JMP.W CODE_JP_83BF2F                      ; $83C4D2 |

CODE_83C4D5:
  LDA.B $35,X                               ; $83C4D5 |
  ORA.B #$80                                ; $83C4D7 |
  STA.B $35,X                               ; $83C4D9 |
  JSR.W CODE_FN_83BF1D                      ; $83C4DB |
  JMP.W CODE_JP_83BA42                      ; $83C4DE |

  RTS                                       ; $83C4E1 |

  LDA.B $BA,X                               ; $83C4E2 |
  CMP.B #$FF                                ; $83C4E4 |
  BNE CODE_83C4F6                           ; $83C4E6 |
  REP #$20                                  ; $83C4E8 |
  LDA.W #$0004                              ; $83C4EA |
  JSL.L CODE_FL_8089BD                      ; $83C4ED |
  SEP #$20                                  ; $83C4F1 |
  JMP.W CODE_FN_83C56E                      ; $83C4F3 |

CODE_83C4F6:
  RTS                                       ; $83C4F6 |

  LDA.B $93,X                               ; $83C4F7 |
  ORA.B #$10                                ; $83C4F9 |
  STA.B $93,X                               ; $83C4FB |
  LDA.B $44,X                               ; $83C4FD |
  BNE CODE_83C530                           ; $83C4FF |
  LDA.B $48,X                               ; $83C501 |
  CMP.B #$1E                                ; $83C503 |
  BEQ CODE_83C520                           ; $83C505 |
  LDA.B $9A                                 ; $83C507 |
  BIT.B #$80                                ; $83C509 |
  BEQ CODE_83C520                           ; $83C50B |
  INC.B $44,X                               ; $83C50D |
  REP #$20                                  ; $83C50F |
  LDA.W #$0004                              ; $83C511 |
  JSL.L CODE_FL_8089BD                      ; $83C514 |
  LDA.W #$0348                              ; $83C518 |
  JSR.W CODE_FN_83C5CD                      ; $83C51B |
  BRA CODE_83C52C                           ; $83C51E |

CODE_83C520:
  LDA.B $9B                                 ; $83C520 |
  BIT.B #$40                                ; $83C522 |
  BEQ CODE_83C529                           ; $83C524 |
  JMP.W CODE_JP_83C57E                      ; $83C526 |

CODE_83C529:
  JSR.W CODE_FN_838839                      ; $83C529 |

CODE_83C52C:
  JMP.W CODE_FN_83BAA7                      ; $83C52C |

  RTS                                       ; $83C52F |

CODE_83C530:
  LDA.B $BA,X                               ; $83C530 |
  CMP.B #$FF                                ; $83C532 |
  BNE CODE_83C545                           ; $83C534 |
  REP #$20                                  ; $83C536 |
  JSL.L CODE_FL_83CD69                      ; $83C538 |
  SEP #$20                                  ; $83C53C |
  LDA.B #$02                                ; $83C53E |
  STA.B $94,X                               ; $83C540 |
  JMP.W CODE_JP_83BFE4                      ; $83C542 |

CODE_83C545:
  RTS                                       ; $83C545 |

  DEC.B $2C,X                               ; $83C546 |
  BNE CODE_83C54D                           ; $83C548 |
  JMP.W CODE_JP_83C572                      ; $83C54A |

CODE_83C54D:
  LDA.B $58,X                               ; $83C54D |
  AND.B #$0F                                ; $83C54F |
  REP #$20                                  ; $83C551 |
  AND.W #$00FF                              ; $83C553 |
  ASL A                                     ; $83C556 |
  ASL A                                     ; $83C557 |
  TAY                                       ; $83C558 |
  LDA.W LOOSE_OP_00ED7E,Y                   ; $83C559 |
  STA.B $26,X                               ; $83C55C |
  LDA.W LOOSE_OP_00ED80,Y                   ; $83C55E |
  STA.B $28,X                               ; $83C561 |
  SEP #$20                                  ; $83C563 |
  RTS                                       ; $83C565 |

CODE_FN_83C566:
  JSR.W CODE_FN_839F5A                      ; $83C566 |
  LDA.B #$34                                ; $83C569 |
  JMP.W CODE_FN_83897A                      ; $83C56B |

CODE_FN_83C56E:
  LDA.B #$02                                ; $83C56E |
  STA.B $94,X                               ; $83C570 |

CODE_JP_83C572:
  LDA.B #$21                                ; $83C572 |
  JSR.W CODE_FN_83897A                      ; $83C574 |
  LDA.B $93,X                               ; $83C577 |
  ORA.B #$10                                ; $83C579 |
  STA.B $93,X                               ; $83C57B |
  RTS                                       ; $83C57D |

CODE_JP_83C57E:
  REP #$20                                  ; $83C57E |
  LDA.W #$00B0                              ; $83C580 |
  JSL.L CODE_FL_8089BD                      ; $83C583 |
  SEP #$20                                  ; $83C587 |
  LDA.B #$18                                ; $83C589 |
  STA.B $2C,X                               ; $83C58B |
  LDA.B #$20                                ; $83C58D |
  JSR.W CODE_FN_83897A                      ; $83C58F |
  LDA.B $97                                 ; $83C592 |
  AND.B #$0F                                ; $83C594 |
  BNE CODE_83C5B6                           ; $83C596 |
  LDA.B $94,X                               ; $83C598 |
  CMP.B #$01                                ; $83C59A |
  BEQ CODE_83C5B4                           ; $83C59C |
  CMP.B #$02                                ; $83C59E |
  BEQ CODE_83C5B0                           ; $83C5A0 |
  LDA.B $04,X                               ; $83C5A2 |
  BIT.B #$20                                ; $83C5A4 |
  BEQ CODE_83C5AC                           ; $83C5A6 |
  LDA.B #$01                                ; $83C5A8 |
  BRA CODE_83C5B6                           ; $83C5AA |

CODE_83C5AC:
  LDA.B #$02                                ; $83C5AC |
  BRA CODE_83C5B6                           ; $83C5AE |

CODE_83C5B0:
  LDA.B #$04                                ; $83C5B0 |
  BRA CODE_83C5B6                           ; $83C5B2 |

CODE_83C5B4:
  LDA.B #$08                                ; $83C5B4 |

CODE_83C5B6:
  STA.B $58,X                               ; $83C5B6 |
  REP #$20                                  ; $83C5B8 |
  AND.W #$00FF                              ; $83C5BA |
  ASL A                                     ; $83C5BD |
  ASL A                                     ; $83C5BE |
  TAY                                       ; $83C5BF |
  LDA.B $04,X                               ; $83C5C0 |
  AND.W #$DFDF                              ; $83C5C2 |
  ORA.W LOOSE_OP_00EDBC,Y                   ; $83C5C5 |
  STA.B $04,X                               ; $83C5C8 |
  LDA.W CODE_00EDBA,Y                       ; $83C5CA |

CODE_FN_83C5CD:
  STA.B $20,X                               ; $83C5CD |
  SEP #$20                                  ; $83C5CF |
  STZ.B $1E,X                               ; $83C5D1 |
  STZ.B $5A,X                               ; $83C5D3 |
  STZ.B $BA,X                               ; $83C5D5 |
  RTS                                       ; $83C5D7 |

CODE_FN_83C5D8:
  STZ.B $6A,X                               ; $83C5D8 |
  LDA.B $3A,X                               ; $83C5DA |
  BIT.W #$0004                              ; $83C5DC |
  BNE CODE_83C5E6                           ; $83C5DF |
  STZ.B $48,X                               ; $83C5E1 |
  STZ.B $90,X                               ; $83C5E3 |
  RTS                                       ; $83C5E5 |

CODE_83C5E6:
  STZ.B $90,X                               ; $83C5E6 |
  LDA.B $28,X                               ; $83C5E8 |
  CLC                                       ; $83C5EA |
  ADC.B $7A,X                               ; $83C5EB |
  BMI CODE_83C5F2                           ; $83C5ED |
  JMP.W CODE_JP_83C69C                      ; $83C5EF |

CODE_83C5F2:
  STA.B $24                                 ; $83C5F2 |
  LDA.B $0E,X                               ; $83C5F4 |
  DEC A                                     ; $83C5F6 |
  STA.B $22                                 ; $83C5F7 |
  LDA.B $24                                 ; $83C5F9 |
  CLC                                       ; $83C5FB |
  ADC.B $0C,X                               ; $83C5FC |
  STA.B $20                                 ; $83C5FE |
  BCC CODE_83C604                           ; $83C600 |
  INC.B $22                                 ; $83C602 |

CODE_83C604:
  LDA.B $21                                 ; $83C604 |
  BPL CODE_83C613                           ; $83C606 |
  CMP.W #$FFE0                              ; $83C608 |
  BCS CODE_83C613                           ; $83C60B |
  LDA.B $28,X                               ; $83C60D |
  BPL CODE_83C613                           ; $83C60F |
  STZ.B $28,X                               ; $83C611 |

CODE_83C613:
  LDA.B $A8,X                               ; $83C613 |
  BEQ CODE_83C61A                           ; $83C615 |
  JMP.W CODE_JP_83C687                      ; $83C617 |

CODE_83C61A:
  LDA.B $21                                 ; $83C61A |
  SEC                                       ; $83C61C |
  SBC.B $30,X                               ; $83C61D |
  STA.B $0A                                 ; $83C61F |
  LDA.B $2E,X                               ; $83C621 |
  LSR A                                     ; $83C623 |
  STA.B $26                                 ; $83C624 |
  LDA.B $09,X                               ; $83C626 |
  SEC                                       ; $83C628 |
  SBC.B $26                                 ; $83C629 |
  STA.B $08                                 ; $83C62B |
  JSL.L CODE_FL_80CA7D                      ; $83C62D |
  STA.B $18                                 ; $83C631 |
  LDA.B $09,X                               ; $83C633 |
  CLC                                       ; $83C635 |
  ADC.B $26                                 ; $83C636 |
  STA.B $08                                 ; $83C638 |
  JSL.L CODE_FL_80CA7D                      ; $83C63A |
  CMP.B $18                                 ; $83C63E |
  BCS CODE_83C644                           ; $83C640 |
  LDA.B $18                                 ; $83C642 |

CODE_83C644:
  TAY                                       ; $83C644 |
  LDA.W CODE_00EEFA,Y                       ; $83C645 |
  BIT.W #$0001                              ; $83C648 |
  BEQ CODE_83C67A                           ; $83C64B |
  TYA                                       ; $83C64D |
  AND.W #$007F                              ; $83C64E |
  CMP.W #$007B                              ; $83C651 |
  BNE CODE_83C661                           ; $83C654 |
  LDA.B $38,X                               ; $83C656 |
  BNE CODE_83C661                           ; $83C658 |
  LDA.B $33,X                               ; $83C65A |
  ORA.W #$0004                              ; $83C65C |
  STA.B $33,X                               ; $83C65F |

CODE_83C661:
  STZ.B $28,X                               ; $83C661 |
  LDA.W $1672                               ; $83C663 |
  CLC                                       ; $83C666 |
  ADC.B $0A                                 ; $83C667 |
  ORA.W #$FFF8                              ; $83C669 |
  STA.B $00                                 ; $83C66C |
  LDA.B $29,X                               ; $83C66E |
  SEC                                       ; $83C670 |
  SBC.B $00                                 ; $83C671 |
  STA.B $29,X                               ; $83C673 |
  LDA.W #$0001                              ; $83C675 |
  STA.B $90,X                               ; $83C678 |

CODE_83C67A:
  SEP #$20                                  ; $83C67A |
  LDA.B $48,X                               ; $83C67C |
  CMP.B #$7F                                ; $83C67E |
  BEQ CODE_83C686                           ; $83C680 |
  STZ.B $AE,X                               ; $83C682 |
  STZ.B $48,X                               ; $83C684 |

CODE_83C686:
  RTS                                       ; $83C686 |

CODE_JP_83C687:
  STA.B $00                                 ; $83C687 |
  LDA.B $48,X                               ; $83C689 |
  BNE CODE_83C68D                           ; $83C68B |

CODE_83C68D:
  SEP #$20                                  ; $83C68D |
  STZ.B $29,X                               ; $83C68F |
  STZ.B $0C,X                               ; $83C691 |
  LDA.B #$02                                ; $83C693 |
  STA.B $28,X                               ; $83C695 |
  STZ.B $AE,X                               ; $83C697 |
  STZ.B $48,X                               ; $83C699 |
  RTS                                       ; $83C69B |

CODE_JP_83C69C:
  STZ.B $16                                 ; $83C69C |
  SEP #$20                                  ; $83C69E |
  LDA.B $48,X                               ; $83C6A0 |
  CMP.B #$08                                ; $83C6A2 |
  BCC CODE_83C6B4                           ; $83C6A4 |
  CMP.B #$6E                                ; $83C6A6 |
  BEQ CODE_83C6AE                           ; $83C6A8 |
  CMP.B #$69                                ; $83C6AA |
  BCS CODE_83C6B4                           ; $83C6AC |

CODE_83C6AE:
  LDA.B $29,X                               ; $83C6AE |
  ADC.B #$04                                ; $83C6B0 |
  STA.B $29,X                               ; $83C6B2 |

CODE_83C6B4:
  REP #$20                                  ; $83C6B4 |
  LDA.B $28,X                               ; $83C6B6 |
  CLC                                       ; $83C6B8 |
  ADC.B $7A,X                               ; $83C6B9 |
  STA.B $1A                                 ; $83C6BB |
  SEP #$20                                  ; $83C6BD |
  LDA.B $1A                                 ; $83C6BF |
  CLC                                       ; $83C6C1 |
  ADC.B $0C,X                               ; $83C6C2 |
  STA.B $13                                 ; $83C6C4 |
  STZ.B $1C                                 ; $83C6C6 |
  REP #$20                                  ; $83C6C8 |
  LDA.B $1B                                 ; $83C6CA |
  ADC.B $0D,X                               ; $83C6CC |
  STA.B $14                                 ; $83C6CE |
  STA.B $0A                                 ; $83C6D0 |
  AND.W #$FF00                              ; $83C6D2 |
  BNE CODE_83C6F0                           ; $83C6D5 |
  LDA.W $19B4                               ; $83C6D7 |
  BEQ CODE_83C6F0                           ; $83C6DA |
  LDA.B $14                                 ; $83C6DC |
  SEC                                       ; $83C6DE |
  SBC.W $19B4                               ; $83C6DF |
  BCC CODE_83C6F0                           ; $83C6E2 |
  STA.B $11                                 ; $83C6E4 |
  LDA.W #$0070                              ; $83C6E6 |
  STA.B $48,X                               ; $83C6E9 |
  SEP #$20                                  ; $83C6EB |
  JMP.W CODE_JP_83C7C1                      ; $83C6ED |

CODE_83C6F0:
  LDA.B $2E,X                               ; $83C6F0 |
  LSR A                                     ; $83C6F2 |
  STA.B $20                                 ; $83C6F3 |
  LDA.B $09,X                               ; $83C6F5 |
  SEC                                       ; $83C6F7 |
  SBC.B $20                                 ; $83C6F8 |
  STA.B $08                                 ; $83C6FA |
  STA.B $0C                                 ; $83C6FC |
  JSL.L CODE_FL_80CA7D                      ; $83C6FE |
  CMP.W #$0006                              ; $83C702 |
  BCC CODE_83C70C                           ; $83C705 |
  CMP.W #$0069                              ; $83C707 |
  BCC CODE_83C74B                           ; $83C70A |

CODE_83C70C:
  STA.B $11                                 ; $83C70C |
  CMP.W #$0006                              ; $83C70E |
  BCC CODE_83C715                           ; $83C711 |
  INC.B $6A,X                               ; $83C713 |

CODE_83C715:
  LDA.B $09,X                               ; $83C715 |
  CLC                                       ; $83C717 |
  ADC.B $20                                 ; $83C718 |
  STA.B $08                                 ; $83C71A |
  JSL.L CODE_FL_80CA7D                      ; $83C71C |
  CMP.W #$0006                              ; $83C720 |
  BCC CODE_83C72A                           ; $83C723 |
  CMP.W #$0069                              ; $83C725 |
  BCC CODE_83C74B                           ; $83C728 |

CODE_83C72A:
  CMP.W #$0006                              ; $83C72A |
  BCC CODE_83C73A                           ; $83C72D |
  STA.B $20                                 ; $83C72F |
  LDA.B $6A,X                               ; $83C731 |
  ORA.W #$0002                              ; $83C733 |
  STA.B $6A,X                               ; $83C736 |
  LDA.B $20                                 ; $83C738 |

CODE_83C73A:
  CMP.B $11                                 ; $83C73A |
  BCS CODE_83C744                           ; $83C73C |
  LDA.B $0C                                 ; $83C73E |
  STA.B $08                                 ; $83C740 |
  LDA.B $11                                 ; $83C742 |

CODE_83C744:
  CMP.W #$0006                              ; $83C744 |
  BCC CODE_83C771                           ; $83C747 |
  BRA CODE_JP_83C761                        ; $83C749 |

CODE_83C74B:
  LDA.B $09,X                               ; $83C74B |
  STA.B $08                                 ; $83C74D |
  JSL.L CODE_FL_80CA7D                      ; $83C74F |
  CMP.W #$0006                              ; $83C753 |
  BCC CODE_JP_83C761                        ; $83C756 |
  STA.B $20                                 ; $83C758 |
  LDA.W #$0003                              ; $83C75A |
  STA.B $6A,X                               ; $83C75D |
  LDA.B $20                                 ; $83C75F |

CODE_JP_83C761:
  STA.B $48,X                               ; $83C761 |
  AND.W #$007F                              ; $83C763 |
  ASL A                                     ; $83C766 |
  TAX                                       ; $83C767 |
  LDA.W CODE_00EDFA,X                       ; $83C768 |
  PHA                                       ; $83C76B |
  SEP #$20                                  ; $83C76C |
  LDX.B $94                                 ; $83C76E |
  RTS                                       ; $83C770 |

CODE_83C771:
  SEP #$20                                  ; $83C771 |

CODE_JP_83C773:
  LDA.B $48,X                               ; $83C773 |
  CMP.B #$7F                                ; $83C775 |
  BEQ CODE_83C77D                           ; $83C777 |
  STZ.B $AE,X                               ; $83C779 |
  STZ.B $48,X                               ; $83C77B |

CODE_83C77D:
  RTS                                       ; $83C77D |

  LDA.B $22,X                               ; $83C77E |
  CMP.B #$22                                ; $83C780 |
  BCC CODE_83C788                           ; $83C782 |
  CMP.B #$24                                ; $83C784 |
  BCC CODE_JP_83C773                        ; $83C786 |

CODE_83C788:
  REP #$20                                  ; $83C788 |
  LDA.B $0A                                 ; $83C78A |
  SEC                                       ; $83C78C |
  SBC.W #$0006                              ; $83C78D |
  STA.B $0A                                 ; $83C790 |
  JSL.L CODE_FL_80CA7D                      ; $83C792 |
  SEP #$20                                  ; $83C796 |
  AND.B #$7F                                ; $83C798 |
  CMP.B #$06                                ; $83C79A |
  BEQ CODE_JP_83C773                        ; $83C79C |
  JMP.W CODE_JP_83C9CA                      ; $83C79E |

  JSR.W CODE_FN_83C9F9                      ; $83C7A1 |
  LDA.B $16                                 ; $83C7A4 |
  BEQ CODE_83C7CB                           ; $83C7A6 |
  JSR.W CODE_FN_83CA04                      ; $83C7A8 |

CODE_83C7AB:
  EOR.B #$0F                                ; $83C7AB |
  STA.B $12                                 ; $83C7AD |
  LDA.B $11                                 ; $83C7AF |
  SEC                                       ; $83C7B1 |
  SBC.B $12                                 ; $83C7B2 |
  BMI CODE_JP_83C773                        ; $83C7B4 |
  BNE CODE_83C7BC                           ; $83C7B6 |
  LDA.B $16                                 ; $83C7B8 |
  BRA CODE_JP_83C7BF                        ; $83C7BA |

CODE_83C7BC:
  CLC                                       ; $83C7BC |
  ADC.B $16                                 ; $83C7BD |

CODE_JP_83C7BF:
  STA.B $11                                 ; $83C7BF |

CODE_JP_83C7C1:
  LDA.B $29,X                               ; $83C7C1 |
  SEC                                       ; $83C7C3 |
  SBC.B $11                                 ; $83C7C4 |
  STA.B $29,X                               ; $83C7C6 |
  STZ.B $28,X                               ; $83C7C8 |
  RTS                                       ; $83C7CA |

CODE_83C7CB:
  JSR.W CODE_FN_83CA04                      ; $83C7CB |

CODE_83C7CE:
  EOR.B #$0F                                ; $83C7CE |
  STA.B $12                                 ; $83C7D0 |
  LDA.B $11                                 ; $83C7D2 |
  SEC                                       ; $83C7D4 |
  SBC.B $12                                 ; $83C7D5 |
  BMI CODE_JP_83C773                        ; $83C7D7 |
  BRA CODE_JP_83C7BF                        ; $83C7D9 |

CODE_JP_83C7DB:
  LDY.B $16                                 ; $83C7DB |
  BEQ CODE_83C7CE                           ; $83C7DD |
  BRA CODE_83C7AB                           ; $83C7DF |

CODE_JP_83C7E1:
  LDY.B $16                                 ; $83C7E1 |
  BEQ CODE_83C806                           ; $83C7E3 |
  BRA CODE_83C7F4                           ; $83C7E5 |

CODE_83C7E7:
  JMP.W CODE_JP_83C773                      ; $83C7E7 |

  JSR.W CODE_FN_83C9F9                      ; $83C7EA |
  LDA.B $16                                 ; $83C7ED |
  BEQ CODE_83C803                           ; $83C7EF |
  JSR.W CODE_FN_83CA04                      ; $83C7F1 |

CODE_83C7F4:
  STA.B $12                                 ; $83C7F4 |
  LDA.B $11                                 ; $83C7F6 |
  SEC                                       ; $83C7F8 |
  SBC.B $12                                 ; $83C7F9 |
  BMI CODE_83C7E7                           ; $83C7FB |
  BNE CODE_83C7BC                           ; $83C7FD |
  LDA.B $16                                 ; $83C7FF |
  BRA CODE_JP_83C7BF                        ; $83C801 |

CODE_83C803:
  JSR.W CODE_FN_83CA04                      ; $83C803 |

CODE_83C806:
  STA.B $12                                 ; $83C806 |
  LDA.B $11                                 ; $83C808 |
  SEC                                       ; $83C80A |
  SBC.B $12                                 ; $83C80B |
  BPL CODE_83C812                           ; $83C80D |
  JMP.W CODE_JP_83C773                      ; $83C80F |

CODE_83C812:
  JMP.W CODE_JP_83C7BF                      ; $83C812 |

  JSR.W CODE_FN_83C9F9                      ; $83C815 |
  JSR.W CODE_FN_83CA04                      ; $83C818 |
  LSR A                                     ; $83C81B |
  JMP.W CODE_JP_83C7E1                      ; $83C81C |

  JSR.W CODE_FN_83C9F9                      ; $83C81F |
  JSR.W CODE_FN_83CA04                      ; $83C822 |
  LSR A                                     ; $83C825 |
  ORA.B #$08                                ; $83C826 |
  JMP.W CODE_JP_83C7E1                      ; $83C828 |

  JSR.W CODE_FN_83C9F9                      ; $83C82B |
  JSR.W CODE_FN_83CA04                      ; $83C82E |
  LSR A                                     ; $83C831 |
  ORA.B #$08                                ; $83C832 |
  JMP.W CODE_JP_83C7DB                      ; $83C834 |

  JSR.W CODE_FN_83C9F9                      ; $83C837 |
  JSR.W CODE_FN_83CA04                      ; $83C83A |
  LSR A                                     ; $83C83D |
  JMP.W CODE_JP_83C7DB                      ; $83C83E |

  JSR.W CODE_FN_83C9F9                      ; $83C841 |
  JSR.W CODE_FN_83CA04                      ; $83C844 |
  LSR A                                     ; $83C847 |
  LSR A                                     ; $83C848 |
  JMP.W CODE_JP_83C7E1                      ; $83C849 |

  JSR.W CODE_FN_83C9F9                      ; $83C84C |
  JSR.W CODE_FN_83CA04                      ; $83C84F |
  LSR A                                     ; $83C852 |
  LSR A                                     ; $83C853 |
  CLC                                       ; $83C854 |
  ADC.B #$04                                ; $83C855 |
  JMP.W CODE_JP_83C7E1                      ; $83C857 |

  JSR.W CODE_FN_83C9F9                      ; $83C85A |
  JSR.W CODE_FN_83CA04                      ; $83C85D |
  LSR A                                     ; $83C860 |
  LSR A                                     ; $83C861 |
  CLC                                       ; $83C862 |
  ADC.B #$08                                ; $83C863 |
  JMP.W CODE_JP_83C7E1                      ; $83C865 |

  JSR.W CODE_FN_83C9F9                      ; $83C868 |
  JSR.W CODE_FN_83CA04                      ; $83C86B |
  LSR A                                     ; $83C86E |
  LSR A                                     ; $83C86F |
  CLC                                       ; $83C870 |
  ADC.B #$0C                                ; $83C871 |
  JMP.W CODE_JP_83C7E1                      ; $83C873 |

  JSR.W CODE_FN_83C9F9                      ; $83C876 |
  JSR.W CODE_FN_83CA04                      ; $83C879 |
  LSR A                                     ; $83C87C |
  LSR A                                     ; $83C87D |
  CLC                                       ; $83C87E |
  ADC.B #$0C                                ; $83C87F |
  JMP.W CODE_JP_83C7DB                      ; $83C881 |

  JSR.W CODE_FN_83C9F9                      ; $83C884 |
  JSR.W CODE_FN_83CA04                      ; $83C887 |
  LSR A                                     ; $83C88A |
  LSR A                                     ; $83C88B |
  CLC                                       ; $83C88C |
  ADC.B #$08                                ; $83C88D |
  JMP.W CODE_JP_83C7DB                      ; $83C88F |

  JSR.W CODE_FN_83C9F9                      ; $83C892 |
  JSR.W CODE_FN_83CA04                      ; $83C895 |
  LSR A                                     ; $83C898 |
  LSR A                                     ; $83C899 |
  CLC                                       ; $83C89A |
  ADC.B #$04                                ; $83C89B |
  JMP.W CODE_JP_83C7DB                      ; $83C89D |

  JSR.W CODE_FN_83C9F9                      ; $83C8A0 |
  JSR.W CODE_FN_83CA04                      ; $83C8A3 |
  LSR A                                     ; $83C8A6 |
  LSR A                                     ; $83C8A7 |
  JMP.W CODE_JP_83C7DB                      ; $83C8A8 |

  REP #$20                                  ; $83C8AB |
  LDA.W #$0100                              ; $83C8AD |
  JSR.W CODE_FN_83CA0D                      ; $83C8B0 |
  JSR.W CODE_FN_83C9F9                      ; $83C8B3 |
  JSR.W CODE_FN_83CA04                      ; $83C8B6 |
  CMP.B #$08                                ; $83C8B9 |
  BCS CODE_83C907                           ; $83C8BB |

CODE_83C8BD:
  ASL A                                     ; $83C8BD |
  AND.B #$0F                                ; $83C8BE |
  JMP.W CODE_JP_83C7E1                      ; $83C8C0 |

  REP #$20                                  ; $83C8C3 |
  LDA.W #$0100                              ; $83C8C5 |
  JSR.W CODE_FN_83CA0D                      ; $83C8C8 |
  JSR.W CODE_FN_83C9F9                      ; $83C8CB |
  JSR.W CODE_FN_83CA04                      ; $83C8CE |
  SEC                                       ; $83C8D1 |
  SBC.B #$08                                ; $83C8D2 |
  BCS CODE_83C8BD                           ; $83C8D4 |
  JMP.W CODE_JP_83C915                      ; $83C8D6 |

  REP #$20                                  ; $83C8D9 |
  LDA.W #$FF00                              ; $83C8DB |
  JSR.W CODE_FN_83CA2A                      ; $83C8DE |
  JSR.W CODE_FN_83C9F9                      ; $83C8E1 |
  JSR.W CODE_FN_83CA04                      ; $83C8E4 |
  SEC                                       ; $83C8E7 |
  SBC.B #$08                                ; $83C8E8 |
  BCC CODE_83C907                           ; $83C8EA |

CODE_83C8EC:
  ASL A                                     ; $83C8EC |
  AND.B #$0F                                ; $83C8ED |
  JMP.W CODE_JP_83C7DB                      ; $83C8EF |

  REP #$20                                  ; $83C8F2 |
  LDA.W #$FF00                              ; $83C8F4 |
  JSR.W CODE_FN_83CA2A                      ; $83C8F7 |
  JSR.W CODE_FN_83C9F9                      ; $83C8FA |
  JSR.W CODE_FN_83CA04                      ; $83C8FD |
  CMP.B #$08                                ; $83C900 |
  BCC CODE_83C8EC                           ; $83C902 |
  JMP.W CODE_JP_83C915                      ; $83C904 |

CODE_83C907:
  LDA.B $48,X                               ; $83C907 |
  CMP.B #$7F                                ; $83C909 |
  BEQ CODE_83C911                           ; $83C90B |
  STZ.B $AE,X                               ; $83C90D |
  STZ.B $48,X                               ; $83C90F |

CODE_83C911:
  RTS                                       ; $83C911 |

  JSR.W CODE_FN_83C9F9                      ; $83C912 |

CODE_JP_83C915:
  LDA.B $11                                 ; $83C915 |
  INC A                                     ; $83C917 |
  STA.B $16                                 ; $83C918 |
  STZ.B $12                                 ; $83C91A |
  REP #$20                                  ; $83C91C |
  LDA.B $14                                 ; $83C91E |
  CLC                                       ; $83C920 |
  SBC.B $11                                 ; $83C921 |
  STA.B $14                                 ; $83C923 |
  STA.B $0A                                 ; $83C925 |
  JSL.L CODE_FL_80CA7D                      ; $83C927 |
  CMP.W #$0008                              ; $83C92B |
  BCS CODE_83C935                           ; $83C92E |
  SEP #$20                                  ; $83C930 |
  JMP.W CODE_JP_83C7C1                      ; $83C932 |

CODE_83C935:
  JMP.W CODE_JP_83C761                      ; $83C935 |

  JSR.W CODE_FN_83C9F9                      ; $83C938 |
  LDA.B $11                                 ; $83C93B |
  INC A                                     ; $83C93D |
  STA.B $16                                 ; $83C93E |
  STZ.B $12                                 ; $83C940 |
  REP #$20                                  ; $83C942 |
  LDA.B $14                                 ; $83C944 |
  CLC                                       ; $83C946 |
  SBC.B $11                                 ; $83C947 |
  STA.B $14                                 ; $83C949 |
  STA.B $0A                                 ; $83C94B |
  LDA.B $09,X                               ; $83C94D |
  STA.B $08                                 ; $83C94F |
  JSL.L CODE_FL_80CA7D                      ; $83C951 |
  CMP.W #$0008                              ; $83C955 |
  BCS CODE_83C935                           ; $83C958 |
  SEP #$20                                  ; $83C95A |
  JMP.W CODE_JP_83C7C1                      ; $83C95C |

  JSR.W CODE_FN_83C9F9                      ; $83C95F |
  BEQ CODE_83C973                           ; $83C962 |
  CMP.B #$06                                ; $83C964 |
  BCS CODE_83C974                           ; $83C966 |

CODE_83C968:
  LDA.B $AE,X                               ; $83C968 |
  BNE CODE_83C97F                           ; $83C96A |
  LDA.B $29,X                               ; $83C96C |
  SEC                                       ; $83C96E |
  SBC.B $11                                 ; $83C96F |
  STA.B $29,X                               ; $83C971 |

CODE_83C973:
  RTS                                       ; $83C973 |

CODE_83C974:
  LDA.B $48,X                               ; $83C974 |
  CMP.B #$7F                                ; $83C976 |
  BEQ CODE_83C97E                           ; $83C978 |
  STZ.B $AE,X                               ; $83C97A |
  STZ.B $48,X                               ; $83C97C |

CODE_83C97E:
  RTS                                       ; $83C97E |

CODE_83C97F:
  LDA.B $48,X                               ; $83C97F |
  CMP.B #$7F                                ; $83C981 |
  BEQ CODE_83C987                           ; $83C983 |
  STZ.B $48,X                               ; $83C985 |

CODE_83C987:
  RTS                                       ; $83C987 |

  JSR.W CODE_FN_83C9F9                      ; $83C988 |
  SEC                                       ; $83C98B |
  SBC.B #$08                                ; $83C98C |
  BCC CODE_83C974                           ; $83C98E |
  STA.B $00                                 ; $83C990 |
  LDA.B $38,X                               ; $83C992 |
  BNE CODE_83C99C                           ; $83C994 |
  LDA.B $33,X                               ; $83C996 |
  ORA.B #$04                                ; $83C998 |
  STA.B $33,X                               ; $83C99A |

CODE_83C99C:
  LDA.B $00                                 ; $83C99C |
  BEQ CODE_83C973                           ; $83C99E |
  CMP.B #$06                                ; $83C9A0 |
  BCS CODE_83C974                           ; $83C9A2 |
  STA.B $11                                 ; $83C9A4 |
  LDA.B $29,X                               ; $83C9A6 |
  SEC                                       ; $83C9A8 |
  SBC.B $11                                 ; $83C9A9 |
  STA.B $29,X                               ; $83C9AB |
  RTS                                       ; $83C9AD |

  JSR.W CODE_FN_83C9F9                      ; $83C9AE |
  SEC                                       ; $83C9B1 |
  SBC.B #$08                                ; $83C9B2 |
  BCC CODE_83C974                           ; $83C9B4 |
  BEQ CODE_83C973                           ; $83C9B6 |
  CMP.B #$06                                ; $83C9B8 |
  BCS CODE_83C974                           ; $83C9BA |
  STA.B $11                                 ; $83C9BC |
  BRA CODE_83C968                           ; $83C9BE |

  LDA.B $38,X                               ; $83C9C0 |
  BNE CODE_JP_83C9CA                        ; $83C9C2 |
  LDA.B $33,X                               ; $83C9C4 |
  ORA.B #$04                                ; $83C9C6 |
  STA.B $33,X                               ; $83C9C8 |

CODE_JP_83C9CA:
  JSR.W CODE_FN_83C9F9                      ; $83C9CA |
  BEQ CODE_83C9D6                           ; $83C9CD |
  LDA.B $29,X                               ; $83C9CF |
  SEC                                       ; $83C9D1 |
  SBC.B $11                                 ; $83C9D2 |
  STA.B $29,X                               ; $83C9D4 |

CODE_83C9D6:
  RTS                                       ; $83C9D6 |

  LDA.W $1C76                               ; $83C9D7 |
  BEQ CODE_JP_83C9CA                        ; $83C9DA |
  LSR A                                     ; $83C9DC |
  BCC CODE_83C9F0                           ; $83C9DD |

CODE_83C9DF:
  LDA.B $27,X                               ; $83C9DF |
  CLC                                       ; $83C9E1 |
  ADC.B #$01                                ; $83C9E2 |
  STA.B $27,X                               ; $83C9E4 |
  BRA CODE_JP_83C9CA                        ; $83C9E6 |

  LDA.W $1C76                               ; $83C9E8 |
  BEQ CODE_JP_83C9CA                        ; $83C9EB |
  LSR A                                     ; $83C9ED |
  BCC CODE_83C9DF                           ; $83C9EE |

CODE_83C9F0:
  LDA.B $27,X                               ; $83C9F0 |
  SEC                                       ; $83C9F2 |
  SBC.B #$01                                ; $83C9F3 |
  STA.B $27,X                               ; $83C9F5 |
  BRA CODE_JP_83C9CA                        ; $83C9F7 |

CODE_FN_83C9F9:
  LDA.B $14                                 ; $83C9F9 |
  CLC                                       ; $83C9FB |
  ADC.W $1672                               ; $83C9FC |
  AND.B #$0F                                ; $83C9FF |
  STA.B $11                                 ; $83CA01 |
  RTS                                       ; $83CA03 |

CODE_FN_83CA04:
  LDA.W $1662                               ; $83CA04 |
  CLC                                       ; $83CA07 |
  ADC.B $09,X                               ; $83CA08 |
  AND.B #$0F                                ; $83CA0A |
  RTS                                       ; $83CA0C |

CODE_FN_83CA0D:
  STA.B $00                                 ; $83CA0D |
  LDA.B $26,X                               ; $83CA0F |
  BPL CODE_83CA25                           ; $83CA11 |
  LDA.B $00                                 ; $83CA13 |
  CLC                                       ; $83CA15 |
  ADC.B $4A,X                               ; $83CA16 |
  BMI CODE_83CA20                           ; $83CA18 |
  CMP.B $00                                 ; $83CA1A |
  BCC CODE_83CA20                           ; $83CA1C |
  LDA.B $00                                 ; $83CA1E |

CODE_83CA20:
  STA.B $4A,X                               ; $83CA20 |
  SEP #$20                                  ; $83CA22 |
  RTS                                       ; $83CA24 |

CODE_83CA25:
  STZ.B $4A,X                               ; $83CA25 |
  SEP #$20                                  ; $83CA27 |
  RTS                                       ; $83CA29 |

CODE_FN_83CA2A:
  STA.B $00                                 ; $83CA2A |
  LDA.B $26,X                               ; $83CA2C |
  BEQ CODE_83CA25                           ; $83CA2E |
  BMI CODE_83CA25                           ; $83CA30 |
  LDA.B $00                                 ; $83CA32 |
  CLC                                       ; $83CA34 |
  ADC.B $4A,X                               ; $83CA35 |
  BPL CODE_83CA3F                           ; $83CA37 |
  CMP.B $00                                 ; $83CA39 |
  BCS CODE_83CA3F                           ; $83CA3B |
  LDA.B $00                                 ; $83CA3D |

CODE_83CA3F:
  STA.B $4A,X                               ; $83CA3F |
  SEP #$20                                  ; $83CA41 |
  RTS                                       ; $83CA43 |

CODE_FN_83CA44:
  LDY.W #$000C                              ; $83CA44 |
  LDA.B $18                                 ; $83CA47 |
  BNE CODE_83CA4D                           ; $83CA49 |
  CLC                                       ; $83CA4B |
  RTS                                       ; $83CA4C |

CODE_83CA4D:
  BMI CODE_83CA52                           ; $83CA4D |
  LDY.W #$FFF4                              ; $83CA4F |

CODE_83CA52:
  STY.B $26                                 ; $83CA52 |
  LDA.B $0D,X                               ; $83CA54 |
  SEC                                       ; $83CA56 |
  SBC.W #$0009                              ; $83CA57 |
  STA.B $0A                                 ; $83CA5A |
  LDA.B $21                                 ; $83CA5C |
  SEC                                       ; $83CA5E |
  SBC.B $26                                 ; $83CA5F |
  STA.B $08                                 ; $83CA61 |
  JSL.L CODE_FL_80CA7D                      ; $83CA63 |
  STA.B $00                                 ; $83CA67 |
  TAY                                       ; $83CA69 |
  LDA.W CODE_00EEFA,Y                       ; $83CA6A |
  BIT.W #$0008                              ; $83CA6D |
  BNE CODE_83CA8B                           ; $83CA70 |
  LDA.B $0D,X                               ; $83CA72 |
  CLC                                       ; $83CA74 |
  ADC.W #$0009                              ; $83CA75 |
  STA.B $0A                                 ; $83CA78 |
  JSL.L CODE_FL_80CA7D                      ; $83CA7A |
  STA.B $00                                 ; $83CA7E |
  TAY                                       ; $83CA80 |
  LDA.W CODE_00EEFA,Y                       ; $83CA81 |
  BIT.W #$0008                              ; $83CA84 |
  BNE CODE_83CA8B                           ; $83CA87 |
  CLC                                       ; $83CA89 |
  RTS                                       ; $83CA8A |

CODE_83CA8B:
  BIT.W #$0010                              ; $83CA8B |
  BEQ CODE_83CA9B                           ; $83CA8E |
  LDA.B $38,X                               ; $83CA90 |
  BNE CODE_83CA9B                           ; $83CA92 |
  LDA.B $32,X                               ; $83CA94 |
  ORA.W #$0400                              ; $83CA96 |
  STA.B $32,X                               ; $83CA99 |

CODE_83CA9B:
  LDA.B $00                                 ; $83CA9B |
  CMP.W #$006E                              ; $83CA9D |
  BCS CODE_83CAA5                           ; $83CAA0 |
  LDA.W #$006E                              ; $83CAA2 |

CODE_83CAA5:
  JSR.W CODE_FN_83DC59                      ; $83CAA5 |
  INC.B $90,X                               ; $83CAA8 |
  STZ.B $4A,X                               ; $83CAAA |
  SEC                                       ; $83CAAC |
  RTS                                       ; $83CAAD |

CODE_FN_83CAAE:
  LDA.B $3A,X                               ; $83CAAE |
  BIT.W #$0004                              ; $83CAB0 |
  BNE CODE_83CABA                           ; $83CAB3 |
  STZ.B $48,X                               ; $83CAB5 |
  STZ.B $90,X                               ; $83CAB7 |
  RTS                                       ; $83CAB9 |

CODE_83CABA:
  STZ.B $90,X                               ; $83CABA |
  LDA.B $48,X                               ; $83CABC |
  CMP.W #$007F                              ; $83CABE |
  BEQ CODE_83CAC5                           ; $83CAC1 |
  STZ.B $48,X                               ; $83CAC3 |

CODE_83CAC5:
  LDA.B $0E,X                               ; $83CAC5 |
  STA.B $22                                 ; $83CAC7 |
  LDY.W #$000C                              ; $83CAC9 |
  LDA.B $28,X                               ; $83CACC |
  CLC                                       ; $83CACE |
  ADC.B $7A,X                               ; $83CACF |
  CLC                                       ; $83CAD1 |
  ADC.B $4C,X                               ; $83CAD2 |
  STA.B $18                                 ; $83CAD4 |
  BNE CODE_83CADB                           ; $83CAD6 |
  JMP.W CODE_JP_83CB75                      ; $83CAD8 |

CODE_83CADB:
  BPL CODE_83CADF                           ; $83CADB |
  DEC.B $22                                 ; $83CADD |

CODE_83CADF:
  STA.B $00                                 ; $83CADF |
  CLC                                       ; $83CAE1 |
  ADC.B $0C,X                               ; $83CAE2 |
  STA.B $20                                 ; $83CAE4 |
  BCC CODE_83CAEA                           ; $83CAE6 |
  INC.B $22                                 ; $83CAE8 |

CODE_83CAEA:
  LDA.B $00                                 ; $83CAEA |
  BMI CODE_83CAF1                           ; $83CAEC |
  LDY.W #$FFF4                              ; $83CAEE |

CODE_83CAF1:
  STY.B $24                                 ; $83CAF1 |
  LDA.B $09,X                               ; $83CAF3 |
  SEC                                       ; $83CAF5 |
  SBC.W #$0008                              ; $83CAF6 |
  STA.B $08                                 ; $83CAF9 |
  LDA.B $21                                 ; $83CAFB |
  SEC                                       ; $83CAFD |
  SBC.B $24                                 ; $83CAFE |
  STA.B $0A                                 ; $83CB00 |
  JSL.L CODE_FL_80CA7D                      ; $83CB02 |
  TAY                                       ; $83CB06 |
  LDA.W CODE_00EEFA,Y                       ; $83CB07 |
  BIT.W #$0008                              ; $83CB0A |
  BNE CODE_83CB27                           ; $83CB0D |
  LDA.B $09,X                               ; $83CB0F |
  CLC                                       ; $83CB11 |
  ADC.W #$0008                              ; $83CB12 |
  STA.B $08                                 ; $83CB15 |
  JSL.L CODE_FL_80CA7D                      ; $83CB17 |
  TAY                                       ; $83CB1B |
  LDA.W CODE_00EEFA,Y                       ; $83CB1C |
  BIT.W #$0008                              ; $83CB1F |
  BNE CODE_83CB27                           ; $83CB22 |
  SEP #$20                                  ; $83CB24 |
  RTS                                       ; $83CB26 |

CODE_83CB27:
  BIT.W #$0010                              ; $83CB27 |
  BEQ CODE_83CB37                           ; $83CB2A |
  LDA.B $38,X                               ; $83CB2C |
  BNE CODE_83CB37                           ; $83CB2E |
  LDA.B $32,X                               ; $83CB30 |
  ORA.W #$0400                              ; $83CB32 |
  STA.B $32,X                               ; $83CB35 |

CODE_83CB37:
  SEP #$20                                  ; $83CB37 |
  LDA.B $25                                 ; $83CB39 |
  BPL CODE_83CB59                           ; $83CB3B |
  STZ.B $4C,X                               ; $83CB3D |
  STZ.B $4D,X                               ; $83CB3F |
  INC.B $48,X                               ; $83CB41 |
  LDA.B $0A                                 ; $83CB43 |
  CLC                                       ; $83CB45 |
  ADC.W $1672                               ; $83CB46 |
  AND.B #$0F                                ; $83CB49 |
  STA.B $11                                 ; $83CB4B |
  BEQ CODE_83CB58                           ; $83CB4D |
  LDA.B $29,X                               ; $83CB4F |
  SEC                                       ; $83CB51 |
  SBC.B $11                                 ; $83CB52 |
  STA.B $29,X                               ; $83CB54 |
  STZ.B $28,X                               ; $83CB56 |

CODE_83CB58:
  RTS                                       ; $83CB58 |

CODE_83CB59:
  STZ.B $4C,X                               ; $83CB59 |
  STZ.B $4D,X                               ; $83CB5B |
  STZ.B $0C,X                               ; $83CB5D |
  LDA.W $1672                               ; $83CB5F |
  CLC                                       ; $83CB62 |
  ADC.B $0A                                 ; $83CB63 |
  AND.B #$0F                                ; $83CB65 |
  EOR.B #$0F                                ; $83CB67 |
  STA.B $11                                 ; $83CB69 |
  CLC                                       ; $83CB6B |
  ADC.B $29,X                               ; $83CB6C |
  STA.B $29,X                               ; $83CB6E |
  STZ.B $28,X                               ; $83CB70 |
  INC.B $90,X                               ; $83CB72 |
  RTS                                       ; $83CB74 |

CODE_JP_83CB75:
  SEP #$20                                  ; $83CB75 |
  RTS                                       ; $83CB77 |

CODE_FL_83CB78:
  PHX                                       ; $83CB78 |
  PHY                                       ; $83CB79 |
  STX.B $00                                 ; $83CB7A |
  LDA.W #$0620                              ; $83CB7C |
  CPX.W #$0400                              ; $83CB7F |
  BEQ CODE_83CB87                           ; $83CB82 |
  LDA.W #$08F0                              ; $83CB84 |

CODE_83CB87:
  TAX                                       ; $83CB87 |
  LDA.B $00                                 ; $83CB88 |
  STA.B $3A,X                               ; $83CB8A |
  LDA.W #$022B                              ; $83CB8C |
  STA.B $18,X                               ; $83CB8F |
  LDY.B $00                                 ; $83CB91 |
  LDA.W #$C000                              ; $83CB93 |
  STA.B $22,X                               ; $83CB96 |
  LDA.W $0002,Y                             ; $83CB98 |
  STA.B $02,X                               ; $83CB9B |
  LDA.W $0006,Y                             ; $83CB9D |
  STA.B $06,X                               ; $83CBA0 |
  LDA.W $0009,Y                             ; $83CBA2 |
  STA.B $09,X                               ; $83CBA5 |
  LDA.W $000D,Y                             ; $83CBA7 |
  STA.B $0D,X                               ; $83CBAA |
  LDA.W $0011,Y                             ; $83CBAC |
  STA.B $11,X                               ; $83CBAF |
  STZ.B $34,X                               ; $83CBB1 |
  PLY                                       ; $83CBB3 |
  PLX                                       ; $83CBB4 |
  RTL                                       ; $83CBB5 |

CODE_FL_83CBB6:
  PHX                                       ; $83CBB6 |
  LDA.W #$0620                              ; $83CBB7 |
  CPX.W #$0400                              ; $83CBBA |
  BEQ CODE_83CBC2                           ; $83CBBD |
  LDA.W #$08F0                              ; $83CBBF |

CODE_83CBC2:
  TAX                                       ; $83CBC2 |
  JSL.L CODE_FL_86CA36                      ; $83CBC3 |
  PLX                                       ; $83CBC7 |
  RTL                                       ; $83CBC8 |

CODE_FL_83CBC9:
  PHP                                       ; $83CBC9 |
  REP #$20                                  ; $83CBCA |
  LDA.W #$0050                              ; $83CBCC |
  JSL.L CODE_FL_8089BD                      ; $83CBCF |
  PHX                                       ; $83CBD3 |
  STX.B $FC                                 ; $83CBD4 |
  PHB                                       ; $83CBD6 |
  PEA.W $8787                               ; $83CBD7 |
  PLB                                       ; $83CBDA |
  PLB                                       ; $83CBDB |
  JSL.L CODE_FL_85A940                      ; $83CBDC |
  BCS CODE_83CC0B                           ; $83CBE0 |
  LDA.B $04,X                               ; $83CBE2 |
  AND.W #$0098                              ; $83CBE4 |
  CMP.W #$0080                              ; $83CBE7 |
  BEQ CODE_83CC05                           ; $83CBEA |
  CMP.W #$0088                              ; $83CBEC |
  BEQ CODE_83CC00                           ; $83CBEF |
  CMP.W #$0090                              ; $83CBF1 |
  BEQ CODE_83CBFB                           ; $83CBF4 |
  LDA.W #$1898                              ; $83CBF6 |
  BRA CODE_83CC08                           ; $83CBF9 |

CODE_83CBFB:
  LDA.W #$1090                              ; $83CBFB |
  BRA CODE_83CC08                           ; $83CBFE |

CODE_83CC00:
  LDA.W #$0888                              ; $83CC00 |
  BRA CODE_83CC08                           ; $83CC03 |

CODE_83CC05:
  LDA.W #$0080                              ; $83CC05 |

CODE_83CC08:
  STA.W $0004,Y                             ; $83CC08 |

CODE_83CC0B:
  PLB                                       ; $83CC0B |
  PLX                                       ; $83CC0C |
  PLP                                       ; $83CC0D |
  RTL                                       ; $83CC0E |

CODE_FN_83CC0F:
  LDA.B $C4                                 ; $83CC0F |
  BEQ CODE_83CC16                           ; $83CC11 |
  JMP.W CODE_JP_83CCCA                      ; $83CC13 |

CODE_83CC16:
  JSR.W CODE_FN_83CC20                      ; $83CC16 |
  BCC CODE_83CC1F                           ; $83CC19 |
  JSL.L CODE_FL_83CBC9                      ; $83CC1B |

CODE_83CC1F:
  RTS                                       ; $83CC1F |

CODE_FN_83CC20:
  LDA.B $68,X                               ; $83CC20 |
  BEQ CODE_83CC27                           ; $83CC22 |
  JMP.W CODE_JP_83CCCA                      ; $83CC24 |

CODE_83CC27:
  LDA.B $18,X                               ; $83CC27 |
  BNE CODE_83CC2E                           ; $83CC29 |
  JMP.W CODE_JP_83CCCA                      ; $83CC2B |

CODE_83CC2E:
  LDA.B $99                                 ; $83CC2E |
  BIT.B #$20                                ; $83CC30 |
  BNE CODE_83CC37                           ; $83CC32 |
  JMP.W CODE_JP_83CCCA                      ; $83CC34 |

CODE_83CC37:
  LDA.B $22,X                               ; $83CC37 |
  CMP.B #$00                                ; $83CC39 |
  BEQ CODE_FN_83CC44                        ; $83CC3B |
  CMP.B #$1B                                ; $83CC3D |
  BEQ CODE_FN_83CC44                        ; $83CC3F |
  JMP.W CODE_JP_83CCCA                      ; $83CC41 |

CODE_FN_83CC44:
  LDA.B $18,X                               ; $83CC44 |
  STA.B $00                                 ; $83CC46 |
  STZ.B $6E,X                               ; $83CC48 |
  LDA.B $97                                 ; $83CC4A |
  BIT.B #$40                                ; $83CC4C |
  BEQ CODE_83CC52                           ; $83CC4E |
  INC.B $6E,X                               ; $83CC50 |

CODE_83CC52:
  JSR.W CODE_FN_83CCCC                      ; $83CC52 |
  JSR.W CODE_FN_83CCD9                      ; $83CC55 |
  BCC CODE_83CC5F                           ; $83CC58 |
  JSR.W CODE_FN_83CD0F                      ; $83CC5A |
  BCC CODE_83CC79                           ; $83CC5D |

CODE_83CC5F:
  JSR.W CODE_FN_83CCCC                      ; $83CC5F |
  JSR.W CODE_FN_83CCD9                      ; $83CC62 |
  BCC CODE_83CC6C                           ; $83CC65 |
  JSR.W CODE_FN_83CD0F                      ; $83CC67 |
  BCC CODE_83CC79                           ; $83CC6A |

CODE_83CC6C:
  JSR.W CODE_FN_83CCCC                      ; $83CC6C |
  JSR.W CODE_FN_83CCD9                      ; $83CC6F |
  BCC CODE_JP_83CCCA                        ; $83CC72 |
  JSR.W CODE_FN_83CD0F                      ; $83CC74 |
  BCS CODE_JP_83CCCA                        ; $83CC77 |

CODE_83CC79:
  LDA.B $00                                 ; $83CC79 |
  CMP.B $18,X                               ; $83CC7B |
  BEQ CODE_JP_83CCCA                        ; $83CC7D |
  STA.B $18,X                               ; $83CC7F |
  REP #$20                                  ; $83CC81 |
  STZ.B $66,X                               ; $83CC83 |
  LDA.B $92,X                               ; $83CC85 |
  AND.W #$7FFF                              ; $83CC87 |
  STA.B $92,X                               ; $83CC8A |
  JSL.L CODE_FL_83CE65                      ; $83CC8C |
  STA.B $9E,X                               ; $83CC90 |
  SEP #$20                                  ; $83CC92 |
  LDA.B #$18                                ; $83CC94 |
  STA.B $68,X                               ; $83CC96 |
  JSR.W CODE_FN_83878A                      ; $83CC98 |
  CPX.W #$0400                              ; $83CC9B |
  BNE CODE_83CCA8                           ; $83CC9E |
  STZ.W $1780                               ; $83CCA0 |
  STZ.W $177E                               ; $83CCA3 |
  BRA CODE_83CCAE                           ; $83CCA6 |

CODE_83CCA8:
  STZ.W $1794                               ; $83CCA8 |
  STZ.W $1792                               ; $83CCAB |

CODE_83CCAE:
  LDA.B $90                                 ; $83CCAE |
  CMP.B #$00                                ; $83CCB0 |
  BEQ CODE_83CCC1                           ; $83CCB2 |
  CMP.B #$01                                ; $83CCB4 |
  BNE CODE_83CCC8                           ; $83CCB6 |
  JSR.W CODE_FN_839ECD                      ; $83CCB8 |
  JSL.L CODE_FL_83CD69                      ; $83CCBB |
  BRA CODE_83CCC8                           ; $83CCBF |

CODE_83CCC1:
  JSR.W CODE_FN_83BF1D                      ; $83CCC1 |
  JSL.L CODE_FL_83CD69                      ; $83CCC4 |

CODE_83CCC8:
  SEC                                       ; $83CCC8 |
  RTS                                       ; $83CCC9 |

CODE_JP_83CCCA:
  CLC                                       ; $83CCCA |
  RTS                                       ; $83CCCB |

CODE_FN_83CCCC:
  INC.B $00                                 ; $83CCCC |
  LDA.B $00                                 ; $83CCCE |
  CMP.B #$05                                ; $83CCD0 |
  BCC CODE_83CCD6                           ; $83CCD2 |
  LDA.B #$01                                ; $83CCD4 |

CODE_83CCD6:
  STA.B $00                                 ; $83CCD6 |
  RTS                                       ; $83CCD8 |

CODE_FN_83CCD9:
  CMP.B #$02                                ; $83CCD9 |
  BEQ CODE_83CCEF                           ; $83CCDB |
  CMP.B #$03                                ; $83CCDD |
  BEQ CODE_83CCF9                           ; $83CCDF |
  CMP.B #$04                                ; $83CCE1 |
  BEQ CODE_83CD03                           ; $83CCE3 |
  LDA.L $7002F8                             ; $83CCE5 |
  BMI CODE_83CD0B                           ; $83CCE9 |
  BNE CODE_83CD0D                           ; $83CCEB |
  BRA CODE_83CD0B                           ; $83CCED |

CODE_83CCEF:
  LDA.L $70030C                             ; $83CCEF |
  BMI CODE_83CD0B                           ; $83CCF3 |
  BNE CODE_83CD0D                           ; $83CCF5 |
  BRA CODE_83CD0B                           ; $83CCF7 |

CODE_83CCF9:
  LDA.L $700320                             ; $83CCF9 |
  BMI CODE_83CD0B                           ; $83CCFD |
  BNE CODE_83CD0D                           ; $83CCFF |
  BRA CODE_83CD0B                           ; $83CD01 |

CODE_83CD03:
  LDA.L $700334                             ; $83CD03 |
  BMI CODE_83CD0B                           ; $83CD07 |
  BNE CODE_83CD0D                           ; $83CD09 |

CODE_83CD0B:
  CLC                                       ; $83CD0B |
  RTS                                       ; $83CD0C |

CODE_83CD0D:
  SEC                                       ; $83CD0D |
  RTS                                       ; $83CD0E |

CODE_FN_83CD0F:
  LDY.W #$0400                              ; $83CD0F |
  CPX.W #$0400                              ; $83CD12 |
  BNE CODE_83CD1A                           ; $83CD15 |
  LDY.W #$04C0                              ; $83CD17 |

CODE_83CD1A:
  LDA.W $0018,Y                             ; $83CD1A |
  BEQ CODE_83CD2B                           ; $83CD1D |
  CMP.B $00                                 ; $83CD1F |
  BNE CODE_83CD2B                           ; $83CD21 |
  LDA.L $7002A8                             ; $83CD23 |
  BNE CODE_83CD2B                           ; $83CD27 |
  SEC                                       ; $83CD29 |
  RTS                                       ; $83CD2A |

CODE_83CD2B:
  CLC                                       ; $83CD2B |
  RTS                                       ; $83CD2C |

CODE_FN_83CD2D:
  JSR.W CODE_FN_83CD37                      ; $83CD2D |
  BCC CODE_83CD36                           ; $83CD30 |
  JSL.L CODE_FL_83CBC9                      ; $83CD32 |

CODE_83CD36:
  RTS                                       ; $83CD36 |

CODE_FN_83CD37:
  LDA.B $C4                                 ; $83CD37 |
  BNE CODE_JP_83CCCA                        ; $83CD39 |
  LDA.B $68,X                               ; $83CD3B |
  BNE CODE_JP_83CCCA                        ; $83CD3D |
  LDA.B $18,X                               ; $83CD3F |
  BEQ CODE_83CD2B                           ; $83CD41 |
  LDA.B $99                                 ; $83CD43 |
  BIT.B #$20                                ; $83CD45 |
  BEQ CODE_83CD2B                           ; $83CD47 |
  LDA.B $22,X                               ; $83CD49 |
  CMP.B #$00                                ; $83CD4B |
  BEQ CODE_83CD53                           ; $83CD4D |
  CMP.B #$1B                                ; $83CD4F |
  BNE CODE_83CD2B                           ; $83CD51 |

CODE_83CD53:
  JMP.W CODE_FN_83CC44                      ; $83CD53 |

CODE_FL_83CD56:
  REP #$20                                  ; $83CD56 |
  LDA.B $66,X                               ; $83CD58 |
  BEQ CODE_FL_83CD69                        ; $83CD5A |
  CMP.W #$00A0                              ; $83CD5C |
  BCC CODE_FL_83CD69                        ; $83CD5F |
  SEP #$20                                  ; $83CD61 |
  PHX                                       ; $83CD63 |
  JSR.W CODE_FN_839FDA                      ; $83CD64 |
  PLX                                       ; $83CD67 |
  RTL                                       ; $83CD68 |

CODE_FL_83CD69:
  REP #$20                                  ; $83CD69 |
  PHB                                       ; $83CD6B |
  PEA.W $8181                               ; $83CD6C |
  PLB                                       ; $83CD6F |
  PLB                                       ; $83CD70 |
  PHX                                       ; $83CD71 |
  LDA.B $18,X                               ; $83CD72 |
  BEQ CODE_83CD9F                           ; $83CD74 |
  ASL A                                     ; $83CD76 |
  TAY                                       ; $83CD77 |
  LDA.B $6E,X                               ; $83CD78 |
  BEQ CODE_83CD82                           ; $83CD7A |
  TYA                                       ; $83CD7C |
  CLC                                       ; $83CD7D |
  ADC.W #$0008                              ; $83CD7E |
  TAY                                       ; $83CD81 |

CODE_83CD82:
  CPX.W #$0400                              ; $83CD82 |
  BNE CODE_83CD94                           ; $83CD85 |
  LDA.W LOOSE_OP_00D688,Y                   ; $83CD87 |
  TAY                                       ; $83CD8A |
  LDX.W #$1F40                              ; $83CD8B |
  JSL.L CODE_FL_80C27F                      ; $83CD8E |
  BRA CODE_83CD9F                           ; $83CD92 |

CODE_83CD94:
  LDA.W LOOSE_OP_00D698,Y                   ; $83CD94 |
  TAY                                       ; $83CD97 |
  LDX.W #$1F50                              ; $83CD98 |
  JSL.L CODE_FL_80C27F                      ; $83CD9B |

CODE_83CD9F:
  PLX                                       ; $83CD9F |
  PLB                                       ; $83CDA0 |
  SEP #$20                                  ; $83CDA1 |
  RTL                                       ; $83CDA3 |

CODE_FL_83CDA4:
  LDY.W $003C,X                             ; $83CDA4 |
  LDA.W $0018,Y                             ; $83CDA7 |
  BEQ CODE_83CDD2                           ; $83CDAA |
  LDA.W $0022,Y                             ; $83CDAC |
  CMP.W #$0029                              ; $83CDAF |
  BEQ CODE_83CDD4                           ; $83CDB2 |
  CMP.W #$002A                              ; $83CDB4 |
  BEQ CODE_83CDD4                           ; $83CDB7 |
  CMP.W #$002B                              ; $83CDB9 |
  BEQ CODE_83CDD4                           ; $83CDBC |
  CMP.W #$002C                              ; $83CDBE |
  BEQ CODE_83CDD4                           ; $83CDC1 |
  CMP.W #$002D                              ; $83CDC3 |
  BEQ CODE_83CDD4                           ; $83CDC6 |
  CMP.W #$002E                              ; $83CDC8 |
  BEQ CODE_83CDD4                           ; $83CDCB |
  CMP.W #$9BE8                              ; $83CDCD |
  BEQ CODE_83CDD4                           ; $83CDD0 |

CODE_83CDD2:
  CLC                                       ; $83CDD2 |
  RTL                                       ; $83CDD3 |

CODE_83CDD4:
  SEC                                       ; $83CDD4 |
  RTL                                       ; $83CDD5 |

CODE_FL_83CDD6:
  LDA.B $66,X                               ; $83CDD6 |
  BEQ CODE_83CE06                           ; $83CDD8 |
  CMP.W #$00A0                              ; $83CDDA |
  BCS CODE_83CE04                           ; $83CDDD |
  CMP.W #$0001                              ; $83CDDF |
  BEQ CODE_83CDF7                           ; $83CDE2 |
  BIT.W #$0007                              ; $83CDE4 |
  BNE CODE_83CE04                           ; $83CDE7 |
  BIT.W #$0008                              ; $83CDE9 |
  BNE CODE_83CDF7                           ; $83CDEC |
  SEP #$20                                  ; $83CDEE |
  JSR.W CODE_FN_839FDA                      ; $83CDF0 |
  REP #$20                                  ; $83CDF3 |
  BRA CODE_83CE04                           ; $83CDF5 |

CODE_83CDF7:
  LDA.B $92,X                               ; $83CDF7 |
  AND.W #$7FFF                              ; $83CDF9 |
  STA.B $92,X                               ; $83CDFC |
  JSL.L CODE_FL_83CD69                      ; $83CDFE |
  REP #$20                                  ; $83CE02 |

CODE_83CE04:
  DEC.B $66,X                               ; $83CE04 |

CODE_83CE06:
  RTL                                       ; $83CE06 |

CODE_FL_83CE07:
  STA.B $00                                 ; $83CE07 |
  LDA.B $4C,X                               ; $83CE09 |
  BEQ CODE_83CE21                           ; $83CE0B |
  BMI CODE_83CE17                           ; $83CE0D |
  SEC                                       ; $83CE0F |
  SBC.B $00                                 ; $83CE10 |
  BCS CODE_83CE1F                           ; $83CE12 |
  STZ.B $4C,X                               ; $83CE14 |
  RTL                                       ; $83CE16 |

CODE_83CE17:
  CLC                                       ; $83CE17 |
  ADC.B $00                                 ; $83CE18 |
  BCC CODE_83CE1F                           ; $83CE1A |
  STZ.B $4C,X                               ; $83CE1C |
  RTL                                       ; $83CE1E |

CODE_83CE1F:
  STA.B $4C,X                               ; $83CE1F |

CODE_83CE21:
  RTL                                       ; $83CE21 |

CODE_FL_83CE22:
  STZ.W $0498                               ; $83CE22 |
  STZ.W $049A                               ; $83CE25 |
  STZ.W $0558                               ; $83CE28 |
  STZ.W $055A                               ; $83CE2B |
  RTL                                       ; $83CE2E |

  LDA.B $3A,X                               ; $83CE2F |
  AND.B #$FF                                ; $83CE31 |
  SBC.W $3A95,X                             ; $83CE33 |
  RTL                                       ; $83CE36 |

  STA.W $1968                               ; $83CE37 |
  LDA.W $0404                               ; $83CE3A |
  AND.B #$67                                ; $83CE3D |
  ADC.B [$0D]                               ; $83CE3F |
  PLA                                       ; $83CE41 |
  ORA.W $048D,Y                             ; $83CE42 |
  TSB.B $AD                                 ; $83CE45 |
  CPY.B $04                                 ; $83CE47 |
  AND.B #$67                                ; $83CE49 |
  ADC.B [$0D]                               ; $83CE4B |
  PLA                                       ; $83CE4D |
  ORA.W CODE_00C48D,Y                       ; $83CE4E |
  TSB.B $6B                                 ; $83CE51 |

CODE_FL_83CE53:
  LDX.W #$0400                              ; $83CE53 |
  STX.B $DC                                 ; $83CE56 |
  STX.B $DE                                 ; $83CE58 |
  LDX.W #$04C0                              ; $83CE5A |
  LDA.W $04D8                               ; $83CE5D |
  BEQ CODE_83CE64                           ; $83CE60 |
  STX.B $DE                                 ; $83CE62 |

CODE_83CE64:
  RTL                                       ; $83CE64 |

CODE_FL_83CE65:
  LDA.B $18,X                               ; $83CE65 |
  CMP.W #$0001                              ; $83CE67 |
  BEQ CODE_83CE85                           ; $83CE6A |
  CMP.W #$0002                              ; $83CE6C |
  BEQ CODE_83CE80                           ; $83CE6F |
  CMP.W #$0003                              ; $83CE71 |
  BEQ CODE_83CE7B                           ; $83CE74 |
  LDA.L $700336                             ; $83CE76 |
  RTL                                       ; $83CE7A |

CODE_83CE7B:
  LDA.L $700322                             ; $83CE7B |
  RTL                                       ; $83CE7F |

CODE_83CE80:
  LDA.L $70030E                             ; $83CE80 |
  RTL                                       ; $83CE84 |

CODE_83CE85:
  LDA.L $7002FA                             ; $83CE85 |
  RTL                                       ; $83CE89 |

CODE_FL_83CE8A:
  LDA.B $18,X                               ; $83CE8A |
  CMP.W #$0001                              ; $83CE8C |
  BEQ CODE_83CEAA                           ; $83CE8F |
  CMP.W #$0002                              ; $83CE91 |
  BEQ CODE_83CEA5                           ; $83CE94 |
  CMP.W #$0003                              ; $83CE96 |
  BEQ CODE_83CEA0                           ; $83CE99 |
  LDA.L $700338                             ; $83CE9B |
  RTL                                       ; $83CE9F |

CODE_83CEA0:
  LDA.L $700324                             ; $83CEA0 |
  RTL                                       ; $83CEA4 |

CODE_83CEA5:
  LDA.L $700310                             ; $83CEA5 |
  RTL                                       ; $83CEA9 |

CODE_83CEAA:
  LDA.L $7002FC                             ; $83CEAA |
  RTL                                       ; $83CEAE |

CODE_FL_83CEAF:
  LDA.B $18,X                               ; $83CEAF |
  CMP.W #$0001                              ; $83CEB1 |
  BEQ CODE_83CECF                           ; $83CEB4 |
  CMP.W #$0002                              ; $83CEB6 |
  BEQ CODE_83CECA                           ; $83CEB9 |
  CMP.W #$0003                              ; $83CEBB |
  BEQ CODE_83CEC5                           ; $83CEBE |
  LDA.L $70033A                             ; $83CEC0 |
  RTL                                       ; $83CEC4 |

CODE_83CEC5:
  LDA.L $700326                             ; $83CEC5 |
  RTL                                       ; $83CEC9 |

CODE_83CECA:
  LDA.L $700312                             ; $83CECA |
  RTL                                       ; $83CECE |

CODE_83CECF:
  LDA.L $7002FE                             ; $83CECF |
  RTL                                       ; $83CED3 |

CODE_FN_83CED4:
  LDA.B $18,X                               ; $83CED4 |
  CMP.B #$01                                ; $83CED6 |
  BEQ CODE_83CEE4                           ; $83CED8 |
  CMP.B #$02                                ; $83CEDA |
  BEQ CODE_83CF0B                           ; $83CEDC |
  CMP.B #$03                                ; $83CEDE |
  BEQ CODE_83CF13                           ; $83CEE0 |
  BRA CODE_83CF2E                           ; $83CEE2 |

CODE_83CEE4:
  LDA.L $700300                             ; $83CEE4 |
  BEQ CODE_83CF36                           ; $83CEE8 |
  LDA.B $66,X                               ; $83CEEA |
  ORA.B $67,X                               ; $83CEEC |
  BNE CODE_83CF36                           ; $83CEEE |
  LDA.B $C4                                 ; $83CEF0 |
  BEQ CODE_83CEF6                           ; $83CEF2 |
  BPL CODE_83CF34                           ; $83CEF4 |

CODE_83CEF6:
  LDA.L $700296                             ; $83CEF6 |
  CMP.B #$10                                ; $83CEFA |
  BCC CODE_83CF36                           ; $83CEFC |
  REP #$20                                  ; $83CEFE |
  LDA.W #$0010                              ; $83CF00 |
  JSL.L CODE_FL_83D271                      ; $83CF03 |
  SEP #$20                                  ; $83CF07 |
  BRA CODE_83CF34                           ; $83CF09 |

CODE_83CF0B:
  LDA.L $700314                             ; $83CF0B |
  BEQ CODE_83CF36                           ; $83CF0F |
  BRA CODE_83CF34                           ; $83CF11 |

CODE_83CF13:
  LDA.L $700328                             ; $83CF13 |
  BEQ CODE_83CF36                           ; $83CF17 |
  LDA.L $700296                             ; $83CF19 |
  CMP.B #$10                                ; $83CF1D |
  BCC CODE_83CF36                           ; $83CF1F |
  REP #$20                                  ; $83CF21 |
  LDA.W #$0010                              ; $83CF23 |
  JSL.L CODE_FL_83D271                      ; $83CF26 |
  SEP #$20                                  ; $83CF2A |
  BRA CODE_83CF34                           ; $83CF2C |

CODE_83CF2E:
  LDA.L $70033C                             ; $83CF2E |
  BEQ CODE_83CF36                           ; $83CF32 |

CODE_83CF34:
  SEC                                       ; $83CF34 |
  RTS                                       ; $83CF35 |

CODE_83CF36:
  CLC                                       ; $83CF36 |
  RTS                                       ; $83CF37 |

  LDA.W #$0001                              ; $83CF38 |
  STA.L $700324                             ; $83CF3B |
  RTL                                       ; $83CF3F |

CODE_FN_83CF40:
  CPX.W #$0400                              ; $83CF40 |
  BNE CODE_83CF4A                           ; $83CF43 |
  LDY.B $DC                                 ; $83CF45 |
  STY.B $DE                                 ; $83CF47 |
  RTS                                       ; $83CF49 |

CODE_83CF4A:
  LDY.B $DE                                 ; $83CF4A |
  STY.B $DC                                 ; $83CF4C |
  RTS                                       ; $83CF4E |

CODE_FN_83CF4F:
  REP #$20                                  ; $83CF4F |
  LDY.W #$0000                              ; $83CF51 |
  CPX.W #$0400                              ; $83CF54 |
  BEQ CODE_83CF65                           ; $83CF57 |
  LDY.W #$0002                              ; $83CF59 |
  BRA CODE_83CF65                           ; $83CF5C |

CODE_FN_83CF5E:
  REP #$20                                  ; $83CF5E |
  LDA.W $1978                               ; $83CF60 |
  ASL A                                     ; $83CF63 |
  TAY                                       ; $83CF64 |

CODE_83CF65:
  LDA.W CODE_00EF7A,Y                       ; $83CF65 |
  TAY                                       ; $83CF68 |
  SEP #$20                                  ; $83CF69 |
  RTS                                       ; $83CF6B |

  LDA.W $1978                               ; $83CF6C |
  ASL A                                     ; $83CF6F |
  TAY                                       ; $83CF70 |
  LDA.W CODE_00EF7A,Y                       ; $83CF71 |
  TAY                                       ; $83CF74 |
  RTS                                       ; $83CF75 |

CODE_FN_83CF76:
  LDY.W #$0000                              ; $83CF76 |
  CPX.W #$0400                              ; $83CF79 |
  BEQ CODE_83CF81                           ; $83CF7C |
  LDY.W #$0002                              ; $83CF7E |

CODE_83CF81:
  LDA.W CODE_00EF7A,Y                       ; $83CF81 |
  TAY                                       ; $83CF84 |
  RTS                                       ; $83CF85 |

CODE_FL_83CF86:
  LDA.B $18,X                               ; $83CF86 |
  STA.B $76,X                               ; $83CF88 |
  STA.W $1996                               ; $83CF8A |
  STZ.B $52,X                               ; $83CF8D |
  STZ.B $38,X                               ; $83CF8F |
  RTL                                       ; $83CF91 |

CODE_FL_83CF92:
  LDY.W #$0000                              ; $83CF92 |
  LDA.W $0418                               ; $83CF95 |
  BEQ CODE_83CFA1                           ; $83CF98 |
  INY                                       ; $83CF9A |
  LDA.W $04D8                               ; $83CF9B |
  BEQ CODE_83CFA1                           ; $83CF9E |
  INY                                       ; $83CFA0 |

CODE_83CFA1:
  TYA                                       ; $83CFA1 |
  RTL                                       ; $83CFA2 |

  LDA.B $9E,X                               ; $83CFA3 |
  CMP.W #$0003                              ; $83CFA5 |
  BEQ CODE_83CFB4                           ; $83CFA8 |
  LDA.B $9E,X                               ; $83CFAA |
  CMP.W #$0002                              ; $83CFAC |
  BCS CODE_83CFB3                           ; $83CFAF |
  INC.B $9E,X                               ; $83CFB1 |

CODE_83CFB3:
  RTL                                       ; $83CFB3 |

CODE_83CFB4:
  LDA.B $A0,X                               ; $83CFB4 |
  CMP.W #$0002                              ; $83CFB6 |
  BCS CODE_83CFBD                           ; $83CFB9 |
  INC.B $A0,X                               ; $83CFBB |

CODE_83CFBD:
  RTL                                       ; $83CFBD |

  PHX                                       ; $83CFBE |
  PHY                                       ; $83CFBF |
  TYX                                       ; $83CFC0 |
  JSL.L CODE_FL_83CFC8                      ; $83CFC1 |
  PLY                                       ; $83CFC5 |
  PLX                                       ; $83CFC6 |
  RTL                                       ; $83CFC7 |

CODE_FL_83CFC8:
  LDA.B $9E,X                               ; $83CFC8 |
  CMP.W #$0003                              ; $83CFCA |
  BEQ CODE_83CFD6                           ; $83CFCD |
  LDA.B $9E,X                               ; $83CFCF |
  BEQ CODE_83CFD5                           ; $83CFD1 |
  DEC.B $9E,X                               ; $83CFD3 |

CODE_83CFD5:
  RTL                                       ; $83CFD5 |

CODE_83CFD6:
  LDA.B $A0,X                               ; $83CFD6 |
  BEQ CODE_83CFDC                           ; $83CFD8 |
  DEC.B $A0,X                               ; $83CFDA |

CODE_83CFDC:
  RTL                                       ; $83CFDC |

  PHX                                       ; $83CFDD |
  TYX                                       ; $83CFDE |
  JSR.W CODE_FN_83CFE4                      ; $83CFDF |
  PLX                                       ; $83CFE2 |
  RTL                                       ; $83CFE3 |

CODE_FN_83CFE4:
  AND.W #$007F                              ; $83CFE4 |
  STA.B $52,X                               ; $83CFE7 |
  LDA.W #$0001                              ; $83CFE9 |
  STA.B $38,X                               ; $83CFEC |
  RTS                                       ; $83CFEE |

  REP #$20                                  ; $83CFEF |
  PHX                                       ; $83CFF1 |
  LDA.B $09,X                               ; $83CFF2 |
  STA.B $10                                 ; $83CFF4 |
  LDA.B $0D,X                               ; $83CFF6 |
  ADC.W #$0018                              ; $83CFF8 |
  STA.B $12                                 ; $83CFFB |
  LDA.B $B0,X                               ; $83CFFD |
  BMI CODE_83D00A                           ; $83CFFF |
  LDA.B $04,X                               ; $83D001 |
  AND.W #$0020                              ; $83D003 |
  BNE CODE_83D040                           ; $83D006 |
  BRA CODE_83D011                           ; $83D008 |

CODE_83D00A:
  LDA.B $04,X                               ; $83D00A |
  AND.W #$0020                              ; $83D00C |
  BEQ CODE_83D040                           ; $83D00F |

CODE_83D011:
  LDX.W #$0B70                              ; $83D011 |

CODE_83D014:
  LDA.B $21,X                               ; $83D014 |
  BMI CODE_83D01F                           ; $83D016 |
  LDA.B $18,X                               ; $83D018 |
  AND.W #$00FF                              ; $83D01A |
  BEQ CODE_83D036                           ; $83D01D |

CODE_83D01F:
  LDA.B $09,X                               ; $83D01F |
  SBC.B $10                                 ; $83D021 |
  CMP.W #$0028                              ; $83D023 |
  BCS CODE_83D036                           ; $83D026 |
  LDA.B $12                                 ; $83D028 |
  SBC.B $0D,X                               ; $83D02A |
  CMP.W #$0030                              ; $83D02C |
  BCS CODE_83D036                           ; $83D02F |
  SEP #$20                                  ; $83D031 |
  PLX                                       ; $83D033 |
  SEC                                       ; $83D034 |
  RTS                                       ; $83D035 |

CODE_83D036:
  LDA.B $16,X                               ; $83D036 |
  TAX                                       ; $83D038 |
  BNE CODE_83D014                           ; $83D039 |
  SEP #$20                                  ; $83D03B |
  PLX                                       ; $83D03D |
  CLC                                       ; $83D03E |
  RTS                                       ; $83D03F |

CODE_83D040:
  LDX.W #$0B70                              ; $83D040 |

CODE_83D043:
  LDA.B $21,X                               ; $83D043 |
  BMI CODE_83D04E                           ; $83D045 |
  LDA.B $18,X                               ; $83D047 |
  AND.W #$00FF                              ; $83D049 |
  BEQ CODE_83D065                           ; $83D04C |

CODE_83D04E:
  LDA.B $10                                 ; $83D04E |
  SBC.B $09,X                               ; $83D050 |
  CMP.W #$0028                              ; $83D052 |
  BCS CODE_83D065                           ; $83D055 |
  LDA.B $12                                 ; $83D057 |
  SBC.B $0D,X                               ; $83D059 |
  CMP.W #$0030                              ; $83D05B |
  BCS CODE_83D065                           ; $83D05E |
  SEP #$20                                  ; $83D060 |
  PLX                                       ; $83D062 |
  SEC                                       ; $83D063 |
  RTS                                       ; $83D064 |

CODE_83D065:
  LDA.B $16,X                               ; $83D065 |
  TAX                                       ; $83D067 |
  BNE CODE_83D043                           ; $83D068 |
  SEP #$20                                  ; $83D06A |
  PLX                                       ; $83D06C |
  CLC                                       ; $83D06D |
  RTS                                       ; $83D06E |

  STZ.B $18                                 ; $83D06F |
  LDX.W #$0400                              ; $83D071 |
  LDA.B $18,X                               ; $83D074 |
  BEQ CODE_83D081                           ; $83D076 |
  BEQ CODE_83D07C                           ; $83D078 |
  INC.B $18                                 ; $83D07A |

CODE_83D07C:
  JSR.W CODE_FN_83D0B7                      ; $83D07C |
  REP #$20                                  ; $83D07F |

CODE_83D081:
  LDX.W #$04C0                              ; $83D081 |
  LDA.B $18,X                               ; $83D084 |
  BEQ CODE_83D091                           ; $83D086 |
  BEQ CODE_83D08C                           ; $83D088 |
  INC.B $18                                 ; $83D08A |

CODE_83D08C:
  JSR.W CODE_FN_83D0B7                      ; $83D08C |
  REP #$20                                  ; $83D08F |

CODE_83D091:
  LDA.B $18                                 ; $83D091 |
  BNE CODE_83D09C                           ; $83D093 |
  LDA.W #$000B                              ; $83D095 |
  JML.L CODE_FL_8085EC                      ; $83D098 |

CODE_83D09C:
  LDA.W #$0009                              ; $83D09C |
  JML.L CODE_FL_8085EC                      ; $83D09F |

  STZ.W $197A                               ; $83D0A3 |
  JML.L CODE_JL_80CEA5                      ; $83D0A6 |

  PHB                                       ; $83D0AA |
  PEA.W $8100                               ; $83D0AB |
  PLB                                       ; $83D0AE |
  PLB                                       ; $83D0AF |
  JSR.W CODE_FN_83D0B7                      ; $83D0B0 |
  REP #$20                                  ; $83D0B3 |
  PLB                                       ; $83D0B5 |
  RTL                                       ; $83D0B6 |

CODE_FN_83D0B7:
  REP #$20                                  ; $83D0B7 |
  JSL.L CODE_FL_83CF86                      ; $83D0B9 |
  LDA.B $7E                                 ; $83D0BD |
  CMP.W #$000B                              ; $83D0BF |
  BEQ CODE_83D0D7                           ; $83D0C2 |
  JSL.L CODE_FL_80C213                      ; $83D0C4 |
  JSL.L CODE_FL_80893F                      ; $83D0C8 |
  LDA.B $4C                                 ; $83D0CC |
  BNE CODE_83D0DA                           ; $83D0CE |
  LDA.W #$000B                              ; $83D0D0 |
  JSL.L CODE_FL_8085F6                      ; $83D0D3 |

CODE_83D0D7:
  SEP #$20                                  ; $83D0D7 |
  RTS                                       ; $83D0D9 |

CODE_83D0DA:
  STZ.B $4C                                 ; $83D0DA |
  LDA.B $4E                                 ; $83D0DC |
  INC A                                     ; $83D0DE |
  CMP.W #$0005                              ; $83D0DF |
  BNE CODE_83D0E7                           ; $83D0E2 |
  LDA.W #$0000                              ; $83D0E4 |

CODE_83D0E7:
  STA.B $4E                                 ; $83D0E7 |
  LDA.W #$0001                              ; $83D0E9 |
  JSL.L CODE_FL_8085EC                      ; $83D0EC |
  SEP #$20                                  ; $83D0F0 |
  RTS                                       ; $83D0F2 |

  SEP #$20                                  ; $83D0F3 |
  JSR.W CODE_FN_8388C5                      ; $83D0F5 |
  REP #$20                                  ; $83D0F8 |
  RTL                                       ; $83D0FA |

  PHB                                       ; $83D0FB |
  PEA.W $8181                               ; $83D0FC |
  PLB                                       ; $83D0FF |
  PLB                                       ; $83D100 |
  LDX.W #$0400                              ; $83D101 |
  LDA.B $18,X                               ; $83D104 |
  BEQ CODE_83D114                           ; $83D106 |
  LDA.B $22,X                               ; $83D108 |
  CMP.W #$0014                              ; $83D10A |
  BNE CODE_83D114                           ; $83D10D |
  JSR.W CODE_FN_83D0B7                      ; $83D10F |
  REP #$20                                  ; $83D112 |

CODE_83D114:
  LDX.W #$04C0                              ; $83D114 |
  LDA.B $18,X                               ; $83D117 |
  BEQ CODE_83D127                           ; $83D119 |
  LDA.B $22,X                               ; $83D11B |
  CMP.W #$0014                              ; $83D11D |
  BNE CODE_83D127                           ; $83D120 |
  JSR.W CODE_FN_83D0B7                      ; $83D122 |
  REP #$20                                  ; $83D125 |

CODE_83D127:
  PLB                                       ; $83D127 |
  RTL                                       ; $83D128 |

  PHB                                       ; $83D129 |
  PEA.W $8181                               ; $83D12A |
  PLB                                       ; $83D12D |
  PLB                                       ; $83D12E |
  STZ.B $00                                 ; $83D12F |
  LDX.W #$0400                              ; $83D131 |
  LDA.B $18,X                               ; $83D134 |
  BEQ CODE_83D148                           ; $83D136 |
  LDA.B $1A,X                               ; $83D138 |
  CMP.W #$0001                              ; $83D13A |
  BNE CODE_83D146                           ; $83D13D |
  LDA.B $22,X                               ; $83D13F |
  CMP.W #$0014                              ; $83D141 |
  BNE CODE_83D148                           ; $83D144 |

CODE_83D146:
  INC.B $00                                 ; $83D146 |

CODE_83D148:
  LDX.W #$04C0                              ; $83D148 |
  LDA.B $18,X                               ; $83D14B |
  BEQ CODE_83D15F                           ; $83D14D |
  LDA.B $1A,X                               ; $83D14F |
  CMP.W #$0001                              ; $83D151 |
  BNE CODE_83D15D                           ; $83D154 |
  LDA.B $22,X                               ; $83D156 |
  CMP.W #$0014                              ; $83D158 |
  BNE CODE_83D15F                           ; $83D15B |

CODE_83D15D:
  INC.B $00                                 ; $83D15D |

CODE_83D15F:
  LDA.B $00                                 ; $83D15F |
  BEQ CODE_83D163                           ; $83D161 |

CODE_83D163:
  PLB                                       ; $83D163 |
  RTL                                       ; $83D164 |

CODE_FL_83D165:
  SEP #$20                                  ; $83D165 |
  LDA.W $0092,Y                             ; $83D167 |
  BIT.B #$DF                                ; $83D16A |
  BNE CODE_83D182                           ; $83D16C |
  LDA.W $0018,Y                             ; $83D16E |
  BEQ CODE_83D182                           ; $83D171 |
  LDA.W $0022,Y                             ; $83D173 |
  CMP.B #$13                                ; $83D176 |
  BEQ CODE_83D182                           ; $83D178 |
  CMP.B #$14                                ; $83D17A |
  BEQ CODE_83D182                           ; $83D17C |
  REP #$20                                  ; $83D17E |
  CLC                                       ; $83D180 |
  RTL                                       ; $83D181 |

CODE_83D182:
  REP #$20                                  ; $83D182 |
  SEC                                       ; $83D184 |
  RTL                                       ; $83D185 |

CODE_FL_83D186:
  PHX                                       ; $83D186 |
  PHY                                       ; $83D187 |
  PHB                                       ; $83D188 |
  PEA.W $8181                               ; $83D189 |
  PLB                                       ; $83D18C |
  PLB                                       ; $83D18D |
  TYX                                       ; $83D18E |
  SEP #$20                                  ; $83D18F |
  PHX                                       ; $83D191 |
  JSL.L CODE_FL_83CD69                      ; $83D192 |
  PLX                                       ; $83D196 |
  LDA.B $92,X                               ; $83D197 |
  BIT.B #$20                                ; $83D199 |
  BEQ CODE_83D1AA                           ; $83D19B |
  STZ.B $9B                                 ; $83D19D |
  JSR.W CODE_FN_83B4A5                      ; $83D19F |
  PHX                                       ; $83D1A2 |
  JSL.L CODE_FL_8FFEF2                      ; $83D1A3 |
  PLX                                       ; $83D1A7 |
  BRA CODE_83D1AD                           ; $83D1A8 |

CODE_83D1AA:
  JSR.W CODE_FN_83BF1D                      ; $83D1AA |

CODE_83D1AD:
  JSL.L CODE_FL_8FFE12                      ; $83D1AD |
  REP #$20                                  ; $83D1B1 |
  LDA.B $1C,X                               ; $83D1B3 |
  STA.B $00,X                               ; $83D1B5 |
  LDA.W #$0001                              ; $83D1B7 |
  STA.B $48,X                               ; $83D1BA |
  STA.W $1C16                               ; $83D1BC |
  STZ.B $2A,X                               ; $83D1BF |
  STZ.B $10,X                               ; $83D1C1 |
  STZ.B $12,X                               ; $83D1C3 |
  PLB                                       ; $83D1C5 |
  PLY                                       ; $83D1C6 |
  PLX                                       ; $83D1C7 |
  RTL                                       ; $83D1C8 |

CODE_FL_83D1C9:
  SED                                       ; $83D1C9 |
  CLC                                       ; $83D1CA |
  ADC.B $BE                                 ; $83D1CB |
  CLD                                       ; $83D1CD |
  BCC CODE_83D1D3                           ; $83D1CE |
  LDA.W #$9999                              ; $83D1D0 |

CODE_83D1D3:
  STA.B $BE                                 ; $83D1D3 |
  RTL                                       ; $83D1D5 |

CODE_FL_83D1D6:
  PHA                                       ; $83D1D6 |
  SED                                       ; $83D1D7 |
  SEC                                       ; $83D1D8 |
  LDA.B $BE                                 ; $83D1D9 |
  SBC.B $01,S                               ; $83D1DB |
  CLD                                       ; $83D1DD |
  BCS CODE_83D1E1                           ; $83D1DE |
  TDC                                       ; $83D1E0 |

CODE_83D1E1:
  STA.B $BE                                 ; $83D1E1 |
  PLA                                       ; $83D1E3 |
  RTL                                       ; $83D1E4 |

CODE_FL_83D1E5:
  AND.W #$FFFF                              ; $83D1E5 |
  BMI CODE_83D20E                           ; $83D1E8 |

CODE_FL_83D1EA:
  PHA                                       ; $83D1EA |
  LDA.B $BA                                 ; $83D1EB |
  BEQ CODE_83D207                           ; $83D1ED |
  CMP.B $BC                                 ; $83D1EF |
  BEQ CODE_83D207                           ; $83D1F1 |
  PHA                                       ; $83D1F3 |
  LDA.W #$0025                              ; $83D1F4 |
  JSL.L push_sound_queue                    ; $83D1F7 |
  PLA                                       ; $83D1FB |

CODE_83D1FC:
  CLC                                       ; $83D1FC |
  ADC.B $01,S                               ; $83D1FD |
  CMP.B $BC                                 ; $83D1FF |
  BCC CODE_83D205                           ; $83D201 |
  LDA.B $BC                                 ; $83D203 |

CODE_83D205:
  STA.B $BA                                 ; $83D205 |

CODE_83D207:
  PLA                                       ; $83D207 |
  RTL                                       ; $83D208 |

CODE_JL_83D209:
  PHA                                       ; $83D209 |
  LDA.B $BA                                 ; $83D20A |
  BRA CODE_83D1FC                           ; $83D20C |

CODE_83D20E:
  EOR.W #$FFFF                              ; $83D20E |
  INC A                                     ; $83D211 |

CODE_FL_83D212:
  PHA                                       ; $83D212 |
  SEC                                       ; $83D213 |
  LDA.B $BA                                 ; $83D214 |
  SBC.B $01,S                               ; $83D216 |
  BEQ CODE_83D21C                           ; $83D218 |
  BCS CODE_83D22A                           ; $83D21A |

CODE_83D21C:
  STZ.B $BA                                 ; $83D21C |
  LDA.L $7002A0                             ; $83D21E |
  BEQ CODE_83D22A                           ; $83D222 |
  JSL.L CODE_FL_83D387                      ; $83D224 |
  LDA.B $BA                                 ; $83D228 |

CODE_83D22A:
  STA.B $BA                                 ; $83D22A |
  PLA                                       ; $83D22C |
  RTL                                       ; $83D22D |

CODE_FL_83D22E:
  CLC                                       ; $83D22E |
  ADC.B $BC                                 ; $83D22F |
  CMP.W #$0020                              ; $83D231 |
  BCC CODE_83D239                           ; $83D234 |
  LDA.W #$0020                              ; $83D236 |

CODE_83D239:
  STA.B $BC                                 ; $83D239 |
  STA.B $BA                                 ; $83D23B |
  RTL                                       ; $83D23D |

CODE_FL_83D23E:
  SED                                       ; $83D23E |
  CLC                                       ; $83D23F |
  ADC.B $B8                                 ; $83D240 |
  CMP.W #$0099                              ; $83D242 |
  CLD                                       ; $83D245 |
  BCC CODE_83D24B                           ; $83D246 |
  LDA.W #$0099                              ; $83D248 |

CODE_83D24B:
  STA.B $B8                                 ; $83D24B |
  RTL                                       ; $83D24D |

CODE_FL_83D24E:
  PHA                                       ; $83D24E |
  SED                                       ; $83D24F |
  SEC                                       ; $83D250 |
  LDA.B $B8                                 ; $83D251 |
  SBC.B $01,S                               ; $83D253 |
  CLD                                       ; $83D255 |
  BCS CODE_83D259                           ; $83D256 |
  TDC                                       ; $83D258 |

CODE_83D259:
  STA.B $B8                                 ; $83D259 |
  PLA                                       ; $83D25B |
  RTL                                       ; $83D25C |

CODE_FL_83D25D:
  SED                                       ; $83D25D |
  CLC                                       ; $83D25E |
  ADC.L $700296                             ; $83D25F |
  CMP.W #$0099                              ; $83D263 |
  BCC CODE_83D26B                           ; $83D266 |
  LDA.W #$0099                              ; $83D268 |

CODE_83D26B:
  STA.L $700296                             ; $83D26B |
  CLD                                       ; $83D26F |
  RTL                                       ; $83D270 |

CODE_FL_83D271:
  PHA                                       ; $83D271 |
  SED                                       ; $83D272 |
  SEC                                       ; $83D273 |
  LDA.L $700296                             ; $83D274 |
  SBC.B $01,S                               ; $83D278 |
  BCS CODE_83D27D                           ; $83D27A |
  TDC                                       ; $83D27C |

CODE_83D27D:
  STA.L $700296                             ; $83D27D |
  CLD                                       ; $83D281 |
  PLA                                       ; $83D282 |
  RTL                                       ; $83D283 |

CODE_FL_83D284:
  LDA.W #$0001                              ; $83D284 |
  PHA                                       ; $83D287 |
  LDA.L $7002EE                             ; $83D288 |
  BEQ CODE_83D2FF                           ; $83D28C |
  PLA                                       ; $83D28E |
  CLC                                       ; $83D28F |
  ADC.L $7002E6                             ; $83D290 |
  CMP.W #$0004                              ; $83D294 |
  BCC CODE_83D2A5                           ; $83D297 |
  SBC.W #$0004                              ; $83D299 |
  PHA                                       ; $83D29C |
  LDA.W #$0100                              ; $83D29D |
  JSL.L CODE_FL_83D2AA                      ; $83D2A0 |
  PLA                                       ; $83D2A4 |

CODE_83D2A5:
  STA.L $7002E6                             ; $83D2A5 |
  RTL                                       ; $83D2A9 |

CODE_FL_83D2AA:
  PHA                                       ; $83D2AA |
  LDA.L $7002EE                             ; $83D2AB |
  BEQ CODE_83D2FF                           ; $83D2AF |
  PLA                                       ; $83D2B1 |
  SED                                       ; $83D2B2 |
  CLC                                       ; $83D2B3 |
  ADC.L $7002E4                             ; $83D2B4 |
  CMP.W #$0999                              ; $83D2B8 |
  BCC CODE_83D2C0                           ; $83D2BB |
  LDA.W #$0999                              ; $83D2BD |

CODE_83D2C0:
  STA.L $7002E4                             ; $83D2C0 |
  STA.L $7002E2                             ; $83D2C4 |
  CLD                                       ; $83D2C8 |
  RTL                                       ; $83D2C9 |

CODE_FL_83D2CA:
  PHA                                       ; $83D2CA |
  LDA.L $7002EE                             ; $83D2CB |
  BEQ CODE_83D2FF                           ; $83D2CF |
  PLA                                       ; $83D2D1 |
  SED                                       ; $83D2D2 |
  CLC                                       ; $83D2D3 |
  ADC.L $7002E2                             ; $83D2D4 |
  CMP.L $7002E4                             ; $83D2D8 |
  BCC CODE_83D2E2                           ; $83D2DC |
  LDA.L $7002E4                             ; $83D2DE |

CODE_83D2E2:
  STA.L $7002E2                             ; $83D2E2 |
  CLD                                       ; $83D2E6 |
  RTL                                       ; $83D2E7 |

CODE_FL_83D2E8:
  PHA                                       ; $83D2E8 |
  LDA.L $7002EE                             ; $83D2E9 |
  BEQ CODE_83D2FF                           ; $83D2ED |
  SED                                       ; $83D2EF |
  SEC                                       ; $83D2F0 |
  LDA.L $7002E2                             ; $83D2F1 |
  SBC.B $01,S                               ; $83D2F5 |
  BCS CODE_83D2FA                           ; $83D2F7 |
  TDC                                       ; $83D2F9 |

CODE_83D2FA:
  STA.L $7002E2                             ; $83D2FA |
  CLD                                       ; $83D2FE |

CODE_83D2FF:
  PLA                                       ; $83D2FF |
  RTL                                       ; $83D300 |

CODE_FL_83D301:
  PHX                                       ; $83D301 |
  STA.L $7002A2                             ; $83D302 |
  TAX                                       ; $83D306 |
  LDA.L DATA8_83D355,X                      ; $83D307 |
  AND.W #$00FF                              ; $83D30B |
  STA.L $70029E                             ; $83D30E |
  PLX                                       ; $83D312 |
  RTL                                       ; $83D313 |

CODE_FL_83D314:
  LDA.L $7002A2                             ; $83D314 |
  BEQ CODE_83D32A                           ; $83D318 |
  LDA.L $70029E                             ; $83D31A |
  DEC A                                     ; $83D31E |
  STA.L $70029E                             ; $83D31F |
  BNE CODE_83D32A                           ; $83D323 |
  TDC                                       ; $83D325 |
  STA.L $7002A2                             ; $83D326 |

CODE_83D32A:
  RTL                                       ; $83D32A |

CODE_FL_83D32B:
  PHX                                       ; $83D32B |
  TAX                                       ; $83D32C |
  LDA.L DATA8_83D355,X                      ; $83D32D |
  AND.W #$00FF                              ; $83D331 |
  CMP.L $70029E                             ; $83D334 |
  BEQ CODE_83D33C                           ; $83D338 |
  BCS CODE_83D33F                           ; $83D33A |

CODE_83D33C:
  SEC                                       ; $83D33C |
  PLX                                       ; $83D33D |
  RTL                                       ; $83D33E |

CODE_83D33F:
  CLC                                       ; $83D33F |
  PLX                                       ; $83D340 |
  RTL                                       ; $83D341 |

CODE_FL_83D342:
  PHX                                       ; $83D342 |
  STA.L $7002A4                             ; $83D343 |
  TAX                                       ; $83D347 |
  LDA.L DATA8_83D355,X                      ; $83D348 |
  AND.W #$00FF                              ; $83D34C |
  STA.L $70029C                             ; $83D34F |
  PLX                                       ; $83D353 |
  RTL                                       ; $83D354 |

DATA8_83D355:
  db $00,$01,$03,$05                        ; $83D355 |

CODE_FL_83D359:
  LDA.L $7002A4                             ; $83D359 |
  BEQ CODE_83D36F                           ; $83D35D |
  LDA.L $70029C                             ; $83D35F |
  DEC A                                     ; $83D363 |
  STA.L $70029C                             ; $83D364 |
  BNE CODE_83D36F                           ; $83D368 |
  TDC                                       ; $83D36A |
  STA.L $7002A4                             ; $83D36B |

CODE_83D36F:
  RTL                                       ; $83D36F |

CODE_FL_83D370:
  PHX                                       ; $83D370 |
  TAX                                       ; $83D371 |
  LDA.L DATA8_83D355,X                      ; $83D372 |
  AND.W #$00FF                              ; $83D376 |
  CMP.L $70029C                             ; $83D379 |
  BEQ CODE_83D381                           ; $83D37D |
  BCS CODE_83D384                           ; $83D37F |

CODE_83D381:
  SEC                                       ; $83D381 |
  PLX                                       ; $83D382 |
  RTL                                       ; $83D383 |

CODE_83D384:
  CLC                                       ; $83D384 |
  PLX                                       ; $83D385 |
  RTL                                       ; $83D386 |

CODE_FL_83D387:
  PHP                                       ; $83D387 |
  REP #$20                                  ; $83D388 |
  PHX                                       ; $83D38A |
  LDA.L $7002A0                             ; $83D38B |
  BEQ CODE_83D3B0                           ; $83D38F |
  CMP.W #$0004                              ; $83D391 |
  BCS CODE_83D3B0                           ; $83D394 |
  TAX                                       ; $83D396 |
  LDA.L UNREACH_81EF7D,X                    ; $83D397 |
  AND.W #$00FF                              ; $83D39B |
  CLC                                       ; $83D39E |
  ADC.B $BA                                 ; $83D39F |
  CMP.B $BC                                 ; $83D3A1 |
  BCC CODE_83D3A7                           ; $83D3A3 |
  LDA.B $BC                                 ; $83D3A5 |

CODE_83D3A7:
  STA.B $BA                                 ; $83D3A7 |
  LDA.W #$0025                              ; $83D3A9 |
  JSL.L push_sound_queue                    ; $83D3AC |

CODE_83D3B0:
  TDC                                       ; $83D3B0 |
  STA.L $7002A0                             ; $83D3B1 |
  PLX                                       ; $83D3B5 |
  PLP                                       ; $83D3B6 |
  RTL                                       ; $83D3B7 |

CODE_FL_83D3B8:
  JSL.L CODE_FL_83CE65                      ; $83D3B8 |
  STA.B $9E,X                               ; $83D3BC |
  STZ.B $A0,X                               ; $83D3BE |
  STZ.B $96,X                               ; $83D3C0 |
  STZ.B $1C,X                               ; $83D3C2 |
  STZ.B $22,X                               ; $83D3C4 |
  STZ.B $44,X                               ; $83D3C6 |
  STZ.B $00,X                               ; $83D3C8 |

CODE_FL_83D3CA:
  STZ.B $96,X                               ; $83D3CA |
  STZ.B $86,X                               ; $83D3CC |
  STZ.B $88,X                               ; $83D3CE |
  STZ.B $8A,X                               ; $83D3D0 |
  STZ.B $38,X                               ; $83D3D2 |
  STZ.B $32,X                               ; $83D3D4 |
  STZ.B $4A,X                               ; $83D3D6 |
  STZ.B $4C,X                               ; $83D3D8 |
  STZ.B $4C,X                               ; $83D3DA |
  STZ.B $26,X                               ; $83D3DC |
  STZ.B $28,X                               ; $83D3DE |
  STZ.B $2A,X                               ; $83D3E0 |
  STZ.B $14,X                               ; $83D3E2 |
  STZ.B $B0,X                               ; $83D3E4 |
  STZ.B $B2,X                               ; $83D3E6 |
  STZ.B $B6,X                               ; $83D3E8 |
  STZ.B $2E,X                               ; $83D3EA |
  STZ.B $B4,X                               ; $83D3EC |
  STZ.B $2C,X                               ; $83D3EE |
  STZ.B $20,X                               ; $83D3F0 |
  STZ.B $1E,X                               ; $83D3F2 |
  STZ.B $BA,X                               ; $83D3F4 |
  STZ.B $48,X                               ; $83D3F6 |
  STZ.B $6A,X                               ; $83D3F8 |
  STZ.B $46,X                               ; $83D3FA |
  STZ.B $AE,X                               ; $83D3FC |
  STZ.B $4E,X                               ; $83D3FE |
  STZ.B $4F,X                               ; $83D400 |
  STZ.B $50,X                               ; $83D402 |
  STZ.B $52,X                               ; $83D404 |
  STZ.B $78,X                               ; $83D406 |
  STZ.B $7A,X                               ; $83D408 |
  STZ.B $98,X                               ; $83D40A |
  STZ.B $9A,X                               ; $83D40C |
  STZ.B $9C,X                               ; $83D40E |
  STZ.B $A4,X                               ; $83D410 |
  STZ.B $A8,X                               ; $83D412 |
  STZ.B $2C,X                               ; $83D414 |
  STZ.B $3C,X                               ; $83D416 |
  STZ.B $3E,X                               ; $83D418 |
  STZ.B $40,X                               ; $83D41A |
  STZ.B $42,X                               ; $83D41C |
  STZ.B $64,X                               ; $83D41E |
  STZ.B $6A,X                               ; $83D420 |
  STZ.B $7C,X                               ; $83D422 |
  STZ.B $7E,X                               ; $83D424 |
  STZ.B $8E,X                               ; $83D426 |
  STZ.B $90,X                               ; $83D428 |
  STZ.B $BC,X                               ; $83D42A |
  STZ.B $BE,X                               ; $83D42C |
  LDA.B $02,X                               ; $83D42E |
  AND.W #$FF7F                              ; $83D430 |
  STA.B $02,X                               ; $83D433 |
  STZ.B $54,X                               ; $83D435 |
  STZ.B $56,X                               ; $83D437 |
  STZ.B $58,X                               ; $83D439 |
  STZ.B $5A,X                               ; $83D43B |
  STZ.B $5C,X                               ; $83D43D |
  STZ.B $60,X                               ; $83D43F |
  STZ.B $61,X                               ; $83D441 |
  LDA.W #$8000                              ; $83D443 |
  STA.B $80,X                               ; $83D446 |
  STA.B $82,X                               ; $83D448 |
  RTL                                       ; $83D44A |

CODE_FL_83D44B:
  LDY.W #$0000                              ; $83D44B |
  CPX.W #$0400                              ; $83D44E |
  BEQ CODE_83D456                           ; $83D451 |
  LDY.W #$0010                              ; $83D453 |

CODE_83D456:
  LDA.W #$0000                              ; $83D456 |
  STA.W $1774,Y                             ; $83D459 |
  STA.W $1770,Y                             ; $83D45C |
  STA.W $1772,Y                             ; $83D45F |
  STA.W $1780,Y                             ; $83D462 |
  STA.W $177C,Y                             ; $83D465 |
  STA.W $177E,Y                             ; $83D468 |
  RTL                                       ; $83D46B |

CODE_FL_83D46C:
  LDX.W $193A                               ; $83D46C |
  LDA.B $93,X                               ; $83D46F |
  BIT.W #$0001                              ; $83D471 |
  BEQ CODE_83D495                           ; $83D474 |
  LDX.W #$0400                              ; $83D476 |
  LDA.B $92,X                               ; $83D479 |
  BIT.W #$0020                              ; $83D47B |
  BNE CODE_83D48A                           ; $83D47E |
  LDX.W #$04C0                              ; $83D480 |
  LDA.B $92,X                               ; $83D483 |
  BIT.W #$0020                              ; $83D485 |
  BEQ CODE_83D495                           ; $83D488 |

CODE_83D48A:
  PHY                                       ; $83D48A |
  PHX                                       ; $83D48B |
  TXY                                       ; $83D48C |
  STZ.B $A6                                 ; $83D48D |
  JSL.L CODE_FL_83B3C9                      ; $83D48F |
  PLX                                       ; $83D493 |
  PLY                                       ; $83D494 |

CODE_83D495:
  RTL                                       ; $83D495 |

CODE_FL_83D496:
  LDX.W $193A                               ; $83D496 |
  LDA.B $92,X                               ; $83D499 |
  BIT.W #$0048                              ; $83D49B |
  BEQ CODE_83D4BF                           ; $83D49E |
  LDX.W #$0400                              ; $83D4A0 |
  LDA.B $92,X                               ; $83D4A3 |
  BIT.W #$0020                              ; $83D4A5 |
  BNE CODE_83D4B4                           ; $83D4A8 |
  LDX.W #$04C0                              ; $83D4AA |
  LDA.B $92,X                               ; $83D4AD |
  BIT.W #$0020                              ; $83D4AF |
  BEQ CODE_83D4BF                           ; $83D4B2 |

CODE_83D4B4:
  PHY                                       ; $83D4B4 |
  PHX                                       ; $83D4B5 |
  TXY                                       ; $83D4B6 |
  STZ.B $A6                                 ; $83D4B7 |
  JSL.L CODE_FL_83B3C9                      ; $83D4B9 |
  PLX                                       ; $83D4BD |
  PLY                                       ; $83D4BE |

CODE_83D4BF:
  RTL                                       ; $83D4BF |

  LDA.W #$0003                              ; $83D4C0 |
  STA.B $B8                                 ; $83D4C3 |
  LDA.W #$000A                              ; $83D4C5 |
  STA.B $BA                                 ; $83D4C8 |
  LDA.W #$0000                              ; $83D4CA |
  STA.W $041A                               ; $83D4CD |
  STZ.W $0474                               ; $83D4D0 |
  LDA.W $04D8                               ; $83D4D3 |
  BEQ CODE_83D4E1                           ; $83D4D6 |
  LDA.W #$0000                              ; $83D4D8 |
  STA.W $04DA                               ; $83D4DB |
  STZ.W $0534                               ; $83D4DE |

CODE_83D4E1:
  RTL                                       ; $83D4E1 |

CODE_FL_83D4E2:
  LDA.W $0492                               ; $83D4E2 |
  BIT.W #$0148                              ; $83D4E5 |
  BNE CODE_83D4F7                           ; $83D4E8 |
  LDA.W $0448                               ; $83D4EA |
  BEQ CODE_83D4F9                           ; $83D4ED |
  LDA.W $0492                               ; $83D4EF |
  BIT.W #$0001                              ; $83D4F2 |
  BNE CODE_83D4F9                           ; $83D4F5 |

CODE_83D4F7:
  CLC                                       ; $83D4F7 |
  RTL                                       ; $83D4F8 |

CODE_83D4F9:
  SEC                                       ; $83D4F9 |
  RTL                                       ; $83D4FA |

CODE_FL_83D4FB:
  JSR.W CODE_FN_83D560                      ; $83D4FB |
  LDA.W $0492                               ; $83D4FE |
  BIT.W #$0008                              ; $83D501 |
  BNE CODE_83D53B                           ; $83D504 |
  BIT.W #$0004                              ; $83D506 |
  BNE CODE_83D544                           ; $83D509 |
  BIT.W #$0100                              ; $83D50B |
  BNE CODE_83D54D                           ; $83D50E |
  JSL.L CODE_FL_839ED2                      ; $83D510 |
  JSR.W CODE_FN_83D560                      ; $83D514 |
  BRA CODE_83D554                           ; $83D517 |

  LDA.W #$0002                              ; $83D519 |
  STA.B $18,X                               ; $83D51C |
  JSR.W CODE_FN_83D560                      ; $83D51E |
  SEP #$20                                  ; $83D521 |
  JSR.W CODE_FN_83A684                      ; $83D523 |
  REP #$20                                  ; $83D526 |
  BRA CODE_83D554                           ; $83D528 |

  LDA.W #$0004                              ; $83D52A |
  STA.B $18,X                               ; $83D52D |
  JSR.W CODE_FN_83D560                      ; $83D52F |
  SEP #$20                                  ; $83D532 |
  JSR.W CODE_FN_839F03                      ; $83D534 |
  REP #$20                                  ; $83D537 |
  BRA CODE_83D554                           ; $83D539 |

CODE_83D53B:
  SEP #$20                                  ; $83D53B |
  JSR.W CODE_FN_839EDF                      ; $83D53D |
  REP #$20                                  ; $83D540 |
  BRA CODE_83D554                           ; $83D542 |

CODE_83D544:
  SEP #$20                                  ; $83D544 |
  JSR.W CODE_FN_83A123                      ; $83D546 |
  REP #$20                                  ; $83D549 |
  BRA CODE_83D554                           ; $83D54B |

CODE_83D54D:
  SEP #$20                                  ; $83D54D |
  JSR.W CODE_FN_83A012                      ; $83D54F |
  REP #$20                                  ; $83D552 |

CODE_83D554:
  LDA.W $0409                               ; $83D554 |
  STA.B $09,X                               ; $83D557 |
  LDA.W $040D                               ; $83D559 |
  STA.B $0D,X                               ; $83D55C |
  CLC                                       ; $83D55E |
  RTL                                       ; $83D55F |

CODE_FN_83D560:
  LDA.W $0418                               ; $83D560 |
  STA.B $18,X                               ; $83D563 |
  SEP #$20                                  ; $83D565 |
  JSR.W CODE_FN_83CC44                      ; $83D567 |
  REP #$20                                  ; $83D56A |
  RTS                                       ; $83D56C |

CODE_FL_83D56D:
  LDA.W $0448                               ; $83D56D |
  BEQ CODE_83D57C                           ; $83D570 |
  LDA.W $0492                               ; $83D572 |
  BIT.W #$0001                              ; $83D575 |
  BNE CODE_83D57C                           ; $83D578 |
  CLC                                       ; $83D57A |
  RTL                                       ; $83D57B |

CODE_83D57C:
  SEC                                       ; $83D57C |
  RTL                                       ; $83D57D |

CODE_FL_83D57E:
  JSR.W CODE_FN_83D560                      ; $83D57E |
  LDA.W $0492                               ; $83D581 |
  BIT.W #$0080                              ; $83D584 |
  BEQ CODE_83D58C                           ; $83D587 |
  JMP.W CODE_JP_83D59A                      ; $83D589 |

CODE_83D58C:
  BIT.W #$0008                              ; $83D58C |
  BNE CODE_83D5BC                           ; $83D58F |
  SEP #$20                                  ; $83D591 |
  JSR.W CODE_FN_83BF1D                      ; $83D593 |
  REP #$20                                  ; $83D596 |
  BRA CODE_83D5C8                           ; $83D598 |

CODE_JP_83D59A:
  LDA.W #$0002                              ; $83D59A |
  STA.B $18,X                               ; $83D59D |
  JSR.W CODE_FN_83D560                      ; $83D59F |
  SEP #$20                                  ; $83D5A2 |
  JSR.W CODE_FN_83C22A                      ; $83D5A4 |
  REP #$20                                  ; $83D5A7 |
  BRA CODE_83D5C8                           ; $83D5A9 |

  LDA.W #$0004                              ; $83D5AB |
  STA.B $18,X                               ; $83D5AE |
  JSR.W CODE_FN_83D560                      ; $83D5B0 |
  SEP #$20                                  ; $83D5B3 |
  JSR.W CODE_FN_83C566                      ; $83D5B5 |
  REP #$20                                  ; $83D5B8 |
  BRA CODE_83D5C8                           ; $83D5BA |

CODE_83D5BC:
  JSR.W CODE_FN_83BFCD                      ; $83D5BC |
  BRA CODE_83D5C8                           ; $83D5BF |

  SEP #$20                                  ; $83D5C1 |
  JSR.W CODE_FN_83A123                      ; $83D5C3 |
  REP #$20                                  ; $83D5C6 |

CODE_83D5C8:
  LDA.W $0409                               ; $83D5C8 |
  STA.B $09,X                               ; $83D5CB |
  LDA.W $040D                               ; $83D5CD |
  STA.B $0D,X                               ; $83D5D0 |
  LDA.W $0411                               ; $83D5D2 |
  STA.B $11,X                               ; $83D5D5 |
  LDA.W $0404                               ; $83D5D7 |
  STA.B $04,X                               ; $83D5DA |
  CLC                                       ; $83D5DC |
  RTL                                       ; $83D5DD |

CODE_FL_83D5DE:
  LDY.W $193A                               ; $83D5DE |
  BNE CODE_83D5E9                           ; $83D5E1 |
  LDA.W #$0400                              ; $83D5E3 |
  STA.W $193A                               ; $83D5E6 |

CODE_83D5E9:
  LDA.W #$0001                              ; $83D5E9 |
  JSL.L CODE_FL_838260                      ; $83D5EC |
  LDA.B $90                                 ; $83D5F0 |
  CMP.W #$0000                              ; $83D5F2 |
  BEQ CODE_83D611                           ; $83D5F5 |
  LDA.W #$0050                              ; $83D5F7 |
  STA.B $4C,X                               ; $83D5FA |
  SEP #$20                                  ; $83D5FC |
  LDA.B $92,X                               ; $83D5FE |
  BIT.B #$20                                ; $83D600 |
  BEQ CODE_83D607                           ; $83D602 |
  JMP.W CODE_JP_83D69C                      ; $83D604 |

CODE_83D607:
  BIT.B #$10                                ; $83D607 |
  BEQ CODE_83D60E                           ; $83D609 |
  JMP.W CODE_JP_83D6AA                      ; $83D60B |

CODE_83D60E:
  BRL CODE_JL_83D6C9                        ; $83D60E |

CODE_83D611:
  SEP #$20                                  ; $83D611 |
  LDA.B $92,X                               ; $83D613 |
  BIT.B #$20                                ; $83D615 |
  BEQ CODE_83D61C                           ; $83D617 |
  JMP.W CODE_JP_83D6F4                      ; $83D619 |

CODE_83D61C:
  BIT.B #$10                                ; $83D61C |
  BEQ CODE_83D623                           ; $83D61E |
  JMP.W CODE_JP_83D70D                      ; $83D620 |

CODE_83D623:
  BRL CODE_JL_83D726                        ; $83D623 |

CODE_FL_83D626:
  LDY.W $193A                               ; $83D626 |
  BNE CODE_83D631                           ; $83D629 |
  LDA.W #$0400                              ; $83D62B |
  STA.W $193A                               ; $83D62E |

CODE_83D631:
  STZ.B $38,X                               ; $83D631 |
  STZ.B $32,X                               ; $83D633 |
  STZ.B $26,X                               ; $83D635 |
  STZ.B $28,X                               ; $83D637 |
  STZ.B $2A,X                               ; $83D639 |
  STZ.B $4A,X                               ; $83D63B |
  STZ.B $B0,X                               ; $83D63D |
  STZ.B $B2,X                               ; $83D63F |
  STZ.B $B6,X                               ; $83D641 |
  STZ.B $2E,X                               ; $83D643 |
  STZ.B $B4,X                               ; $83D645 |
  STZ.B $2C,X                               ; $83D647 |
  STZ.B $46,X                               ; $83D649 |
  STZ.B $AE,X                               ; $83D64B |
  STZ.B $4E,X                               ; $83D64D |
  STZ.B $4F,X                               ; $83D64F |
  STZ.B $50,X                               ; $83D651 |
  STZ.B $52,X                               ; $83D653 |
  STZ.B $98,X                               ; $83D655 |
  STZ.B $9A,X                               ; $83D657 |
  STZ.B $9C,X                               ; $83D659 |
  STZ.B $A4,X                               ; $83D65B |
  LDA.B $02,X                               ; $83D65D |
  AND.W #$FF7F                              ; $83D65F |
  STA.B $02,X                               ; $83D662 |
  LDA.W #$FBFF                              ; $83D664 |
  STA.B $3A,X                               ; $83D667 |
  LDA.W #$C000                              ; $83D669 |
  STA.B $34,X                               ; $83D66C |
  LDA.B $90                                 ; $83D66E |
  CMP.W #$0000                              ; $83D670 |
  BEQ CODE_83D6D6                           ; $83D673 |
  LDA.W #$0050                              ; $83D675 |
  STA.B $4C,X                               ; $83D678 |
  SEP #$20                                  ; $83D67A |
  LDA.B $92,X                               ; $83D67C |
  BIT.B #$10                                ; $83D67E |
  BNE CODE_JP_83D6AA                        ; $83D680 |
  LDY.W $193A                               ; $83D682 |
  LDA.W $0093,Y                             ; $83D685 |
  BIT.B #$01                                ; $83D688 |
  BNE CODE_83D6C4                           ; $83D68A |
  LDA.B $92,X                               ; $83D68C |
  BIT.B #$80                                ; $83D68E |
  BNE CODE_83D6BF                           ; $83D690 |
  BIT.B #$40                                ; $83D692 |
  BNE CODE_83D6B0                           ; $83D694 |
  BIT.B #$20                                ; $83D696 |
  BNE CODE_JP_83D69C                        ; $83D698 |
  BRA CODE_JL_83D6C9                        ; $83D69A |

CODE_JP_83D69C:
  REP #$20                                  ; $83D69C |
  JSL.L CODE_FL_83B330                      ; $83D69E |
  SEP #$20                                  ; $83D6A2 |
  JSR.W CODE_FN_83B094                      ; $83D6A4 |
  BRL CODE_JL_83D731                        ; $83D6A7 |

CODE_JP_83D6AA:
  JSR.W CODE_FN_83A2AA                      ; $83D6AA |
  BRL CODE_JL_83D731                        ; $83D6AD |

CODE_83D6B0:
  LDY.W $193A                               ; $83D6B0 |
  LDA.W $0092,Y                             ; $83D6B3 |
  BIT.B #$48                                ; $83D6B6 |
  BEQ CODE_JL_83D6C9                        ; $83D6B8 |
  JSR.W CODE_FN_839F49                      ; $83D6BA |
  BRA CODE_JL_83D731                        ; $83D6BD |

CODE_83D6BF:
  JSR.W CODE_FN_83A684                      ; $83D6BF |
  BRA CODE_JL_83D731                        ; $83D6C2 |

CODE_83D6C4:
  JSR.W CODE_FN_83A012                      ; $83D6C4 |
  BRA CODE_JL_83D731                        ; $83D6C7 |

CODE_JL_83D6C9:
  REP #$20                                  ; $83D6C9 |
  JSL.L CODE_FL_83CD56                      ; $83D6CB |
  SEP #$20                                  ; $83D6CF |
  JSR.W CODE_FN_83A0E4                      ; $83D6D1 |
  BRA CODE_JL_83D731                        ; $83D6D4 |

CODE_83D6D6:
  LDY.W $193A                               ; $83D6D6 |
  LDA.W $0094,Y                             ; $83D6D9 |
  STA.B $94,X                               ; $83D6DC |
  SEP #$20                                  ; $83D6DE |
  LDA.B $92,X                               ; $83D6E0 |
  BIT.B #$80                                ; $83D6E2 |
  BNE CODE_83D721                           ; $83D6E4 |
  BIT.B #$40                                ; $83D6E6 |
  BNE CODE_83D712                           ; $83D6E8 |
  BIT.B #$20                                ; $83D6EA |
  BNE CODE_83D701                           ; $83D6EC |
  BIT.B #$10                                ; $83D6EE |
  BNE CODE_JP_83D70D                        ; $83D6F0 |
  BRA CODE_JL_83D726                        ; $83D6F2 |

CODE_JP_83D6F4:
  REP #$20                                  ; $83D6F4 |
  JSL.L CODE_FL_83B330                      ; $83D6F6 |
  SEP #$20                                  ; $83D6FA |
  JSR.W CODE_FN_83B82E                      ; $83D6FC |
  BRA CODE_JL_83D731                        ; $83D6FF |

CODE_83D701:
  LDY.W $193A                               ; $83D701 |
  LDA.W $0092,Y                             ; $83D704 |
  BIT.B #$48                                ; $83D707 |
  BNE CODE_JL_83D726                        ; $83D709 |
  BRA CODE_JP_83D6F4                        ; $83D70B |

CODE_JP_83D70D:
  JSR.W CODE_FN_83C043                      ; $83D70D |
  BRA CODE_JL_83D731                        ; $83D710 |

CODE_83D712:
  LDY.W $193A                               ; $83D712 |
  LDA.W $0092,Y                             ; $83D715 |
  BIT.B #$48                                ; $83D718 |
  BEQ CODE_JL_83D726                        ; $83D71A |
  JSR.W CODE_FN_83C56E                      ; $83D71C |
  BRA CODE_JL_83D731                        ; $83D71F |

CODE_83D721:
  JSR.W CODE_FN_83C22A                      ; $83D721 |
  BRA CODE_JL_83D731                        ; $83D724 |

CODE_JL_83D726:
  REP #$20                                  ; $83D726 |
  JSL.L CODE_FL_83CD56                      ; $83D728 |
  SEP #$20                                  ; $83D72C |
  JSR.W CODE_FN_83BF1D                      ; $83D72E |

CODE_JL_83D731:
  REP #$20                                  ; $83D731 |
  LDY.W #$0580                              ; $83D733 |
  CPX.W #$0400                              ; $83D736 |
  BEQ CODE_83D73E                           ; $83D739 |
  LDY.W #$0850                              ; $83D73B |

CODE_83D73E:
  JSL.L CODE_FL_808F24                      ; $83D73E |
  LDA.W #$0014                              ; $83D742 |
  STA.W $0018,Y                             ; $83D745 |
  TXA                                       ; $83D748 |
  STA.W $003A,Y                             ; $83D749 |
  JSR.W CODE_FN_83878A                      ; $83D74C |
  REP #$20                                  ; $83D74F |
  LDA.W #$8000                              ; $83D751 |
  STA.B $80,X                               ; $83D754 |
  STA.B $82,X                               ; $83D756 |
  RTL                                       ; $83D758 |

  JSR.W CODE_FN_83878A                      ; $83D759 |
  REP #$20                                  ; $83D75C |
  RTL                                       ; $83D75E |

  CPX.W #$0400                              ; $83D75F |
  BEQ CODE_83D76A                           ; $83D762 |
  LDA.W $0418                               ; $83D764 |
  BEQ CODE_83D76F                           ; $83D767 |

CODE_83D769:
  RTL                                       ; $83D769 |

CODE_83D76A:
  LDA.W $04D8                               ; $83D76A |
  BNE CODE_83D769                           ; $83D76D |

CODE_83D76F:
  LDA.W #$0300                              ; $83D76F |
  STA.W $0472                               ; $83D772 |
  LDA.W #$0100                              ; $83D775 |
  STA.W $04AA                               ; $83D778 |
  STZ.B $CE                                 ; $83D77B |
  RTL                                       ; $83D77D |

  LDA.W #$0001                              ; $83D77E |
  LDX.W #$06FE                              ; $83D781 |

CODE_83D784:
  STA.L $700200,X                           ; $83D784 |
  DEX                                       ; $83D788 |
  DEX                                       ; $83D789 |
  BPL CODE_83D784                           ; $83D78A |
  LDA.W #$0099                              ; $83D78C |
  STA.L $700296                             ; $83D78F |
  LDA.W #$0123                              ; $83D793 |
  STA.L $7002E2                             ; $83D796 |
  STA.L $7009E2                             ; $83D79A |
  STA.L $7002E4                             ; $83D79E |
  STA.L $7009E4                             ; $83D7A2 |
  LDA.W #$0010                              ; $83D7A6 |
  STA.L $700306                             ; $83D7A9 |
  STA.L $70032E                             ; $83D7AD |
  STA.L $700A06                             ; $83D7B1 |
  STA.L $700A2E                             ; $83D7B5 |
  LDA.W #$0999                              ; $83D7B9 |
  STA.L $700290                             ; $83D7BC |
  STA.L $700990                             ; $83D7C0 |
  STA.B $BE                                 ; $83D7C4 |
  LDA.W #$0020                              ; $83D7C6 |
  STA.L $700292                             ; $83D7C9 |
  STA.L $700992                             ; $83D7CD |
  STA.B $BA                                 ; $83D7D1 |
  LDA.W #$0020                              ; $83D7D3 |
  STA.L $700294                             ; $83D7D6 |
  STA.L $700994                             ; $83D7DA |
  STA.B $BC                                 ; $83D7DE |
  RTL                                       ; $83D7E0 |

  LDA.W #$0099                              ; $83D7E1 |
  STA.L $700296                             ; $83D7E4 |
  LDA.W #$0000                              ; $83D7E8 |
  STA.L $7009E2                             ; $83D7EB |
  STA.L $7009E4                             ; $83D7EF |
  LDA.W #$0010                              ; $83D7F3 |
  STA.L $700A06                             ; $83D7F6 |
  STA.L $700A2E                             ; $83D7FA |
  LDA.W #$0100                              ; $83D7FE |
  STA.L $700990                             ; $83D801 |
  STA.B $BE                                 ; $83D805 |
  LDA.W #$0006                              ; $83D807 |
  STA.L $700992                             ; $83D80A |
  STA.B $BA                                 ; $83D80E |
  LDA.W #$0003                              ; $83D810 |
  STA.L $700994                             ; $83D813 |
  STA.B $BC                                 ; $83D817 |
  LDA.W #$0099                              ; $83D819 |
  STA.L $700296                             ; $83D81C |
  LDA.W #$0000                              ; $83D820 |
  STA.L $7010E2                             ; $83D823 |
  LDA.W #$0000                              ; $83D827 |
  STA.L $7010E4                             ; $83D82A |
  LDA.W #$0010                              ; $83D82E |
  STA.L $701106                             ; $83D831 |
  STA.L $70112E                             ; $83D835 |
  LDA.W #$0100                              ; $83D839 |
  STA.L $701090                             ; $83D83C |
  STA.B $BE                                 ; $83D840 |
  LDA.W #$0006                              ; $83D842 |
  STA.L $701092                             ; $83D845 |
  STA.B $BA                                 ; $83D849 |
  LDA.W #$0003                              ; $83D84B |
  STA.L $701094                             ; $83D84E |
  STA.B $BC                                 ; $83D852 |
  LDA.W #$0099                              ; $83D854 |
  STA.L $700296                             ; $83D857 |
  LDA.W #$0000                              ; $83D85B |
  STA.L $7017E2                             ; $83D85E |
  STA.L $7017E4                             ; $83D862 |
  LDA.W #$0010                              ; $83D866 |
  STA.L $701806                             ; $83D869 |
  STA.L $70182E                             ; $83D86D |
  LDA.W #$0100                              ; $83D871 |
  STA.L $701790                             ; $83D874 |
  STA.B $BE                                 ; $83D878 |
  LDA.W #$000A                              ; $83D87A |
  STA.L $701792                             ; $83D87D |
  STA.B $BA                                 ; $83D881 |
  LDA.W #$000A                              ; $83D883 |
  STA.L $701794                             ; $83D886 |
  STA.B $BC                                 ; $83D88A |
  RTL                                       ; $83D88C |

CODE_FL_83D88D:
  LDA.B $92,X                               ; $83D88D |
  BIT.B #$10                                ; $83D88F |
  BNE CODE_83D8AD                           ; $83D891 |
  LDA.B $93,X                               ; $83D893 |
  BIT.B #$40                                ; $83D895 |
  BNE CODE_83D8AD                           ; $83D897 |
  REP #$20                                  ; $83D899 |
  JSR.W CODE_FN_83DA83                      ; $83D89B |
  REP #$20                                  ; $83D89E |
  JSR.W CODE_FN_83D8AE                      ; $83D8A0 |
  SEP #$20                                  ; $83D8A3 |
  LDA.B $3B,X                               ; $83D8A5 |
  ORA.B #$01                                ; $83D8A7 |
  ORA.B #$02                                ; $83D8A9 |
  STA.B $3B,X                               ; $83D8AB |

CODE_83D8AD:
  RTL                                       ; $83D8AD |

CODE_FN_83D8AE:
  LDA.B $09,X                               ; $83D8AE |
  STA.B $7C,X                               ; $83D8B0 |
  STZ.B $46,X                               ; $83D8B2 |
  LDA.B $26,X                               ; $83D8B4 |
  CLC                                       ; $83D8B6 |
  ADC.B $78,X                               ; $83D8B7 |
  CLC                                       ; $83D8B9 |
  ADC.B $4A,X                               ; $83D8BA |
  STA.B $40,X                               ; $83D8BC |
  LDA.B $92                                 ; $83D8BE |
  BIT.W #$0040                              ; $83D8C0 |
  BEQ CODE_83D8C8                           ; $83D8C3 |
  JSR.W CODE_FN_83DBCF                      ; $83D8C5 |

CODE_83D8C8:
  LDA.B $40,X                               ; $83D8C8 |
  BNE CODE_83D8CF                           ; $83D8CA |
  JMP.W CODE_JP_83DA82                      ; $83D8CC |

CODE_83D8CF:
  LDA.B $3A,X                               ; $83D8CF |
  BIT.W #$0008                              ; $83D8D1 |
  BNE CODE_83D8D9                           ; $83D8D4 |
  JMP.W CODE_JP_83D962                      ; $83D8D6 |

CODE_83D8D9:
  LDA.B $08,X                               ; $83D8D9 |
  STA.B $20                                 ; $83D8DB |
  LDA.B $0A,X                               ; $83D8DD |
  STA.B $22                                 ; $83D8DF |
  LDA.B $40,X                               ; $83D8E1 |
  BPL CODE_83D8E7                           ; $83D8E3 |
  DEC.B $22                                 ; $83D8E5 |

CODE_83D8E7:
  CLC                                       ; $83D8E7 |
  ADC.B $20                                 ; $83D8E8 |
  STA.B $20                                 ; $83D8EA |
  BCC CODE_83D8F0                           ; $83D8EC |
  INC.B $22                                 ; $83D8EE |

CODE_83D8F0:
  LDA.B $40,X                               ; $83D8F0 |
  STA.B $18                                 ; $83D8F2 |
  REP #$20                                  ; $83D8F4 |
  LDA.B $18,X                               ; $83D8F6 |
  CMP.W #$0004                              ; $83D8F8 |
  BNE CODE_83D90C                           ; $83D8FB |
  LDA.B $3B,X                               ; $83D8FD |
  BIT.W #$0004                              ; $83D8FF |
  BEQ CODE_83D90C                           ; $83D902 |
  JSR.W CODE_FN_83CA44                      ; $83D904 |
  BCS CODE_83D95B                           ; $83D907 |
  BRL CODE_JP_83D962                        ; $83D909 |

CODE_83D90C:
  LDA.B $2E,X                               ; $83D90C |
  LDY.B $18                                 ; $83D90E |
  BPL CODE_83D916                           ; $83D910 |
  EOR.W #$FFFF                              ; $83D912 |
  INC A                                     ; $83D915 |

CODE_83D916:
  CLC                                       ; $83D916 |
  ADC.B $21                                 ; $83D917 |
  STA.B $08                                 ; $83D919 |
  LDA.B $30,X                               ; $83D91B |
  SEC                                       ; $83D91D |
  SBC.W #$0002                              ; $83D91E |
  BCS CODE_83D926                           ; $83D921 |
  LDA.W #$0000                              ; $83D923 |

CODE_83D926:
  STA.B $1E                                 ; $83D926 |
  LDA.B $0D,X                               ; $83D928 |
  SEC                                       ; $83D92A |
  SBC.B $1E                                 ; $83D92B |
  STA.B $0A                                 ; $83D92D |
  JSL.L CODE_FL_80CA8C                      ; $83D92F |
  JSR.W CODE_FN_83DC53                      ; $83D933 |
  BCS CODE_83D95B                           ; $83D936 |
  LSR.B $1E                                 ; $83D938 |
  LDA.B $0D,X                               ; $83D93A |
  SEC                                       ; $83D93C |
  SBC.B $1E                                 ; $83D93D |
  STA.B $0A                                 ; $83D93F |
  JSL.L CODE_FL_80CA8C                      ; $83D941 |
  JSR.W CODE_FN_83DC53                      ; $83D945 |
  BCS CODE_83D95B                           ; $83D948 |
  LDA.B $0D,X                               ; $83D94A |
  SEC                                       ; $83D94C |
  SBC.W #$0002                              ; $83D94D |
  STA.B $0A                                 ; $83D950 |
  JSL.L CODE_FL_80CA8C                      ; $83D952 |
  JSR.W CODE_FN_83DC53                      ; $83D956 |
  BCC CODE_JP_83D962                        ; $83D959 |

CODE_83D95B:
  LDA.W #$0001                              ; $83D95B |
  STA.B $46,X                               ; $83D95E |
  BRA CODE_83D964                           ; $83D960 |

CODE_JP_83D962:
  STZ.B $00                                 ; $83D962 |

CODE_83D964:
  LDA.B $00                                 ; $83D964 |
  AND.W #$FF00                              ; $83D966 |
  CLC                                       ; $83D969 |
  ADC.B $18                                 ; $83D96A |
  STA.B $18                                 ; $83D96C |
  BPL CODE_83D972                           ; $83D96E |
  DEC.B $22                                 ; $83D970 |

CODE_83D972:
  CLC                                       ; $83D972 |
  ADC.B $20                                 ; $83D973 |
  STA.B $20                                 ; $83D975 |
  BCC CODE_83D97B                           ; $83D977 |
  INC.B $22                                 ; $83D979 |

CODE_83D97B:
  STZ.B $00                                 ; $83D97B |
  LDA.B $18                                 ; $83D97D |
  BNE CODE_83D984                           ; $83D97F |
  JMP.W CODE_JP_83D9CB                      ; $83D981 |

CODE_83D984:
  BPL CODE_83D9AB                           ; $83D984 |
  LDA.B $3A,X                               ; $83D986 |
  BIT.W #$0100                              ; $83D988 |
  BEQ CODE_JP_83D9CB                        ; $83D98B |
  LDA.W #$1000                              ; $83D98D |
  SEC                                       ; $83D990 |
  SBC.B $20                                 ; $83D991 |
  BEQ CODE_JP_83D9CB                        ; $83D993 |
  BCC CODE_JP_83D9CB                        ; $83D995 |
  STA.B $00                                 ; $83D997 |
  LDA.W #$0002                              ; $83D999 |
  STA.B $46,X                               ; $83D99C |
  LDA.W #$00FE                              ; $83D99E |
  STA.B $3C,X                               ; $83D9A1 |
  LDA.W #$00FF                              ; $83D9A3 |
  STA.B $3D,X                               ; $83D9A6 |
  JMP.W CODE_JP_83D9CF                      ; $83D9A8 |

CODE_83D9AB:
  LDA.B $3A,X                               ; $83D9AB |
  BIT.W #$0200                              ; $83D9AD |
  BEQ CODE_JP_83D9CB                        ; $83D9B0 |
  LDA.W #$F000                              ; $83D9B2 |
  SEC                                       ; $83D9B5 |
  SBC.B $20                                 ; $83D9B6 |
  BCS CODE_JP_83D9CB                        ; $83D9B8 |
  STA.B $00                                 ; $83D9BA |
  LDA.W #$0002                              ; $83D9BC |
  STA.B $46,X                               ; $83D9BF |
  LDA.W #$0002                              ; $83D9C1 |
  STA.B $3C,X                               ; $83D9C4 |
  STZ.B $3D,X                               ; $83D9C6 |
  JMP.W CODE_JP_83D9CF                      ; $83D9C8 |

CODE_JP_83D9CB:
  LDA.B $46,X                               ; $83D9CB |
  BEQ CODE_83D9FE                           ; $83D9CD |

CODE_JP_83D9CF:
  LDA.B $00                                 ; $83D9CF |
  AND.W #$FF00                              ; $83D9D1 |
  CLC                                       ; $83D9D4 |
  ADC.B $18                                 ; $83D9D5 |
  STA.B $18                                 ; $83D9D7 |
  BPL CODE_83D9DD                           ; $83D9D9 |
  DEC.B $0A,X                               ; $83D9DB |

CODE_83D9DD:
  CLC                                       ; $83D9DD |
  ADC.B $08,X                               ; $83D9DE |
  STA.B $08,X                               ; $83D9E0 |
  BCC CODE_83D9E6                           ; $83D9E2 |
  INC.B $0A,X                               ; $83D9E4 |

CODE_83D9E6:
  SEP #$20                                  ; $83D9E6 |
  STZ.B $08,X                               ; $83D9E8 |
  REP #$20                                  ; $83D9EA |
  STZ.B $26,X                               ; $83D9EC |
  STZ.B $78,X                               ; $83D9EE |
  STZ.B $4A,X                               ; $83D9F0 |
  STZ.B $19                                 ; $83D9F2 |
  LDA.B $46,X                               ; $83D9F4 |
  BIT.W #$0002                              ; $83D9F6 |
  BNE CODE_83DA0D                           ; $83D9F9 |
  JMP.W CODE_JP_83DA82                      ; $83D9FB |

CODE_83D9FE:
  LDA.B $18                                 ; $83D9FE |
  BPL CODE_83DA04                           ; $83DA00 |
  DEC.B $0A,X                               ; $83DA02 |

CODE_83DA04:
  CLC                                       ; $83DA04 |
  ADC.B $08,X                               ; $83DA05 |
  STA.B $08,X                               ; $83DA07 |
  BCC CODE_83DA0D                           ; $83DA09 |
  INC.B $0A,X                               ; $83DA0B |

CODE_83DA0D:
  LDA.B $46,X                               ; $83DA0D |
  CMP.W #$0001                              ; $83DA0F |
  BEQ CODE_JP_83DA82                        ; $83DA12 |
  CMP.W #$0002                              ; $83DA14 |
  BEQ CODE_83DA20                           ; $83DA17 |
  LDA.B $09,X                               ; $83DA19 |
  SEC                                       ; $83DA1B |
  SBC.B $7C,X                               ; $83DA1C |
  STA.B $18                                 ; $83DA1E |

CODE_83DA20:
  SEP #$20                                  ; $83DA20 |
  LDY.B $18                                 ; $83DA22 |
  BMI CODE_83DA53                           ; $83DA24 |
  LDA.B #$03                                ; $83DA26 |
  CPY.W #$0003                              ; $83DA28 |
  BCC CODE_83DA2F                           ; $83DA2B |
  LDA.B #$04                                ; $83DA2D |

CODE_83DA2F:
  STA.B $18                                 ; $83DA2F |
  LDA.B $04,X                               ; $83DA31 |
  BIT.B #$20                                ; $83DA33 |
  BEQ CODE_83DA40                           ; $83DA35 |
  LDA.B $09,X                               ; $83DA37 |
  SEC                                       ; $83DA39 |
  SBC.B #$90                                ; $83DA3A |
  BCC CODE_83DA80                           ; $83DA3C |
  BRA CODE_83DA47                           ; $83DA3E |

CODE_83DA40:
  LDA.B $09,X                               ; $83DA40 |
  SEC                                       ; $83DA42 |
  SBC.B #$71                                ; $83DA43 |
  BCC CODE_83DA80                           ; $83DA45 |

CODE_83DA47:
  CMP.B $18                                 ; $83DA47 |
  BCC CODE_83DA4D                           ; $83DA49 |
  LDA.B $18                                 ; $83DA4B |

CODE_83DA4D:
  STA.B $3C,X                               ; $83DA4D |
  STZ.B $3D,X                               ; $83DA4F |
  BRA CODE_83DA80                           ; $83DA51 |

CODE_83DA53:
  LDA.B #$FD                                ; $83DA53 |
  CPY.W #$FFFD                              ; $83DA55 |
  BCS CODE_83DA5C                           ; $83DA58 |
  LDA.B #$FC                                ; $83DA5A |

CODE_83DA5C:
  STA.B $18                                 ; $83DA5C |
  LDA.B $04,X                               ; $83DA5E |
  BIT.B #$20                                ; $83DA60 |
  BNE CODE_83DA6D                           ; $83DA62 |
  LDA.B $09,X                               ; $83DA64 |
  SEC                                       ; $83DA66 |
  SBC.B #$70                                ; $83DA67 |
  BCS CODE_83DA80                           ; $83DA69 |
  BRA CODE_83DA74                           ; $83DA6B |

CODE_83DA6D:
  LDA.B $09,X                               ; $83DA6D |
  SEC                                       ; $83DA6F |
  SBC.B #$90                                ; $83DA70 |
  BCS CODE_83DA80                           ; $83DA72 |

CODE_83DA74:
  CMP.B $18                                 ; $83DA74 |
  BCS CODE_83DA7A                           ; $83DA76 |
  LDA.B $18                                 ; $83DA78 |

CODE_83DA7A:
  STA.B $3C,X                               ; $83DA7A |
  LDA.B #$FF                                ; $83DA7C |
  STA.B $3D,X                               ; $83DA7E |

CODE_83DA80:
  REP #$20                                  ; $83DA80 |

CODE_JP_83DA82:
  RTS                                       ; $83DA82 |

CODE_FN_83DA83:
  LDY.B $0D,X                               ; $83DA83 |
  STY.B $7E,X                               ; $83DA85 |
  LDA.B $18,X                               ; $83DA87 |
  CMP.W #$0004                              ; $83DA89 |
  BNE CODE_83DAB9                           ; $83DA8C |
  LDA.B $3A,X                               ; $83DA8E |
  BIT.W #$0400                              ; $83DA90 |
  BEQ CODE_83DAB9                           ; $83DA93 |
  JSR.W CODE_FN_83CAAE                      ; $83DA95 |
  REP #$20                                  ; $83DA98 |
  LDA.B $18                                 ; $83DA9A |
  BPL CODE_83DAAA                           ; $83DA9C |
  LDA.B $0D,X                               ; $83DA9E |
  BMI CODE_83DAF6                           ; $83DAA0 |
  CMP.W #$0018                              ; $83DAA2 |
  BCC CODE_83DAF6                           ; $83DAA5 |
  JMP.W CODE_JP_83DABC                      ; $83DAA7 |

CODE_83DAAA:
  LDA.B $0D,X                               ; $83DAAA |
  BIT.W #$FF00                              ; $83DAAC |
  BNE CODE_83DAF6                           ; $83DAAF |
  CMP.W #$00B8                              ; $83DAB1 |
  BCS CODE_83DAF6                           ; $83DAB4 |
  JMP.W CODE_JP_83DABC                      ; $83DAB6 |

CODE_83DAB9:
  JSR.W CODE_FN_83C5D8                      ; $83DAB9 |

CODE_JP_83DABC:
  REP #$20                                  ; $83DABC |
  LDA.B $28,X                               ; $83DABE |
  CLC                                       ; $83DAC0 |
  ADC.B $7A,X                               ; $83DAC1 |
  STA.B $18                                 ; $83DAC3 |
  LDA.B $48,X                               ; $83DAC5 |
  BNE CODE_83DAD0                           ; $83DAC7 |
  LDA.B $92,X                               ; $83DAC9 |
  BIT.W #$0100                              ; $83DACB |
  BEQ CODE_83DAE8                           ; $83DACE |

CODE_83DAD0:
  LDA.B $18                                 ; $83DAD0 |
  BPL CODE_83DADD                           ; $83DAD2 |
  LDA.B $0D,X                               ; $83DAD4 |
  AND.W #$FF00                              ; $83DAD6 |
  BNE CODE_83DAF6                           ; $83DAD9 |
  BRA CODE_83DAE8                           ; $83DADB |

CODE_83DADD:
  LDA.B $0D,X                               ; $83DADD |
  BMI CODE_83DAE8                           ; $83DADF |
  CMP.W #$00E0                              ; $83DAE1 |
  BCS CODE_83DAF6                           ; $83DAE4 |
  BRA CODE_83DAE8                           ; $83DAE6 |

CODE_83DAE8:
  LDA.B $18                                 ; $83DAE8 |
  BPL CODE_83DAEE                           ; $83DAEA |
  DEC.B $0E,X                               ; $83DAEC |

CODE_83DAEE:
  ADC.B $0C,X                               ; $83DAEE |
  STA.B $0C,X                               ; $83DAF0 |
  BCC CODE_83DAF6                           ; $83DAF2 |
  INC.B $0E,X                               ; $83DAF4 |

CODE_83DAF6:
  LDA.B $0D,X                               ; $83DAF6 |
  SEC                                       ; $83DAF8 |
  SBC.B $7E,X                               ; $83DAF9 |
  STA.B $42,X                               ; $83DAFB |
  LDA.W $1672                               ; $83DAFD |
  AND.W #$00FF                              ; $83DB00 |
  BNE CODE_83DB32                           ; $83DB03 |
  LDA.B $0D,X                               ; $83DB05 |
  BIT.W #$FF00                              ; $83DB07 |
  BNE CODE_83DB18                           ; $83DB0A |
  CMP.W #$0008                              ; $83DB0C |
  BCC CODE_83DB25                           ; $83DB0F |
  CMP.W #$00D8                              ; $83DB11 |
  BCS CODE_83DB1A                           ; $83DB14 |
  BRA CODE_83DB32                           ; $83DB16 |

CODE_83DB18:
  BMI CODE_83DB25                           ; $83DB18 |

CODE_83DB1A:
  LDA.W #$0004                              ; $83DB1A |
  JSL.L CODE_FL_848028                      ; $83DB1D |
  BCC CODE_83DB32                           ; $83DB21 |
  BRA CODE_83DB2E                           ; $83DB23 |

CODE_83DB25:
  LDA.W #$0008                              ; $83DB25 |
  JSL.L CODE_FL_848028                      ; $83DB28 |
  BCC CODE_83DB32                           ; $83DB2C |

CODE_83DB2E:
  JSL.L CODE_FL_848000                      ; $83DB2E |

CODE_83DB32:
  LDA.B $48,X                               ; $83DB32 |
  CMP.W #$0005                              ; $83DB34 |
  BCC CODE_83DB40                           ; $83DB37 |
  STZ.B $28,X                               ; $83DB39 |
  CMP.W #$0000                              ; $83DB3B |
  BEQ CODE_83DB40                           ; $83DB3E |

CODE_83DB40:
  RTS                                       ; $83DB40 |

CODE_FL_83DB41:
  LDX.B $94                                 ; $83DB41 |
  SEP #$20                                  ; $83DB43 |
  LDA.B $3A,X                               ; $83DB45 |
  BIT.B #$20                                ; $83DB47 |
  BEQ CODE_83DB8C                           ; $83DB49 |
  LDA.W $174C                               ; $83DB4B |
  BEQ CODE_83DB8C                           ; $83DB4E |
  BMI CODE_83DB70                           ; $83DB50 |
  LDA.B $09,X                               ; $83DB52 |
  SEC                                       ; $83DB54 |
  SBC.W $174C                               ; $83DB55 |
  STA.B $09,X                               ; $83DB58 |
  BCS CODE_83DB5E                           ; $83DB5A |
  DEC.B $0A,X                               ; $83DB5C |

CODE_83DB5E:
  LDA.B $81,X                               ; $83DB5E |
  BMI CODE_83DB8C                           ; $83DB60 |
  LDA.B $80,X                               ; $83DB62 |
  SEC                                       ; $83DB64 |
  SBC.W $174C                               ; $83DB65 |
  STA.B $80,X                               ; $83DB68 |
  BCS CODE_83DB8C                           ; $83DB6A |
  DEC.B $81,X                               ; $83DB6C |
  BRA CODE_83DB8C                           ; $83DB6E |

CODE_83DB70:
  LDA.B $09,X                               ; $83DB70 |
  SEC                                       ; $83DB72 |
  SBC.W $174C                               ; $83DB73 |
  STA.B $09,X                               ; $83DB76 |
  BCC CODE_83DB7C                           ; $83DB78 |
  INC.B $0A,X                               ; $83DB7A |

CODE_83DB7C:
  LDA.B $81,X                               ; $83DB7C |
  BMI CODE_83DB8C                           ; $83DB7E |
  LDA.B $80,X                               ; $83DB80 |
  SEC                                       ; $83DB82 |
  SBC.W $174C                               ; $83DB83 |
  STA.B $80,X                               ; $83DB86 |
  BCC CODE_83DB8C                           ; $83DB88 |
  INC.B $81,X                               ; $83DB8A |

CODE_83DB8C:
  LDA.B $3A,X                               ; $83DB8C |
  BIT.B #$10                                ; $83DB8E |
  BEQ CODE_83DBB1                           ; $83DB90 |
  LDA.W $174E                               ; $83DB92 |
  BEQ CODE_83DBB1                           ; $83DB95 |
  BMI CODE_83DBB4                           ; $83DB97 |
  LDA.B $0D,X                               ; $83DB99 |
  SEC                                       ; $83DB9B |
  SBC.W $174E                               ; $83DB9C |
  STA.B $0D,X                               ; $83DB9F |
  BCS CODE_83DBA5                           ; $83DBA1 |
  DEC.B $0E,X                               ; $83DBA3 |

CODE_83DBA5:
  LDA.B $82,X                               ; $83DBA5 |
  SEC                                       ; $83DBA7 |
  SBC.W $174E                               ; $83DBA8 |
  STA.B $82,X                               ; $83DBAB |
  BCS CODE_83DBB1                           ; $83DBAD |
  DEC.B $83,X                               ; $83DBAF |

CODE_83DBB1:
  REP #$20                                  ; $83DBB1 |
  RTL                                       ; $83DBB3 |

CODE_83DBB4:
  LDA.B $0D,X                               ; $83DBB4 |
  SEC                                       ; $83DBB6 |
  SBC.W $174E                               ; $83DBB7 |
  STA.B $0D,X                               ; $83DBBA |
  BCC CODE_83DBC0                           ; $83DBBC |
  INC.B $0E,X                               ; $83DBBE |

CODE_83DBC0:
  LDA.B $82,X                               ; $83DBC0 |
  SEC                                       ; $83DBC2 |
  SBC.W $174E                               ; $83DBC3 |
  STA.B $82,X                               ; $83DBC6 |
  BCC CODE_83DBB1                           ; $83DBC8 |
  INC.B $83,X                               ; $83DBCA |
  REP #$20                                  ; $83DBCC |
  RTL                                       ; $83DBCE |

CODE_FN_83DBCF:
  SEP #$20                                  ; $83DBCF |
  LDA.W $1960                               ; $83DBD1 |
  BMI CODE_83DBF3                           ; $83DBD4 |
  LDA.B $18,X                               ; $83DBD6 |
  BEQ CODE_83DBF0                           ; $83DBD8 |
  LDA.B $09,X                               ; $83DBDA |
  CMP.B #$10                                ; $83DBDC |
  BCS CODE_83DBF0                           ; $83DBDE |
  LDA.B $41,X                               ; $83DBE0 |
  BMI CODE_83DBE9                           ; $83DBE2 |
  CMP.W $1960                               ; $83DBE4 |
  BCS CODE_83DBF0                           ; $83DBE7 |

CODE_83DBE9:
  LDA.W $1960                               ; $83DBE9 |
  STA.B $41,X                               ; $83DBEC |
  STZ.B $40,X                               ; $83DBEE |

CODE_83DBF0:
  REP #$20                                  ; $83DBF0 |
  RTS                                       ; $83DBF2 |

CODE_83DBF3:
  LDA.B $18,X                               ; $83DBF3 |
  BEQ CODE_83DC0D                           ; $83DBF5 |
  LDA.B $09,X                               ; $83DBF7 |
  CMP.B #$F1                                ; $83DBF9 |
  BCC CODE_83DC0D                           ; $83DBFB |
  LDA.B $41,X                               ; $83DBFD |
  BPL CODE_83DC06                           ; $83DBFF |
  CMP.W $1960                               ; $83DC01 |
  BCC CODE_83DC0D                           ; $83DC04 |

CODE_83DC06:
  LDA.W $1960                               ; $83DC06 |
  STA.B $41,X                               ; $83DC09 |
  STZ.B $40,X                               ; $83DC0B |

CODE_83DC0D:
  REP #$20                                  ; $83DC0D |
  RTS                                       ; $83DC0F |

CODE_FL_83DC10:
  LDX.W #$0400                              ; $83DC10 |
  LDA.B $18,X                               ; $83DC13 |
  BEQ CODE_83DC31                           ; $83DC15 |
  LDA.B $48,X                               ; $83DC17 |
  BEQ CODE_83DC31                           ; $83DC19 |
  LDA.B $6A,X                               ; $83DC1B |
  CMP.W #$0003                              ; $83DC1D |
  BNE CODE_83DC31                           ; $83DC20 |
  LDA.B $0D,X                               ; $83DC22 |
  BMI CODE_83DC31                           ; $83DC24 |
  CMP.W #$00C8                              ; $83DC26 |
  BCS CODE_83DC31                           ; $83DC29 |
  STA.B $82,X                               ; $83DC2B |
  LDA.B $09,X                               ; $83DC2D |
  STA.B $80,X                               ; $83DC2F |

CODE_83DC31:
  LDX.W #$04C0                              ; $83DC31 |
  LDA.B $18,X                               ; $83DC34 |
  BEQ CODE_83DC52                           ; $83DC36 |
  LDA.B $48,X                               ; $83DC38 |
  BEQ CODE_83DC52                           ; $83DC3A |
  LDA.B $6A,X                               ; $83DC3C |
  CMP.W #$0003                              ; $83DC3E |
  BNE CODE_83DC52                           ; $83DC41 |
  LDA.B $0D,X                               ; $83DC43 |
  BMI CODE_83DC52                           ; $83DC45 |
  CMP.W #$00C8                              ; $83DC47 |
  BCS CODE_83DC52                           ; $83DC4A |
  STA.B $82,X                               ; $83DC4C |
  LDA.B $09,X                               ; $83DC4E |
  STA.B $80,X                               ; $83DC50 |

CODE_83DC52:
  RTL                                       ; $83DC52 |

CODE_FN_83DC53:
  CMP.W #$006E                              ; $83DC53 |
  BCS CODE_FN_83DC59                        ; $83DC56 |
  RTS                                       ; $83DC58 |

CODE_FN_83DC59:
  ASL A                                     ; $83DC59 |
  TAY                                       ; $83DC5A |
  LDA.W LOOSE_OP_00EEAB,Y                   ; $83DC5B |
  PHA                                       ; $83DC5E |
  RTS                                       ; $83DC5F |

CODE_83DC60:
  LDA.B $18                                 ; $83DC60 |
  BMI CODE_83DC75                           ; $83DC62 |

CODE_83DC64:
  LDA.W $1662                               ; $83DC64 |
  CLC                                       ; $83DC67 |
  ADC.B $08                                 ; $83DC68 |
  AND.W #$000F                              ; $83DC6A |
  EOR.W #$FFFF                              ; $83DC6D |
  INC A                                     ; $83DC70 |
  STA.B $01                                 ; $83DC71 |
  SEC                                       ; $83DC73 |
  RTS                                       ; $83DC74 |

CODE_83DC75:
  LDA.W $1662                               ; $83DC75 |
  CLC                                       ; $83DC78 |
  ADC.B $08                                 ; $83DC79 |
  AND.W #$000F                              ; $83DC7B |
  EOR.W #$000F                              ; $83DC7E |
  STA.B $01                                 ; $83DC81 |
  SEC                                       ; $83DC83 |
  RTS                                       ; $83DC84 |

  LDA.W $1672                               ; $83DC85 |
  CLC                                       ; $83DC88 |
  ADC.B $0A                                 ; $83DC89 |
  AND.W #$000F                              ; $83DC8B |
  CMP.W #$0008                              ; $83DC8E |
  BCC CODE_83DC99                           ; $83DC91 |
  LDA.B $18                                 ; $83DC93 |
  BPL CODE_83DC64                           ; $83DC95 |
  BRA CODE_83DC75                           ; $83DC97 |

CODE_83DC99:
  CLC                                       ; $83DC99 |
  RTS                                       ; $83DC9A |

  LDA.B $38,X                               ; $83DC9B |
  BNE CODE_83DCA6                           ; $83DC9D |
  LDA.B $33,X                               ; $83DC9F |
  ORA.W #$0004                              ; $83DCA1 |
  STA.B $33,X                               ; $83DCA4 |

CODE_83DCA6:
  BRA CODE_83DC60                           ; $83DCA6 |

CODE_FL_83DCA8:
  LDY.W #$0005                              ; $83DCA8 |
  LDA.B $2E,X                               ; $83DCAB |
  CMP.W #$0005                              ; $83DCAD |
  BCS CODE_83DCB5                           ; $83DCB0 |
  LDY.W #$0002                              ; $83DCB2 |

CODE_83DCB5:
  STY.B $B4                                 ; $83DCB5 |
  LDY.W #$0003                              ; $83DCB7 |
  LDA.B $30,X                               ; $83DCBA |
  CMP.W #$0005                              ; $83DCBC |
  BCS CODE_83DCC4                           ; $83DCBF |
  LDY.W #$0002                              ; $83DCC1 |

CODE_83DCC4:
  STY.B $B6                                 ; $83DCC4 |
  LDA.B $09,X                               ; $83DCC6 |
  STA.B $10                                 ; $83DCC8 |
  LDA.B $0D,X                               ; $83DCCA |
  STA.B $12                                 ; $83DCCC |
  LDA.B $11,X                               ; $83DCCE |
  STA.B $14                                 ; $83DCD0 |
  LDA.B $11,X                               ; $83DCD2 |
  CMP.W #$0030                              ; $83DCD4 |
  BCS CODE_83DCDC                           ; $83DCD7 |
  JMP.W CODE_JP_83DD6C                      ; $83DCD9 |

CODE_83DCDC:
  STZ.B $46,X                               ; $83DCDC |
  STZ.B $48,X                               ; $83DCDE |
  SEP #$20                                  ; $83DCE0 |
  LDA.B $2A,X                               ; $83DCE2 |
  SEC                                       ; $83DCE4 |
  SBC.B $4D,X                               ; $83DCE5 |
  STA.B $2A,X                               ; $83DCE7 |
  BCS CODE_83DCED                           ; $83DCE9 |
  DEC.B $2B,X                               ; $83DCEB |

CODE_83DCED:
  REP #$20                                  ; $83DCED |
  LDA.B $2A,X                               ; $83DCEF |
  BEQ CODE_83DD23                           ; $83DCF1 |
  LDA.B $2A,X                               ; $83DCF3 |
  BPL CODE_83DD18                           ; $83DCF5 |
  LDA.B $2A,X                               ; $83DCF7 |
  CLC                                       ; $83DCF9 |
  ADC.B $10,X                               ; $83DCFA |
  STA.B $10,X                               ; $83DCFC |
  SEP #$20                                  ; $83DCFE |
  BCS CODE_83DD04                           ; $83DD00 |
  DEC.B $12,X                               ; $83DD02 |

CODE_83DD04:
  LDA.B $12,X                               ; $83DD04 |
  REP #$20                                  ; $83DD06 |
  BPL CODE_83DD23                           ; $83DD08 |
  STZ.B $10,X                               ; $83DD0A |
  STZ.B $12,X                               ; $83DD0C |
  STZ.B $2A,X                               ; $83DD0E |
  LDA.W #$0001                              ; $83DD10 |
  STA.W $1C16                               ; $83DD13 |
  BRA CODE_83DD23                           ; $83DD16 |

CODE_83DD18:
  LDA.B $2A,X                               ; $83DD18 |
  CLC                                       ; $83DD1A |
  ADC.B $10,X                               ; $83DD1B |
  STA.B $10,X                               ; $83DD1D |
  BCC CODE_83DD23                           ; $83DD1F |
  INC.B $12,X                               ; $83DD21 |

CODE_83DD23:
  LDA.B $0D,X                               ; $83DD23 |
  STA.B $7E,X                               ; $83DD25 |
  STZ.B $78,X                               ; $83DD27 |
  LDA.B $28,X                               ; $83DD29 |
  CLC                                       ; $83DD2B |
  ADC.B $7A,X                               ; $83DD2C |
  BNE CODE_83DD32                           ; $83DD2E |
  BRA CODE_83DD47                           ; $83DD30 |

CODE_83DD32:
  CLC                                       ; $83DD32 |
  BMI CODE_83DD3F                           ; $83DD33 |
  ADC.B $0C,X                               ; $83DD35 |
  STA.B $0C,X                               ; $83DD37 |
  BCC CODE_83DD47                           ; $83DD39 |
  INC.B $0E,X                               ; $83DD3B |
  BRA CODE_83DD47                           ; $83DD3D |

CODE_83DD3F:
  ADC.B $0C,X                               ; $83DD3F |
  STA.B $0C,X                               ; $83DD41 |
  BCS CODE_83DD47                           ; $83DD43 |
  DEC.B $0E,X                               ; $83DD45 |

CODE_83DD47:
  LDA.B $09,X                               ; $83DD47 |
  STA.B $7C,X                               ; $83DD49 |
  LDA.B $26,X                               ; $83DD4B |
  CLC                                       ; $83DD4D |
  ADC.B $78,X                               ; $83DD4E |
  BNE CODE_83DD54                           ; $83DD50 |
  BRA CODE_83DD69                           ; $83DD52 |

CODE_83DD54:
  CLC                                       ; $83DD54 |
  BMI CODE_83DD61                           ; $83DD55 |
  ADC.B $08,X                               ; $83DD57 |
  STA.B $08,X                               ; $83DD59 |
  BCC CODE_83DD69                           ; $83DD5B |
  INC.B $0A,X                               ; $83DD5D |
  BRA CODE_83DD69                           ; $83DD5F |

CODE_83DD61:
  ADC.B $08,X                               ; $83DD61 |
  STA.B $08,X                               ; $83DD63 |
  BCS CODE_83DD69                           ; $83DD65 |
  DEC.B $0A,X                               ; $83DD67 |

CODE_83DD69:
  JMP.W CODE_JP_83DE47                      ; $83DD69 |

CODE_JP_83DD6C:
  STZ.W $1C12                               ; $83DD6C |
  STZ.W $1C14                               ; $83DD6F |
  STZ.W $1C16                               ; $83DD72 |
  LDA.B $34,X                               ; $83DD75 |
  AND.W #$FFFE                              ; $83DD77 |
  STA.B $34,X                               ; $83DD7A |
  STZ.B $46,X                               ; $83DD7C |
  STZ.B $48,X                               ; $83DD7E |
  LDA.B $22,X                               ; $83DD80 |
  CMP.W #$001A                              ; $83DD82 |
  BEQ CODE_83DD8E                           ; $83DD85 |
  LDA.B $92,X                               ; $83DD87 |
  BIT.W #$0010                              ; $83DD89 |
  BEQ CODE_83DD8F                           ; $83DD8C |

CODE_83DD8E:
  RTL                                       ; $83DD8E |

CODE_83DD8F:
  SEP #$20                                  ; $83DD8F |
  LDA.B $2A,X                               ; $83DD91 |
  SEC                                       ; $83DD93 |
  SBC.B $4D,X                               ; $83DD94 |
  STA.B $2A,X                               ; $83DD96 |
  BCS CODE_83DD9C                           ; $83DD98 |
  DEC.B $2B,X                               ; $83DD9A |

CODE_83DD9C:
  REP #$20                                  ; $83DD9C |
  LDA.B $2A,X                               ; $83DD9E |
  BEQ CODE_83DDDC                           ; $83DDA0 |
  LDA.B $2A,X                               ; $83DDA2 |
  BPL CODE_83DDD1                           ; $83DDA4 |
  CMP.W #$FC00                              ; $83DDA6 |
  BCS CODE_83DDB0                           ; $83DDA9 |
  LDA.W #$FC00                              ; $83DDAB |
  STA.B $2A,X                               ; $83DDAE |

CODE_83DDB0:
  LDA.B $2A,X                               ; $83DDB0 |
  CLC                                       ; $83DDB2 |
  ADC.B $10,X                               ; $83DDB3 |
  STA.B $10,X                               ; $83DDB5 |
  SEP #$20                                  ; $83DDB7 |
  BCS CODE_83DDBD                           ; $83DDB9 |
  DEC.B $12,X                               ; $83DDBB |

CODE_83DDBD:
  LDA.B $12,X                               ; $83DDBD |
  REP #$20                                  ; $83DDBF |
  BPL CODE_83DDDC                           ; $83DDC1 |
  STZ.B $10,X                               ; $83DDC3 |
  STZ.B $12,X                               ; $83DDC5 |
  STZ.B $2A,X                               ; $83DDC7 |
  LDA.W #$0001                              ; $83DDC9 |
  STA.W $1C16                               ; $83DDCC |
  BRA CODE_83DDDC                           ; $83DDCF |

CODE_83DDD1:
  LDA.B $2A,X                               ; $83DDD1 |
  CLC                                       ; $83DDD3 |
  ADC.B $10,X                               ; $83DDD4 |
  STA.B $10,X                               ; $83DDD6 |
  BCC CODE_83DDDC                           ; $83DDD8 |
  INC.B $12,X                               ; $83DDDA |

CODE_83DDDC:
  LDA.B $09,X                               ; $83DDDC |
  STA.B $08                                 ; $83DDDE |
  LDA.B $0D,X                               ; $83DDE0 |
  STA.B $0A                                 ; $83DDE2 |
  JSL.L CODE_FL_80CC03                      ; $83DDE4 |
  STA.B $00                                 ; $83DDE8 |
  AND.W #$003F                              ; $83DDEA |
  BEQ CODE_83DDF2                           ; $83DDED |
  JSR.W CODE_FN_83EA1E                      ; $83DDEF |

CODE_83DDF2:
  LDA.W $1C16                               ; $83DDF2 |
  BEQ CODE_83DE03                           ; $83DDF5 |
  LDA.B $09,X                               ; $83DDF7 |
  STA.B $80,X                               ; $83DDF9 |
  LDA.B $0D,X                               ; $83DDFB |
  STA.B $82,X                               ; $83DDFD |
  LDA.B $11,X                               ; $83DDFF |
  STA.B $AC,X                               ; $83DE01 |

CODE_83DE03:
  LDA.B $00                                 ; $83DE03 |
  BIT.W #$0040                              ; $83DE05 |
  BEQ CODE_83DE16                           ; $83DE08 |
  LDA.B $04,X                               ; $83DE0A |
  AND.W #$6767                              ; $83DE0C |
  ORA.W #$1090                              ; $83DE0F |
  STA.B $04,X                               ; $83DE12 |
  BRA CODE_83DE1D                           ; $83DE14 |

CODE_83DE16:
  LDA.B $04,X                               ; $83DE16 |
  ORA.W #$1898                              ; $83DE18 |
  STA.B $04,X                               ; $83DE1B |

CODE_83DE1D:
  LDA.B $28,X                               ; $83DE1D |
  ORA.B $26,X                               ; $83DE1F |
  BNE CODE_83DE25                           ; $83DE21 |
  STZ.B $BC,X                               ; $83DE23 |

CODE_83DE25:
  LDA.B $84                                 ; $83DE25 |
  BIT.W #$0001                              ; $83DE27 |
  BNE CODE_83DE34                           ; $83DE2A |
  JSR.W CODE_FN_83DF2B                      ; $83DE2C |
  JSR.W CODE_FN_83E067                      ; $83DE2F |
  BRA CODE_83DE3A                           ; $83DE32 |

CODE_83DE34:
  JSR.W CODE_FN_83E067                      ; $83DE34 |
  JSR.W CODE_FN_83DF2B                      ; $83DE37 |

CODE_83DE3A:
  STZ.B $7A,X                               ; $83DE3A |
  SEP #$20                                  ; $83DE3C |
  STZ.B $15,X                               ; $83DE3E |
  REP #$20                                  ; $83DE40 |
  LDA.W $1C16                               ; $83DE42 |
  STA.B $48,X                               ; $83DE45 |

CODE_JP_83DE47:
  LDA.B $3C,X                               ; $83DE47 |
  BNE CODE_83DE97                           ; $83DE49 |
  LDA.B $09,X                               ; $83DE4B |
  SEC                                       ; $83DE4D |
  SBC.B $10                                 ; $83DE4E |
  BEQ CODE_83DE97                           ; $83DE50 |
  TAY                                       ; $83DE52 |
  BMI CODE_83DE77                           ; $83DE53 |
  BRA CODE_83DE57                           ; $83DE55 |

CODE_83DE57:
  SEP #$20                                  ; $83DE57 |
  LDA.B #$02                                ; $83DE59 |
  CPY.W #$0002                              ; $83DE5B |
  BCC CODE_83DE62                           ; $83DE5E |
  LDA.B #$04                                ; $83DE60 |

CODE_83DE62:
  STA.B $00                                 ; $83DE62 |
  LDA.B $09,X                               ; $83DE64 |
  SEC                                       ; $83DE66 |
  SBC.B #$85                                ; $83DE67 |
  BCC CODE_83DE97                           ; $83DE69 |
  CMP.B $00                                 ; $83DE6B |
  BCC CODE_83DE71                           ; $83DE6D |
  LDA.B $00                                 ; $83DE6F |

CODE_83DE71:
  STA.B $3C,X                               ; $83DE71 |
  STZ.B $3D,X                               ; $83DE73 |
  BRA CODE_83DE97                           ; $83DE75 |

CODE_83DE77:
  SEP #$20                                  ; $83DE77 |
  LDA.B #$FE                                ; $83DE79 |
  CPY.W #$FFFE                              ; $83DE7B |
  BCS CODE_83DE82                           ; $83DE7E |
  LDA.B #$FC                                ; $83DE80 |

CODE_83DE82:
  STA.B $00                                 ; $83DE82 |
  LDA.B $09,X                               ; $83DE84 |
  SEC                                       ; $83DE86 |
  SBC.B #$7C                                ; $83DE87 |
  BCS CODE_83DE97                           ; $83DE89 |
  CMP.B $00                                 ; $83DE8B |
  BCS CODE_83DE91                           ; $83DE8D |
  LDA.B $00                                 ; $83DE8F |

CODE_83DE91:
  STA.B $3C,X                               ; $83DE91 |
  LDA.B #$FF                                ; $83DE93 |
  STA.B $3D,X                               ; $83DE95 |

CODE_83DE97:
  REP #$20                                  ; $83DE97 |
  LDA.B $3E,X                               ; $83DE99 |
  BNE CODE_JL_83DF0F                        ; $83DE9B |
  LDA.W #$0018                              ; $83DE9D |
  SEC                                       ; $83DEA0 |
  SBC.B $11,X                               ; $83DEA1 |
  BCC CODE_83DEA8                           ; $83DEA3 |
  LDA.W #$0000                              ; $83DEA5 |

CODE_83DEA8:
  CLC                                       ; $83DEA8 |
  ADC.B $0D,X                               ; $83DEA9 |
  STA.B $08                                 ; $83DEAB |
  STZ.B $10                                 ; $83DEAD |
  LDA.B $11,X                               ; $83DEAF |
  CMP.W #$0018                              ; $83DEB1 |
  BCC CODE_83DEBD                           ; $83DEB4 |
  LDA.B $14                                 ; $83DEB6 |
  SEC                                       ; $83DEB8 |
  SBC.B $11,X                               ; $83DEB9 |
  STA.B $10                                 ; $83DEBB |

CODE_83DEBD:
  LDA.B $0D,X                               ; $83DEBD |
  SEC                                       ; $83DEBF |
  SBC.B $12                                 ; $83DEC0 |
  CLC                                       ; $83DEC2 |
  ADC.B $10                                 ; $83DEC3 |
  BNE CODE_83DECA                           ; $83DEC5 |
  BRL CODE_JL_83DF0F                        ; $83DEC7 |

CODE_83DECA:
  TAY                                       ; $83DECA |
  BMI CODE_83DEED                           ; $83DECB |
  SEP #$20                                  ; $83DECD |
  LDA.B #$02                                ; $83DECF |
  CPY.W #$0002                              ; $83DED1 |
  BCC CODE_83DED8                           ; $83DED4 |
  LDA.B #$04                                ; $83DED6 |

CODE_83DED8:
  STA.B $00                                 ; $83DED8 |
  LDA.B $08                                 ; $83DEDA |
  SEC                                       ; $83DEDC |
  SBC.B #$60                                ; $83DEDD |
  BCC CODE_83DF0D                           ; $83DEDF |
  CMP.B $00                                 ; $83DEE1 |
  BCC CODE_83DEE7                           ; $83DEE3 |
  LDA.B $00                                 ; $83DEE5 |

CODE_83DEE7:
  STA.B $3E,X                               ; $83DEE7 |
  STZ.B $3F,X                               ; $83DEE9 |
  BRA CODE_83DF0D                           ; $83DEEB |

CODE_83DEED:
  SEP #$20                                  ; $83DEED |
  LDA.B #$FE                                ; $83DEEF |
  CPY.W #$FFFE                              ; $83DEF1 |
  BCS CODE_83DEF8                           ; $83DEF4 |
  LDA.B #$FC                                ; $83DEF6 |

CODE_83DEF8:
  STA.B $00                                 ; $83DEF8 |
  LDA.B $08                                 ; $83DEFA |
  SEC                                       ; $83DEFC |
  SBC.B #$60                                ; $83DEFD |
  BCS CODE_83DF0D                           ; $83DEFF |
  CMP.B $00                                 ; $83DF01 |
  BCS CODE_83DF07                           ; $83DF03 |
  LDA.B $00                                 ; $83DF05 |

CODE_83DF07:
  STA.B $3E,X                               ; $83DF07 |
  LDA.B #$FF                                ; $83DF09 |
  STA.B $3F,X                               ; $83DF0B |

CODE_83DF0D:
  REP #$20                                  ; $83DF0D |

CODE_JL_83DF0F:
  LDA.W $1C12                               ; $83DF0F |
  STA.B $46,X                               ; $83DF12 |
  BEQ CODE_83DF1A                           ; $83DF14 |
  STZ.B $18                                 ; $83DF16 |
  STZ.B $1C                                 ; $83DF18 |

CODE_83DF1A:
  LDA.B $48,X                               ; $83DF1A |
  BEQ CODE_83DF22                           ; $83DF1C |
  STZ.B $18                                 ; $83DF1E |
  STZ.B $1C                                 ; $83DF20 |

CODE_83DF22:
  LDA.B $18                                 ; $83DF22 |
  STA.B $26,X                               ; $83DF24 |
  LDA.B $1C                                 ; $83DF26 |
  STA.B $28,X                               ; $83DF28 |
  RTL                                       ; $83DF2A |

CODE_FN_83DF2B:
  STZ.B $3C,X                               ; $83DF2B |
  LDA.B $09,X                               ; $83DF2D |
  STA.B $7C,X                               ; $83DF2F |
  LDA.B $26,X                               ; $83DF31 |
  STA.B $18                                 ; $83DF33 |
  CLC                                       ; $83DF35 |
  ADC.B $78,X                               ; $83DF36 |
  STA.B $0C                                 ; $83DF38 |
  BNE CODE_83DF3F                           ; $83DF3A |
  JMP.W CODE_JP_83DFF7                      ; $83DF3C |

CODE_83DF3F:
  CLC                                       ; $83DF3F |
  BMI CODE_83DF4C                           ; $83DF40 |
  ADC.B $08,X                               ; $83DF42 |
  STA.B $08,X                               ; $83DF44 |
  BCC CODE_83DF54                           ; $83DF46 |
  INC.B $0A,X                               ; $83DF48 |
  BRA CODE_83DF54                           ; $83DF4A |

CODE_83DF4C:
  ADC.B $08,X                               ; $83DF4C |
  STA.B $08,X                               ; $83DF4E |
  BCS CODE_83DF54                           ; $83DF50 |
  DEC.B $0A,X                               ; $83DF52 |

CODE_83DF54:
  LDA.B $3A,X                               ; $83DF54 |
  BIT.W #$0008                              ; $83DF56 |
  BNE CODE_83DF5E                           ; $83DF59 |
  JMP.W CODE_JP_83DFF7                      ; $83DF5B |

CODE_83DF5E:
  LDA.B $B4                                 ; $83DF5E |
  LDY.B $0C                                 ; $83DF60 |
  BPL CODE_83DF68                           ; $83DF62 |
  EOR.W #$FFFF                              ; $83DF64 |
  INC A                                     ; $83DF67 |

CODE_83DF68:
  CLC                                       ; $83DF68 |
  ADC.B $09,X                               ; $83DF69 |
  STA.B $08                                 ; $83DF6B |
  LDA.B $0D,X                               ; $83DF6D |
  SEC                                       ; $83DF6F |
  SBC.B $B6                                 ; $83DF70 |
  STA.B $0A                                 ; $83DF72 |
  JSL.L CODE_FL_80CC03                      ; $83DF74 |
  AND.W #$003F                              ; $83DF78 |
  JSR.W CODE_FN_83E1A9                      ; $83DF7B |
  LDA.B $18                                 ; $83DF7E |
  STA.B $20                                 ; $83DF80 |
  LDA.B $1A                                 ; $83DF82 |
  STA.B $22                                 ; $83DF84 |
  LDA.B $1C                                 ; $83DF86 |
  STA.B $24                                 ; $83DF88 |
  LDA.B $0A                                 ; $83DF8A |
  STA.B $26                                 ; $83DF8C |
  LDA.B $B4                                 ; $83DF8E |
  LDY.B $0C                                 ; $83DF90 |
  BPL CODE_83DF98                           ; $83DF92 |
  EOR.W #$FFFF                              ; $83DF94 |
  INC A                                     ; $83DF97 |

CODE_83DF98:
  CLC                                       ; $83DF98 |
  ADC.B $09,X                               ; $83DF99 |
  STA.B $08                                 ; $83DF9B |
  LDA.B $0D,X                               ; $83DF9D |
  CLC                                       ; $83DF9F |
  ADC.B $B6                                 ; $83DFA0 |
  STA.B $0A                                 ; $83DFA2 |
  JSL.L CODE_FL_80CC03                      ; $83DFA4 |
  AND.W #$003F                              ; $83DFA8 |
  JSR.W CODE_FN_83E1A9                      ; $83DFAB |
  LDA.B $18                                 ; $83DFAE |
  CMP.B $20                                 ; $83DFB0 |
  BCC CODE_83DFD2                           ; $83DFB2 |
  LDA.B $18                                 ; $83DFB4 |
  BEQ CODE_83DFEF                           ; $83DFB6 |
  LDA.B $20                                 ; $83DFB8 |
  BNE CODE_83DFC4                           ; $83DFBA |
  LDA.B $28,X                               ; $83DFBC |
  SEC                                       ; $83DFBE |
  SBC.W #$0100                              ; $83DFBF |
  STA.B $28,X                               ; $83DFC2 |

CODE_83DFC4:
  LDA.B $18                                 ; $83DFC4 |
  STA.B $20                                 ; $83DFC6 |
  LDA.B $1A                                 ; $83DFC8 |
  STA.B $22                                 ; $83DFCA |
  LDA.B $1C                                 ; $83DFCC |
  STA.B $24                                 ; $83DFCE |
  BRA CODE_83DFE6                           ; $83DFD0 |

CODE_83DFD2:
  LDA.B $20                                 ; $83DFD2 |
  BEQ CODE_83DFEF                           ; $83DFD4 |
  LDA.B $18                                 ; $83DFD6 |
  BNE CODE_83DFE2                           ; $83DFD8 |
  LDA.B $28,X                               ; $83DFDA |
  CLC                                       ; $83DFDC |
  ADC.W #$0100                              ; $83DFDD |
  STA.B $28,X                               ; $83DFE0 |

CODE_83DFE2:
  LDA.B $26                                 ; $83DFE2 |
  STA.B $0A                                 ; $83DFE4 |

CODE_83DFE6:
  LDA.B $22                                 ; $83DFE6 |
  BEQ CODE_83DFEF                           ; $83DFE8 |
  JSR.W CODE_FN_83E4D5                      ; $83DFEA |
  BRA CODE_JP_83DFF7                        ; $83DFED |

CODE_83DFEF:
  SEP #$20                                  ; $83DFEF |
  STZ.B $BE,X                               ; $83DFF1 |
  STZ.B $BC,X                               ; $83DFF3 |
  REP #$20                                  ; $83DFF5 |

CODE_JP_83DFF7:
  LDA.B $09,X                               ; $83DFF7 |
  CMP.W #$0010                              ; $83DFF9 |
  BCS CODE_83E031                           ; $83DFFC |
  LDA.W $1662                               ; $83DFFE |
  AND.W #$00FF                              ; $83E001 |
  BNE CODE_83E024                           ; $83E004 |
  LDA.B $0D,X                               ; $83E006 |
  BIT.W #$FF00                              ; $83E008 |
  BNE CODE_83E024                           ; $83E00B |
  CMP.W #$0010                              ; $83E00D |
  BCC CODE_83E024                           ; $83E010 |
  CMP.W #$00B0                              ; $83E012 |
  BCS CODE_83E024                           ; $83E015 |
  LDA.W #$0002                              ; $83E017 |
  JSL.L CODE_FL_848028                      ; $83E01A |
  BCC CODE_83E024                           ; $83E01E |
  JSL.L CODE_FL_848000                      ; $83E020 |

CODE_83E024:
  LDA.W #$0010                              ; $83E024 |
  STA.B $09,X                               ; $83E027 |
  LDA.W #$FFFE                              ; $83E029 |
  STA.B $3C,X                               ; $83E02C |
  JMP.W CODE_JP_83E066                      ; $83E02E |

CODE_83E031:
  CMP.W #$00F0                              ; $83E031 |
  BCC CODE_JP_83E066                        ; $83E034 |
  LDA.W $1662                               ; $83E036 |
  AND.W #$00FF                              ; $83E039 |
  BNE CODE_83E05C                           ; $83E03C |
  LDA.B $0D,X                               ; $83E03E |
  BIT.W #$FF00                              ; $83E040 |
  BNE CODE_83E05C                           ; $83E043 |
  CMP.W #$0010                              ; $83E045 |
  BCC CODE_83E05C                           ; $83E048 |
  CMP.W #$00B0                              ; $83E04A |
  BCS CODE_83E05C                           ; $83E04D |
  LDA.W #$0001                              ; $83E04F |
  JSL.L CODE_FL_848028                      ; $83E052 |
  BCC CODE_83E05C                           ; $83E056 |
  JSL.L CODE_FL_848000                      ; $83E058 |

CODE_83E05C:
  LDA.W #$00F0                              ; $83E05C |
  STA.B $09,X                               ; $83E05F |
  LDA.W #$0002                              ; $83E061 |
  STA.B $3C,X                               ; $83E064 |

CODE_JP_83E066:
  RTS                                       ; $83E066 |

CODE_FN_83E067:
  STZ.B $3E,X                               ; $83E067 |
  LDA.B $0D,X                               ; $83E069 |
  STA.B $7E,X                               ; $83E06B |
  STZ.B $78,X                               ; $83E06D |
  LDA.B $28,X                               ; $83E06F |
  STA.B $1C                                 ; $83E071 |
  CLC                                       ; $83E073 |
  ADC.B $7A,X                               ; $83E074 |
  STA.B $0E                                 ; $83E076 |
  BNE CODE_83E07D                           ; $83E078 |
  JMP.W CODE_JP_83E135                      ; $83E07A |

CODE_83E07D:
  CLC                                       ; $83E07D |
  BMI CODE_83E08A                           ; $83E07E |
  ADC.B $0C,X                               ; $83E080 |
  STA.B $0C,X                               ; $83E082 |
  BCC CODE_83E092                           ; $83E084 |
  INC.B $0E,X                               ; $83E086 |
  BRA CODE_83E092                           ; $83E088 |

CODE_83E08A:
  ADC.B $0C,X                               ; $83E08A |
  STA.B $0C,X                               ; $83E08C |
  BCS CODE_83E092                           ; $83E08E |
  DEC.B $0E,X                               ; $83E090 |

CODE_83E092:
  LDA.B $3A,X                               ; $83E092 |
  BIT.W #$0004                              ; $83E094 |
  BNE CODE_83E09C                           ; $83E097 |
  JMP.W CODE_JP_83E135                      ; $83E099 |

CODE_83E09C:
  LDA.B $B6                                 ; $83E09C |
  LDY.B $0E                                 ; $83E09E |
  BPL CODE_83E0A6                           ; $83E0A0 |
  EOR.W #$FFFF                              ; $83E0A2 |
  INC A                                     ; $83E0A5 |

CODE_83E0A6:
  CLC                                       ; $83E0A6 |
  ADC.B $0D,X                               ; $83E0A7 |
  STA.B $0A                                 ; $83E0A9 |
  LDA.B $09,X                               ; $83E0AB |
  SEC                                       ; $83E0AD |
  SBC.B $B4                                 ; $83E0AE |
  STA.B $08                                 ; $83E0B0 |
  JSL.L CODE_FL_80CC03                      ; $83E0B2 |
  AND.W #$003F                              ; $83E0B6 |
  JSR.W CODE_FN_83E1B6                      ; $83E0B9 |
  LDA.B $18                                 ; $83E0BC |
  STA.B $20                                 ; $83E0BE |
  LDA.B $1A                                 ; $83E0C0 |
  STA.B $22                                 ; $83E0C2 |
  LDA.B $1C                                 ; $83E0C4 |
  STA.B $24                                 ; $83E0C6 |
  LDA.B $08                                 ; $83E0C8 |
  STA.B $26                                 ; $83E0CA |
  LDA.B $B6                                 ; $83E0CC |
  LDY.B $0E                                 ; $83E0CE |
  BPL CODE_83E0D6                           ; $83E0D0 |
  EOR.W #$FFFF                              ; $83E0D2 |
  INC A                                     ; $83E0D5 |

CODE_83E0D6:
  CLC                                       ; $83E0D6 |
  ADC.B $0D,X                               ; $83E0D7 |
  STA.B $0A                                 ; $83E0D9 |
  LDA.B $09,X                               ; $83E0DB |
  CLC                                       ; $83E0DD |
  ADC.B $B4                                 ; $83E0DE |
  STA.B $08                                 ; $83E0E0 |
  JSL.L CODE_FL_80CC03                      ; $83E0E2 |
  AND.W #$003F                              ; $83E0E6 |
  JSR.W CODE_FN_83E1B6                      ; $83E0E9 |
  LDA.B $18                                 ; $83E0EC |
  CMP.B $20                                 ; $83E0EE |
  BCC CODE_83E110                           ; $83E0F0 |
  LDA.B $18                                 ; $83E0F2 |
  BEQ CODE_83E12D                           ; $83E0F4 |
  LDA.B $20                                 ; $83E0F6 |
  BNE CODE_83E102                           ; $83E0F8 |
  LDA.B $26,X                               ; $83E0FA |
  SEC                                       ; $83E0FC |
  SBC.W #$0100                              ; $83E0FD |
  STA.B $26,X                               ; $83E100 |

CODE_83E102:
  LDA.B $18                                 ; $83E102 |
  STA.B $20                                 ; $83E104 |
  LDA.B $1A                                 ; $83E106 |
  STA.B $22                                 ; $83E108 |
  LDA.B $1C                                 ; $83E10A |
  STA.B $24                                 ; $83E10C |
  BRA CODE_83E124                           ; $83E10E |

CODE_83E110:
  LDA.B $20                                 ; $83E110 |
  BEQ CODE_83E12D                           ; $83E112 |
  LDA.B $18                                 ; $83E114 |
  BNE CODE_83E120                           ; $83E116 |
  LDA.B $26,X                               ; $83E118 |
  CLC                                       ; $83E11A |
  ADC.W #$0100                              ; $83E11B |
  STA.B $26,X                               ; $83E11E |

CODE_83E120:
  LDA.B $26                                 ; $83E120 |
  STA.B $08                                 ; $83E122 |

CODE_83E124:
  LDA.B $22                                 ; $83E124 |
  BEQ CODE_83E12D                           ; $83E126 |
  JSR.W CODE_FN_83E4B7                      ; $83E128 |
  BRA CODE_JP_83E135                        ; $83E12B |

CODE_83E12D:
  SEP #$20                                  ; $83E12D |
  STZ.B $BF,X                               ; $83E12F |
  STZ.B $BD,X                               ; $83E131 |
  REP #$20                                  ; $83E133 |

CODE_JP_83E135:
  LDA.B $0D,X                               ; $83E135 |
  CMP.W #$0020                              ; $83E137 |
  BCS CODE_83E15E                           ; $83E13A |
  LDA.W $1672                               ; $83E13C |
  AND.W #$00FF                              ; $83E13F |
  BNE CODE_83E151                           ; $83E142 |
  LDA.W #$0008                              ; $83E144 |
  JSL.L CODE_FL_848028                      ; $83E147 |
  BCC CODE_83E151                           ; $83E14B |
  JSL.L CODE_FL_848000                      ; $83E14D |

CODE_83E151:
  LDA.W #$0020                              ; $83E151 |
  STA.B $0D,X                               ; $83E154 |
  LDA.W #$FFFE                              ; $83E156 |
  STA.B $3E,X                               ; $83E159 |
  JMP.W CODE_JP_83E182                      ; $83E15B |

CODE_83E15E:
  CMP.W #$00C0                              ; $83E15E |
  BCC CODE_JP_83E182                        ; $83E161 |
  LDA.W $1672                               ; $83E163 |
  AND.W #$00FF                              ; $83E166 |
  BNE CODE_83E178                           ; $83E169 |
  LDA.W #$0004                              ; $83E16B |
  JSL.L CODE_FL_848028                      ; $83E16E |
  BCC CODE_83E178                           ; $83E172 |
  JSL.L CODE_FL_848000                      ; $83E174 |

CODE_83E178:
  LDA.W #$00C0                              ; $83E178 |
  STA.B $0D,X                               ; $83E17B |
  LDA.W #$0002                              ; $83E17D |
  STA.B $3E,X                               ; $83E180 |

CODE_JP_83E182:
  RTS                                       ; $83E182 |

CODE_FN_83E183:
  LDA.B $09,X                               ; $83E183 |
  STA.B $08                                 ; $83E185 |
  LDA.B $0D,X                               ; $83E187 |
  STA.B $0A                                 ; $83E189 |
  JSL.L CODE_FL_80CC03                      ; $83E18B |
  STA.B $00                                 ; $83E18F |
  BIT.W #$0040                              ; $83E191 |
  BEQ CODE_83E1A1                           ; $83E194 |
  LDA.B $04,X                               ; $83E196 |
  AND.W #$6767                              ; $83E198 |
  ORA.W #$1090                              ; $83E19B |
  STA.B $04,X                               ; $83E19E |
  RTS                                       ; $83E1A0 |

CODE_83E1A1:
  LDA.B $04,X                               ; $83E1A1 |
  ORA.W #$1898                              ; $83E1A3 |
  STA.B $04,X                               ; $83E1A6 |
  RTS                                       ; $83E1A8 |

CODE_FN_83E1A9:
  STA.B $1A                                 ; $83E1A9 |
  ASL A                                     ; $83E1AB |
  TAY                                       ; $83E1AC |
  STZ.B $18                                 ; $83E1AD |
  STZ.B $1C                                 ; $83E1AF |
  LDA.W LOOSE_OP_00EFAB,Y                   ; $83E1B1 |
  PHA                                       ; $83E1B4 |
  RTS                                       ; $83E1B5 |

CODE_FN_83E1B6:
  STA.B $1A                                 ; $83E1B6 |
  ASL A                                     ; $83E1B8 |
  TAY                                       ; $83E1B9 |
  STZ.B $18                                 ; $83E1BA |
  STZ.B $1C                                 ; $83E1BC |
  LDA.W CODE_00F00B,Y                       ; $83E1BE |
  PHA                                       ; $83E1C1 |
  RTS                                       ; $83E1C2 |

CODE_JP_83E1C3:
  STA.B $1C                                 ; $83E1C3 |
  LDY.B $1A                                 ; $83E1C5 |
  LDA.W LOOSE_OP_00F139,Y                   ; $83E1C7 |
  AND.W #$00FF                              ; $83E1CA |
  STA.B $18                                 ; $83E1CD |
  RTS                                       ; $83E1CF |

  RTS                                       ; $83E1D0 |

  LDA.B $92,X                               ; $83E1D1 |
  BIT.W #$00A0                              ; $83E1D3 |
  BNE CODE_JP_83E1D9                        ; $83E1D6 |
  RTS                                       ; $83E1D8 |

CODE_JP_83E1D9:
  SEP #$20                                  ; $83E1D9 |
  JSR.W CODE_FN_83E34F                      ; $83E1DB |
  REP #$20                                  ; $83E1DE |
  AND.W #$00FF                              ; $83E1E0 |
  LDY.B $0C                                 ; $83E1E3 |
  BMI CODE_83E1ED                           ; $83E1E5 |
  EOR.W #$FFFF                              ; $83E1E7 |
  JMP.W CODE_JP_83E1C3                      ; $83E1EA |

CODE_83E1ED:
  EOR.W #$000F                              ; $83E1ED |
  INC A                                     ; $83E1F0 |
  JMP.W CODE_JP_83E1C3                      ; $83E1F1 |

  SEP #$20                                  ; $83E1F4 |
  JSR.W CODE_FN_83E34F                      ; $83E1F6 |
  REP #$20                                  ; $83E1F9 |

CODE_JP_83E1FB:
  AND.W #$00FF                              ; $83E1FB |
  LDY.B $0C                                 ; $83E1FE |
  BMI CODE_83E21C                           ; $83E200 |
  EOR.W #$FFFF                              ; $83E202 |
  JMP.W CODE_JP_83E1C3                      ; $83E205 |

  LDA.B $1C                                 ; $83E208 |
  CLC                                       ; $83E20A |
  ADC.B $08                                 ; $83E20B |
  STA.B $08                                 ; $83E20D |
  JSL.L CODE_FL_80CC03                      ; $83E20F |
  AND.W #$003F                              ; $83E213 |
  BEQ CODE_83E21B                           ; $83E216 |
  JMP.W CODE_FN_83E1A9                      ; $83E218 |

CODE_83E21B:
  RTS                                       ; $83E21B |

CODE_83E21C:
  EOR.W #$000F                              ; $83E21C |
  INC A                                     ; $83E21F |
  JMP.W CODE_JP_83E1C3                      ; $83E220 |

CODE_83E223:
  AND.W #$0007                              ; $83E223 |
  LDY.B $0C                                 ; $83E226 |
  BMI CODE_83E230                           ; $83E228 |
  EOR.W #$FFFF                              ; $83E22A |
  JMP.W CODE_JP_83E1C3                      ; $83E22D |

CODE_83E230:
  EOR.W #$0007                              ; $83E230 |
  INC A                                     ; $83E233 |
  JMP.W CODE_JP_83E1C3                      ; $83E234 |

  SEP #$20                                  ; $83E237 |
  LDA.W $1672                               ; $83E239 |
  CLC                                       ; $83E23C |
  ADC.B $0A                                 ; $83E23D |
  AND.B #$0F                                ; $83E23F |
  CMP.B #$08                                ; $83E241 |
  REP #$20                                  ; $83E243 |
  BCC CODE_83E26D                           ; $83E245 |
  JMP.W CODE_JP_83E1D9                      ; $83E247 |

  SEP #$20                                  ; $83E24A |
  LDA.W $1672                               ; $83E24C |
  CLC                                       ; $83E24F |
  ADC.B $0A                                 ; $83E250 |
  AND.B #$0F                                ; $83E252 |
  CMP.B #$08                                ; $83E254 |
  REP #$20                                  ; $83E256 |
  BCS CODE_83E26D                           ; $83E258 |
  JMP.W CODE_JP_83E1D9                      ; $83E25A |

  SEP #$20                                  ; $83E25D |
  LDA.W $1662                               ; $83E25F |
  CLC                                       ; $83E262 |
  ADC.B $08                                 ; $83E263 |
  AND.B #$0F                                ; $83E265 |
  CMP.B #$08                                ; $83E267 |
  REP #$20                                  ; $83E269 |
  BCC CODE_83E223                           ; $83E26B |

CODE_83E26D:
  RTS                                       ; $83E26D |

  SEP #$20                                  ; $83E26E |
  LDA.W $1662                               ; $83E270 |
  CLC                                       ; $83E273 |
  ADC.B $08                                 ; $83E274 |
  AND.B #$0F                                ; $83E276 |
  CMP.B #$08                                ; $83E278 |
  REP #$20                                  ; $83E27A |
  BCS CODE_83E223                           ; $83E27C |
  RTS                                       ; $83E27E |

  SEP #$20                                  ; $83E27F |
  JSR.W CODE_FN_83E34F                      ; $83E281 |
  STA.B $00                                 ; $83E284 |
  JSR.W CODE_FN_83E358                      ; $83E286 |
  EOR.B #$0F                                ; $83E289 |
  SEC                                       ; $83E28B |
  SBC.B $00                                 ; $83E28C |
  REP #$20                                  ; $83E28E |
  BEQ CODE_83E299                           ; $83E290 |
  BCS CODE_83E295                           ; $83E292 |
  RTS                                       ; $83E294 |

CODE_83E295:
  LDY.B $0C                                 ; $83E295 |
  BPL CODE_83E2BF                           ; $83E297 |

CODE_83E299:
  AND.W #$000F                              ; $83E299 |
  JMP.W CODE_JP_83E1C3                      ; $83E29C |

  SEP #$20                                  ; $83E29F |
  JSR.W CODE_FN_83E34F                      ; $83E2A1 |
  STA.B $00                                 ; $83E2A4 |
  JSR.W CODE_FN_83E358                      ; $83E2A6 |
  EOR.B #$0F                                ; $83E2A9 |
  SEC                                       ; $83E2AB |
  SBC.B $00                                 ; $83E2AC |
  REP #$20                                  ; $83E2AE |
  BEQ CODE_83E2E1                           ; $83E2B0 |
  BCC CODE_83E2B5                           ; $83E2B2 |

CODE_83E2B4:
  RTS                                       ; $83E2B4 |

CODE_83E2B5:
  LDY.B $0C                                 ; $83E2B5 |
  BMI CODE_83E2BF                           ; $83E2B7 |
  ORA.W #$FFF0                              ; $83E2B9 |
  JMP.W CODE_JP_83E1C3                      ; $83E2BC |

CODE_83E2BF:
  LDA.B $00                                 ; $83E2BF |
  JMP.W CODE_JP_83E1FB                      ; $83E2C1 |

  SEP #$20                                  ; $83E2C4 |
  JSR.W CODE_FN_83E34F                      ; $83E2C6 |
  STA.B $00                                 ; $83E2C9 |
  JSR.W CODE_FN_83E358                      ; $83E2CB |
  SEC                                       ; $83E2CE |
  SBC.B $00                                 ; $83E2CF |
  REP #$20                                  ; $83E2D1 |
  BEQ CODE_83E2E1                           ; $83E2D3 |
  BCS CODE_83E2B4                           ; $83E2D5 |
  LDY.B $0C                                 ; $83E2D7 |
  BMI CODE_83E2BF                           ; $83E2D9 |
  ORA.W #$FFF0                              ; $83E2DB |
  JMP.W CODE_JP_83E1C3                      ; $83E2DE |

CODE_83E2E1:
  LDA.W #$0000                              ; $83E2E1 |
  JMP.W CODE_JP_83E1C3                      ; $83E2E4 |

  SEP #$20                                  ; $83E2E7 |
  JSR.W CODE_FN_83E34F                      ; $83E2E9 |
  STA.B $00                                 ; $83E2EC |
  JSR.W CODE_FN_83E358                      ; $83E2EE |
  SEC                                       ; $83E2F1 |
  SBC.B $00                                 ; $83E2F2 |
  REP #$20                                  ; $83E2F4 |
  BEQ CODE_83E2FF                           ; $83E2F6 |
  BCS CODE_83E2FB                           ; $83E2F8 |
  RTS                                       ; $83E2FA |

CODE_83E2FB:
  LDY.B $0C                                 ; $83E2FB |
  BPL CODE_83E2BF                           ; $83E2FD |

CODE_83E2FF:
  AND.W #$000F                              ; $83E2FF |
  JMP.W CODE_JP_83E1C3                      ; $83E302 |

  LDA.B $04,X                               ; $83E305 |
  AND.W #$1898                              ; $83E307 |
  CMP.W #$1898                              ; $83E30A |
  BEQ CODE_83E326                           ; $83E30D |
  JMP.W CODE_JP_83E1D9                      ; $83E30F |

  LDA.B $92,X                               ; $83E312 |
  BIT.W #$0008                              ; $83E314 |
  BNE CODE_83E323                           ; $83E317 |
  LDA.B $04,X                               ; $83E319 |
  AND.W #$1898                              ; $83E31B |
  CMP.W #$1898                              ; $83E31E |
  BNE CODE_83E326                           ; $83E321 |

CODE_83E323:
  JMP.W CODE_JP_83E1D9                      ; $83E323 |

CODE_83E326:
  RTS                                       ; $83E326 |

  LDA.B $92,X                               ; $83E327 |
  BIT.W #$0040                              ; $83E329 |
  BEQ CODE_83E326                           ; $83E32C |
  JMP.W CODE_JP_83E1D9                      ; $83E32E |

  LDA.B $92,X                               ; $83E331 |
  BIT.W #$0040                              ; $83E333 |
  BEQ CODE_83E326                           ; $83E336 |
  JMP.W CODE_JP_83E36A                      ; $83E338 |

  LDA.B $92,X                               ; $83E33B |
  BIT.W #$0020                              ; $83E33D |
  BEQ CODE_83E326                           ; $83E340 |
  JMP.W CODE_JP_83E1D9                      ; $83E342 |

  LDA.B $92,X                               ; $83E345 |
  BIT.W #$0020                              ; $83E347 |
  BEQ CODE_83E326                           ; $83E34A |
  JMP.W CODE_JP_83E36A                      ; $83E34C |

CODE_FN_83E34F:
  LDA.W $1662                               ; $83E34F |
  CLC                                       ; $83E352 |
  ADC.B $08                                 ; $83E353 |
  AND.B #$0F                                ; $83E355 |
  RTS                                       ; $83E357 |

CODE_FN_83E358:
  LDA.W $1672                               ; $83E358 |
  CLC                                       ; $83E35B |
  ADC.B $0A                                 ; $83E35C |
  AND.B #$0F                                ; $83E35E |
  RTS                                       ; $83E360 |

  LDA.B $92,X                               ; $83E361 |
  BIT.W #$00A0                              ; $83E363 |
  BNE CODE_JP_83E36A                        ; $83E366 |
  RTS                                       ; $83E368 |

  RTS                                       ; $83E369 |

CODE_JP_83E36A:
  SEP #$20                                  ; $83E36A |
  JSR.W CODE_FN_83E358                      ; $83E36C |
  REP #$20                                  ; $83E36F |
  AND.W #$00FF                              ; $83E371 |
  LDY.B $0E                                 ; $83E374 |
  BMI CODE_83E37E                           ; $83E376 |
  EOR.W #$FFFF                              ; $83E378 |
  JMP.W CODE_JP_83E1C3                      ; $83E37B |

CODE_83E37E:
  EOR.W #$000F                              ; $83E37E |
  INC A                                     ; $83E381 |
  JMP.W CODE_JP_83E1C3                      ; $83E382 |

CODE_JP_83E385:
  SEP #$20                                  ; $83E385 |
  JSR.W CODE_FN_83E358                      ; $83E387 |
  REP #$20                                  ; $83E38A |
  AND.W #$00FF                              ; $83E38C |
  LDY.B $0E                                 ; $83E38F |
  BMI CODE_83E3AD                           ; $83E391 |
  EOR.W #$FFFF                              ; $83E393 |
  JMP.W CODE_JP_83E1C3                      ; $83E396 |

  LDA.B $1C                                 ; $83E399 |
  CLC                                       ; $83E39B |
  ADC.B $0A                                 ; $83E39C |
  STA.B $0A                                 ; $83E39E |
  JSL.L CODE_FL_80CC03                      ; $83E3A0 |
  AND.W #$003F                              ; $83E3A4 |
  BEQ CODE_83E3AC                           ; $83E3A7 |
  JMP.W CODE_FN_83E1B6                      ; $83E3A9 |

CODE_83E3AC:
  RTS                                       ; $83E3AC |

CODE_83E3AD:
  EOR.W #$000F                              ; $83E3AD |
  INC A                                     ; $83E3B0 |
  JMP.W CODE_JP_83E1C3                      ; $83E3B1 |

CODE_83E3B4:
  AND.W #$0007                              ; $83E3B4 |
  LDY.B $0E                                 ; $83E3B7 |
  BMI CODE_83E3C1                           ; $83E3B9 |
  EOR.W #$FFFF                              ; $83E3BB |
  JMP.W CODE_JP_83E1C3                      ; $83E3BE |

CODE_83E3C1:
  EOR.W #$0007                              ; $83E3C1 |
  INC A                                     ; $83E3C4 |
  JMP.W CODE_JP_83E1C3                      ; $83E3C5 |

  SEP #$20                                  ; $83E3C8 |
  LDA.W $1672                               ; $83E3CA |
  CLC                                       ; $83E3CD |
  ADC.B $0A                                 ; $83E3CE |
  AND.B #$0F                                ; $83E3D0 |
  CMP.B #$08                                ; $83E3D2 |
  REP #$20                                  ; $83E3D4 |
  BCS CODE_83E3B4                           ; $83E3D6 |
  RTS                                       ; $83E3D8 |

  SEP #$20                                  ; $83E3D9 |
  LDA.W $1672                               ; $83E3DB |
  CLC                                       ; $83E3DE |
  ADC.B $0A                                 ; $83E3DF |
  AND.B #$0F                                ; $83E3E1 |
  CMP.B #$08                                ; $83E3E3 |
  REP #$20                                  ; $83E3E5 |
  BCC CODE_83E3B4                           ; $83E3E7 |
  RTS                                       ; $83E3E9 |

  SEP #$20                                  ; $83E3EA |
  LDA.W $1662                               ; $83E3EC |
  CLC                                       ; $83E3EF |
  ADC.B $08                                 ; $83E3F0 |
  AND.B #$0F                                ; $83E3F2 |
  CMP.B #$08                                ; $83E3F4 |
  REP #$20                                  ; $83E3F6 |
  BCC CODE_83E3FB                           ; $83E3F8 |
  RTS                                       ; $83E3FA |

CODE_83E3FB:
  JMP.W CODE_JP_83E36A                      ; $83E3FB |

  SEP #$20                                  ; $83E3FE |
  LDA.W $1662                               ; $83E400 |
  CLC                                       ; $83E403 |
  ADC.B $08                                 ; $83E404 |
  AND.B #$0F                                ; $83E406 |
  CMP.B #$08                                ; $83E408 |
  REP #$20                                  ; $83E40A |
  BCS CODE_83E3FB                           ; $83E40C |
  RTS                                       ; $83E40E |

  SEP #$20                                  ; $83E40F |
  JSR.W CODE_FN_83E358                      ; $83E411 |
  STA.B $00                                 ; $83E414 |
  JSR.W CODE_FN_83E34F                      ; $83E416 |
  EOR.B #$0F                                ; $83E419 |
  SEC                                       ; $83E41B |
  SBC.B $00                                 ; $83E41C |
  REP #$20                                  ; $83E41E |
  BEQ CODE_83E429                           ; $83E420 |
  BCS CODE_83E425                           ; $83E422 |
  RTS                                       ; $83E424 |

CODE_83E425:
  LDY.B $0E                                 ; $83E425 |
  BPL CODE_83E455                           ; $83E427 |

CODE_83E429:
  AND.W #$000F                              ; $83E429 |
  JMP.W CODE_JP_83E1C3                      ; $83E42C |

  SEP #$20                                  ; $83E42F |
  JSR.W CODE_FN_83E358                      ; $83E431 |
  STA.B $00                                 ; $83E434 |
  JSR.W CODE_FN_83E34F                      ; $83E436 |
  EOR.B #$0F                                ; $83E439 |
  SEC                                       ; $83E43B |
  SBC.B $00                                 ; $83E43C |
  REP #$20                                  ; $83E43E |
  BEQ CODE_83E44F                           ; $83E440 |
  BCC CODE_83E445                           ; $83E442 |
  RTS                                       ; $83E444 |

CODE_83E445:
  LDY.B $0E                                 ; $83E445 |
  BMI CODE_83E455                           ; $83E447 |
  ORA.W #$FFF0                              ; $83E449 |
  JMP.W CODE_JP_83E1C3                      ; $83E44C |

CODE_83E44F:
  LDA.W #$0000                              ; $83E44F |
  JMP.W CODE_JP_83E1C3                      ; $83E452 |

CODE_83E455:
  LDA.B $00                                 ; $83E455 |
  JMP.W CODE_JP_83E385                      ; $83E457 |

  SEP #$20                                  ; $83E45A |
  JSR.W CODE_FN_83E358                      ; $83E45C |
  STA.B $00                                 ; $83E45F |
  JSR.W CODE_FN_83E34F                      ; $83E461 |
  SEC                                       ; $83E464 |
  SBC.B $00                                 ; $83E465 |
  REP #$20                                  ; $83E467 |
  BEQ CODE_83E471                           ; $83E469 |
  BCC CODE_83E48A                           ; $83E46B |
  LDY.B $0E                                 ; $83E46D |
  BPL CODE_83E455                           ; $83E46F |

CODE_83E471:
  AND.W #$000F                              ; $83E471 |
  JMP.W CODE_JP_83E1C3                      ; $83E474 |

  SEP #$20                                  ; $83E477 |
  JSR.W CODE_FN_83E358                      ; $83E479 |
  STA.B $00                                 ; $83E47C |
  JSR.W CODE_FN_83E34F                      ; $83E47E |
  SEC                                       ; $83E481 |
  SBC.B $00                                 ; $83E482 |
  REP #$20                                  ; $83E484 |
  BEQ CODE_83E44F                           ; $83E486 |
  BCC CODE_83E48B                           ; $83E488 |

CODE_83E48A:
  RTS                                       ; $83E48A |

CODE_83E48B:
  LDY.B $0E                                 ; $83E48B |
  BMI CODE_83E455                           ; $83E48D |
  ORA.W #$FFF0                              ; $83E48F |
  JMP.W CODE_JP_83E1C3                      ; $83E492 |

  LDA.B $04,X                               ; $83E495 |
  AND.W #$1898                              ; $83E497 |
  CMP.W #$1898                              ; $83E49A |
  BEQ CODE_83E4B6                           ; $83E49D |
  JMP.W CODE_JP_83E36A                      ; $83E49F |

  LDA.B $92,X                               ; $83E4A2 |
  BIT.W #$0008                              ; $83E4A4 |
  BNE CODE_83E4B3                           ; $83E4A7 |
  LDA.B $04,X                               ; $83E4A9 |
  AND.W #$1898                              ; $83E4AB |
  CMP.W #$1898                              ; $83E4AE |
  BNE CODE_83E4B6                           ; $83E4B1 |

CODE_83E4B3:
  JMP.W CODE_JP_83E36A                      ; $83E4B3 |

CODE_83E4B6:
  RTS                                       ; $83E4B6 |

CODE_FN_83E4B7:
  LDA.B $22                                 ; $83E4B7 |
  ASL A                                     ; $83E4B9 |
  TAY                                       ; $83E4BA |
  SEP #$20                                  ; $83E4BB |
  CMP.B $BF,X                               ; $83E4BD |
  BEQ CODE_83E4C5                           ; $83E4BF |
  STA.B $BF,X                               ; $83E4C1 |
  STZ.B $BD,X                               ; $83E4C3 |

CODE_83E4C5:
  INC.B $BD,X                               ; $83E4C5 |
  REP #$20                                  ; $83E4C7 |
  LDA.B $11,X                               ; $83E4C9 |
  BEQ CODE_83E4D0                           ; $83E4CB |
  JMP.W CODE_JP_83E9F1                      ; $83E4CD |

CODE_83E4D0:
  LDA.W CODE_00F0C7,Y                       ; $83E4D0 |
  PHA                                       ; $83E4D3 |
  RTS                                       ; $83E4D4 |

CODE_FN_83E4D5:
  LDA.B $22                                 ; $83E4D5 |
  ASL A                                     ; $83E4D7 |
  TAY                                       ; $83E4D8 |
  SEP #$20                                  ; $83E4D9 |
  CMP.B $BE,X                               ; $83E4DB |
  BEQ CODE_83E4E3                           ; $83E4DD |
  STA.B $BE,X                               ; $83E4DF |
  STZ.B $BC,X                               ; $83E4E1 |

CODE_83E4E3:
  INC.B $BC,X                               ; $83E4E3 |
  REP #$20                                  ; $83E4E5 |
  LDA.B $11,X                               ; $83E4E7 |
  BNE CODE_JP_83E4F1                        ; $83E4E9 |
  LDA.W PTR16_00F069,Y                      ; $83E4EB |
  PHA                                       ; $83E4EE |
  RTS                                       ; $83E4EF |

  RTS                                       ; $83E4F0 |

CODE_JP_83E4F1:
  LDA.B $24                                 ; $83E4F1 |
  CLC                                       ; $83E4F3 |
  ADC.B $09,X                               ; $83E4F4 |
  STA.B $09,X                               ; $83E4F6 |
  LDY.B $0C                                 ; $83E4F8 |
  BMI CODE_83E506                           ; $83E4FA |
  LDA.W $1C12                               ; $83E4FC |
  ORA.W #$0001                              ; $83E4FF |
  STA.W $1C12                               ; $83E502 |
  RTS                                       ; $83E505 |

CODE_83E506:
  LDA.W $1C12                               ; $83E506 |
  ORA.W #$0002                              ; $83E509 |
  STA.W $1C12                               ; $83E50C |
  RTS                                       ; $83E50F |

  LDA.B $92,X                               ; $83E510 |
  BIT.W #$0080                              ; $83E512 |
  BNE CODE_JP_83E4F1                        ; $83E515 |
  LDA.B $BC,X                               ; $83E517 |
  AND.W #$00FF                              ; $83E519 |
  CMP.W #$0020                              ; $83E51C |
  BCC CODE_JP_83E4F1                        ; $83E51F |
  LDA.B $0C                                 ; $83E521 |
  BMI CODE_83E59E                           ; $83E523 |
  LDA.W $1C12                               ; $83E525 |
  BNE CODE_83E594                           ; $83E528 |
  LDA.W $1C16                               ; $83E52A |
  BEQ CODE_83E594                           ; $83E52D |
  LDA.B $0A                                 ; $83E52F |
  CMP.W #$0010                              ; $83E531 |
  BCC CODE_83E59E                           ; $83E534 |
  CMP.W #$00B0                              ; $83E536 |
  BCS CODE_83E59E                           ; $83E539 |
  STZ.B $16                                 ; $83E53B |

CODE_83E53D:
  INC.B $16                                 ; $83E53D |
  INC.B $16                                 ; $83E53F |
  LDA.B $16                                 ; $83E541 |
  CMP.W #$000C                              ; $83E543 |
  BCS CODE_83E59E                           ; $83E546 |
  LDA.B $08                                 ; $83E548 |
  CLC                                       ; $83E54A |
  ADC.W #$0010                              ; $83E54B |
  STA.B $08                                 ; $83E54E |
  CMP.W #$00E8                              ; $83E550 |
  BCS CODE_83E59E                           ; $83E553 |
  JSL.L CODE_FL_80CC03                      ; $83E555 |
  AND.W #$003F                              ; $83E559 |
  BEQ CODE_83E563                           ; $83E55C |
  CMP.W #$0018                              ; $83E55E |
  BNE CODE_83E53D                           ; $83E561 |

CODE_83E563:
  CMP.W #$0018                              ; $83E563 |
  BNE CODE_83E56F                           ; $83E566 |
  LDA.B $92,X                               ; $83E568 |
  BIT.W #$0020                              ; $83E56A |
  BNE CODE_83E59E                           ; $83E56D |

CODE_83E56F:
  LDA.W $1662                               ; $83E56F |
  CLC                                       ; $83E572 |
  ADC.B $08                                 ; $83E573 |
  AND.W #$000F                              ; $83E575 |
  STA.B $00                                 ; $83E578 |
  LDA.W #$0008                              ; $83E57A |
  SEC                                       ; $83E57D |
  SBC.B $00                                 ; $83E57E |
  CLC                                       ; $83E580 |
  ADC.B $08                                 ; $83E581 |
  STA.B $00                                 ; $83E583 |
  LDA.W #$0180                              ; $83E585 |
  STA.B $54,X                               ; $83E588 |
  STZ.B $56,X                               ; $83E58A |
  LDY.B $16                                 ; $83E58C |
  LDA.W LOOSE_OP_00F125,Y                   ; $83E58E |
  JSR.W CODE_FN_83BF73                      ; $83E591 |

CODE_83E594:
  LDA.W $1C12                               ; $83E594 |
  ORA.W #$0001                              ; $83E597 |
  STA.W $1C12                               ; $83E59A |
  RTS                                       ; $83E59D |

CODE_83E59E:
  JMP.W CODE_JP_83E4F1                      ; $83E59E |

  LDA.B $92,X                               ; $83E5A1 |
  BIT.W #$0080                              ; $83E5A3 |
  BNE CODE_83E59E                           ; $83E5A6 |
  LDA.B $BC,X                               ; $83E5A8 |
  AND.W #$00FF                              ; $83E5AA |
  CMP.W #$0020                              ; $83E5AD |
  BCC CODE_83E59E                           ; $83E5B0 |
  LDA.B $0C                                 ; $83E5B2 |
  BPL CODE_83E59E                           ; $83E5B4 |
  LDA.W $1C12                               ; $83E5B6 |
  BNE CODE_83E625                           ; $83E5B9 |
  LDA.W $1C16                               ; $83E5BB |
  BEQ CODE_83E625                           ; $83E5BE |
  LDA.B $0A                                 ; $83E5C0 |
  CMP.W #$0010                              ; $83E5C2 |
  BCC CODE_83E59E                           ; $83E5C5 |
  CMP.W #$00B0                              ; $83E5C7 |
  BCS CODE_83E59E                           ; $83E5CA |
  STZ.B $16                                 ; $83E5CC |

CODE_83E5CE:
  INC.B $16                                 ; $83E5CE |
  INC.B $16                                 ; $83E5D0 |
  LDA.B $16                                 ; $83E5D2 |
  CMP.W #$000C                              ; $83E5D4 |
  BCS CODE_83E59E                           ; $83E5D7 |
  LDA.B $08                                 ; $83E5D9 |
  SEC                                       ; $83E5DB |
  SBC.W #$0010                              ; $83E5DC |
  STA.B $08                                 ; $83E5DF |
  CMP.W #$0018                              ; $83E5E1 |
  BCC CODE_83E59E                           ; $83E5E4 |
  JSL.L CODE_FL_80CC03                      ; $83E5E6 |
  AND.W #$003F                              ; $83E5EA |
  BEQ CODE_83E5F4                           ; $83E5ED |
  CMP.W #$0018                              ; $83E5EF |
  BNE CODE_83E5CE                           ; $83E5F2 |

CODE_83E5F4:
  CMP.W #$0018                              ; $83E5F4 |
  BNE CODE_83E600                           ; $83E5F7 |
  LDA.B $92,X                               ; $83E5F9 |
  BIT.W #$0020                              ; $83E5FB |
  BNE CODE_83E59E                           ; $83E5FE |

CODE_83E600:
  LDA.W $1662                               ; $83E600 |
  CLC                                       ; $83E603 |
  ADC.B $08                                 ; $83E604 |
  AND.W #$000F                              ; $83E606 |
  STA.B $00                                 ; $83E609 |
  LDA.W #$0008                              ; $83E60B |
  SEC                                       ; $83E60E |
  SBC.B $00                                 ; $83E60F |
  CLC                                       ; $83E611 |
  ADC.B $08                                 ; $83E612 |
  STA.B $00                                 ; $83E614 |
  LDA.W #$FE80                              ; $83E616 |
  STA.B $54,X                               ; $83E619 |
  STZ.B $56,X                               ; $83E61B |
  LDY.B $16                                 ; $83E61D |
  LDA.W LOOSE_OP_00F125,Y                   ; $83E61F |
  JSR.W CODE_FN_83BF73                      ; $83E622 |

CODE_83E625:
  LDA.W $1C12                               ; $83E625 |
  ORA.W #$0002                              ; $83E628 |
  STA.W $1C12                               ; $83E62B |
  RTS                                       ; $83E62E |

  LDA.B $92,X                               ; $83E62F |
  BIT.W #$0080                              ; $83E631 |
  BNE CODE_83E6AE                           ; $83E634 |
  LDA.B $BD,X                               ; $83E636 |
  AND.W #$00FF                              ; $83E638 |
  CMP.W #$0020                              ; $83E63B |
  BCC CODE_83E6AE                           ; $83E63E |
  LDA.B $0E                                 ; $83E640 |
  BMI CODE_83E6AE                           ; $83E642 |
  LDA.W $1C12                               ; $83E644 |
  BNE CODE_83E6A4                           ; $83E647 |
  LDA.W $1C16                               ; $83E649 |
  BEQ CODE_83E6A4                           ; $83E64C |

CODE_83E64E:
  LDA.B $0A                                 ; $83E64E |
  CLC                                       ; $83E650 |
  ADC.W #$0010                              ; $83E651 |
  STA.B $0A                                 ; $83E654 |
  CMP.W #$00B0                              ; $83E656 |
  BCS CODE_83E6AE                           ; $83E659 |
  JSL.L CODE_FL_80CC03                      ; $83E65B |
  AND.W #$003F                              ; $83E65F |
  BEQ CODE_83E669                           ; $83E662 |
  CMP.W #$0018                              ; $83E664 |
  BNE CODE_83E64E                           ; $83E667 |

CODE_83E669:
  CMP.W #$0018                              ; $83E669 |
  BNE CODE_83E675                           ; $83E66C |
  LDA.B $92,X                               ; $83E66E |
  BIT.W #$0020                              ; $83E670 |
  BNE CODE_83E6AE                           ; $83E673 |

CODE_83E675:
  LDA.W $1672                               ; $83E675 |
  CLC                                       ; $83E678 |
  ADC.B $0A                                 ; $83E679 |
  AND.W #$000F                              ; $83E67B |
  STA.B $00                                 ; $83E67E |
  LDA.W #$0008                              ; $83E680 |
  SEC                                       ; $83E683 |
  SBC.B $00                                 ; $83E684 |
  CLC                                       ; $83E686 |
  ADC.B $0A                                 ; $83E687 |
  STA.B $00                                 ; $83E689 |
  SEC                                       ; $83E68B |
  SBC.B $0D,X                               ; $83E68C |
  CLC                                       ; $83E68E |
  ADC.B $11,X                               ; $83E68F |
  STA.B $11,X                               ; $83E691 |
  STZ.W $1C16                               ; $83E693 |
  LDA.B $00                                 ; $83E696 |
  STA.B $0D,X                               ; $83E698 |
  LDA.W #$0000                              ; $83E69A |
  STA.B $54,X                               ; $83E69D |
  STA.B $56,X                               ; $83E69F |
  JSR.W CODE_FN_83BF73                      ; $83E6A1 |

CODE_83E6A4:
  LDA.W $1C12                               ; $83E6A4 |
  ORA.W #$0004                              ; $83E6A7 |
  STA.W $1C12                               ; $83E6AA |
  RTS                                       ; $83E6AD |

CODE_83E6AE:
  JMP.W CODE_JP_83E9F1                      ; $83E6AE |

  LDA.B $92,X                               ; $83E6B1 |
  BIT.W #$0080                              ; $83E6B3 |
  BNE CODE_83E6AE                           ; $83E6B6 |
  LDA.B $BD,X                               ; $83E6B8 |
  AND.W #$00FF                              ; $83E6BA |
  CMP.W #$0020                              ; $83E6BD |
  BCC CODE_83E6AE                           ; $83E6C0 |
  LDA.B $0E                                 ; $83E6C2 |
  BPL CODE_83E6AE                           ; $83E6C4 |
  LDA.W $1C12                               ; $83E6C6 |
  BNE CODE_83E729                           ; $83E6C9 |
  LDA.W $1C16                               ; $83E6CB |
  BEQ CODE_83E729                           ; $83E6CE |
  STZ.B $16                                 ; $83E6D0 |

CODE_83E6D2:
  INC.B $16                                 ; $83E6D2 |
  INC.B $16                                 ; $83E6D4 |
  LDA.B $16                                 ; $83E6D6 |
  CMP.W #$000C                              ; $83E6D8 |
  BCS CODE_83E6AE                           ; $83E6DB |
  LDA.B $0A                                 ; $83E6DD |
  SEC                                       ; $83E6DF |
  SBC.W #$0010                              ; $83E6E0 |
  STA.B $0A                                 ; $83E6E3 |
  CMP.W #$0020                              ; $83E6E5 |
  BCC CODE_83E6AE                           ; $83E6E8 |
  JSL.L CODE_FL_80CC03                      ; $83E6EA |
  AND.W #$003F                              ; $83E6EE |
  BEQ CODE_83E6F8                           ; $83E6F1 |
  CMP.W #$0018                              ; $83E6F3 |
  BNE CODE_83E6D2                           ; $83E6F6 |

CODE_83E6F8:
  CMP.W #$0018                              ; $83E6F8 |
  BNE CODE_83E704                           ; $83E6FB |
  LDA.B $92,X                               ; $83E6FD |
  BIT.W #$0020                              ; $83E6FF |
  BNE CODE_83E6AE                           ; $83E702 |

CODE_83E704:
  LDA.W $1672                               ; $83E704 |
  CLC                                       ; $83E707 |
  ADC.B $0A                                 ; $83E708 |
  AND.W #$000F                              ; $83E70A |
  STA.B $00                                 ; $83E70D |
  LDA.W #$0008                              ; $83E70F |
  SEC                                       ; $83E712 |
  SBC.B $00                                 ; $83E713 |
  CLC                                       ; $83E715 |
  ADC.B $0A                                 ; $83E716 |
  STA.B $00                                 ; $83E718 |
  STZ.B $54,X                               ; $83E71A |
  LDA.W #$FE80                              ; $83E71C |
  STA.B $56,X                               ; $83E71F |
  LDY.B $16                                 ; $83E721 |
  LDA.W LOOSE_OP_00F125,Y                   ; $83E723 |
  JSR.W CODE_FN_83BF73                      ; $83E726 |

CODE_83E729:
  LDA.W $1C12                               ; $83E729 |
  ORA.W #$0008                              ; $83E72C |
  STA.W $1C12                               ; $83E72F |
  RTS                                       ; $83E732 |

  STX.W $197E                               ; $83E733 |
  JMP.W CODE_JP_83E4F1                      ; $83E736 |

  STX.W $197E                               ; $83E739 |
  JMP.W CODE_JP_83E9F1                      ; $83E73C |

  LDA.B $92,X                               ; $83E73F |
  BIT.W #$0040                              ; $83E741 |
  BEQ CODE_83E749                           ; $83E744 |
  STX.W $197E                               ; $83E746 |

CODE_83E749:
  JMP.W CODE_JP_83E4F1                      ; $83E749 |

  LDA.B $92,X                               ; $83E74C |
  BIT.W #$0040                              ; $83E74E |
  BEQ CODE_83E756                           ; $83E751 |
  STX.W $197E                               ; $83E753 |

CODE_83E756:
  JMP.W CODE_JP_83E9F1                      ; $83E756 |

  LDA.B $92,X                               ; $83E759 |
  BIT.W #$0080                              ; $83E75B |
  BEQ CODE_83E749                           ; $83E75E |
  STX.W $197E                               ; $83E760 |
  JMP.W CODE_JP_83E4F1                      ; $83E763 |

  LDA.B $92,X                               ; $83E766 |
  BIT.W #$0080                              ; $83E768 |
  BEQ CODE_83E756                           ; $83E76B |
  STX.W $197E                               ; $83E76D |
  JMP.W CODE_JP_83E9F1                      ; $83E770 |

  LDA.B $92,X                               ; $83E773 |
  BIT.W #$00A0                              ; $83E775 |
  BNE CODE_83E7A1                           ; $83E778 |
  LDA.B $BD,X                               ; $83E77A |
  AND.W #$00FF                              ; $83E77C |
  CMP.W #$0020                              ; $83E77F |
  BCC CODE_83E7A1                           ; $83E782 |
  LDA.B $0E                                 ; $83E784 |
  BPL CODE_83E7A1                           ; $83E786 |
  LDA.W $1C12                               ; $83E788 |
  BNE CODE_83E797                           ; $83E78B |
  LDA.W $1C16                               ; $83E78D |
  BEQ CODE_83E797                           ; $83E790 |
  JSR.W CODE_FN_83E8CA                      ; $83E792 |
  BCC CODE_83E7A1                           ; $83E795 |

CODE_83E797:
  LDA.W $1C12                               ; $83E797 |
  ORA.W #$0004                              ; $83E79A |
  STA.W $1C12                               ; $83E79D |
  RTS                                       ; $83E7A0 |

CODE_83E7A1:
  JMP.W CODE_JP_83E9F1                      ; $83E7A1 |

  LDA.B $92,X                               ; $83E7A4 |
  BIT.W #$00A0                              ; $83E7A6 |
  BNE CODE_83E7A1                           ; $83E7A9 |
  LDA.B $BD,X                               ; $83E7AB |
  AND.W #$00FF                              ; $83E7AD |
  CMP.W #$0020                              ; $83E7B0 |
  BCC CODE_83E7A1                           ; $83E7B3 |
  LDA.B $0E                                 ; $83E7B5 |
  BMI CODE_83E7A1                           ; $83E7B7 |
  LDA.W $1C12                               ; $83E7B9 |
  BNE CODE_83E7C8                           ; $83E7BC |
  LDA.W $1C16                               ; $83E7BE |
  BEQ CODE_83E7C8                           ; $83E7C1 |
  JSR.W CODE_FN_83E98A                      ; $83E7C3 |
  BCC CODE_83E7A1                           ; $83E7C6 |

CODE_83E7C8:
  LDA.W $1C12                               ; $83E7C8 |
  ORA.W #$0008                              ; $83E7CB |
  STA.W $1C12                               ; $83E7CE |
  RTS                                       ; $83E7D1 |

  LDA.B $92,X                               ; $83E7D2 |
  BIT.W #$00A0                              ; $83E7D4 |
  BNE CODE_83E7A1                           ; $83E7D7 |
  LDA.B $BD,X                               ; $83E7D9 |
  AND.W #$00FF                              ; $83E7DB |
  CMP.W #$0020                              ; $83E7DE |
  BCC CODE_83E7A1                           ; $83E7E1 |
  LDA.B $0E                                 ; $83E7E3 |
  BPL CODE_83E7A1                           ; $83E7E5 |
  LDA.W $1C12                               ; $83E7E7 |
  BNE CODE_83E797                           ; $83E7EA |
  LDA.W $1C16                               ; $83E7EC |
  BEQ CODE_83E797                           ; $83E7EF |
  JSR.W CODE_FN_83E909                      ; $83E7F1 |
  BCC CODE_83E7A1                           ; $83E7F4 |
  BRA CODE_83E797                           ; $83E7F6 |

  LDA.B $92,X                               ; $83E7F8 |
  BIT.W #$00A0                              ; $83E7FA |
  BNE CODE_83E7A1                           ; $83E7FD |
  LDA.B $BD,X                               ; $83E7FF |
  AND.W #$00FF                              ; $83E801 |
  CMP.W #$0020                              ; $83E804 |
  BCC CODE_83E7A1                           ; $83E807 |
  LDA.B $0E                                 ; $83E809 |
  BMI CODE_83E7A1                           ; $83E80B |
  LDA.W $1C12                               ; $83E80D |
  BNE CODE_83E7C8                           ; $83E810 |
  LDA.W $1C16                               ; $83E812 |
  BEQ CODE_83E7C8                           ; $83E815 |
  JSR.W CODE_FN_83E949                      ; $83E817 |
  BCC CODE_83E7A1                           ; $83E81A |
  BRA CODE_83E7C8                           ; $83E81C |

  LDA.B $92,X                               ; $83E81E |
  BIT.W #$0020                              ; $83E820 |
  BNE CODE_83E84C                           ; $83E823 |
  LDA.B $BD,X                               ; $83E825 |
  AND.W #$00FF                              ; $83E827 |
  CMP.W #$0020                              ; $83E82A |
  BCC CODE_83E84C                           ; $83E82D |
  LDA.B $0C                                 ; $83E82F |
  BPL CODE_83E84C                           ; $83E831 |
  LDA.W $1C12                               ; $83E833 |
  BNE CODE_JP_83E842                        ; $83E836 |
  LDA.W $1C16                               ; $83E838 |
  BEQ CODE_JP_83E842                        ; $83E83B |
  JSR.W CODE_FN_83E8CA                      ; $83E83D |
  BCC CODE_83E84C                           ; $83E840 |

CODE_JP_83E842:
  LDA.W $1C12                               ; $83E842 |
  ORA.W #$0002                              ; $83E845 |
  STA.W $1C12                               ; $83E848 |
  RTS                                       ; $83E84B |

CODE_83E84C:
  JMP.W CODE_JP_83E4F1                      ; $83E84C |

  LDA.B $92,X                               ; $83E84F |
  BIT.W #$0020                              ; $83E851 |
  BNE CODE_83E84C                           ; $83E854 |
  LDA.B $BD,X                               ; $83E856 |
  AND.W #$00FF                              ; $83E858 |
  CMP.W #$0020                              ; $83E85B |
  BCC CODE_83E84C                           ; $83E85E |
  LDA.B $0C                                 ; $83E860 |
  BMI CODE_83E84C                           ; $83E862 |
  LDA.W $1C12                               ; $83E864 |
  BNE CODE_83E873                           ; $83E867 |
  LDA.W $1C16                               ; $83E869 |
  BEQ CODE_83E873                           ; $83E86C |
  JSR.W CODE_FN_83E98A                      ; $83E86E |
  BCC CODE_83E84C                           ; $83E871 |

CODE_83E873:
  LDA.W $1C12                               ; $83E873 |
  ORA.W #$0001                              ; $83E876 |
  STA.W $1C12                               ; $83E879 |
  RTS                                       ; $83E87C |

  LDA.B $92,X                               ; $83E87D |
  BIT.W #$0020                              ; $83E87F |
  BNE CODE_83E84C                           ; $83E882 |
  LDA.B $BD,X                               ; $83E884 |
  AND.W #$00FF                              ; $83E886 |
  CMP.W #$0020                              ; $83E889 |
  BCC CODE_83E84C                           ; $83E88C |
  LDA.B $0C                                 ; $83E88E |
  BMI CODE_83E84C                           ; $83E890 |
  LDA.W $1C12                               ; $83E892 |
  BNE CODE_83E873                           ; $83E895 |
  LDA.W $1C16                               ; $83E897 |
  BEQ CODE_83E873                           ; $83E89A |
  JSR.W CODE_FN_83E909                      ; $83E89C |
  BCC CODE_83E84C                           ; $83E89F |
  BRA CODE_83E873                           ; $83E8A1 |

  LDA.B $92,X                               ; $83E8A3 |
  BIT.W #$0020                              ; $83E8A5 |
  BNE CODE_83E84C                           ; $83E8A8 |
  LDA.B $BD,X                               ; $83E8AA |
  AND.W #$00FF                              ; $83E8AC |
  CMP.W #$0020                              ; $83E8AF |
  BCC CODE_83E84C                           ; $83E8B2 |
  LDA.B $0C                                 ; $83E8B4 |
  BPL CODE_83E84C                           ; $83E8B6 |
  LDA.W $1C12                               ; $83E8B8 |
  BNE CODE_JP_83E842                        ; $83E8BB |
  LDA.W $1C16                               ; $83E8BD |
  BEQ CODE_JP_83E842                        ; $83E8C0 |
  JSR.W CODE_FN_83E949                      ; $83E8C2 |
  BCC CODE_83E84C                           ; $83E8C5 |
  JMP.W CODE_JP_83E842                      ; $83E8C7 |

CODE_FN_83E8CA:
  STZ.B $16                                 ; $83E8CA |

CODE_83E8CC:
  INC.B $16                                 ; $83E8CC |
  INC.B $16                                 ; $83E8CE |
  LDA.B $16                                 ; $83E8D0 |
  CMP.W #$0008                              ; $83E8D2 |
  BCS CODE_83E907                           ; $83E8D5 |
  LDA.B $08                                 ; $83E8D7 |
  SEC                                       ; $83E8D9 |
  SBC.W #$0010                              ; $83E8DA |
  STA.B $08                                 ; $83E8DD |
  CMP.W #$0018                              ; $83E8DF |
  BCC CODE_83E907                           ; $83E8E2 |
  LDA.B $0A                                 ; $83E8E4 |
  SEC                                       ; $83E8E6 |
  SBC.W #$0010                              ; $83E8E7 |
  STA.B $0A                                 ; $83E8EA |
  CMP.W #$0018                              ; $83E8EC |
  BCC CODE_83E907                           ; $83E8EF |
  JSR.W CODE_FN_83E9CD                      ; $83E8F1 |
  BNE CODE_83E8CC                           ; $83E8F4 |
  LDA.W #$FEA0                              ; $83E8F6 |
  STA.B $54,X                               ; $83E8F9 |
  STA.B $56,X                               ; $83E8FB |
  LDY.B $16                                 ; $83E8FD |
  LDA.W LOOSE_OP_00F131,Y                   ; $83E8FF |
  JSR.W CODE_FN_83BF73                      ; $83E902 |
  SEC                                       ; $83E905 |
  RTS                                       ; $83E906 |

CODE_83E907:
  CLC                                       ; $83E907 |
  RTS                                       ; $83E908 |

CODE_FN_83E909:
  STZ.B $16                                 ; $83E909 |

CODE_83E90B:
  INC.B $16                                 ; $83E90B |
  INC.B $16                                 ; $83E90D |
  LDA.B $16                                 ; $83E90F |
  CMP.W #$0008                              ; $83E911 |
  BCS CODE_83E907                           ; $83E914 |
  LDA.B $08                                 ; $83E916 |
  CLC                                       ; $83E918 |
  ADC.W #$0010                              ; $83E919 |
  STA.B $08                                 ; $83E91C |
  CMP.W #$00E8                              ; $83E91E |
  BCS CODE_83E907                           ; $83E921 |
  LDA.B $0A                                 ; $83E923 |
  SEC                                       ; $83E925 |
  SBC.W #$0010                              ; $83E926 |
  STA.B $0A                                 ; $83E929 |
  CMP.W #$0018                              ; $83E92B |
  BCC CODE_83E907                           ; $83E92E |
  JSR.W CODE_FN_83E9CD                      ; $83E930 |
  BNE CODE_83E90B                           ; $83E933 |
  LDA.W #$0160                              ; $83E935 |
  STA.B $54,X                               ; $83E938 |
  LDA.W #$FEA0                              ; $83E93A |
  STA.B $56,X                               ; $83E93D |
  LDY.B $16                                 ; $83E93F |
  LDA.W LOOSE_OP_00F131,Y                   ; $83E941 |
  JSR.W CODE_FN_83BF73                      ; $83E944 |
  SEC                                       ; $83E947 |
  RTS                                       ; $83E948 |

CODE_FN_83E949:
  STZ.B $16                                 ; $83E949 |

CODE_83E94B:
  INC.B $16                                 ; $83E94B |
  INC.B $16                                 ; $83E94D |
  LDA.B $16                                 ; $83E94F |
  CMP.W #$0008                              ; $83E951 |
  BCS CODE_83E907                           ; $83E954 |
  LDA.B $08                                 ; $83E956 |
  SEC                                       ; $83E958 |
  SBC.W #$0010                              ; $83E959 |
  STA.B $08                                 ; $83E95C |
  CMP.W #$0018                              ; $83E95E |
  BCC CODE_83E907                           ; $83E961 |
  LDA.B $0A                                 ; $83E963 |
  CLC                                       ; $83E965 |
  ADC.W #$0010                              ; $83E966 |
  STA.B $0A                                 ; $83E969 |
  CMP.W #$00B0                              ; $83E96B |
  BCS CODE_83E907                           ; $83E96E |
  JSR.W CODE_FN_83E9CD                      ; $83E970 |
  BNE CODE_83E94B                           ; $83E973 |
  JSR.W CODE_FN_83E9DF                      ; $83E975 |
  STZ.W $1C16                               ; $83E978 |
  LDA.W #$FE00                              ; $83E97B |
  STA.B $54,X                               ; $83E97E |
  STZ.B $56,X                               ; $83E980 |
  LDA.W #$0100                              ; $83E982 |
  JSR.W CODE_FN_83BF73                      ; $83E985 |
  SEC                                       ; $83E988 |
  RTS                                       ; $83E989 |

CODE_FN_83E98A:
  STZ.B $16                                 ; $83E98A |

CODE_83E98C:
  INC.B $16                                 ; $83E98C |
  INC.B $16                                 ; $83E98E |
  LDA.B $16                                 ; $83E990 |
  CMP.W #$0008                              ; $83E992 |
  BCS CODE_83E9CB                           ; $83E995 |
  LDA.B $08                                 ; $83E997 |
  CLC                                       ; $83E999 |
  ADC.W #$0010                              ; $83E99A |
  STA.B $08                                 ; $83E99D |
  CMP.W #$00E8                              ; $83E99F |
  BCS CODE_83E9CB                           ; $83E9A2 |
  LDA.B $0A                                 ; $83E9A4 |
  CLC                                       ; $83E9A6 |
  ADC.W #$0010                              ; $83E9A7 |
  STA.B $0A                                 ; $83E9AA |
  CMP.W #$00B0                              ; $83E9AC |
  BCS CODE_83E9CB                           ; $83E9AF |
  JSR.W CODE_FN_83E9CD                      ; $83E9B1 |
  BNE CODE_83E98C                           ; $83E9B4 |
  JSR.W CODE_FN_83E9DF                      ; $83E9B6 |
  STZ.W $1C16                               ; $83E9B9 |
  LDA.W #$0200                              ; $83E9BC |
  STA.B $54,X                               ; $83E9BF |
  STZ.B $56,X                               ; $83E9C1 |
  LDA.W #$0100                              ; $83E9C3 |
  JSR.W CODE_FN_83BF73                      ; $83E9C6 |
  SEC                                       ; $83E9C9 |
  RTS                                       ; $83E9CA |

CODE_83E9CB:
  CLC                                       ; $83E9CB |
  RTS                                       ; $83E9CC |

CODE_FN_83E9CD:
  JSL.L CODE_FL_80CC03                      ; $83E9CD |
  AND.W #$003F                              ; $83E9D1 |
  BEQ CODE_83E9DE                           ; $83E9D4 |
  CMP.W #$0018                              ; $83E9D6 |
  BEQ CODE_83E9DE                           ; $83E9D9 |
  CMP.W #$001B                              ; $83E9DB |

CODE_83E9DE:
  RTS                                       ; $83E9DE |

CODE_FN_83E9DF:
  LDA.B $0A                                 ; $83E9DF |
  STA.B $00                                 ; $83E9E1 |
  SEC                                       ; $83E9E3 |
  SBC.B $0D,X                               ; $83E9E4 |
  CLC                                       ; $83E9E6 |
  ADC.B $11,X                               ; $83E9E7 |
  STA.B $11,X                               ; $83E9E9 |
  LDA.B $00                                 ; $83E9EB |
  STA.B $0D,X                               ; $83E9ED |
  RTS                                       ; $83E9EF |

  RTS                                       ; $83E9F0 |

CODE_JP_83E9F1:
  LDA.B $24                                 ; $83E9F1 |
  CLC                                       ; $83E9F3 |
  ADC.B $0D,X                               ; $83E9F4 |
  STA.B $0D,X                               ; $83E9F6 |
  LDY.B $0E                                 ; $83E9F8 |
  BMI CODE_83EA06                           ; $83E9FA |
  LDA.W $1C12                               ; $83E9FC |
  ORA.W #$0008                              ; $83E9FF |
  STA.W $1C12                               ; $83EA02 |
  RTS                                       ; $83EA05 |

CODE_83EA06:
  LDA.W $1C12                               ; $83EA06 |
  ORA.W #$0004                              ; $83EA09 |
  STA.W $1C12                               ; $83EA0C |
  RTS                                       ; $83EA0F |

CODE_FN_83EA10:
  ASL A                                     ; $83EA10 |
  TAY                                       ; $83EA11 |
  LDA.W LOOSE_OP_00F167,Y                   ; $83EA12 |
  PHA                                       ; $83EA15 |
  RTS                                       ; $83EA16 |

CODE_FN_83EA17:
  ASL A                                     ; $83EA17 |
  TAY                                       ; $83EA18 |
  LDA.W CODE_00F1C5,Y                       ; $83EA19 |
  PHA                                       ; $83EA1C |
  RTS                                       ; $83EA1D |

CODE_FN_83EA1E:
  ASL A                                     ; $83EA1E |
  TAY                                       ; $83EA1F |
  LDA.W CODE_00F223,Y                       ; $83EA20 |
  PHA                                       ; $83EA23 |
  RTS                                       ; $83EA24 |

  RTS                                       ; $83EA25 |

CODE_JP_83EA26:
  SEP #$20                                  ; $83EA26 |
  JSR.W CODE_FN_83EC11                      ; $83EA28 |
  REP #$20                                  ; $83EA2B |
  AND.W #$00FF                              ; $83EA2D |
  LDY.B $0C                                 ; $83EA30 |
  BMI CODE_83EA48                           ; $83EA32 |
  EOR.W #$FFFF                              ; $83EA34 |
  STA.B $00                                 ; $83EA37 |
  CLC                                       ; $83EA39 |
  ADC.B $09,X                               ; $83EA3A |
  STA.B $09,X                               ; $83EA3C |
  LDA.W $1C12                               ; $83EA3E |
  ORA.W #$0001                              ; $83EA41 |
  STA.W $1C12                               ; $83EA44 |
  RTS                                       ; $83EA47 |

CODE_83EA48:
  EOR.W #$000F                              ; $83EA48 |
  INC A                                     ; $83EA4B |
  STA.B $00                                 ; $83EA4C |
  CLC                                       ; $83EA4E |
  ADC.B $09,X                               ; $83EA4F |
  STA.B $09,X                               ; $83EA51 |
  LDA.W $1C12                               ; $83EA53 |
  ORA.W #$0002                              ; $83EA56 |
  STA.W $1C12                               ; $83EA59 |
  RTS                                       ; $83EA5C |

  SEP #$20                                  ; $83EA5D |
  JSR.W CODE_FN_83EC11                      ; $83EA5F |
  REP #$20                                  ; $83EA62 |

CODE_JP_83EA64:
  AND.W #$00FF                              ; $83EA64 |
  LDY.B $0C                                 ; $83EA67 |
  BMI CODE_83EA7F                           ; $83EA69 |
  EOR.W #$FFFF                              ; $83EA6B |
  STA.B $00                                 ; $83EA6E |
  CLC                                       ; $83EA70 |
  ADC.B $09,X                               ; $83EA71 |
  STA.B $09,X                               ; $83EA73 |
  LDA.W $1C12                               ; $83EA75 |
  ORA.W #$0001                              ; $83EA78 |
  STA.W $1C12                               ; $83EA7B |
  RTS                                       ; $83EA7E |

CODE_83EA7F:
  EOR.W #$000F                              ; $83EA7F |
  INC A                                     ; $83EA82 |
  STA.B $00                                 ; $83EA83 |
  CLC                                       ; $83EA85 |
  ADC.B $09,X                               ; $83EA86 |
  STA.B $09,X                               ; $83EA88 |
  LDA.W $1C12                               ; $83EA8A |
  ORA.W #$0002                              ; $83EA8D |
  STA.W $1C12                               ; $83EA90 |
  RTS                                       ; $83EA93 |

CODE_83EA94:
  AND.W #$0007                              ; $83EA94 |
  LDY.B $0C                                 ; $83EA97 |
  BMI CODE_83EAAD                           ; $83EA99 |
  EOR.W #$FFFF                              ; $83EA9B |
  CLC                                       ; $83EA9E |
  ADC.B $09,X                               ; $83EA9F |
  STA.B $09,X                               ; $83EAA1 |
  LDA.W $1C12                               ; $83EAA3 |
  ORA.W #$0001                              ; $83EAA6 |
  STA.W $1C12                               ; $83EAA9 |
  RTS                                       ; $83EAAC |

CODE_83EAAD:
  EOR.W #$0007                              ; $83EAAD |
  INC A                                     ; $83EAB0 |
  CLC                                       ; $83EAB1 |
  ADC.B $09,X                               ; $83EAB2 |
  STA.B $09,X                               ; $83EAB4 |
  LDA.W $1C12                               ; $83EAB6 |
  ORA.W #$0002                              ; $83EAB9 |
  STA.W $1C12                               ; $83EABC |

CODE_83EABF:
  RTS                                       ; $83EABF |

  SEP #$20                                  ; $83EAC0 |
  LDA.W $1672                               ; $83EAC2 |
  CLC                                       ; $83EAC5 |
  ADC.B $0A                                 ; $83EAC6 |
  AND.B #$0F                                ; $83EAC8 |
  CMP.B #$08                                ; $83EACA |
  REP #$20                                  ; $83EACC |
  BCC CODE_83EABF                           ; $83EACE |
  JMP.W CODE_JP_83EA26                      ; $83EAD0 |

  SEP #$20                                  ; $83EAD3 |
  LDA.W $1672                               ; $83EAD5 |
  CLC                                       ; $83EAD8 |
  ADC.B $0A                                 ; $83EAD9 |
  AND.B #$0F                                ; $83EADB |
  CMP.B #$08                                ; $83EADD |
  REP #$20                                  ; $83EADF |
  BCS CODE_83EABF                           ; $83EAE1 |
  JMP.W CODE_JP_83EA26                      ; $83EAE3 |

  SEP #$20                                  ; $83EAE6 |
  LDA.W $1662                               ; $83EAE8 |
  CLC                                       ; $83EAEB |
  ADC.B $08                                 ; $83EAEC |
  AND.B #$0F                                ; $83EAEE |
  CMP.B #$08                                ; $83EAF0 |
  REP #$20                                  ; $83EAF2 |
  BCC CODE_83EA94                           ; $83EAF4 |
  RTS                                       ; $83EAF6 |

  SEP #$20                                  ; $83EAF7 |
  LDA.W $1662                               ; $83EAF9 |
  CLC                                       ; $83EAFC |
  ADC.B $08                                 ; $83EAFD |
  AND.B #$0F                                ; $83EAFF |
  CMP.B #$08                                ; $83EB01 |
  REP #$20                                  ; $83EB03 |
  BCS CODE_83EA94                           ; $83EB05 |
  RTS                                       ; $83EB07 |

  SEP #$20                                  ; $83EB08 |
  JSR.W CODE_FN_83EC11                      ; $83EB0A |
  STA.B $00                                 ; $83EB0D |
  JSR.W CODE_FN_83EC1A                      ; $83EB0F |
  EOR.B #$0F                                ; $83EB12 |
  SEC                                       ; $83EB14 |
  SBC.B $00                                 ; $83EB15 |
  REP #$20                                  ; $83EB17 |
  BEQ CODE_83EB2A                           ; $83EB19 |
  BCS CODE_83EB1E                           ; $83EB1B |
  RTS                                       ; $83EB1D |

CODE_83EB1E:
  LDY.B $0C                                 ; $83EB1E |
  BPL CODE_83EB6E                           ; $83EB20 |
  AND.W #$000F                              ; $83EB22 |
  CLC                                       ; $83EB25 |
  ADC.B $09,X                               ; $83EB26 |
  STA.B $09,X                               ; $83EB28 |

CODE_83EB2A:
  LDA.B $26,X                               ; $83EB2A |
  BPL CODE_83EB56                           ; $83EB2C |
  SEC                                       ; $83EB2E |
  ROR A                                     ; $83EB2F |
  EOR.W #$FFFF                              ; $83EB30 |
  BRA CODE_83EB56                           ; $83EB33 |

  SEP #$20                                  ; $83EB35 |
  JSR.W CODE_FN_83EC11                      ; $83EB37 |
  STA.B $00                                 ; $83EB3A |
  JSR.W CODE_FN_83EC1A                      ; $83EB3C |
  EOR.B #$0F                                ; $83EB3F |
  SEC                                       ; $83EB41 |
  SBC.B $00                                 ; $83EB42 |
  REP #$20                                  ; $83EB44 |
  BEQ CODE_83EB56                           ; $83EB46 |
  BCC CODE_83EB4B                           ; $83EB48 |
  RTS                                       ; $83EB4A |

CODE_83EB4B:
  LDY.B $0C                                 ; $83EB4B |
  BMI CODE_83EB6E                           ; $83EB4D |
  ORA.W #$FFF0                              ; $83EB4F |
  ADC.B $09,X                               ; $83EB52 |
  STA.B $09,X                               ; $83EB54 |

CODE_83EB56:
  LDA.B $0C                                 ; $83EB56 |
  BPL CODE_83EB64                           ; $83EB58 |
  LDA.W $1C12                               ; $83EB5A |
  ORA.W #$0002                              ; $83EB5D |
  STA.W $1C12                               ; $83EB60 |
  RTS                                       ; $83EB63 |

CODE_83EB64:
  LDA.W $1C12                               ; $83EB64 |
  ORA.W #$0001                              ; $83EB67 |
  STA.W $1C12                               ; $83EB6A |

CODE_83EB6D:
  RTS                                       ; $83EB6D |

CODE_83EB6E:
  LDA.B $00                                 ; $83EB6E |
  JMP.W CODE_JP_83EA64                      ; $83EB70 |

  SEP #$20                                  ; $83EB73 |
  JSR.W CODE_FN_83EC11                      ; $83EB75 |
  STA.B $00                                 ; $83EB78 |
  JSR.W CODE_FN_83EC1A                      ; $83EB7A |
  SEC                                       ; $83EB7D |
  SBC.B $00                                 ; $83EB7E |
  REP #$20                                  ; $83EB80 |
  BEQ CODE_83EB96                           ; $83EB82 |
  BCS CODE_83EB6D                           ; $83EB84 |
  LDY.B $0C                                 ; $83EB86 |
  BMI CODE_83EB6E                           ; $83EB88 |
  ORA.W #$FFF0                              ; $83EB8A |
  ADC.B $09,X                               ; $83EB8D |
  STA.B $09,X                               ; $83EB8F |
  LDA.B $26,X                               ; $83EB91 |
  BMI CODE_83EB56                           ; $83EB93 |
  LSR A                                     ; $83EB95 |

CODE_83EB96:
  BRA CODE_83EB56                           ; $83EB96 |

  SEP #$20                                  ; $83EB98 |
  JSR.W CODE_FN_83EC11                      ; $83EB9A |
  STA.B $00                                 ; $83EB9D |
  JSR.W CODE_FN_83EC1A                      ; $83EB9F |
  SEC                                       ; $83EBA2 |
  SBC.B $00                                 ; $83EBA3 |
  REP #$20                                  ; $83EBA5 |
  BEQ CODE_83EBB8                           ; $83EBA7 |
  BCS CODE_83EBAC                           ; $83EBA9 |
  RTS                                       ; $83EBAB |

CODE_83EBAC:
  LDY.B $0C                                 ; $83EBAC |
  BPL CODE_83EB6E                           ; $83EBAE |
  AND.W #$000F                              ; $83EBB0 |
  CLC                                       ; $83EBB3 |
  ADC.B $09,X                               ; $83EBB4 |
  STA.B $09,X                               ; $83EBB6 |

CODE_83EBB8:
  LDA.B $26,X                               ; $83EBB8 |
  BPL CODE_83EB56                           ; $83EBBA |
  SEC                                       ; $83EBBC |
  ROR A                                     ; $83EBBD |
  BRA CODE_83EB56                           ; $83EBBE |

  LDA.B $C8                                 ; $83EBC0 |
  BMI CODE_83EBC9                           ; $83EBC2 |
  BNE CODE_83EBEA                           ; $83EBC4 |
  JMP.W CODE_JP_83EA26                      ; $83EBC6 |

CODE_83EBC9:
  LDA.B $04,X                               ; $83EBC9 |
  AND.W #$1898                              ; $83EBCB |
  CMP.W #$1898                              ; $83EBCE |
  BEQ CODE_83EBEA                           ; $83EBD1 |
  JMP.W CODE_JP_83EA26                      ; $83EBD3 |

  LDA.B $C8                                 ; $83EBD6 |
  BMI CODE_83EBDD                           ; $83EBD8 |
  JMP.W CODE_JP_83EA26                      ; $83EBDA |

CODE_83EBDD:
  LDA.B $04,X                               ; $83EBDD |
  AND.W #$1898                              ; $83EBDF |
  CMP.W #$1898                              ; $83EBE2 |
  BNE CODE_83EBEA                           ; $83EBE5 |
  JMP.W CODE_JP_83EA26                      ; $83EBE7 |

CODE_83EBEA:
  RTS                                       ; $83EBEA |

  LDA.B $C8                                 ; $83EBEB |
  BNE CODE_83EBEA                           ; $83EBED |
  JMP.W CODE_JP_83EA26                      ; $83EBEF |

  JMP.W CODE_JP_83EA26                      ; $83EBF2 |

  LDA.B $C8                                 ; $83EBF5 |
  BNE CODE_83EBFC                           ; $83EBF7 |
  JMP.W CODE_JP_83EA26                      ; $83EBF9 |

CODE_83EBFC:
  LDA.B $26,X                               ; $83EBFC |
  BPL CODE_83EBEA                           ; $83EBFE |
  JMP.W CODE_JP_83EA26                      ; $83EC00 |

  LDA.B $C8                                 ; $83EC03 |
  BNE CODE_83EC0A                           ; $83EC05 |
  JMP.W CODE_JP_83EA26                      ; $83EC07 |

CODE_83EC0A:
  LDA.B $26,X                               ; $83EC0A |
  BMI CODE_83EBEA                           ; $83EC0C |
  JMP.W CODE_JP_83EA26                      ; $83EC0E |

CODE_FN_83EC11:
  LDA.W $1662                               ; $83EC11 |
  CLC                                       ; $83EC14 |
  ADC.B $08                                 ; $83EC15 |
  AND.B #$0F                                ; $83EC17 |
  RTS                                       ; $83EC19 |

CODE_FN_83EC1A:
  LDA.W $1672                               ; $83EC1A |
  CLC                                       ; $83EC1D |
  ADC.B $0A                                 ; $83EC1E |
  AND.B #$0F                                ; $83EC20 |
  RTS                                       ; $83EC22 |

CODE_JP_83EC23:
  SEP #$20                                  ; $83EC23 |
  JSR.W CODE_FN_83EC1A                      ; $83EC25 |
  REP #$20                                  ; $83EC28 |
  AND.W #$00FF                              ; $83EC2A |
  LDY.B $0E                                 ; $83EC2D |
  BMI CODE_83EC45                           ; $83EC2F |
  EOR.W #$FFFF                              ; $83EC31 |
  STA.B $00                                 ; $83EC34 |
  CLC                                       ; $83EC36 |
  ADC.B $0D,X                               ; $83EC37 |
  STA.B $0D,X                               ; $83EC39 |
  LDA.W $1C12                               ; $83EC3B |
  ORA.W #$0008                              ; $83EC3E |
  STA.W $1C12                               ; $83EC41 |
  RTS                                       ; $83EC44 |

CODE_83EC45:
  EOR.W #$000F                              ; $83EC45 |
  INC A                                     ; $83EC48 |
  STA.B $00                                 ; $83EC49 |
  CLC                                       ; $83EC4B |
  ADC.B $0D,X                               ; $83EC4C |
  STA.B $0D,X                               ; $83EC4E |
  LDA.W $1C12                               ; $83EC50 |
  ORA.W #$0004                              ; $83EC53 |
  STA.W $1C12                               ; $83EC56 |
  RTS                                       ; $83EC59 |

CODE_JP_83EC5A:
  SEP #$20                                  ; $83EC5A |
  JSR.W CODE_FN_83EC1A                      ; $83EC5C |
  REP #$20                                  ; $83EC5F |
  AND.W #$00FF                              ; $83EC61 |
  LDY.B $0E                                 ; $83EC64 |
  BMI CODE_83EC7C                           ; $83EC66 |
  EOR.W #$FFFF                              ; $83EC68 |
  STA.B $00                                 ; $83EC6B |
  CLC                                       ; $83EC6D |
  ADC.B $0D,X                               ; $83EC6E |
  STA.B $0D,X                               ; $83EC70 |
  LDA.W $1C12                               ; $83EC72 |
  ORA.W #$0008                              ; $83EC75 |
  STA.W $1C12                               ; $83EC78 |
  RTS                                       ; $83EC7B |

CODE_83EC7C:
  EOR.W #$000F                              ; $83EC7C |
  INC A                                     ; $83EC7F |
  STA.B $00                                 ; $83EC80 |
  CLC                                       ; $83EC82 |
  ADC.B $0D,X                               ; $83EC83 |
  STA.B $0D,X                               ; $83EC85 |
  LDA.W $1C12                               ; $83EC87 |
  ORA.W #$0004                              ; $83EC8A |
  STA.W $1C12                               ; $83EC8D |
  RTS                                       ; $83EC90 |

CODE_83EC91:
  AND.W #$0007                              ; $83EC91 |
  LDY.B $0E                                 ; $83EC94 |
  BMI CODE_83ECAA                           ; $83EC96 |
  EOR.W #$FFFF                              ; $83EC98 |
  CLC                                       ; $83EC9B |
  ADC.B $0D,X                               ; $83EC9C |
  STA.B $0D,X                               ; $83EC9E |
  LDA.W $1C12                               ; $83ECA0 |
  ORA.W #$0008                              ; $83ECA3 |
  STA.W $1C12                               ; $83ECA6 |
  RTS                                       ; $83ECA9 |

CODE_83ECAA:
  EOR.W #$0007                              ; $83ECAA |
  INC A                                     ; $83ECAD |
  CLC                                       ; $83ECAE |
  ADC.B $0D,X                               ; $83ECAF |
  STA.B $0D,X                               ; $83ECB1 |
  LDA.W $1C12                               ; $83ECB3 |
  ORA.W #$0004                              ; $83ECB6 |
  STA.W $1C12                               ; $83ECB9 |
  RTS                                       ; $83ECBC |

  SEP #$20                                  ; $83ECBD |
  LDA.W $1672                               ; $83ECBF |
  CLC                                       ; $83ECC2 |
  ADC.B $0A                                 ; $83ECC3 |
  AND.B #$0F                                ; $83ECC5 |
  CMP.B #$08                                ; $83ECC7 |
  REP #$20                                  ; $83ECC9 |
  BCS CODE_83EC91                           ; $83ECCB |
  RTS                                       ; $83ECCD |

  SEP #$20                                  ; $83ECCE |
  LDA.W $1672                               ; $83ECD0 |
  CLC                                       ; $83ECD3 |
  ADC.B $0A                                 ; $83ECD4 |
  AND.B #$0F                                ; $83ECD6 |
  CMP.B #$08                                ; $83ECD8 |
  REP #$20                                  ; $83ECDA |
  BCC CODE_83EC91                           ; $83ECDC |
  RTS                                       ; $83ECDE |

  SEP #$20                                  ; $83ECDF |
  LDA.W $1662                               ; $83ECE1 |
  CLC                                       ; $83ECE4 |
  ADC.B $08                                 ; $83ECE5 |
  AND.B #$0F                                ; $83ECE7 |
  CMP.B #$08                                ; $83ECE9 |
  REP #$20                                  ; $83ECEB |
  BCC CODE_83ECF0                           ; $83ECED |
  RTS                                       ; $83ECEF |

CODE_83ECF0:
  JMP.W CODE_JP_83EC23                      ; $83ECF0 |

  SEP #$20                                  ; $83ECF3 |
  LDA.W $1662                               ; $83ECF5 |
  CLC                                       ; $83ECF8 |
  ADC.B $08                                 ; $83ECF9 |
  AND.B #$0F                                ; $83ECFB |
  CMP.B #$08                                ; $83ECFD |
  REP #$20                                  ; $83ECFF |
  BCS CODE_83ECF0                           ; $83ED01 |
  RTS                                       ; $83ED03 |

  SEP #$20                                  ; $83ED04 |
  JSR.W CODE_FN_83EC1A                      ; $83ED06 |
  STA.B $00                                 ; $83ED09 |
  JSR.W CODE_FN_83EC11                      ; $83ED0B |
  EOR.B #$0F                                ; $83ED0E |
  SEC                                       ; $83ED10 |
  SBC.B $00                                 ; $83ED11 |
  REP #$20                                  ; $83ED13 |
  BEQ CODE_83ED26                           ; $83ED15 |
  BCS CODE_83ED1A                           ; $83ED17 |
  RTS                                       ; $83ED19 |

CODE_83ED1A:
  LDY.B $0E                                 ; $83ED1A |
  BPL CODE_83ED69                           ; $83ED1C |
  AND.W #$000F                              ; $83ED1E |
  CLC                                       ; $83ED21 |
  ADC.B $0D,X                               ; $83ED22 |
  STA.B $0D,X                               ; $83ED24 |

CODE_83ED26:
  LDA.B $28,X                               ; $83ED26 |
  BPL CODE_83ED51                           ; $83ED28 |
  BRA CODE_83ED51                           ; $83ED2A |

  SEP #$20                                  ; $83ED2C |
  JSR.W CODE_FN_83EC1A                      ; $83ED2E |
  STA.B $00                                 ; $83ED31 |
  JSR.W CODE_FN_83EC11                      ; $83ED33 |
  EOR.B #$0F                                ; $83ED36 |
  SEC                                       ; $83ED38 |
  SBC.B $00                                 ; $83ED39 |
  REP #$20                                  ; $83ED3B |
  BEQ CODE_83ED4D                           ; $83ED3D |
  BCC CODE_83ED42                           ; $83ED3F |
  RTS                                       ; $83ED41 |

CODE_83ED42:
  LDY.B $0E                                 ; $83ED42 |
  BMI CODE_83ED69                           ; $83ED44 |
  ORA.W #$FFF0                              ; $83ED46 |
  ADC.B $0D,X                               ; $83ED49 |
  STA.B $0D,X                               ; $83ED4B |

CODE_83ED4D:
  LDA.B $28,X                               ; $83ED4D |
  BMI CODE_83ED51                           ; $83ED4F |

CODE_83ED51:
  LDA.B $0E                                 ; $83ED51 |
  BPL CODE_83ED5F                           ; $83ED53 |
  LDA.W $1C12                               ; $83ED55 |
  ORA.W #$0008                              ; $83ED58 |
  STA.W $1C12                               ; $83ED5B |
  RTS                                       ; $83ED5E |

CODE_83ED5F:
  LDA.W $1C12                               ; $83ED5F |
  ORA.W #$0004                              ; $83ED62 |
  STA.W $1C12                               ; $83ED65 |

CODE_83ED68:
  RTS                                       ; $83ED68 |

CODE_83ED69:
  LDA.B $00                                 ; $83ED69 |
  JMP.W CODE_JP_83EC5A                      ; $83ED6B |

  SEP #$20                                  ; $83ED6E |
  JSR.W CODE_FN_83EC1A                      ; $83ED70 |
  STA.B $00                                 ; $83ED73 |
  JSR.W CODE_FN_83EC11                      ; $83ED75 |
  SEC                                       ; $83ED78 |
  SBC.B $00                                 ; $83ED79 |
  REP #$20                                  ; $83ED7B |
  BEQ CODE_83ED8D                           ; $83ED7D |
  BCC CODE_83ED68                           ; $83ED7F |
  LDY.B $0E                                 ; $83ED81 |
  BPL CODE_83ED69                           ; $83ED83 |
  AND.W #$000F                              ; $83ED85 |
  CLC                                       ; $83ED88 |
  ADC.B $0D,X                               ; $83ED89 |
  STA.B $0D,X                               ; $83ED8B |

CODE_83ED8D:
  LDA.B $28,X                               ; $83ED8D |
  BPL CODE_83ED51                           ; $83ED8F |
  BRA CODE_83ED51                           ; $83ED91 |

  SEP #$20                                  ; $83ED93 |
  JSR.W CODE_FN_83EC1A                      ; $83ED95 |
  STA.B $00                                 ; $83ED98 |
  JSR.W CODE_FN_83EC11                      ; $83ED9A |
  SEC                                       ; $83ED9D |
  SBC.B $00                                 ; $83ED9E |
  REP #$20                                  ; $83EDA0 |
  BEQ CODE_83EDB2                           ; $83EDA2 |
  BCC CODE_83EDA7                           ; $83EDA4 |
  RTS                                       ; $83EDA6 |

CODE_83EDA7:
  LDY.B $0E                                 ; $83EDA7 |
  BMI CODE_83ED69                           ; $83EDA9 |
  ORA.W #$FFF0                              ; $83EDAB |
  ADC.B $0D,X                               ; $83EDAE |
  STA.B $0D,X                               ; $83EDB0 |

CODE_83EDB2:
  LDA.B $28,X                               ; $83EDB2 |
  BMI CODE_83ED51                           ; $83EDB4 |
  BRA CODE_83ED51                           ; $83EDB6 |

  LDA.B $C8                                 ; $83EDB8 |
  BMI CODE_83EDC1                           ; $83EDBA |
  BNE CODE_83EDE9                           ; $83EDBC |
  JMP.W CODE_JP_83EC23                      ; $83EDBE |

CODE_83EDC1:
  LDA.B $04,X                               ; $83EDC1 |
  AND.W #$1898                              ; $83EDC3 |
  CMP.W #$1898                              ; $83EDC6 |
  BEQ CODE_83EDE9                           ; $83EDC9 |
  JMP.W CODE_JP_83EC23                      ; $83EDCB |

  LDA.B $C8                                 ; $83EDCE |
  BMI CODE_83EDD5                           ; $83EDD0 |
  JMP.W CODE_JP_83EC23                      ; $83EDD2 |

CODE_83EDD5:
  LDA.B $22,X                               ; $83EDD5 |
  CMP.W #$001B                              ; $83EDD7 |
  BEQ CODE_83EDE6                           ; $83EDDA |
  LDA.B $04,X                               ; $83EDDC |
  AND.W #$1898                              ; $83EDDE |
  CMP.W #$1898                              ; $83EDE1 |
  BNE CODE_83EDE9                           ; $83EDE4 |

CODE_83EDE6:
  JMP.W CODE_JP_83EC23                      ; $83EDE6 |

CODE_83EDE9:
  RTS                                       ; $83EDE9 |

  LDA.B $C8                                 ; $83EDEA |
  BNE CODE_83EDE9                           ; $83EDEC |
  JMP.W CODE_JP_83EC23                      ; $83EDEE |

  LDA.B $C8                                 ; $83EDF1 |
  BNE CODE_83EDF8                           ; $83EDF3 |
  JMP.W CODE_JP_83EC23                      ; $83EDF5 |

CODE_83EDF8:
  LDA.B $28,X                               ; $83EDF8 |
  BPL CODE_83EDE9                           ; $83EDFA |
  JMP.W CODE_JP_83EC23                      ; $83EDFC |

  LDA.B $C8                                 ; $83EDFF |
  BNE CODE_83EE06                           ; $83EE01 |
  JMP.W CODE_JP_83EC23                      ; $83EE03 |

CODE_83EE06:
  LDA.B $28,X                               ; $83EE06 |
  BMI CODE_83EDE9                           ; $83EE08 |
  JMP.W CODE_JP_83EC23                      ; $83EE0A |

  JMP.W CODE_JP_83EC23                      ; $83EE0D |

  LDA.W $1C16                               ; $83EE10 |
  BEQ CODE_83EE2E                           ; $83EE13 |
  LDA.W #$0002                              ; $83EE15 |
  STA.W $1C16                               ; $83EE18 |
  LDA.B $10,X                               ; $83EE1B |
  BNE CODE_83EE2E                           ; $83EE1D |
  CLC                                       ; $83EE1F |
  LDA.B $28,X                               ; $83EE20 |
  BEQ CODE_83EE2E                           ; $83EE22 |
  ADC.W #$0080                              ; $83EE24 |
  BCC CODE_83EE2C                           ; $83EE27 |

CODE_83EE29:
  LDA.W #$0000                              ; $83EE29 |

CODE_83EE2C:
  STA.B $28,X                               ; $83EE2C |

CODE_83EE2E:
  RTS                                       ; $83EE2E |

  LDA.W $1C16                               ; $83EE2F |
  BEQ CODE_83EE2E                           ; $83EE32 |
  LDA.W #$0002                              ; $83EE34 |
  STA.W $1C16                               ; $83EE37 |
  LDA.B $10,X                               ; $83EE3A |
  BNE CODE_83EE2E                           ; $83EE3C |
  SEC                                       ; $83EE3E |
  LDA.B $28,X                               ; $83EE3F |
  BEQ CODE_83EE2E                           ; $83EE41 |
  SBC.W #$0080                              ; $83EE43 |
  BCS CODE_83EE2C                           ; $83EE46 |
  BRA CODE_83EE29                           ; $83EE48 |

  LDA.W $1C16                               ; $83EE4A |
  BEQ CODE_83EE2E                           ; $83EE4D |
  LDA.W #$0002                              ; $83EE4F |
  STA.W $1C16                               ; $83EE52 |
  LDA.B $10,X                               ; $83EE55 |
  BNE CODE_83EE68                           ; $83EE57 |
  CLC                                       ; $83EE59 |
  LDA.B $26,X                               ; $83EE5A |
  BEQ CODE_83EE68                           ; $83EE5C |
  ADC.W #$0080                              ; $83EE5E |
  BCC CODE_83EE66                           ; $83EE61 |

CODE_83EE63:
  LDA.W #$0000                              ; $83EE63 |

CODE_83EE66:
  STA.B $26,X                               ; $83EE66 |

CODE_83EE68:
  RTS                                       ; $83EE68 |

  LDA.W $1C16                               ; $83EE69 |
  BEQ CODE_83EE2E                           ; $83EE6C |
  LDA.W #$0002                              ; $83EE6E |
  STA.W $1C16                               ; $83EE71 |
  LDA.B $10,X                               ; $83EE74 |
  BNE CODE_83EE68                           ; $83EE76 |
  SEC                                       ; $83EE78 |
  LDA.B $26,X                               ; $83EE79 |
  BEQ CODE_83EE68                           ; $83EE7B |
  SBC.W #$0080                              ; $83EE7D |
  BCS CODE_83EE66                           ; $83EE80 |
  BRA CODE_83EE63                           ; $83EE82 |

  CPX.W #$04C1                              ; $83EE84 |
  BCS CODE_83EEC8                           ; $83EE87 |
  LDA.W $1C16                               ; $83EE89 |
  BEQ CODE_83EEC8                           ; $83EE8C |
  LDA.W #$0018                              ; $83EE8E |
  STA.W $1C16                               ; $83EE91 |
  LDA.B $92,X                               ; $83EE94 |
  BIT.W #$0008                              ; $83EE96 |
  BNE CODE_83EEC8                           ; $83EE99 |
  BIT.W #$0001                              ; $83EE9B |
  BNE CODE_83EEC8                           ; $83EE9E |
  STZ.B $92                                 ; $83EEA0 |
  LDA.L $7002AC                             ; $83EEA2 |
  BNE CODE_83EEAB                           ; $83EEA6 |
  JMP.W CODE_JP_83937D                      ; $83EEA8 |

CODE_83EEAB:
  LDA.B $92,X                               ; $83EEAB |
  BIT.W #$0040                              ; $83EEAD |
  BNE CODE_83EEC8                           ; $83EEB0 |
  LDA.B $35,X                               ; $83EEB2 |
  ORA.W #$0080                              ; $83EEB4 |
  STA.B $35,X                               ; $83EEB7 |
  LDA.B $92,X                               ; $83EEB9 |
  BIT.W #$0080                              ; $83EEBB |
  BNE CODE_83EEC4                           ; $83EEBE |
  JML.L CODE_FN_83BFCD                      ; $83EEC0 |

CODE_83EEC4:
  JML.L CODE_JL_83C2D6                      ; $83EEC4 |

CODE_83EEC8:
  RTS                                       ; $83EEC8 |

  LDA.W $1C16                               ; $83EEC9 |
  BEQ CODE_83EED4                           ; $83EECC |
  LDA.W #$001E                              ; $83EECE |
  STA.W $1C16                               ; $83EED1 |

CODE_83EED4:
  LDY.W #$0000                              ; $83EED4 |
  LDA.B $04,X                               ; $83EED7 |
  AND.W #$1898                              ; $83EED9 |
  CMP.W #$1898                              ; $83EEDC |
  BEQ CODE_83EEE7                           ; $83EEDF |
  LDY.W #$0040                              ; $83EEE1 |
  STY.B $00                                 ; $83EEE4 |
  RTS                                       ; $83EEE6 |

CODE_83EEE7:
  STY.B $00                                 ; $83EEE7 |
  LDA.B $34,X                               ; $83EEE9 |
  ORA.W #$0001                              ; $83EEEB |
  STA.B $34,X                               ; $83EEEE |

CODE_83EEF0:
  RTS                                       ; $83EEF0 |

  CPX.W #$04C1                              ; $83EEF1 |
  BCS CODE_83EEF0                           ; $83EEF4 |
  STZ.W $1C16                               ; $83EEF6 |
  LDA.B $92,X                               ; $83EEF9 |
  BIT.W #$0002                              ; $83EEFB |
  BNE CODE_83EEF0                           ; $83EEFE |
  LDA.B $22,X                               ; $83EF00 |
  CMP.W #$001A                              ; $83EF02 |
  BEQ CODE_83EEF0                           ; $83EF05 |
  JML.L CODE_JL_83C067                      ; $83EF07 |

CODE_FL_83EF0B:
  STX.B $10                                 ; $83EF0B |
  REP #$20                                  ; $83EF0D |
  JSR.W CODE_FN_83F036                      ; $83EF0F |
  BPL CODE_83EF19                           ; $83EF12 |
  SEP #$20                                  ; $83EF14 |
  LDX.B $10                                 ; $83EF16 |
  RTL                                       ; $83EF18 |

CODE_83EF19:
  STZ.B $3C,X                               ; $83EF19 |
  STZ.B $46,X                               ; $83EF1B |
  JSL.L CODE_FL_838EFD                      ; $83EF1D |
  LDY.B $10                                 ; $83EF21 |
  LDA.W $0050,Y                             ; $83EF23 |
  LDY.W #$0001                              ; $83EF26 |
  AND.W #$00FF                              ; $83EF29 |
  CMP.B $00                                 ; $83EF2C |
  BCC CODE_83EF3D                           ; $83EF2E |
  LDA.W #$001F                              ; $83EF30 |
  JSL.L push_sound_queue                    ; $83EF33 |
  INC.B $3C,X                               ; $83EF37 |
  INY                                       ; $83EF39 |
  INY                                       ; $83EF3A |
  BRA CODE_83EF44                           ; $83EF3B |

CODE_83EF3D:
  LDA.W #$001D                              ; $83EF3D |
  JSL.L push_sound_queue                    ; $83EF40 |

CODE_83EF44:
  TYA                                       ; $83EF44 |
  JSL.L CODE_FL_86CAEE                      ; $83EF45 |
  LDY.B $10                                 ; $83EF49 |
  LDA.W #$C000                              ; $83EF4B |
  STA.B $22,X                               ; $83EF4E |
  LDA.W #$0001                              ; $83EF50 |
  STA.B $18,X                               ; $83EF53 |
  LDA.W $0002,Y                             ; $83EF55 |
  STA.B $02,X                               ; $83EF58 |
  STY.B $3A,X                               ; $83EF5A |
  LDA.W $0006,Y                             ; $83EF5C |
  STA.B $06,X                               ; $83EF5F |
  LDA.W $0022,Y                             ; $83EF61 |
  CMP.W #$000F                              ; $83EF64 |
  BEQ CODE_83EF6E                           ; $83EF67 |
  LDA.W #$FFEC                              ; $83EF69 |
  BRA CODE_83EF71                           ; $83EF6C |

CODE_83EF6E:
  LDA.W #$FFF4                              ; $83EF6E |

CODE_83EF71:
  CLC                                       ; $83EF71 |
  ADC.W $000D,Y                             ; $83EF72 |
  STA.B $0D,X                               ; $83EF75 |
  LDA.W $0004,Y                             ; $83EF77 |
  AND.W #$0020                              ; $83EF7A |
  BEQ CODE_83EF92                           ; $83EF7D |
  LDA.W $0009,Y                             ; $83EF7F |
  SEC                                       ; $83EF82 |
  SBC.W #$0010                              ; $83EF83 |
  STA.B $09,X                               ; $83EF86 |
  LDA.W #$FB00                              ; $83EF88 |
  STA.B $26,X                               ; $83EF8B |
  LDA.W #$2020                              ; $83EF8D |
  BRA CODE_83EFA3                           ; $83EF90 |

CODE_83EF92:
  LDA.W $0009,Y                             ; $83EF92 |
  CLC                                       ; $83EF95 |
  ADC.W #$0010                              ; $83EF96 |
  STA.B $09,X                               ; $83EF99 |
  LDA.W #$0500                              ; $83EF9B |
  STA.B $26,X                               ; $83EF9E |
  LDA.W #$0000                              ; $83EFA0 |

CODE_83EFA3:
  ORA.W $1968                               ; $83EFA3 |
  STA.B $04,X                               ; $83EFA6 |
  JMP.W CODE_JP_83F019                      ; $83EFA8 |

CODE_FL_83EFAB:
  STX.B $10                                 ; $83EFAB |
  REP #$20                                  ; $83EFAD |
  JSR.W CODE_FN_83F036                      ; $83EFAF |
  BPL CODE_83EFB9                           ; $83EFB2 |
  SEP #$20                                  ; $83EFB4 |
  LDX.B $10                                 ; $83EFB6 |
  RTL                                       ; $83EFB8 |

CODE_83EFB9:
  STZ.B $3C,X                               ; $83EFB9 |
  STZ.B $46,X                               ; $83EFBB |
  JSL.L CODE_FL_838EFD                      ; $83EFBD |
  LDY.B $10                                 ; $83EFC1 |
  LDA.W $0050,Y                             ; $83EFC3 |
  LDY.W #$0002                              ; $83EFC6 |
  AND.W #$00FF                              ; $83EFC9 |
  CMP.B $00                                 ; $83EFCC |
  BCC CODE_83EFDD                           ; $83EFCE |
  LDA.W #$001F                              ; $83EFD0 |
  JSL.L push_sound_queue                    ; $83EFD3 |
  INC.B $3C,X                               ; $83EFD7 |
  INY                                       ; $83EFD9 |
  INY                                       ; $83EFDA |
  BRA CODE_83EFE4                           ; $83EFDB |

CODE_83EFDD:
  LDA.W #$001D                              ; $83EFDD |
  JSL.L push_sound_queue                    ; $83EFE0 |

CODE_83EFE4:
  TYA                                       ; $83EFE4 |
  JSL.L CODE_FL_86CAEE                      ; $83EFE5 |
  LDA.W #$C000                              ; $83EFE9 |
  STA.B $22,X                               ; $83EFEC |
  LDY.B $10                                 ; $83EFEE |
  LDA.W #$0001                              ; $83EFF0 |
  STA.B $18,X                               ; $83EFF3 |
  LDA.W $0002,Y                             ; $83EFF5 |
  STA.B $02,X                               ; $83EFF8 |
  LDA.W $0006,Y                             ; $83EFFA |
  STA.B $06,X                               ; $83EFFD |
  STY.B $3A,X                               ; $83EFFF |
  LDA.W $000D,Y                             ; $83F001 |
  SEC                                       ; $83F004 |
  SBC.W #$0018                              ; $83F005 |
  STA.B $0D,X                               ; $83F008 |
  LDA.W $0009,Y                             ; $83F00A |
  STA.B $09,X                               ; $83F00D |
  LDA.W #$FB00                              ; $83F00F |
  STA.B $28,X                               ; $83F012 |
  LDA.W $1968                               ; $83F014 |
  STA.B $04,X                               ; $83F017 |

CODE_JP_83F019:
  LDA.W #$E000                              ; $83F019 |
  STA.B $34,X                               ; $83F01C |
  LDA.W #$0005                              ; $83F01E |
  LDY.B $3C,X                               ; $83F021 |
  BEQ CODE_83F028                           ; $83F023 |
  LDA.W #$0011                              ; $83F025 |

CODE_83F028:
  STA.B $4E,X                               ; $83F028 |
  LDA.W #$0004                              ; $83F02A |
  STA.B $2E,X                               ; $83F02D |
  STA.B $30,X                               ; $83F02F |
  SEP #$20                                  ; $83F031 |
  LDX.B $10                                 ; $83F033 |
  RTL                                       ; $83F035 |

CODE_FN_83F036:
  STX.B $10                                 ; $83F036 |

CODE_FN_83F038:
  LDY.W #$0007                              ; $83F038 |
  CPX.W #$0400                              ; $83F03B |
  BNE CODE_83F045                           ; $83F03E |
  LDX.W #$0850                              ; $83F040 |
  BRA CODE_83F048                           ; $83F043 |

CODE_83F045:
  LDX.W #$0B20                              ; $83F045 |

CODE_83F048:
  TXA                                       ; $83F048 |
  SBC.W #$0050                              ; $83F049 |
  TAX                                       ; $83F04C |
  LDA.B $18,X                               ; $83F04D |
  BEQ CODE_83F055                           ; $83F04F |
  DEY                                       ; $83F051 |
  BPL CODE_83F048                           ; $83F052 |
  RTS                                       ; $83F054 |

CODE_83F055:
  JSL.L CODE_FL_86CA36                      ; $83F055 |

CODE_JP_83F059:
  LDY.B $10                                 ; $83F059 |
  STY.B $3A,X                               ; $83F05B |
  CPY.W #$0400                              ; $83F05D |
  BNE CODE_83F069                           ; $83F060 |
  LDA.W $1780                               ; $83F062 |
  STA.B $36,X                               ; $83F065 |
  TDC                                       ; $83F067 |
  RTS                                       ; $83F068 |

CODE_83F069:
  LDA.W $1794                               ; $83F069 |
  STA.B $36,X                               ; $83F06C |
  TDC                                       ; $83F06E |
  RTS                                       ; $83F06F |

CODE_FL_83F070:
  REP #$20                                  ; $83F070 |
  JSR.W CODE_FN_83F036                      ; $83F072 |
  BPL CODE_83F07A                           ; $83F075 |
  JMP.W CODE_JP_83F10C                      ; $83F077 |

CODE_83F07A:
  LDY.B $10                                 ; $83F07A |
  STY.B $3A,X                               ; $83F07C |
  LDA.W $0004,Y                             ; $83F07E |
  AND.W #$0020                              ; $83F081 |
  BEQ CODE_83F08B                           ; $83F084 |
  LDA.W #$FFEC                              ; $83F086 |
  BRA CODE_83F08E                           ; $83F089 |

CODE_83F08B:
  LDA.W #$0014                              ; $83F08B |

CODE_83F08E:
  STA.B $18                                 ; $83F08E |
  STZ.B $26,X                               ; $83F090 |
  STZ.B $28,X                               ; $83F092 |
  LDA.W $000D,Y                             ; $83F094 |
  SEC                                       ; $83F097 |
  SBC.W #$000C                              ; $83F098 |
  STA.B $0D,X                               ; $83F09B |
  BRA CODE_83F0DD                           ; $83F09D |

CODE_FL_83F09F:
  REP #$20                                  ; $83F09F |
  JSR.W CODE_FN_83F036                      ; $83F0A1 |
  BMI CODE_JP_83F10C                        ; $83F0A4 |
  LDY.B $10                                 ; $83F0A6 |
  STY.B $3A,X                               ; $83F0A8 |
  LDA.W $0004,Y                             ; $83F0AA |
  AND.W #$0020                              ; $83F0AD |
  BEQ CODE_83F0B7                           ; $83F0B0 |
  LDA.W #$FE00                              ; $83F0B2 |
  BRA CODE_83F0BA                           ; $83F0B5 |

CODE_83F0B7:
  LDA.W #$0200                              ; $83F0B7 |

CODE_83F0BA:
  CLC                                       ; $83F0BA |
  ADC.W $0026,Y                             ; $83F0BB |
  STA.B $26,X                               ; $83F0BE |
  LDA.W $000D,Y                             ; $83F0C0 |
  SEC                                       ; $83F0C3 |
  SBC.W #$0018                              ; $83F0C4 |
  STA.B $0D,X                               ; $83F0C7 |
  LDA.W $0028,Y                             ; $83F0C9 |
  SEC                                       ; $83F0CC |
  SBC.W #$0300                              ; $83F0CD |
  AND.W #$FF00                              ; $83F0D0 |
  CMP.W #$FC00                              ; $83F0D3 |
  BCS CODE_83F0DB                           ; $83F0D6 |
  LDA.W #$FC00                              ; $83F0D8 |

CODE_83F0DB:
  STA.B $28,X                               ; $83F0DB |

CODE_83F0DD:
  LDA.W $0009,Y                             ; $83F0DD |
  STA.B $09,X                               ; $83F0E0 |
  LDA.W #$00A0                              ; $83F0E2 |

CODE_83F0E5:
  STA.B $44,X                               ; $83F0E5 |
  LDA.W #$0130                              ; $83F0E7 |
  STA.B $18,X                               ; $83F0EA |
  LDA.W #$001C                              ; $83F0EC |
  JSL.L push_sound_queue                    ; $83F0EF |
  STZ.B $02,X                               ; $83F0F3 |
  STZ.B $40,X                               ; $83F0F5 |
  PHY                                       ; $83F0F7 |
  PHX                                       ; $83F0F8 |
  TYX                                       ; $83F0F9 |
  JSL.L CODE_FL_838EFD                      ; $83F0FA |
  PLX                                       ; $83F0FE |
  PLY                                       ; $83F0FF |
  LDA.W $0050,Y                             ; $83F100 |
  AND.W #$00FF                              ; $83F103 |
  CMP.B $00                                 ; $83F106 |
  BCC CODE_JP_83F10C                        ; $83F108 |
  INC.B $40,X                               ; $83F10A |

CODE_JP_83F10C:
  SEP #$20                                  ; $83F10C |
  LDX.B $10                                 ; $83F10E |
  RTL                                       ; $83F110 |

CODE_FL_83F111:
  REP #$20                                  ; $83F111 |
  JSR.W CODE_FN_83F036                      ; $83F113 |
  BMI CODE_JP_83F10C                        ; $83F116 |
  LDY.B $10                                 ; $83F118 |
  STY.B $3A,X                               ; $83F11A |
  LDA.W $0009,Y                             ; $83F11C |
  STA.B $09,X                               ; $83F11F |
  LDA.W $000D,Y                             ; $83F121 |
  SEC                                       ; $83F124 |
  SBC.W #$0018                              ; $83F125 |
  STA.B $0D,X                               ; $83F128 |
  LDA.W $0028,X                             ; $83F12A |
  SEC                                       ; $83F12D |
  SBC.W #$0300                              ; $83F12E |
  AND.W #$FF00                              ; $83F131 |
  CMP.W #$FC00                              ; $83F134 |
  BCS CODE_83F13C                           ; $83F137 |
  LDA.W #$FC00                              ; $83F139 |

CODE_83F13C:
  STA.B $28,X                               ; $83F13C |
  LDA.W #$0060                              ; $83F13E |
  BRA CODE_83F0E5                           ; $83F141 |

  RTL                                       ; $83F143 |

CODE_FL_83F144:
  STX.B $10                                 ; $83F144 |
  REP #$20                                  ; $83F146 |
  LDY.W #$0000                              ; $83F148 |
  CPX.W #$0400                              ; $83F14B |
  BEQ CODE_83F153                           ; $83F14E |
  LDY.W #$000A                              ; $83F150 |

CODE_83F153:
  STY.B $20                                 ; $83F153 |
  LDY.B $20                                 ; $83F155 |
  LDX.W LOOSE_OP_00F2D7,Y                   ; $83F157 |
  LDY.W #$0000                              ; $83F15A |
  JSR.W CODE_FN_83F191                      ; $83F15D |
  LDY.B $20                                 ; $83F160 |
  LDX.W CODE_00F2D9,Y                       ; $83F162 |
  LDY.W #$0004                              ; $83F165 |
  JSR.W CODE_FN_83F191                      ; $83F168 |
  LDY.B $20                                 ; $83F16B |
  LDX.W CODE_00F2DB,Y                       ; $83F16D |
  LDY.W #$0008                              ; $83F170 |
  JSR.W CODE_FN_83F191                      ; $83F173 |
  LDY.B $20                                 ; $83F176 |
  LDX.W LOOSE_OP_00F2DD,Y                   ; $83F178 |
  LDY.W #$000C                              ; $83F17B |
  JSR.W CODE_FN_83F191                      ; $83F17E |
  LDY.B $20                                 ; $83F181 |
  LDX.W LOOSE_OP_00F2DF,Y                   ; $83F183 |
  LDY.W #$0010                              ; $83F186 |
  JSR.W CODE_FN_83F191                      ; $83F189 |
  LDX.B $10                                 ; $83F18C |
  SEP #$20                                  ; $83F18E |
  RTL                                       ; $83F190 |

CODE_FN_83F191:
  LDA.B $18,X                               ; $83F191 |
  BNE CODE_83F1F8                           ; $83F193 |
  JSL.L CODE_FL_86CA36                      ; $83F195 |
  LDA.W PTR16_00F29B,Y                      ; $83F199 |
  STA.B $00                                 ; $83F19C |
  LDA.W LOOSE_OP_00F29D,Y                   ; $83F19E |
  STA.B $02                                 ; $83F1A1 |
  LDA.W CODE_00F2AF,Y                       ; $83F1A3 |
  STA.B $26,X                               ; $83F1A6 |
  LDA.W LOOSE_OP_00F2B1,Y                   ; $83F1A8 |
  STA.B $28,X                               ; $83F1AB |
  LDA.W CODE_00F2C5,Y                       ; $83F1AD |
  ORA.W $1968                               ; $83F1B0 |
  STA.B $04,X                               ; $83F1B3 |
  LDA.W LOOSE_OP_00F2C3,Y                   ; $83F1B5 |
  JSL.L CODE_FL_86CAEE                      ; $83F1B8 |
  LDA.W #$C000                              ; $83F1BC |
  STA.B $22,X                               ; $83F1BF |
  LDA.W #$0038                              ; $83F1C1 |
  STA.B $18,X                               ; $83F1C4 |
  LDY.B $10                                 ; $83F1C6 |
  LDA.W $0002,Y                             ; $83F1C8 |
  STA.B $02,X                               ; $83F1CB |
  STY.B $3A,X                               ; $83F1CD |
  LDA.W $0006,Y                             ; $83F1CF |
  STA.B $06,X                               ; $83F1D2 |
  LDA.W $0009,Y                             ; $83F1D4 |
  CLC                                       ; $83F1D7 |
  ADC.B $00                                 ; $83F1D8 |
  STA.B $09,X                               ; $83F1DA |
  LDA.W $000D,Y                             ; $83F1DC |
  CLC                                       ; $83F1DF |
  ADC.B $02                                 ; $83F1E0 |
  STA.B $0D,X                               ; $83F1E2 |
  LDA.W #$E000                              ; $83F1E4 |
  STA.B $34,X                               ; $83F1E7 |
  LDA.W #$0005                              ; $83F1E9 |
  STA.B $4E,X                               ; $83F1EC |
  LDA.W #$0004                              ; $83F1EE |
  STA.B $2E,X                               ; $83F1F1 |
  STA.B $30,X                               ; $83F1F3 |
  JMP.W CODE_JP_83F059                      ; $83F1F5 |

CODE_83F1F8:
  RTS                                       ; $83F1F8 |

CODE_FN_83F1F9:
  STX.B $10                                 ; $83F1F9 |
  REP #$20                                  ; $83F1FB |
  LDY.W #$0000                              ; $83F1FD |
  CPX.W #$0400                              ; $83F200 |
  BEQ CODE_83F208                           ; $83F203 |
  LDY.W #$000A                              ; $83F205 |

CODE_83F208:
  STY.B $20                                 ; $83F208 |
  LDY.B $20                                 ; $83F20A |
  LDX.W LOOSE_OP_00F2D7,Y                   ; $83F20C |
  JSL.L CODE_FL_86CA36                      ; $83F20F |
  LDA.W #$0000                              ; $83F213 |
  STA.B $3C,X                               ; $83F216 |
  JSR.W CODE_FN_83F231                      ; $83F218 |
  LDY.B $20                                 ; $83F21B |
  LDX.W CODE_00F2D9,Y                       ; $83F21D |
  JSL.L CODE_FL_86CA36                      ; $83F220 |
  LDA.W #$00FF                              ; $83F224 |
  STA.B $3C,X                               ; $83F227 |
  JSR.W CODE_FN_83F231                      ; $83F229 |
  LDX.B $10                                 ; $83F22C |
  SEP #$20                                  ; $83F22E |
  RTS                                       ; $83F230 |

CODE_FN_83F231:
  LDA.W $1968                               ; $83F231 |
  STA.B $04,X                               ; $83F234 |
  LDA.W #$C000                              ; $83F236 |
  STA.B $22,X                               ; $83F239 |
  LDA.W #$003A                              ; $83F23B |
  STA.B $18,X                               ; $83F23E |
  LDY.B $10                                 ; $83F240 |
  LDA.W $0002,Y                             ; $83F242 |
  STA.B $02,X                               ; $83F245 |
  STY.B $3A,X                               ; $83F247 |
  LDA.W $0006,Y                             ; $83F249 |
  STA.B $06,X                               ; $83F24C |
  LDA.W $0014,Y                             ; $83F24E |
  DEC A                                     ; $83F251 |
  DEC A                                     ; $83F252 |
  STA.B $14,X                               ; $83F253 |
  LDA.W #$E000                              ; $83F255 |
  STA.B $34,X                               ; $83F258 |
  LDA.W #$0005                              ; $83F25A |
  STA.B $4E,X                               ; $83F25D |
  LDA.W #$0004                              ; $83F25F |
  STA.B $2E,X                               ; $83F262 |
  STA.B $30,X                               ; $83F264 |
  RTS                                       ; $83F266 |

CODE_FN_83F267:
  LDA.W $0094,Y                             ; $83F267 |
  BNE CODE_83F27C                           ; $83F26A |
  LDA.W $0004,Y                             ; $83F26C |
  LDY.W #$0000                              ; $83F26F |
  BIT.W #$0020                              ; $83F272 |
  BEQ CODE_83F280                           ; $83F275 |
  LDY.W #$0004                              ; $83F277 |
  BRA CODE_83F280                           ; $83F27A |

CODE_83F27C:
  INC A                                     ; $83F27C |
  ASL A                                     ; $83F27D |
  ASL A                                     ; $83F27E |
  TAY                                       ; $83F27F |

CODE_83F280:
  RTS                                       ; $83F280 |

CODE_FL_83F281:
  STX.B $10                                 ; $83F281 |
  REP #$20                                  ; $83F283 |
  JSR.W CODE_FN_83F036                      ; $83F285 |
  BPL CODE_83F28F                           ; $83F288 |
  SEP #$20                                  ; $83F28A |
  LDX.B $10                                 ; $83F28C |
  RTL                                       ; $83F28E |

CODE_83F28F:
  STZ.B $3C,X                               ; $83F28F |
  JSL.L CODE_FL_838EFD                      ; $83F291 |
  LDY.B $10                                 ; $83F295 |
  LDA.W $0050,Y                             ; $83F297 |
  AND.W #$00FF                              ; $83F29A |
  CMP.B $00                                 ; $83F29D |
  BCC CODE_83F2AC                           ; $83F29F |
  LDA.W #$001F                              ; $83F2A1 |
  JSL.L push_sound_queue                    ; $83F2A4 |
  INC.B $3C,X                               ; $83F2A8 |
  BRA CODE_83F2B3                           ; $83F2AA |

CODE_83F2AC:
  LDA.W #$001D                              ; $83F2AC |
  JSL.L push_sound_queue                    ; $83F2AF |

CODE_83F2B3:
  LDY.B $10                                 ; $83F2B3 |
  LDA.W #$C000                              ; $83F2B5 |
  STA.B $22,X                               ; $83F2B8 |
  LDA.W #$0024                              ; $83F2BA |
  STA.B $18,X                               ; $83F2BD |
  LDA.W $0002,Y                             ; $83F2BF |
  STA.B $02,X                               ; $83F2C2 |
  STY.B $3A,X                               ; $83F2C4 |
  LDA.W $0006,Y                             ; $83F2C6 |
  STA.B $06,X                               ; $83F2C9 |
  LDA.W #$0002                              ; $83F2CB |
  STA.B $14,X                               ; $83F2CE |
  LDA.W $0011,Y                             ; $83F2D0 |
  CLC                                       ; $83F2D3 |
  ADC.W #$0010                              ; $83F2D4 |
  STA.B $11,X                               ; $83F2D7 |
  JSR.W CODE_FN_83F267                      ; $83F2D9 |
  LDA.W LOOSE_OP_00F30B,Y                   ; $83F2DC |
  STA.B $26,X                               ; $83F2DF |
  LDA.W CODE_00F30D,Y                       ; $83F2E1 |
  STA.B $28,X                               ; $83F2E4 |
  LDA.W LOOSE_OP_00F31B,Y                   ; $83F2E6 |
  STA.B $18                                 ; $83F2E9 |
  LDA.W CODE_00F31D,Y                       ; $83F2EB |
  STA.B $1A                                 ; $83F2EE |
  LDA.W LOOSE_OP_00F32D,Y                   ; $83F2F0 |
  ORA.W $1968                               ; $83F2F3 |
  STA.B $04,X                               ; $83F2F6 |
  LDA.W LOOSE_OP_00F32B,Y                   ; $83F2F8 |
  TAY                                       ; $83F2FB |
  LDA.B $3C,X                               ; $83F2FC |
  BEQ CODE_83F302                           ; $83F2FE |
  INY                                       ; $83F300 |
  INY                                       ; $83F301 |

CODE_83F302:
  TYA                                       ; $83F302 |
  JSL.L CODE_FL_86CAEE                      ; $83F303 |
  LDY.B $10                                 ; $83F307 |
  LDA.W $0009,Y                             ; $83F309 |
  CLC                                       ; $83F30C |
  ADC.B $18                                 ; $83F30D |
  STA.B $09,X                               ; $83F30F |
  LDA.W $000D,Y                             ; $83F311 |
  CLC                                       ; $83F314 |
  ADC.B $1A                                 ; $83F315 |
  STA.B $0D,X                               ; $83F317 |
  JML.L CODE_JP_83F019                      ; $83F319 |

CODE_FL_83F31D:
  STX.B $10                                 ; $83F31D |
  REP #$20                                  ; $83F31F |
  JSR.W CODE_FN_83F036                      ; $83F321 |
  BPL CODE_83F32B                           ; $83F324 |
  SEP #$20                                  ; $83F326 |
  LDX.B $10                                 ; $83F328 |
  RTL                                       ; $83F32A |

CODE_83F32B:
  STZ.B $1E                                 ; $83F32B |
  JSL.L CODE_FL_838EFD                      ; $83F32D |
  LDY.B $10                                 ; $83F331 |
  LDA.W $0050,Y                             ; $83F333 |
  AND.W #$00FF                              ; $83F336 |
  CMP.B $00                                 ; $83F339 |
  BCC CODE_83F33F                           ; $83F33B |
  INC.B $1E                                 ; $83F33D |

CODE_83F33F:
  LDY.B $10                                 ; $83F33F |
  LDA.W #$0002                              ; $83F341 |
  STA.B $14,X                               ; $83F344 |
  LDA.W $0011,Y                             ; $83F346 |
  CLC                                       ; $83F349 |
  ADC.W #$0010                              ; $83F34A |
  STA.B $11,X                               ; $83F34D |
  JSR.W CODE_FN_83F267                      ; $83F34F |
  LDA.W LOOSE_OP_00F30B,Y                   ; $83F352 |
  STA.B $26,X                               ; $83F355 |
  LDA.W CODE_00F30D,Y                       ; $83F357 |
  STA.B $28,X                               ; $83F35A |
  LDA.W LOOSE_OP_00F31B,Y                   ; $83F35C |
  STA.B $18                                 ; $83F35F |
  LDA.W CODE_00F31D,Y                       ; $83F361 |
  STA.B $1A                                 ; $83F364 |
  LDA.W LOOSE_OP_00F32D,Y                   ; $83F366 |
  ORA.W $1968                               ; $83F369 |
  STA.B $04,X                               ; $83F36C |
  LDY.B $10                                 ; $83F36E |
  LDA.W $0009,Y                             ; $83F370 |
  CLC                                       ; $83F373 |
  ADC.B $18                                 ; $83F374 |
  STA.B $09,X                               ; $83F376 |
  LDA.W $000D,Y                             ; $83F378 |
  CLC                                       ; $83F37B |
  ADC.B $1A                                 ; $83F37C |
  STA.B $0D,X                               ; $83F37E |
  LDA.B $1E                                 ; $83F380 |
  BEQ CODE_83F3AA                           ; $83F382 |
  LDA.W #$0060                              ; $83F384 |
  STA.B $48,X                               ; $83F387 |
  LDA.W #$001F                              ; $83F389 |
  JSL.L push_sound_queue                    ; $83F38C |
  LDA.W #$0012                              ; $83F390 |
  STA.B $4E,X                               ; $83F393 |
  LDA.B $28,X                               ; $83F395 |
  BNE CODE_83F39E                           ; $83F397 |
  LDA.W #$FD80                              ; $83F399 |
  STA.B $28,X                               ; $83F39C |

CODE_83F39E:
  LDA.W #$000B                              ; $83F39E |
  JSL.L CODE_FL_86CAEE                      ; $83F3A1 |
  LDA.W #$0027                              ; $83F3A5 |
  BRA CODE_83F3C0                           ; $83F3A8 |

CODE_83F3AA:
  LDA.W #$001D                              ; $83F3AA |
  JSL.L push_sound_queue                    ; $83F3AD |
  LDA.W #$0005                              ; $83F3B1 |
  STA.B $4E,X                               ; $83F3B4 |
  LDA.W #$000A                              ; $83F3B6 |
  JSL.L CODE_FL_86CAEE                      ; $83F3B9 |
  LDA.W #$0025                              ; $83F3BD |

CODE_83F3C0:
  JSR.W CODE_FN_83F736                      ; $83F3C0 |
  LDX.B $10                                 ; $83F3C3 |
  SEP #$20                                  ; $83F3C5 |
  RTL                                       ; $83F3C7 |

CODE_FL_83F3C8:
  STX.B $10                                 ; $83F3C8 |
  REP #$20                                  ; $83F3CA |
  JSR.W CODE_FN_83F036                      ; $83F3CC |
  BPL CODE_83F3D6                           ; $83F3CF |
  SEP #$20                                  ; $83F3D1 |
  LDX.B $10                                 ; $83F3D3 |
  RTL                                       ; $83F3D5 |

CODE_83F3D6:
  LDY.B $10                                 ; $83F3D6 |
  STY.B $3A,X                               ; $83F3D8 |
  LDA.W #$C000                              ; $83F3DA |
  STA.B $22,X                               ; $83F3DD |
  LDA.W #$0028                              ; $83F3DF |
  STA.B $18,X                               ; $83F3E2 |
  LDA.W $0002,Y                             ; $83F3E4 |
  STA.B $02,X                               ; $83F3E7 |
  LDA.W $0006,Y                             ; $83F3E9 |
  STA.B $06,X                               ; $83F3EC |
  LDA.W #$0002                              ; $83F3EE |
  STA.B $14,X                               ; $83F3F1 |
  LDA.W $0011,Y                             ; $83F3F3 |
  CLC                                       ; $83F3F6 |
  ADC.W #$0010                              ; $83F3F7 |
  STA.B $11,X                               ; $83F3FA |
  JSR.W CODE_FN_83F267                      ; $83F3FC |
  LDA.W CODE_00F36B,Y                       ; $83F3FF |
  STA.B $26,X                               ; $83F402 |
  LDA.W CODE_00F36D,Y                       ; $83F404 |
  STA.B $28,X                               ; $83F407 |
  LDA.W CODE_00F37B,Y                       ; $83F409 |
  STA.B $18                                 ; $83F40C |
  LDA.W LOOSE_OP_00F37D,Y                   ; $83F40E |
  STA.B $1A                                 ; $83F411 |
  LDA.W CODE_00F38D,Y                       ; $83F413 |
  ORA.W $1968                               ; $83F416 |
  STA.B $04,X                               ; $83F419 |
  LDA.W LOOSE_OP_00F38B,Y                   ; $83F41B |
  JSL.L CODE_FL_86CAEE                      ; $83F41E |
  LDY.B $10                                 ; $83F422 |
  LDA.W $0009,Y                             ; $83F424 |
  CLC                                       ; $83F427 |
  ADC.B $18                                 ; $83F428 |
  STA.B $09,X                               ; $83F42A |
  LDA.W $000D,Y                             ; $83F42C |
  CLC                                       ; $83F42F |
  ADC.B $1A                                 ; $83F430 |
  STA.B $0D,X                               ; $83F432 |
  LDA.W #$E000                              ; $83F434 |
  STA.B $34,X                               ; $83F437 |
  LDA.W #$0010                              ; $83F439 |
  STA.B $4E,X                               ; $83F43C |
  LDA.W #$0004                              ; $83F43E |
  STA.B $2E,X                               ; $83F441 |
  STA.B $30,X                               ; $83F443 |
  SEP #$20                                  ; $83F445 |
  LDX.B $10                                 ; $83F447 |
  RTL                                       ; $83F449 |

CODE_FL_83F44A:
  STX.B $10                                 ; $83F44A |
  REP #$20                                  ; $83F44C |
  JSR.W CODE_FN_83F036                      ; $83F44E |
  BPL CODE_83F458                           ; $83F451 |
  SEP #$20                                  ; $83F453 |
  LDX.B $10                                 ; $83F455 |
  RTL                                       ; $83F457 |

CODE_83F458:
  LDA.W #$0070                              ; $83F458 |
  JSL.L CODE_FL_8089BD                      ; $83F45B |
  STZ.B $1E                                 ; $83F45F |
  JSL.L CODE_FL_838EFD                      ; $83F461 |
  LDY.B $10                                 ; $83F465 |
  LDA.W $0050,Y                             ; $83F467 |
  AND.W #$00FF                              ; $83F46A |
  CMP.B $00                                 ; $83F46D |
  BCC CODE_83F473                           ; $83F46F |
  INC.B $1E                                 ; $83F471 |

CODE_83F473:
  LDY.B $10                                 ; $83F473 |
  LDA.W #$C000                              ; $83F475 |
  STA.B $22,X                               ; $83F478 |
  LDA.W $0002,Y                             ; $83F47A |
  STA.B $02,X                               ; $83F47D |
  STY.B $3A,X                               ; $83F47F |
  LDA.W $0006,Y                             ; $83F481 |
  STA.B $06,X                               ; $83F484 |
  LDA.W #$0002                              ; $83F486 |
  STA.B $14,X                               ; $83F489 |
  LDA.W $0011,Y                             ; $83F48B |
  CLC                                       ; $83F48E |
  ADC.W #$0010                              ; $83F48F |
  STA.B $11,X                               ; $83F492 |
  JSR.W CODE_FN_83F267                      ; $83F494 |
  LDA.W LOOSE_OP_00F30B,Y                   ; $83F497 |
  STA.B $26,X                               ; $83F49A |
  LDA.W CODE_00F30D,Y                       ; $83F49C |
  STA.B $28,X                               ; $83F49F |
  LDA.W LOOSE_OP_00F31B,Y                   ; $83F4A1 |
  STA.B $18                                 ; $83F4A4 |
  LDA.W CODE_00F31D,Y                       ; $83F4A6 |
  STA.B $1A                                 ; $83F4A9 |
  LDA.W CODE_00F3BD,Y                       ; $83F4AB |
  ORA.W $1968                               ; $83F4AE |
  STA.B $04,X                               ; $83F4B1 |
  STY.B $1C                                 ; $83F4B3 |
  LDA.W LOOSE_OP_00F3BB,Y                   ; $83F4B5 |
  JSL.L CODE_FL_86CAEE                      ; $83F4B8 |
  LDY.B $10                                 ; $83F4BC |
  LDA.W $0009,Y                             ; $83F4BE |
  CLC                                       ; $83F4C1 |
  ADC.B $18                                 ; $83F4C2 |
  STA.B $09,X                               ; $83F4C4 |
  LDA.W $000D,Y                             ; $83F4C6 |
  CLC                                       ; $83F4C9 |
  ADC.B $1A                                 ; $83F4CA |
  STA.B $0D,X                               ; $83F4CC |
  LDA.W #$0029                              ; $83F4CE |
  JSR.W CODE_FN_83F804                      ; $83F4D1 |
  LDA.B $1E                                 ; $83F4D4 |
  BEQ CODE_83F4ED                           ; $83F4D6 |
  LDA.W $0048,Y                             ; $83F4D8 |
  BNE CODE_83F4ED                           ; $83F4DB |
  PHX                                       ; $83F4DD |
  LDX.B $10                                 ; $83F4DE |
  LDY.B $1C                                 ; $83F4E0 |
  LDA.W CODE_00F3CB,Y                       ; $83F4E2 |
  STA.B $4A,X                               ; $83F4E5 |
  LDA.W LOOSE_OP_00F3CD,Y                   ; $83F4E7 |
  STA.B $4C,X                               ; $83F4EA |
  PLX                                       ; $83F4EC |

CODE_83F4ED:
  LDX.B $10                                 ; $83F4ED |
  SEP #$20                                  ; $83F4EF |
  RTL                                       ; $83F4F1 |

CODE_FL_83F4F2:
  REP #$20                                  ; $83F4F2 |
  JSR.W CODE_FN_83F036                      ; $83F4F4 |
  BMI CODE_83F561                           ; $83F4F7 |
  LDY.B $10                                 ; $83F4F9 |
  STY.B $3A,X                               ; $83F4FB |
  LDA.W #$C000                              ; $83F4FD |
  STA.B $22,X                               ; $83F500 |
  LDA.W #$002A                              ; $83F502 |
  STA.B $18,X                               ; $83F505 |
  LDA.W $0002,Y                             ; $83F507 |
  STA.B $02,X                               ; $83F50A |
  LDA.W $0006,Y                             ; $83F50C |
  STA.B $06,X                               ; $83F50F |
  LDA.W $0004,Y                             ; $83F511 |
  AND.W #$6767                              ; $83F514 |
  ORA.W $1968                               ; $83F517 |
  STA.B $04,X                               ; $83F51A |
  LDA.W #$0002                              ; $83F51C |
  STA.B $14,X                               ; $83F51F |
  LDA.W $0011,Y                             ; $83F521 |
  CLC                                       ; $83F524 |
  ADC.W #$0018                              ; $83F525 |
  STA.B $11,X                               ; $83F528 |
  JSR.W CODE_FN_83F267                      ; $83F52A |
  LDA.W CODE_00F39B,Y                       ; $83F52D |
  STA.B $26,X                               ; $83F530 |
  LDA.W LOOSE_OP_00F39D,Y                   ; $83F532 |
  STA.B $28,X                               ; $83F535 |
  LDA.W LOOSE_OP_00F3AB,Y                   ; $83F537 |
  STA.B $18                                 ; $83F53A |
  LDA.W LOOSE_OP_00F3AD,Y                   ; $83F53C |
  STA.B $1A                                 ; $83F53F |
  LDY.B $10                                 ; $83F541 |
  LDA.W $0009,Y                             ; $83F543 |
  CLC                                       ; $83F546 |
  ADC.B $18                                 ; $83F547 |
  STA.B $09,X                               ; $83F549 |
  LDA.W $000D,Y                             ; $83F54B |
  CLC                                       ; $83F54E |
  ADC.B $1A                                 ; $83F54F |
  STA.B $0D,X                               ; $83F551 |
  STZ.B $2A,X                               ; $83F553 |
  LDA.W #$00A0                              ; $83F555 |
  STA.B $44,X                               ; $83F558 |
  LDA.W #$001C                              ; $83F55A |
  JSL.L push_sound_queue                    ; $83F55D |

CODE_83F561:
  SEP #$20                                  ; $83F561 |
  LDX.B $10                                 ; $83F563 |
  RTL                                       ; $83F565 |

CODE_FL_83F566:
  REP #$20                                  ; $83F566 |
  AND.W #$00FF                              ; $83F568 |
  ASL A                                     ; $83F56B |
  ASL A                                     ; $83F56C |
  TAY                                       ; $83F56D |
  STY.B $20                                 ; $83F56E |
  STX.B $10                                 ; $83F570 |
  JSR.W CODE_FN_83F036                      ; $83F572 |
  BPL CODE_83F57C                           ; $83F575 |
  SEP #$20                                  ; $83F577 |
  LDX.B $10                                 ; $83F579 |
  RTL                                       ; $83F57B |

CODE_83F57C:
  LDY.B $10                                 ; $83F57C |
  LDA.W #$0002                              ; $83F57E |
  STA.B $14,X                               ; $83F581 |
  LDA.W $0011,Y                             ; $83F583 |
  CLC                                       ; $83F586 |
  ADC.W #$0010                              ; $83F587 |
  STA.B $11,X                               ; $83F58A |
  LDY.B $20                                 ; $83F58C |
  LDA.W CODE_00F3FB,Y                       ; $83F58E |
  STA.B $26,X                               ; $83F591 |
  LDA.W LOOSE_OP_00F3FD,Y                   ; $83F593 |
  STA.B $28,X                               ; $83F596 |
  LDA.W CODE_00F3DB,Y                       ; $83F598 |
  STA.B $18                                 ; $83F59B |
  LDA.W CODE_00F3DD,Y                       ; $83F59D |
  STA.B $1A                                 ; $83F5A0 |
  LDA.W CODE_00F41D,Y                       ; $83F5A2 |
  ORA.W $1968                               ; $83F5A5 |
  STA.B $04,X                               ; $83F5A8 |
  LDA.W CODE_00F41B,Y                       ; $83F5AA |
  STA.B $1C                                 ; $83F5AD |
  LDY.B $10                                 ; $83F5AF |
  LDA.W $0009,Y                             ; $83F5B1 |
  CLC                                       ; $83F5B4 |
  ADC.B $18                                 ; $83F5B5 |
  STA.B $09,X                               ; $83F5B7 |
  LDA.W $000D,Y                             ; $83F5B9 |
  CLC                                       ; $83F5BC |
  ADC.B $1A                                 ; $83F5BD |
  STA.B $0D,X                               ; $83F5BF |
  LDA.W #$001F                              ; $83F5C1 |
  JSL.L push_sound_queue                    ; $83F5C4 |
  LDA.B $1C                                 ; $83F5C8 |
  JSL.L CODE_FL_86CAEE                      ; $83F5CA |
  LDA.W #$0039                              ; $83F5CE |
  STA.B $18,X                               ; $83F5D1 |
  LDY.B $10                                 ; $83F5D3 |
  STY.B $3A,X                               ; $83F5D5 |
  LDA.W $0006,Y                             ; $83F5D7 |
  STA.B $06,X                               ; $83F5DA |
  LDA.W $0002,Y                             ; $83F5DC |
  STA.B $02,X                               ; $83F5DF |
  LDA.W #$C000                              ; $83F5E1 |
  STA.B $22,X                               ; $83F5E4 |
  LDA.W #$E000                              ; $83F5E6 |
  STA.B $34,X                               ; $83F5E9 |
  LDA.W #$0005                              ; $83F5EB |
  STA.B $4E,X                               ; $83F5EE |
  LDA.W #$0004                              ; $83F5F0 |
  STA.B $2E,X                               ; $83F5F3 |
  STA.B $30,X                               ; $83F5F5 |
  LDX.B $10                                 ; $83F5F7 |
  SEP #$20                                  ; $83F5F9 |
  RTL                                       ; $83F5FB |

CODE_FN_83F5FC:
  STX.B $10                                 ; $83F5FC |
  REP #$20                                  ; $83F5FE |
  LDY.W #$0000                              ; $83F600 |
  CPX.W #$0400                              ; $83F603 |
  BEQ CODE_83F60B                           ; $83F606 |
  LDY.W #$000A                              ; $83F608 |

CODE_83F60B:
  STY.B $20                                 ; $83F60B |
  LDY.B $20                                 ; $83F60D |
  LDX.W LOOSE_OP_00F2D7,Y                   ; $83F60F |
  JSL.L CODE_FL_86CA36                      ; $83F612 |
  LDA.W #$0000                              ; $83F616 |
  STA.B $3C,X                               ; $83F619 |
  JSR.W CODE_FN_83F634                      ; $83F61B |
  LDY.B $20                                 ; $83F61E |
  LDX.W CODE_00F2D9,Y                       ; $83F620 |
  JSL.L CODE_FL_86CA36                      ; $83F623 |
  LDA.W #$00FF                              ; $83F627 |
  STA.B $3C,X                               ; $83F62A |
  JSR.W CODE_FN_83F634                      ; $83F62C |
  LDX.B $10                                 ; $83F62F |
  SEP #$20                                  ; $83F631 |
  RTS                                       ; $83F633 |

CODE_FN_83F634:
  LDA.W $1968                               ; $83F634 |
  STA.B $04,X                               ; $83F637 |
  LDA.W #$C000                              ; $83F639 |
  STA.B $22,X                               ; $83F63C |
  LDA.W #$003B                              ; $83F63E |
  STA.B $18,X                               ; $83F641 |
  LDY.B $10                                 ; $83F643 |
  LDA.W $0002,Y                             ; $83F645 |
  STA.B $02,X                               ; $83F648 |
  STY.B $3A,X                               ; $83F64A |
  LDA.W $0006,Y                             ; $83F64C |
  STA.B $06,X                               ; $83F64F |
  SEP #$20                                  ; $83F651 |
  LDA.B #$00                                ; $83F653 |
  STA.B $14,X                               ; $83F655 |
  REP #$20                                  ; $83F657 |
  LDA.W #$E000                              ; $83F659 |
  STA.B $34,X                               ; $83F65C |
  LDA.W #$0005                              ; $83F65E |
  STA.B $4E,X                               ; $83F661 |
  LDA.W #$0004                              ; $83F663 |
  STA.B $2E,X                               ; $83F666 |
  STA.B $30,X                               ; $83F668 |
  RTS                                       ; $83F66A |

CODE_FL_83F66B:
  REP #$20                                  ; $83F66B |
  JSL.L CODE_FL_838EFD                      ; $83F66D |
  STZ.B $08                                 ; $83F671 |
  SEP #$20                                  ; $83F673 |
  LDA.B $50,X                               ; $83F675 |
  CMP.B $00                                 ; $83F677 |
  BCC CODE_83F67D                           ; $83F679 |
  INC.B $08                                 ; $83F67B |

CODE_83F67D:
  REP #$20                                  ; $83F67D |
  JSR.W CODE_FN_83F036                      ; $83F67F |
  BPL CODE_83F687                           ; $83F682 |
  JMP.W CODE_JP_83F731                      ; $83F684 |

CODE_83F687:
  LDY.B $10                                 ; $83F687 |
  LDA.W $0009,Y                             ; $83F689 |
  STA.B $18                                 ; $83F68C |
  LDA.W $000D,Y                             ; $83F68E |
  STA.B $1A                                 ; $83F691 |
  LDA.W $0004,Y                             ; $83F693 |
  BIT.W #$2020                              ; $83F696 |
  BEQ CODE_83F69E                           ; $83F699 |
  ORA.W #$2020                              ; $83F69B |

CODE_83F69E:
  ORA.W $1968                               ; $83F69E |
  STA.B $04,X                               ; $83F6A1 |
  STA.B $1C                                 ; $83F6A3 |
  STZ.B $1E                                 ; $83F6A5 |
  LDA.W $0022,Y                             ; $83F6A7 |
  CMP.W #$000D                              ; $83F6AA |
  BEQ CODE_83F6C1                           ; $83F6AD |
  LDY.W #$0010                              ; $83F6AF |
  CMP.W #$000E                              ; $83F6B2 |
  BEQ CODE_83F6CF                           ; $83F6B5 |
  LDA.W #$0022                              ; $83F6B7 |
  STA.B $1E                                 ; $83F6BA |
  LDY.W #$0008                              ; $83F6BC |
  BRA CODE_83F6C4                           ; $83F6BF |

CODE_83F6C1:
  LDY.W #$0000                              ; $83F6C1 |

CODE_83F6C4:
  LDA.B $1C                                 ; $83F6C4 |
  BIT.W #$0020                              ; $83F6C6 |
  BEQ CODE_83F6CF                           ; $83F6C9 |
  INY                                       ; $83F6CB |
  INY                                       ; $83F6CC |
  INY                                       ; $83F6CD |
  INY                                       ; $83F6CE |

CODE_83F6CF:
  LDA.B $18                                 ; $83F6CF |
  CLC                                       ; $83F6D1 |
  ADC.W LOOSE_OP_00F453,Y                   ; $83F6D2 |
  STA.B $09,X                               ; $83F6D5 |
  LDA.B $1A                                 ; $83F6D7 |
  CLC                                       ; $83F6D9 |
  ADC.W LOOSE_OP_00F455,Y                   ; $83F6DA |
  STA.B $0D,X                               ; $83F6DD |
  LDA.W LOOSE_OP_00F46F,Y                   ; $83F6DF |
  STA.B $26,X                               ; $83F6E2 |
  LDA.W CODE_00F471,Y                       ; $83F6E4 |
  STA.B $28,X                               ; $83F6E7 |
  LDA.B $08                                 ; $83F6E9 |
  BEQ CODE_83F713                           ; $83F6EB |
  LDA.W #$0060                              ; $83F6ED |
  STA.B $48,X                               ; $83F6F0 |
  LDA.B $28,X                               ; $83F6F2 |
  BNE CODE_83F702                           ; $83F6F4 |
  LDA.W #$001F                              ; $83F6F6 |
  JSL.L push_sound_queue                    ; $83F6F9 |
  LDA.W #$FD80                              ; $83F6FD |
  STA.B $28,X                               ; $83F700 |

CODE_83F702:
  LDA.W #$000B                              ; $83F702 |
  JSL.L CODE_FL_86CAEE                      ; $83F705 |
  LDA.W #$0012                              ; $83F709 |
  STA.B $4E,X                               ; $83F70C |
  LDA.W #$001B                              ; $83F70E |
  BRA CODE_83F72E                           ; $83F711 |

CODE_83F713:
  LDA.W #$001D                              ; $83F713 |
  JSL.L push_sound_queue                    ; $83F716 |
  LDA.W #$000A                              ; $83F71A |
  JSL.L CODE_FL_86CAEE                      ; $83F71D |
  LDA.W #$0005                              ; $83F721 |
  STA.B $4E,X                               ; $83F724 |
  LDA.W #$001A                              ; $83F726 |
  LDY.B $1E                                 ; $83F729 |
  BEQ CODE_83F72E                           ; $83F72B |
  TYA                                       ; $83F72D |

CODE_83F72E:
  JSR.W CODE_FN_83F736                      ; $83F72E |

CODE_JP_83F731:
  LDX.B $10                                 ; $83F731 |
  SEP #$20                                  ; $83F733 |
  RTL                                       ; $83F735 |

CODE_FN_83F736:
  STA.B $18,X                               ; $83F736 |
  LDY.B $10                                 ; $83F738 |
  STY.B $3A,X                               ; $83F73A |
  LDA.W $0006,Y                             ; $83F73C |
  STA.B $06,X                               ; $83F73F |
  LDA.W $0002,Y                             ; $83F741 |
  STA.B $02,X                               ; $83F744 |
  LDA.W #$C000                              ; $83F746 |
  STA.B $22,X                               ; $83F749 |
  LDA.W #$E000                              ; $83F74B |
  STA.B $34,X                               ; $83F74E |
  LDA.W #$0004                              ; $83F750 |
  STA.B $2E,X                               ; $83F753 |
  STA.B $30,X                               ; $83F755 |
  RTS                                       ; $83F757 |

CODE_FL_83F758:
  REP #$20                                  ; $83F758 |
  JSL.L CODE_FL_838EFD                      ; $83F75A |
  STZ.B $08                                 ; $83F75E |
  SEP #$20                                  ; $83F760 |
  LDA.B $50,X                               ; $83F762 |
  CMP.B $00                                 ; $83F764 |
  BCC CODE_83F76A                           ; $83F766 |
  INC.B $08                                 ; $83F768 |

CODE_83F76A:
  REP #$20                                  ; $83F76A |
  JSR.W CODE_FN_83F036                      ; $83F76C |
  BPL CODE_83F774                           ; $83F76F |
  JMP.W CODE_JP_83F7FF                      ; $83F771 |

CODE_83F774:
  LDY.B $10                                 ; $83F774 |
  LDA.W $0009,Y                             ; $83F776 |
  STA.B $18                                 ; $83F779 |
  LDA.W $000D,Y                             ; $83F77B |
  STA.B $1A                                 ; $83F77E |
  LDA.W $0004,Y                             ; $83F780 |
  AND.W #$00FF                              ; $83F783 |
  BIT.W #$2020                              ; $83F786 |
  BEQ CODE_83F78E                           ; $83F789 |
  ORA.W #$2020                              ; $83F78B |

CODE_83F78E:
  ORA.W $1968                               ; $83F78E |
  STA.B $04,X                               ; $83F791 |
  STA.B $1C                                 ; $83F793 |
  LDA.W $0022,Y                             ; $83F795 |
  CMP.W #$000D                              ; $83F798 |
  BEQ CODE_83F7B2                           ; $83F79B |
  LDY.W #$0010                              ; $83F79D |
  CMP.W #$000E                              ; $83F7A0 |
  BEQ CODE_83F7C0                           ; $83F7A3 |
  LDY.W #$0008                              ; $83F7A5 |
  CMP.W #$000F                              ; $83F7A8 |
  BEQ CODE_83F7B5                           ; $83F7AB |
  LDY.W #$0014                              ; $83F7AD |
  BRA CODE_83F7B5                           ; $83F7B0 |

CODE_83F7B2:
  LDY.W #$0000                              ; $83F7B2 |

CODE_83F7B5:
  LDA.B $1C                                 ; $83F7B5 |
  BIT.W #$0020                              ; $83F7B7 |
  BEQ CODE_83F7C0                           ; $83F7BA |
  INY                                       ; $83F7BC |
  INY                                       ; $83F7BD |
  INY                                       ; $83F7BE |
  INY                                       ; $83F7BF |

CODE_83F7C0:
  LDA.B $18                                 ; $83F7C0 |
  CLC                                       ; $83F7C2 |
  ADC.W LOOSE_OP_00F453,Y                   ; $83F7C3 |
  STA.B $09,X                               ; $83F7C6 |
  LDA.B $1A                                 ; $83F7C8 |
  CLC                                       ; $83F7CA |
  ADC.W LOOSE_OP_00F455,Y                   ; $83F7CB |
  STA.B $0D,X                               ; $83F7CE |
  LDA.W LOOSE_OP_00F483,Y                   ; $83F7D0 |
  STA.B $26,X                               ; $83F7D3 |
  LDA.W CODE_00F485,Y                       ; $83F7D5 |
  STA.B $28,X                               ; $83F7D8 |
  LDA.W CODE_00F49F,Y                       ; $83F7DA |
  JSL.L CODE_FL_86CAEE                      ; $83F7DD |
  LDA.W LOOSE_OP_00F4A1,Y                   ; $83F7E1 |
  BEQ CODE_83F7F9                           ; $83F7E4 |
  STA.B $0A                                 ; $83F7E6 |
  LDA.B $08                                 ; $83F7E8 |
  BEQ CODE_83F7F9                           ; $83F7EA |
  LDY.B $3A,X                               ; $83F7EC |
  LDA.B $0A                                 ; $83F7EE |
  STA.W $004A,Y                             ; $83F7F0 |
  LDA.W #$FB00                              ; $83F7F3 |
  STA.W $0028,Y                             ; $83F7F6 |

CODE_83F7F9:
  LDA.W #$0132                              ; $83F7F9 |
  JSR.W CODE_FN_83F804                      ; $83F7FC |

CODE_JP_83F7FF:
  LDX.B $10                                 ; $83F7FF |
  SEP #$20                                  ; $83F801 |
  RTL                                       ; $83F803 |

CODE_FN_83F804:
  STA.B $18,X                               ; $83F804 |
  LDY.B $10                                 ; $83F806 |
  STY.B $3A,X                               ; $83F808 |
  LDA.W $0006,Y                             ; $83F80A |
  STA.B $06,X                               ; $83F80D |
  LDA.W $0002,Y                             ; $83F80F |
  STA.B $02,X                               ; $83F812 |
  LDA.W #$000A                              ; $83F814 |
  STA.B $4E,X                               ; $83F817 |
  LDA.W #$C000                              ; $83F819 |
  STA.B $22,X                               ; $83F81C |
  LDA.W #$E000                              ; $83F81E |
  STA.B $34,X                               ; $83F821 |
  LDA.W #$0008                              ; $83F823 |
  STA.B $2E,X                               ; $83F826 |
  STA.B $30,X                               ; $83F828 |
  RTS                                       ; $83F82A |

CODE_FL_83F82B:
  STX.B $10                                 ; $83F82B |
  REP #$20                                  ; $83F82D |
  LDA.W #$00BC                              ; $83F82F |
  JSL.L CODE_FL_8089BD                      ; $83F832 |
  LDA.B $22,X                               ; $83F836 |
  CMP.W #$003F                              ; $83F838 |
  BEQ CODE_83F84E                           ; $83F83B |
  LDY.W #$0000                              ; $83F83D |
  LDA.B $04,X                               ; $83F840 |
  BIT.W #$2020                              ; $83F842 |
  BEQ CODE_83F84A                           ; $83F845 |
  LDY.W #$0004                              ; $83F847 |

CODE_83F84A:
  JML.L CODE_JL_83F8DE                      ; $83F84A |

CODE_83F84E:
  LDY.W #$0008                              ; $83F84E |
  JML.L CODE_JL_83F8DE                      ; $83F851 |

CODE_FL_83F855:
  STX.B $10                                 ; $83F855 |
  REP #$20                                  ; $83F857 |
  JSR.W CODE_FN_83F036                      ; $83F859 |
  BPL CODE_83F863                           ; $83F85C |
  SEP #$20                                  ; $83F85E |
  LDX.B $10                                 ; $83F860 |
  RTS                                       ; $83F862 |

CODE_83F863:
  LDA.W #$0012                              ; $83F863 |
  JSL.L push_sound_queue                    ; $83F866 |
  LDY.B $10                                 ; $83F86A |
  LDA.W $0022,Y                             ; $83F86C |
  CMP.W #$0041                              ; $83F86F |
  BEQ CODE_83F886                           ; $83F872 |
  LDA.W $0004,Y                             ; $83F874 |
  LDY.W #$0000                              ; $83F877 |
  BIT.W #$2020                              ; $83F87A |
  BEQ CODE_83F882                           ; $83F87D |
  LDY.W #$0004                              ; $83F87F |

CODE_83F882:
  JML.L CODE_JL_83FA24                      ; $83F882 |

CODE_83F886:
  LDY.W #$0008                              ; $83F886 |
  JML.L CODE_JL_83FA24                      ; $83F889 |

CODE_FL_83F88D:
  STX.B $10                                 ; $83F88D |
  REP #$20                                  ; $83F88F |
  JSR.W CODE_FN_83F036                      ; $83F891 |
  BPL CODE_83F89B                           ; $83F894 |
  SEP #$20                                  ; $83F896 |
  LDX.B $10                                 ; $83F898 |
  RTS                                       ; $83F89A |

CODE_83F89B:
  LDA.W #$0020                              ; $83F89B |
  JSL.L CODE_FL_86CAEE                      ; $83F89E |
  LDY.B $10                                 ; $83F8A2 |
  STY.B $3A,X                               ; $83F8A4 |
  LDA.W $0022,Y                             ; $83F8A6 |
  STA.B $3C,X                               ; $83F8A9 |
  LDA.W #$C000                              ; $83F8AB |
  STA.B $22,X                               ; $83F8AE |
  LDA.W #$0030                              ; $83F8B0 |
  STA.B $18,X                               ; $83F8B3 |
  STZ.B $02,X                               ; $83F8B5 |
  LDA.W $0006,Y                             ; $83F8B7 |
  STA.B $06,X                               ; $83F8BA |
  STZ.B $34,X                               ; $83F8BC |
  LDA.W #$0002                              ; $83F8BE |
  STA.B $4E,X                               ; $83F8C1 |
  LDA.W #$0004                              ; $83F8C3 |
  STA.B $2E,X                               ; $83F8C6 |
  STA.B $30,X                               ; $83F8C8 |
  SEP #$20                                  ; $83F8CA |
  LDX.B $10                                 ; $83F8CC |
  RTL                                       ; $83F8CE |

CODE_FL_83F8CF:
  STX.B $10                                 ; $83F8CF |
  REP #$20                                  ; $83F8D1 |
  LDA.W #$00BC                              ; $83F8D3 |
  JSL.L CODE_FL_8089BD                      ; $83F8D6 |
  TXY                                       ; $83F8DA |
  JSR.W CODE_FN_83F267                      ; $83F8DB |

CODE_JL_83F8DE:
  LDA.W CODE_00F4CF,Y                       ; $83F8DE |
  STA.B $0A                                 ; $83F8E1 |
  LDA.W LOOSE_OP_00F4D1,Y                   ; $83F8E3 |
  STA.B $0C                                 ; $83F8E6 |
  LDA.W CODE_00F4DF,Y                       ; $83F8E8 |
  STA.B $12                                 ; $83F8EB |
  LDA.W LOOSE_OP_00F4E1,Y                   ; $83F8ED |
  STA.B $14                                 ; $83F8F0 |
  STY.B $1A                                 ; $83F8F2 |
  LDY.W #$0000                              ; $83F8F4 |
  CPX.W #$0400                              ; $83F8F7 |
  BEQ CODE_83F8FF                           ; $83F8FA |
  LDY.W #$000A                              ; $83F8FC |

CODE_83F8FF:
  STY.B $18                                 ; $83F8FF |
  LDA.W LOOSE_OP_00F4BB,Y                   ; $83F901 |
  TAX                                       ; $83F904 |
  LDA.B $1A                                 ; $83F905 |
  CMP.W #$0008                              ; $83F907 |
  BCC CODE_83F913                           ; $83F90A |
  LDA.W #$001C                              ; $83F90C |
  STA.B $0E                                 ; $83F90F |
  BRA CODE_83F918                           ; $83F911 |

CODE_83F913:
  LDA.W #$001E                              ; $83F913 |
  STA.B $0E                                 ; $83F916 |

CODE_83F918:
  LDA.W #$0000                              ; $83F918 |
  JSR.W CODE_FN_83F9AD                      ; $83F91B |
  LDY.B $18                                 ; $83F91E |
  LDA.W CODE_00F4BD,Y                       ; $83F920 |
  TAX                                       ; $83F923 |
  LDA.B $0A                                 ; $83F924 |
  CLC                                       ; $83F926 |
  ADC.B $12                                 ; $83F927 |
  STA.B $0A                                 ; $83F929 |
  LDA.B $0C                                 ; $83F92B |
  CLC                                       ; $83F92D |
  ADC.B $14                                 ; $83F92E |
  STA.B $0C                                 ; $83F930 |
  LDA.B $1A                                 ; $83F932 |
  CMP.W #$0008                              ; $83F934 |
  BCC CODE_83F940                           ; $83F937 |
  LDA.W #$001C                              ; $83F939 |
  STA.B $0E                                 ; $83F93C |
  BRA CODE_83F945                           ; $83F93E |

CODE_83F940:
  LDA.W #$001E                              ; $83F940 |
  STA.B $0E                                 ; $83F943 |

CODE_83F945:
  LDA.W #$0002                              ; $83F945 |
  JSR.W CODE_FN_83F9AD                      ; $83F948 |
  LDY.B $18                                 ; $83F94B |
  LDA.W LOOSE_OP_00F4BF,Y                   ; $83F94D |
  TAX                                       ; $83F950 |
  LDA.B $0A                                 ; $83F951 |
  CLC                                       ; $83F953 |
  ADC.B $12                                 ; $83F954 |
  STA.B $0A                                 ; $83F956 |
  LDA.B $0C                                 ; $83F958 |
  CLC                                       ; $83F95A |
  ADC.B $14                                 ; $83F95B |
  STA.B $0C                                 ; $83F95D |
  LDA.W #$001C                              ; $83F95F |
  STA.B $0E                                 ; $83F962 |
  LDA.W #$0004                              ; $83F964 |
  JSR.W CODE_FN_83F9AD                      ; $83F967 |
  LDY.B $18                                 ; $83F96A |
  LDA.W CODE_00F4C1,Y                       ; $83F96C |
  TAX                                       ; $83F96F |
  LDA.B $0A                                 ; $83F970 |
  CLC                                       ; $83F972 |
  ADC.B $12                                 ; $83F973 |
  STA.B $0A                                 ; $83F975 |
  LDA.B $0C                                 ; $83F977 |
  CLC                                       ; $83F979 |
  ADC.B $14                                 ; $83F97A |
  STA.B $0C                                 ; $83F97C |
  LDA.W #$001C                              ; $83F97E |
  STA.B $0E                                 ; $83F981 |
  LDA.W #$0006                              ; $83F983 |
  JSR.W CODE_FN_83F9AD                      ; $83F986 |
  LDY.B $18                                 ; $83F989 |
  LDA.W CODE_00F4C3,Y                       ; $83F98B |
  TAX                                       ; $83F98E |
  LDA.B $0A                                 ; $83F98F |
  CLC                                       ; $83F991 |
  ADC.B $12                                 ; $83F992 |
  STA.B $0A                                 ; $83F994 |
  LDA.B $0C                                 ; $83F996 |
  CLC                                       ; $83F998 |
  ADC.B $14                                 ; $83F999 |
  STA.B $0C                                 ; $83F99B |
  LDA.W #$001B                              ; $83F99D |
  STA.B $0E                                 ; $83F9A0 |
  LDA.W #$0008                              ; $83F9A2 |
  JSR.W CODE_FN_83F9AD                      ; $83F9A5 |
  SEP #$20                                  ; $83F9A8 |
  LDX.B $10                                 ; $83F9AA |
  RTL                                       ; $83F9AC |

CODE_FN_83F9AD:
  STA.B $08                                 ; $83F9AD |
  JSL.L CODE_FL_86CA36                      ; $83F9AF |
  LDA.B $08                                 ; $83F9B3 |
  STA.B $3E,X                               ; $83F9B5 |
  LDA.B $0A                                 ; $83F9B7 |
  STA.B $44,X                               ; $83F9B9 |
  LDA.B $0C                                 ; $83F9BB |
  STA.B $46,X                               ; $83F9BD |
  LDA.B $0E                                 ; $83F9BF |
  JSL.L CODE_FL_86CAEE                      ; $83F9C1 |
  LDY.B $10                                 ; $83F9C5 |
  STY.B $3A,X                               ; $83F9C7 |
  LDA.W $0022,Y                             ; $83F9C9 |
  STA.B $3C,X                               ; $83F9CC |
  LDA.W #$C000                              ; $83F9CE |
  STA.B $22,X                               ; $83F9D1 |
  STZ.B $02,X                               ; $83F9D3 |
  LDA.W $0006,Y                             ; $83F9D5 |
  STA.B $06,X                               ; $83F9D8 |
  LDA.W $0004,Y                             ; $83F9DA |
  AND.W #$0020                              ; $83F9DD |
  BEQ CODE_83F9E5                           ; $83F9E0 |
  LDA.W #$2020                              ; $83F9E2 |

CODE_83F9E5:
  ORA.W $1968                               ; $83F9E5 |
  STA.B $04,X                               ; $83F9E8 |
  LDA.W #$0002                              ; $83F9EA |
  STA.B $14,X                               ; $83F9ED |
  LDA.W #$E000                              ; $83F9EF |
  STA.B $34,X                               ; $83F9F2 |
  LDA.W #$0003                              ; $83F9F4 |
  STA.B $4E,X                               ; $83F9F7 |
  LDA.W #$0004                              ; $83F9F9 |
  STA.B $2E,X                               ; $83F9FC |
  STA.B $30,X                               ; $83F9FE |
  LDA.B $90                                 ; $83FA00 |
  CMP.W #$0000                              ; $83FA02 |
  BNE CODE_83FA0D                           ; $83FA05 |
  LDA.W #$0033                              ; $83FA07 |
  STA.B $18,X                               ; $83FA0A |
  RTS                                       ; $83FA0C |

CODE_83FA0D:
  LDA.W #$002E                              ; $83FA0D |
  STA.B $18,X                               ; $83FA10 |
  RTS                                       ; $83FA12 |

CODE_FL_83FA13:
  STX.B $10                                 ; $83FA13 |
  REP #$20                                  ; $83FA15 |
  JSR.W CODE_FN_83F036                      ; $83FA17 |
  BPL CODE_83FA21                           ; $83FA1A |
  SEP #$20                                  ; $83FA1C |
  LDX.B $10                                 ; $83FA1E |
  RTS                                       ; $83FA20 |

CODE_83FA21:
  JSR.W CODE_FN_83F267                      ; $83FA21 |

CODE_JL_83FA24:
  LDA.W #$0012                              ; $83FA24 |
  JSL.L push_sound_queue                    ; $83FA27 |
  LDA.W LOOSE_OP_00F4EF,Y                   ; $83FA2B |
  STA.B $26,X                               ; $83FA2E |
  LDA.W LOOSE_OP_00F4F1,Y                   ; $83FA30 |
  STA.B $28,X                               ; $83FA33 |
  LDA.W CODE_00F4FF,Y                       ; $83FA35 |
  STA.B $18                                 ; $83FA38 |
  LDA.W CODE_00F501,Y                       ; $83FA3A |
  STA.B $1A                                 ; $83FA3D |
  LDA.W CODE_00F511,Y                       ; $83FA3F |
  ORA.W $1968                               ; $83FA42 |
  STA.B $04,X                               ; $83FA45 |
  LDA.W CODE_00F50F,Y                       ; $83FA47 |
  JSL.L CODE_FL_86CAEE                      ; $83FA4A |
  LDY.B $10                                 ; $83FA4E |
  STY.B $3A,X                               ; $83FA50 |
  LDA.W $0022,Y                             ; $83FA52 |
  STA.B $3C,X                               ; $83FA55 |
  LDA.W #$C000                              ; $83FA57 |
  STA.B $22,X                               ; $83FA5A |
  STZ.B $02,X                               ; $83FA5C |
  LDA.W $0006,Y                             ; $83FA5E |
  STA.B $06,X                               ; $83FA61 |
  LDA.W $0009,Y                             ; $83FA63 |
  CLC                                       ; $83FA66 |
  ADC.B $18                                 ; $83FA67 |
  STA.B $09,X                               ; $83FA69 |
  LDA.W #$E000                              ; $83FA6B |
  STA.B $34,X                               ; $83FA6E |
  LDA.W #$0002                              ; $83FA70 |
  STA.B $4E,X                               ; $83FA73 |
  LDA.W #$0004                              ; $83FA75 |
  STA.B $2E,X                               ; $83FA78 |
  STA.B $30,X                               ; $83FA7A |
  LDA.B $90                                 ; $83FA7C |
  CMP.W #$0000                              ; $83FA7E |
  BNE CODE_83FA9C                           ; $83FA81 |
  LDA.W #$0034                              ; $83FA83 |
  STA.B $18,X                               ; $83FA86 |
  LDA.W #$0010                              ; $83FA88 |
  STA.B $11,X                               ; $83FA8B |
  LDA.W #$0002                              ; $83FA8D |
  STA.B $14,X                               ; $83FA90 |
  LDA.W $000D,Y                             ; $83FA92 |
  CLC                                       ; $83FA95 |
  ADC.B $1A                                 ; $83FA96 |
  STA.B $0D,X                               ; $83FA98 |
  BRA CODE_83FAB5                           ; $83FA9A |

CODE_83FA9C:
  LDA.W #$002F                              ; $83FA9C |
  STA.B $18,X                               ; $83FA9F |
  LDA.B $1A                                 ; $83FAA1 |
  CLC                                       ; $83FAA3 |
  ADC.W $000D,Y                             ; $83FAA4 |
  STA.B $0D,X                               ; $83FAA7 |
  LDA.B $1A                                 ; $83FAA9 |
  BNE CODE_83FAB5                           ; $83FAAB |
  LDA.B $0D,X                               ; $83FAAD |
  SEC                                       ; $83FAAF |
  SBC.W #$0012                              ; $83FAB0 |
  STA.B $0D,X                               ; $83FAB3 |

CODE_83FAB5:
  SEP #$20                                  ; $83FAB5 |
  LDX.B $10                                 ; $83FAB7 |
  RTL                                       ; $83FAB9 |

  STX.B $10                                 ; $83FABA |
  REP #$20                                  ; $83FABC |
  JSR.W CODE_FN_83F036                      ; $83FABE |
  BPL CODE_83FAC8                           ; $83FAC1 |
  SEP #$20                                  ; $83FAC3 |
  LDX.B $10                                 ; $83FAC5 |
  RTS                                       ; $83FAC7 |

CODE_83FAC8:
  LDY.B $10                                 ; $83FAC8 |
  STY.B $3A,X                               ; $83FACA |
  LDA.W $0094,Y                             ; $83FACC |
  CMP.W #$0001                              ; $83FACF |
  BNE CODE_83FAD9                           ; $83FAD2 |
  LDA.W #$0020                              ; $83FAD4 |
  BRA CODE_83FADC                           ; $83FAD7 |

CODE_83FAD9:
  LDA.W #$0021                              ; $83FAD9 |

CODE_83FADC:
  JSL.L CODE_FL_86CAEE                      ; $83FADC |
  LDY.B $10                                 ; $83FAE0 |
  LDA.W $0022,Y                             ; $83FAE2 |
  STA.B $3C,X                               ; $83FAE5 |
  LDA.W #$C000                              ; $83FAE7 |
  STA.B $22,X                               ; $83FAEA |
  LDA.W #$0035                              ; $83FAEC |
  STA.B $18,X                               ; $83FAEF |
  STZ.B $02,X                               ; $83FAF1 |
  LDA.W $0006,Y                             ; $83FAF3 |
  STA.B $06,X                               ; $83FAF6 |
  STZ.B $34,X                               ; $83FAF8 |
  LDA.W #$0002                              ; $83FAFA |
  STA.B $4E,X                               ; $83FAFD |
  LDA.W #$0004                              ; $83FAFF |
  STA.B $2E,X                               ; $83FB02 |
  STA.B $30,X                               ; $83FB04 |
  SEP #$20                                  ; $83FB06 |
  LDX.B $10                                 ; $83FB08 |
  RTL                                       ; $83FB0A |

CODE_FN_83FB0B:
  LDA.B $18,X                               ; $83FB0B |
  BEQ CODE_83FB13                           ; $83FB0D |
  JSL.L CODE_FL_83D88D                      ; $83FB0F |

CODE_83FB13:
  RTS                                       ; $83FB13 |

  LDX.W #$0400                              ; $83FB14 |
  BRA CODE_83FB3F                           ; $83FB17 |

CODE_FL_83FB19:
  SEP #$20                                  ; $83FB19 |
  LDX.W #$04C0                              ; $83FB1B |

CODE_83FB1E:
  STX.B $94                                 ; $83FB1E |
  JSR.W CODE_FN_83FB0B                      ; $83FB20 |
  CPX.W #$04C0                              ; $83FB23 |
  BNE CODE_83FB2D                           ; $83FB26 |
  LDX.W #$0400                              ; $83FB28 |
  BRA CODE_83FB1E                           ; $83FB2B |

CODE_83FB2D:
  REP #$20                                  ; $83FB2D |
  LDA.B $92                                 ; $83FB2F |
  BIT.W #$0010                              ; $83FB31 |
  BEQ CODE_83FB3F                           ; $83FB34 |
  LDA.W $1960                               ; $83FB36 |
  STA.W $1666                               ; $83FB39 |
  JMP.W CODE_JP_83FC0A                      ; $83FB3C |

CODE_83FB3F:
  LDA.B $3A,X                               ; $83FB3F |
  ORA.W $00FA,X                             ; $83FB41 |
  BIT.W #$0003                              ; $83FB44 |
  BNE CODE_83FB4C                           ; $83FB47 |
  JMP.W CODE_JP_83FCDA                      ; $83FB49 |

CODE_83FB4C:
  BIT.W #$0002                              ; $83FB4C |
  BNE CODE_83FB54                           ; $83FB4F |
  JMP.W CODE_JP_83FC0A                      ; $83FB51 |

CODE_83FB54:
  LDA.W $00FA,X                             ; $83FB54 |
  BIT.W #$0002                              ; $83FB57 |
  BNE CODE_83FB64                           ; $83FB5A |
  LDA.B $3C,X                               ; $83FB5C |
  STA.W $1666                               ; $83FB5E |
  JMP.W CODE_JP_83FC0A                      ; $83FB61 |

CODE_83FB64:
  LDA.B $3A,X                               ; $83FB64 |
  BIT.W #$0002                              ; $83FB66 |
  BNE CODE_83FB74                           ; $83FB69 |
  LDA.W $00FC,X                             ; $83FB6B |
  STA.W $1666                               ; $83FB6E |
  JMP.W CODE_JP_83FC0A                      ; $83FB71 |

CODE_83FB74:
  LDA.B $3C,X                               ; $83FB74 |
  ORA.W $00FC,X                             ; $83FB76 |
  BNE CODE_83FB7E                           ; $83FB79 |
  JMP.W CODE_JP_83FC0A                      ; $83FB7B |

CODE_83FB7E:
  LDA.B $3C,X                               ; $83FB7E |
  BEQ CODE_83FBDB                           ; $83FB80 |
  LDA.W $00FC,X                             ; $83FB82 |
  BEQ CODE_83FBAE                           ; $83FB85 |
  LDA.B $3C,X                               ; $83FB87 |
  EOR.W $00FC,X                             ; $83FB89 |
  ASL A                                     ; $83FB8C |
  BCS CODE_JP_83FC0A                        ; $83FB8D |
  LDA.B $3C,X                               ; $83FB8F |
  BMI CODE_83FB9A                           ; $83FB91 |
  CMP.W $00FC,X                             ; $83FB93 |
  BCS CODE_83FB9F                           ; $83FB96 |
  BCC CODE_83FBA6                           ; $83FB98 |

CODE_83FB9A:
  CMP.W $00FC,X                             ; $83FB9A |
  BCS CODE_83FBA6                           ; $83FB9D |

CODE_83FB9F:
  LDA.B $3C,X                               ; $83FB9F |
  STA.W $1666                               ; $83FBA1 |
  BRA CODE_JP_83FC0A                        ; $83FBA4 |

CODE_83FBA6:
  LDA.W $00FC,X                             ; $83FBA6 |
  STA.W $1666                               ; $83FBA9 |
  BRA CODE_JP_83FC0A                        ; $83FBAC |

CODE_83FBAE:
  LDA.B $3C,X                               ; $83FBAE |
  STA.W $1666                               ; $83FBB0 |
  BMI CODE_83FBC8                           ; $83FBB3 |
  LDA.W $00C9,X                             ; $83FBB5 |
  SEC                                       ; $83FBB8 |
  SBC.W #$0010                              ; $83FBB9 |
  BMI CODE_83FC07                           ; $83FBBC |
  CMP.W $1666                               ; $83FBBE |
  BCS CODE_JP_83FC0A                        ; $83FBC1 |
  STA.W $1666                               ; $83FBC3 |
  BRA CODE_JP_83FC0A                        ; $83FBC6 |

CODE_83FBC8:
  LDA.W $00C9,X                             ; $83FBC8 |
  SEC                                       ; $83FBCB |
  SBC.W #$00F0                              ; $83FBCC |
  BPL CODE_83FC07                           ; $83FBCF |
  CMP.W $1666                               ; $83FBD1 |
  BCC CODE_JP_83FC0A                        ; $83FBD4 |
  STA.W $1666                               ; $83FBD6 |
  BRA CODE_JP_83FC0A                        ; $83FBD9 |

CODE_83FBDB:
  LDA.W $00FC,X                             ; $83FBDB |
  STA.W $1666                               ; $83FBDE |
  BMI CODE_83FBF5                           ; $83FBE1 |
  LDA.B $09,X                               ; $83FBE3 |
  SEC                                       ; $83FBE5 |
  SBC.W #$0010                              ; $83FBE6 |
  BMI CODE_83FC07                           ; $83FBE9 |
  CMP.W $1666                               ; $83FBEB |
  BCS CODE_JP_83FC0A                        ; $83FBEE |
  STA.W $1666                               ; $83FBF0 |
  BRA CODE_JP_83FC0A                        ; $83FBF3 |

CODE_83FBF5:
  LDA.B $09,X                               ; $83FBF5 |
  SEC                                       ; $83FBF7 |
  SBC.W #$00F0                              ; $83FBF8 |
  BPL CODE_83FC07                           ; $83FBFB |
  CMP.W $1666                               ; $83FBFD |
  BCC CODE_JP_83FC0A                        ; $83FC00 |
  STA.W $1666                               ; $83FC02 |
  BRA CODE_JP_83FC0A                        ; $83FC05 |

CODE_83FC07:
  STZ.W $1666                               ; $83FC07 |

CODE_JP_83FC0A:
  LDA.B $92                                 ; $83FC0A |
  BIT.W #$0001                              ; $83FC0C |
  BEQ CODE_83FC1A                           ; $83FC0F |
  LDA.W $1962                               ; $83FC11 |
  STA.W $1676                               ; $83FC14 |
  JMP.W CODE_JP_83FCDA                      ; $83FC17 |

CODE_83FC1A:
  LDA.B $3A,X                               ; $83FC1A |
  ORA.W $00FA,X                             ; $83FC1C |
  BIT.W #$0001                              ; $83FC1F |
  BNE CODE_83FC27                           ; $83FC22 |
  JMP.W CODE_JP_83FCDA                      ; $83FC24 |

CODE_83FC27:
  LDA.B $3A,X                               ; $83FC27 |
  BIT.W #$0001                              ; $83FC29 |
  BNE CODE_83FC31                           ; $83FC2C |
  JMP.W CODE_JP_83FCB2                      ; $83FC2E |

CODE_83FC31:
  LDA.W $00FA,X                             ; $83FC31 |
  BIT.W #$0001                              ; $83FC34 |
  BEQ CODE_83FCAE                           ; $83FC37 |
  LDA.B $0D,X                               ; $83FC39 |
  CLC                                       ; $83FC3B |
  ADC.W $00CD,X                             ; $83FC3C |
  BPL CODE_83FC42                           ; $83FC3F |
  TDC                                       ; $83FC41 |

CODE_83FC42:
  LSR A                                     ; $83FC42 |
  SEC                                       ; $83FC43 |
  SBC.W #$0060                              ; $83FC44 |
  BMI CODE_83FC53                           ; $83FC47 |
  CMP.W #$0004                              ; $83FC49 |
  BCC CODE_83FC5B                           ; $83FC4C |
  LDA.W #$0004                              ; $83FC4E |
  BRA CODE_83FC5B                           ; $83FC51 |

CODE_83FC53:
  CMP.W #$FFFC                              ; $83FC53 |
  BCS CODE_83FC5B                           ; $83FC56 |
  LDA.W #$FFFC                              ; $83FC58 |

CODE_83FC5B:
  STA.W $1676                               ; $83FC5B |
  LDA.W $1676                               ; $83FC5E |
  BMI CODE_83FC89                           ; $83FC61 |
  LDA.B $0D,X                               ; $83FC63 |
  BMI CODE_83FC78                           ; $83FC65 |
  CMP.W #$0020                              ; $83FC67 |
  BCC CODE_83FC78                           ; $83FC6A |

CODE_83FC6C:
  LDA.W $00CD,X                             ; $83FC6C |
  BMI CODE_83FC80                           ; $83FC6F |
  CMP.W #$0020                              ; $83FC71 |
  BCC CODE_83FC80                           ; $83FC74 |
  BRA CODE_JP_83FCDA                        ; $83FC76 |

CODE_83FC78:
  LDA.B $42,X                               ; $83FC78 |
  BEQ CODE_83FCA9                           ; $83FC7A |
  BPL CODE_83FC6C                           ; $83FC7C |
  BRA CODE_83FCA9                           ; $83FC7E |

CODE_83FC80:
  LDA.W $0102,X                             ; $83FC80 |
  BEQ CODE_83FCA9                           ; $83FC83 |
  BPL CODE_JP_83FCDA                        ; $83FC85 |
  BRA CODE_83FCA9                           ; $83FC87 |

CODE_83FC89:
  LDA.B $0D,X                               ; $83FC89 |
  BMI CODE_83FC92                           ; $83FC8B |
  CMP.W #$00D1                              ; $83FC8D |
  BCS CODE_83FCA3                           ; $83FC90 |

CODE_83FC92:
  LDA.W $00CD,X                             ; $83FC92 |
  BMI CODE_JP_83FCDA                        ; $83FC95 |
  CMP.W #$00D1                              ; $83FC97 |
  BCC CODE_JP_83FCDA                        ; $83FC9A |
  LDA.W $0102,X                             ; $83FC9C |
  BMI CODE_JP_83FCDA                        ; $83FC9F |
  BRA CODE_83FCA9                           ; $83FCA1 |

CODE_83FCA3:
  LDA.B $42,X                               ; $83FCA3 |
  BMI CODE_83FC92                           ; $83FCA5 |
  BRA CODE_83FCA9                           ; $83FCA7 |

CODE_83FCA9:
  STZ.W $1676                               ; $83FCA9 |
  BRA CODE_JP_83FCDA                        ; $83FCAC |

CODE_83FCAE:
  LDA.B $0D,X                               ; $83FCAE |
  BRA CODE_83FCB5                           ; $83FCB0 |

CODE_JP_83FCB2:
  LDA.W $00CD,X                             ; $83FCB2 |

CODE_83FCB5:
  SEC                                       ; $83FCB5 |
  SBC.W #$0060                              ; $83FCB6 |
  BMI CODE_83FCCA                           ; $83FCB9 |
  SBC.W #$0010                              ; $83FCBB |
  BMI CODE_JP_83FCDA                        ; $83FCBE |
  CMP.W #$0004                              ; $83FCC0 |
  BCC CODE_83FCD7                           ; $83FCC3 |
  LDA.W #$0004                              ; $83FCC5 |
  BRA CODE_83FCD7                           ; $83FCC8 |

CODE_83FCCA:
  ADC.W #$0010                              ; $83FCCA |
  BPL CODE_JP_83FCDA                        ; $83FCCD |
  CMP.W #$FFFC                              ; $83FCCF |
  BCS CODE_83FCD7                           ; $83FCD2 |
  LDA.W #$FFFC                              ; $83FCD4 |

CODE_83FCD7:
  STA.W $1676                               ; $83FCD7 |

CODE_JP_83FCDA:
  LDA.W $1666                               ; $83FCDA |
  BMI CODE_83FCEB                           ; $83FCDD |
  LDA.B $92                                 ; $83FCDF |
  BIT.W #$0080                              ; $83FCE1 |
  BEQ CODE_83FCF5                           ; $83FCE4 |
  STZ.W $1666                               ; $83FCE6 |
  BRA CODE_83FCF5                           ; $83FCE9 |

CODE_83FCEB:
  LDA.B $92                                 ; $83FCEB |
  BIT.W #$0100                              ; $83FCED |
  BEQ CODE_83FCF5                           ; $83FCF0 |
  STZ.W $1666                               ; $83FCF2 |

CODE_83FCF5:
  LDA.W $1676                               ; $83FCF5 |
  BMI CODE_83FD06                           ; $83FCF8 |
  LDA.B $92                                 ; $83FCFA |
  BIT.W #$0008                              ; $83FCFC |
  BEQ CODE_83FD10                           ; $83FCFF |
  STZ.W $1676                               ; $83FD01 |
  BRA CODE_83FD10                           ; $83FD04 |

CODE_83FD06:
  LDA.B $92                                 ; $83FD06 |
  BIT.W #$0004                              ; $83FD08 |
  BEQ CODE_83FD10                           ; $83FD0B |
  STZ.W $1676                               ; $83FD0D |

CODE_83FD10:
  LDA.B $92                                 ; $83FD10 |
  BIT.W #$0002                              ; $83FD12 |
  BEQ CODE_83FD21                           ; $83FD15 |
  LDA.W $1676                               ; $83FD17 |
  CLC                                       ; $83FD1A |
  ADC.W $1962                               ; $83FD1B |
  STA.W $1676                               ; $83FD1E |

CODE_83FD21:
  LDA.B $92                                 ; $83FD21 |
  BIT.W #$0020                              ; $83FD23 |
  BEQ CODE_83FD32                           ; $83FD26 |
  LDA.W $1666                               ; $83FD28 |
  CLC                                       ; $83FD2B |
  ADC.W $1960                               ; $83FD2C |
  STA.W $1666                               ; $83FD2F |

CODE_83FD32:
  STZ.B $3C,X                               ; $83FD32 |
  STZ.W $00FC,X                             ; $83FD34 |
  RTL                                       ; $83FD37 |

  LDA.W $1666                               ; $83FD38 |
  BMI CODE_83FD56                           ; $83FD3B |
  LDA.B $18,X                               ; $83FD3D |
  BEQ CODE_83FD48                           ; $83FD3F |
  LDA.B $09,X                               ; $83FD41 |
  CMP.W #$0010                              ; $83FD43 |
  BCC CODE_83FD6E                           ; $83FD46 |

CODE_83FD48:
  LDA.W $00D8,X                             ; $83FD48 |
  BEQ CODE_83FD55                           ; $83FD4B |
  LDA.W $00C9,X                             ; $83FD4D |
  CMP.W #$0010                              ; $83FD50 |
  BCC CODE_83FD6E                           ; $83FD53 |

CODE_83FD55:
  RTS                                       ; $83FD55 |

CODE_83FD56:
  LDA.B $18,X                               ; $83FD56 |
  BEQ CODE_83FD61                           ; $83FD58 |
  LDA.B $09,X                               ; $83FD5A |
  CMP.W #$00F1                              ; $83FD5C |
  BCS CODE_83FD6E                           ; $83FD5F |

CODE_83FD61:
  LDA.W $00D8,X                             ; $83FD61 |
  BEQ CODE_83FD71                           ; $83FD64 |
  LDA.W $00C9,X                             ; $83FD66 |
  CMP.W #$00F1                              ; $83FD69 |
  BCC CODE_83FD71                           ; $83FD6C |

CODE_83FD6E:
  STZ.W $1666                               ; $83FD6E |

CODE_83FD71:
  RTS                                       ; $83FD71 |

CODE_FL_83FD72:
  LDA.W #$8000                              ; $83FD72 |
  STA.B $C8                                 ; $83FD75 |
  BRA CODE_83FD82                           ; $83FD77 |

CODE_FL_83FD79:
  LDA.W #$0001                              ; $83FD79 |
  STA.B $C8                                 ; $83FD7C |
  BRA CODE_83FD82                           ; $83FD7E |

CODE_FL_83FD80:
  STZ.B $C8                                 ; $83FD80 |

CODE_83FD82:
  PHB                                       ; $83FD82 |
  PEA.W $8181                               ; $83FD83 |
  PLB                                       ; $83FD86 |
  PLB                                       ; $83FD87 |
  STZ.W $1C12                               ; $83FD88 |
  STZ.W $1C16                               ; $83FD8B |
  LDA.B $34,X                               ; $83FD8E |
  AND.W #$FFFE                              ; $83FD90 |
  STA.B $34,X                               ; $83FD93 |
  LDA.B $2A,X                               ; $83FD95 |
  SEC                                       ; $83FD97 |
  SBC.B $4C,X                               ; $83FD98 |
  STA.B $2A,X                               ; $83FD9A |
  LDA.B $2A,X                               ; $83FD9C |
  BEQ CODE_83FDCB                           ; $83FD9E |
  BPL CODE_83FDC0                           ; $83FDA0 |
  LDA.B $2A,X                               ; $83FDA2 |
  CLC                                       ; $83FDA4 |
  ADC.B $10,X                               ; $83FDA5 |
  STA.B $10,X                               ; $83FDA7 |
  SEP #$20                                  ; $83FDA9 |
  BCS CODE_83FDAF                           ; $83FDAB |
  DEC.B $12,X                               ; $83FDAD |

CODE_83FDAF:
  LDA.B $12,X                               ; $83FDAF |
  REP #$20                                  ; $83FDB1 |
  BPL CODE_83FDCB                           ; $83FDB3 |
  STZ.B $10,X                               ; $83FDB5 |
  STZ.B $12,X                               ; $83FDB7 |
  STZ.B $2A,X                               ; $83FDB9 |
  INC.W $1C16                               ; $83FDBB |
  BRA CODE_83FDCB                           ; $83FDBE |

CODE_83FDC0:
  LDA.B $2A,X                               ; $83FDC0 |
  CLC                                       ; $83FDC2 |
  ADC.B $10,X                               ; $83FDC3 |
  STA.B $10,X                               ; $83FDC5 |
  BCC CODE_83FDCB                           ; $83FDC7 |
  INC.B $12,X                               ; $83FDC9 |

CODE_83FDCB:
  JSR.W CODE_FN_83E183                      ; $83FDCB |
  LDA.B $00                                 ; $83FDCE |
  AND.W #$003F                              ; $83FDD0 |
  BEQ CODE_83FDD8                           ; $83FDD3 |
  JSR.W CODE_FN_83EA1E                      ; $83FDD5 |

CODE_83FDD8:
  LDA.B $26,X                               ; $83FDD8 |
  BEQ CODE_83FE12                           ; $83FDDA |
  STA.B $0C                                 ; $83FDDC |
  CLC                                       ; $83FDDE |
  BMI CODE_83FDEB                           ; $83FDDF |
  ADC.B $08,X                               ; $83FDE1 |
  STA.B $08,X                               ; $83FDE3 |
  BCC CODE_83FDFB                           ; $83FDE5 |
  INC.B $0A,X                               ; $83FDE7 |
  BRA CODE_83FDFB                           ; $83FDE9 |

CODE_83FDEB:
  ADC.B $08,X                               ; $83FDEB |
  STA.B $08,X                               ; $83FDED |
  BCS CODE_83FDF3                           ; $83FDEF |
  DEC.B $0A,X                               ; $83FDF1 |

CODE_83FDF3:
  LDA.B $2E,X                               ; $83FDF3 |
  EOR.W #$FFFF                              ; $83FDF5 |
  INC A                                     ; $83FDF8 |
  BRA CODE_83FDFD                           ; $83FDF9 |

CODE_83FDFB:
  LDA.B $2E,X                               ; $83FDFB |

CODE_83FDFD:
  CLC                                       ; $83FDFD |
  ADC.B $09,X                               ; $83FDFE |
  STA.B $08                                 ; $83FE00 |
  LDA.B $0D,X                               ; $83FE02 |
  STA.B $0A                                 ; $83FE04 |
  JSL.L CODE_FL_80CC03                      ; $83FE06 |
  AND.W #$003F                              ; $83FE0A |
  BEQ CODE_83FE12                           ; $83FE0D |
  JSR.W CODE_FN_83EA10                      ; $83FE0F |

CODE_83FE12:
  LDA.B $28,X                               ; $83FE12 |
  BEQ CODE_83FE4E                           ; $83FE14 |
  STA.B $0E                                 ; $83FE16 |
  CLC                                       ; $83FE18 |
  BMI CODE_83FE25                           ; $83FE19 |
  ADC.B $0C,X                               ; $83FE1B |
  STA.B $0C,X                               ; $83FE1D |
  BCC CODE_83FE36                           ; $83FE1F |
  INC.B $0E,X                               ; $83FE21 |
  BRA CODE_83FE36                           ; $83FE23 |

CODE_83FE25:
  ADC.B $0C,X                               ; $83FE25 |
  STA.B $0C,X                               ; $83FE27 |
  BCS CODE_83FE2D                           ; $83FE29 |
  DEC.B $0E,X                               ; $83FE2B |

CODE_83FE2D:
  LDA.B $30,X                               ; $83FE2D |
  LSR A                                     ; $83FE2F |
  EOR.W #$FFFF                              ; $83FE30 |
  INC A                                     ; $83FE33 |
  BRA CODE_83FE39                           ; $83FE34 |

CODE_83FE36:
  LDA.B $30,X                               ; $83FE36 |
  LSR A                                     ; $83FE38 |

CODE_83FE39:
  CLC                                       ; $83FE39 |
  ADC.B $0D,X                               ; $83FE3A |
  STA.B $0A                                 ; $83FE3C |
  LDA.B $09,X                               ; $83FE3E |
  STA.B $08                                 ; $83FE40 |
  JSL.L CODE_FL_80CC03                      ; $83FE42 |
  AND.W #$003F                              ; $83FE46 |
  BEQ CODE_83FE4E                           ; $83FE49 |
  JSR.W CODE_FN_83EA17                      ; $83FE4B |

CODE_83FE4E:
  SEP #$20                                  ; $83FE4E |
  STZ.B $15,X                               ; $83FE50 |
  REP #$20                                  ; $83FE52 |
  PLB                                       ; $83FE54 |
  RTL                                       ; $83FE55 |

CODE_FL_83FE56:
  LDA.W #$0001                              ; $83FE56 |
  STA.B $C8                                 ; $83FE59 |
  BRA CODE_83FE5F                           ; $83FE5B |

  STZ.B $C8                                 ; $83FE5D |

CODE_83FE5F:
  STZ.W $1C12                               ; $83FE5F |
  LDA.B $2E,X                               ; $83FE62 |
  LDY.B $26,X                               ; $83FE64 |
  BNE CODE_83FE6C                           ; $83FE66 |
  LDA.B $09,X                               ; $83FE68 |
  BRA CODE_83FE75                           ; $83FE6A |

CODE_83FE6C:
  BPL CODE_83FE72                           ; $83FE6C |
  EOR.W #$FFFF                              ; $83FE6E |
  INC A                                     ; $83FE71 |

CODE_83FE72:
  CLC                                       ; $83FE72 |
  ADC.B $09,X                               ; $83FE73 |

CODE_83FE75:
  STA.B $08                                 ; $83FE75 |
  LDA.W #$0002                              ; $83FE77 |
  LDY.B $28,X                               ; $83FE7A |
  BNE CODE_83FE82                           ; $83FE7C |
  LDA.B $0D,X                               ; $83FE7E |
  BRA CODE_83FE8A                           ; $83FE80 |

CODE_83FE82:
  BPL CODE_83FE87                           ; $83FE82 |
  LDA.W #$FFFE                              ; $83FE84 |

CODE_83FE87:
  CLC                                       ; $83FE87 |
  ADC.B $0D,X                               ; $83FE88 |

CODE_83FE8A:
  STA.B $0A                                 ; $83FE8A |
  LDA.B $C8                                 ; $83FE8C |
  BEQ CODE_83FEAF                           ; $83FE8E |
  JSL.L CODE_FL_80CC03                      ; $83FE90 |
  AND.W #$003F                              ; $83FE94 |
  BEQ CODE_83FEBB                           ; $83FE97 |
  CMP.W #$001C                              ; $83FE99 |
  BEQ CODE_83FEBB                           ; $83FE9C |
  CMP.W #$0024                              ; $83FE9E |
  BEQ CODE_83FEBB                           ; $83FEA1 |
  CMP.W #$001D                              ; $83FEA3 |
  BEQ CODE_83FEBB                           ; $83FEA6 |
  CMP.W #$001E                              ; $83FEA8 |
  BEQ CODE_83FEBB                           ; $83FEAB |
  BRA CODE_83FEB8                           ; $83FEAD |

CODE_83FEAF:
  JSL.L CODE_FL_80CC03                      ; $83FEAF |
  AND.W #$003F                              ; $83FEB3 |
  BEQ CODE_83FEBB                           ; $83FEB6 |

CODE_83FEB8:
  INC.W $1C12                               ; $83FEB8 |

CODE_83FEBB:
  RTL                                       ; $83FEBB |

  STZ.W $1C16                               ; $83FEBC |
  LDA.B $09,X                               ; $83FEBF |
  STA.B $08                                 ; $83FEC1 |
  LDA.B $0D,X                               ; $83FEC3 |
  STA.B $0A                                 ; $83FEC5 |
  JSL.L CODE_FL_80CAA4                      ; $83FEC7 |
  AND.W #$00F0                              ; $83FECB |
  CMP.B $11,X                               ; $83FECE |
  BEQ CODE_83FED8                           ; $83FED0 |
  BCC CODE_83FED8                           ; $83FED2 |
  INC A                                     ; $83FED4 |
  STA.W $1C16                               ; $83FED5 |

CODE_83FED8:
  RTL                                       ; $83FED8 |

CODE_83FED9:
  LDY.B $A6                                 ; $83FED9 |
  LDA.W $0000,Y                             ; $83FEDB |
  STA.B $00,X                               ; $83FEDE |
  TDC                                       ; $83FEE0 |
  STA.W $0000,Y                             ; $83FEE1 |
  LDA.W $000D,Y                             ; $83FEE4 |
  STA.B $0D,X                               ; $83FEE7 |
  LDA.W $0011,Y                             ; $83FEE9 |
  SEC                                       ; $83FEEC |
  SBC.W $0B60                               ; $83FEED |
  STA.B $11,X                               ; $83FEF0 |
  LDA.W $0B5C                               ; $83FEF2 |
  BIT.W #$8000                              ; $83FEF5 |
  BEQ CODE_83FEFA                           ; $83FEF8 |

CODE_83FEFA:
  STZ.B $00                                 ; $83FEFA |
  LDA.W $0004,Y                             ; $83FEFC |
  BIT.W #$0020                              ; $83FEFF |
  BEQ CODE_83FF09                           ; $83FF02 |
  INC.B $00                                 ; $83FF04 |
  ORA.W #$2020                              ; $83FF06 |

CODE_83FF09:
  STA.B $04,X                               ; $83FF09 |
  LDA.W $0B5C                               ; $83FF0B |
  BIT.W #$4000                              ; $83FF0E |
  BEQ CODE_83FF16                           ; $83FF11 |
  ORA.W #$8000                              ; $83FF13 |

CODE_83FF16:
  STA.B $10                                 ; $83FF16 |
  LSR.B $00                                 ; $83FF18 |
  BCC CODE_83FF20                           ; $83FF1A |
  EOR.W #$FFFF                              ; $83FF1C |
  INC A                                     ; $83FF1F |

CODE_83FF20:
  CLC                                       ; $83FF20 |
  ADC.W $0009,Y                             ; $83FF21 |
  STA.B $09,X                               ; $83FF24 |
  RTL                                       ; $83FF26 |

CODE_83FF27:
  LDA.B $1A,X                               ; $83FF27 |
  PHX                                       ; $83FF29 |
  ASL A                                     ; $83FF2A |
  TAX                                       ; $83FF2B |
  LDA.L PTR16_83FF36,X                      ; $83FF2C |
  PLX                                       ; $83FF30 |
  STA.B $00                                 ; $83FF31 |
  JMP.W ($0000)                             ; $83FF33 |

PTR16_83FF36:
  dw CODE_83FF3A                            ; $83FF36 |
  dw CODE_83FF79                            ; $83FF38 |

CODE_83FF3A:
  LDY.B $3A,X                               ; $83FF3A |
  LDA.B $3C,X                               ; $83FF3C |
  CMP.W $0022,Y                             ; $83FF3E |
  BEQ CODE_83FF46                           ; $83FF41 |

CODE_83FF43:
  JMP.W CODE_JP_83FF75                      ; $83FF43 |

CODE_83FF46:
  LDA.W $0044,Y                             ; $83FF46 |
  CMP.W #$0001                              ; $83FF49 |
  BNE CODE_83FF43                           ; $83FF4C |
  LDA.B $3E,X                               ; $83FF4E |
  BEQ CODE_83FF55                           ; $83FF50 |
  DEC.B $3E,X                               ; $83FF52 |
  RTL                                       ; $83FF54 |

CODE_83FF55:
  JSL.L CODE_FL_97FC80                      ; $83FF55 |
  JSL.L CODE_FL_85F9E6                      ; $83FF59 |
  LDY.B $3A,X                               ; $83FF5D |
  LDA.B $44,X                               ; $83FF5F |
  CLC                                       ; $83FF61 |
  ADC.W $0009,Y                             ; $83FF62 |
  STA.B $09,X                               ; $83FF65 |
  LDA.B $46,X                               ; $83FF67 |
  CLC                                       ; $83FF69 |
  ADC.W $000D,Y                             ; $83FF6A |
  STA.B $0D,X                               ; $83FF6D |
  LDA.W #$0014                              ; $83FF6F |
  STA.B $11,X                               ; $83FF72 |
  RTL                                       ; $83FF74 |

CODE_JP_83FF75:
  JML.L CODE_FL_86CA36                      ; $83FF75 |

CODE_83FF79:
  LDA.B $20,X                               ; $83FF79 |
  BEQ CODE_JP_83FF75                        ; $83FF7B |

CODE_83FF7D:
  RTL                                       ; $83FF7D |

CODE_83FF7E:
  LDA.B $1A,X                               ; $83FF7E |
  PHX                                       ; $83FF80 |
  ASL A                                     ; $83FF81 |
  TAX                                       ; $83FF82 |
  LDA.L PTR16_83FF8D,X                      ; $83FF83 |
  PLX                                       ; $83FF87 |
  STA.B $00                                 ; $83FF88 |
  JMP.W ($0000)                             ; $83FF8A |

PTR16_83FF8D:
  dw CODE_83FF91                            ; $83FF8D |
  dw CODE_83FF79                            ; $83FF8F |

CODE_83FF91:
  LDY.B $3A,X                               ; $83FF91 |
  LDA.B $3C,X                               ; $83FF93 |
  CMP.W $0022,Y                             ; $83FF95 |
  BEQ CODE_83FF9D                           ; $83FF98 |
  JMP.W CODE_JP_83FF75                      ; $83FF9A |

CODE_83FF9D:
  JSL.L CODE_FL_97FC80                      ; $83FF9D |
  JSL.L CODE_FL_83FD80                      ; $83FFA1 |
  JSL.L CODE_FL_85F9E6                      ; $83FFA5 |
  LDA.W $0B40                               ; $83FFA9 |
  CMP.W #$00FF                              ; $83FFAC |
  BNE CODE_83FF7D                           ; $83FFAF |
  JML.L CODE_FL_86CA36                      ; $83FFB1 |

EMPTY_83FFB5:
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $83FFB5 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $83FFBD |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $83FFC5 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $83FFCD |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $83FFD5 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $83FFDD |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $83FFE5 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $83FFED |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $83FFF5 |
  db $FF,$FF,$FF                            ; $83FFFD |
