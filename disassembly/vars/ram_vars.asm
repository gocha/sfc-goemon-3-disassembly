; global sound context (direct page 0)
!r_sound_queue_l = $7ED000
!r_sound_cmd_mirror = $0054
    !r_sound_cmd_mirror_dp = $54
!r_sound_queue_head_dp = $56
!r_sound_queue_tail_dp = $58

; individual sound contexts ($01xx/$1Exx/$1Fxx)
!r_sound_block_table_ptr_dp = $06
!r_sound_transfer_source_ptr_dp = $15
!r_sound_transfer_counter_dp = $2A

!r_text_ptr_l = $7E7C16                     ; Current text stream pointer
!r_text_token_l = $7E7C62                   ; Current token read from the text stream
!r_text_op_arg_l = $7E7C64                  ; Argument/state value for the current text operation
!r_text_copy_ptr_l = $7E7C66                ; Copy source pointer for an F0-FF command
!r_text_repeat_char_l = $7E7C68             ; Repeated character for an E0-EF command

!r_demo_flag = $004C                        ; Non-zero during demo play (suppresses idle RNG updates)

!r_rng = $0086

!r_room_id = $008E
!r_room_mode = $0090
