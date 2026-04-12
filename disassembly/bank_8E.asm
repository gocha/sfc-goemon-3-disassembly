org $8E8000

sound_data_samples:
  dw 2+filesize("../assets/sound/samples.bin")  ; $8E8000 |
  incbin ../assets/sound/samples.bin            ; $8E8002 |

  incbin ../assets/bank_8E.bin:$709D..$7E80 ; $8EF09D |

CODE_FL_8EFE80:
  JSR.W CODE_FN_8EFEA0                      ; $8EFE80 |
  JSR.W CODE_FN_8EFEB8                      ; $8EFE83 |
  JSR.W CODE_FN_8EFEE7                      ; $8EFE86 |
  JSR.W CODE_FN_8EFEFA                      ; $8EFE89 |
  JSR.W CODE_FN_8EFF09                      ; $8EFE8C |
  RTL                                       ; $8EFE8F |

CODE_FL_8EFE90:
  JSR.W CODE_FN_8EFF1C                      ; $8EFE90 |
  JSR.W CODE_FN_8EFF34                      ; $8EFE93 |
  JSR.W CODE_FN_8EFF63                      ; $8EFE96 |
  JSR.W CODE_FN_8EFF76                      ; $8EFE99 |
  JSR.W CODE_FN_8EFF85                      ; $8EFE9C |
  RTL                                       ; $8EFE9F |

CODE_FN_8EFEA0:
  PHB                                       ; $8EFEA0 |
  LDX.W #$12B0                              ; $8EFEA1 |
  LDY.W #$6000                              ; $8EFEA4 |
  LDA.W #$02FF                              ; $8EFEA7 |
  MVN $7F,$7E                               ; $8EFEAA |
  LDX.W #$0400                              ; $8EFEAD |
  LDA.W #$017F                              ; $8EFEB0 |
  MVN $7F,$7E                               ; $8EFEB3 |
  PLB                                       ; $8EFEB6 |
  RTS                                       ; $8EFEB7 |

CODE_FN_8EFEB8:
  LDX.W #$6480                              ; $8EFEB8 |
  LDY.W #$1660                              ; $8EFEBB |
  JSR.W CODE_FN_8EFED4                      ; $8EFEBE |
  LDY.W #$1680                              ; $8EFEC1 |
  JSR.W CODE_FN_8EFED4                      ; $8EFEC4 |
  LDY.W #$16A0                              ; $8EFEC7 |
  JSR.W CODE_FN_8EFED4                      ; $8EFECA |
  LDY.W #$16C0                              ; $8EFECD |
  JSR.W CODE_FN_8EFED4                      ; $8EFED0 |
  RTS                                       ; $8EFED3 |

CODE_FN_8EFED4:
  LDA.W $0002,Y                             ; $8EFED4 |
  STA.L $7F0000,X                           ; $8EFED7 |
  INX                                       ; $8EFEDB |
  INX                                       ; $8EFEDC |
  LDA.W $0012,Y                             ; $8EFEDD |
  STA.L $7F0000,X                           ; $8EFEE0 |
  INX                                       ; $8EFEE4 |
  INX                                       ; $8EFEE5 |
  RTS                                       ; $8EFEE6 |

CODE_FN_8EFEE7:
  LDA.B $5E                                 ; $8EFEE7 |
  STA.L $7F6490                             ; $8EFEE9 |
  LDA.B $60                                 ; $8EFEED |
  STA.L $7F6492                             ; $8EFEEF |
  LDA.B $62                                 ; $8EFEF3 |
  STA.L $7F6494                             ; $8EFEF5 |
  RTS                                       ; $8EFEF9 |

CODE_FN_8EFEFA:
  PHB                                       ; $8EFEFA |
  LDX.W #$1FA0                              ; $8EFEFB |
  LDY.W #$6496                              ; $8EFEFE |
  LDA.W #$005F                              ; $8EFF01 |
  MVN $7F,$7E                               ; $8EFF04 |
  PLB                                       ; $8EFF07 |
  RTS                                       ; $8EFF08 |

