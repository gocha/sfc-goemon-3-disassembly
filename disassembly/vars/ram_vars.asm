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