CODE_FN_8EFF09:
  JSL.L CODE_FL_80C2E4                      ; $8EFF09 |
  PHB                                       ; $8EFF0D |
  LDX.W #$1F40                              ; $8EFF0E |
  LDY.W #$64F6                              ; $8EFF11 |
  LDA.W #$003F                              ; $8EFF14 |
  MVN $7F,$7E                               ; $8EFF17 |
  PLB                                       ; $8EFF1A |
  RTS                                       ; $8EFF1B |

CODE_FN_8EFF1C:
  PHB                                       ; $8EFF1C |
  LDX.W #$6000                              ; $8EFF1D |
  LDY.W #$12B0                              ; $8EFF20 |
  LDA.W #$02FF                              ; $8EFF23 |
  MVN $7E,$7F                               ; $8EFF26 |
  LDY.W #$0400                              ; $8EFF29 |
  LDA.W #$017F                              ; $8EFF2C |
  MVN $7E,$7F                               ; $8EFF2F |
  PLB                                       ; $8EFF32 |
  RTS                                       ; $8EFF33 |

CODE_FN_8EFF34:
  LDX.W #$6480                              ; $8EFF34 |
  LDY.W #$1660                              ; $8EFF37 |
  JSR.W CODE_FN_8EFF50                      ; $8EFF3A |
  LDY.W #$1680                              ; $8EFF3D |
  JSR.W CODE_FN_8EFF50                      ; $8EFF40 |
  LDY.W #$16A0                              ; $8EFF43 |
  JSR.W CODE_FN_8EFF50                      ; $8EFF46 |
  LDY.W #$16C0                              ; $8EFF49 |
  JSR.W CODE_FN_8EFF50                      ; $8EFF4C |
  RTS                                       ; $8EFF4F |

CODE_FN_8EFF50:
  LDA.L $7F0000,X                           ; $8EFF50 |
  STA.W $0002,Y                             ; $8EFF54 |
  INX                                       ; $8EFF57 |
  INX                                       ; $8EFF58 |
  LDA.L $7F0000,X                           ; $8EFF59 |
  STA.W $0012,Y                             ; $8EFF5D |
  INX                                       ; $8EFF60 |
  INX                                       ; $8EFF61 |
  RTS                                       ; $8EFF62 |

CODE_FN_8EFF63:
  LDA.L $7F6490                             ; $8EFF63 |
  STA.B $5E                                 ; $8EFF67 |
  LDA.L $7F6492                             ; $8EFF69 |
  STA.B $60                                 ; $8EFF6D |
  LDA.L $7F6494                             ; $8EFF6F |
  STA.B $62                                 ; $8EFF73 |
  RTS                                       ; $8EFF75 |

CODE_FN_8EFF76:
  PHB                                       ; $8EFF76 |
  LDX.W #$6496                              ; $8EFF77 |
  LDY.W #$1FA0                              ; $8EFF7A |
  LDA.W #$0060                              ; $8EFF7D |
  MVN $7E,$7F                               ; $8EFF80 |
  PLB                                       ; $8EFF83 |
  RTS                                       ; $8EFF84 |

CODE_FN_8EFF85:
  JSL.L CODE_FL_80C2F3                      ; $8EFF85 |
  PHB                                       ; $8EFF89 |
  LDX.W #$64F6                              ; $8EFF8A |
  LDY.W #$1F40                              ; $8EFF8D |
  LDA.W #$003F                              ; $8EFF90 |
  MVN $7E,$7F                               ; $8EFF93 |
  PLB                                       ; $8EFF96 |
  RTS                                       ; $8EFF97 |

CODE_FL_8EFF98:
  PHB                                       ; $8EFF98 |
  PEA.W $8484                               ; $8EFF99 |
  PLB                                       ; $8EFF9C |
  PLB                                       ; $8EFF9D |
  LDA.B $8E                                 ; $8EFF9E |
  ASL A                                     ; $8EFFA0 |
  TAY                                       ; $8EFFA1 |
  LDA.W CODE_008BBF,Y                       ; $8EFFA2 |
  PLB                                       ; $8EFFA5 |
  TAX                                       ; $8EFFA6 |
  JML.L sound_transfer_blocks               ; $8EFFA7 |

  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8EFFAB |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8EFFB3 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8EFFBB |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8EFFC3 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8EFFCB |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8EFFD3 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8EFFDB |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8EFFE3 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8EFFEB |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8EFFF3 |
  db $FF,$FF,$FF,$FF,$FF                    ; $8EFFFB |
