.text
.thumb

.global thumb_start
thumb_start:
    MOVS r0, #1      @ Lade "1"
    MOVS r1, #2      @ Lade "2"
    ADD r2, r0, r1  @ Addiere "1" + "2"
    B thumb_start

.data
.global data_byte
.global data_hword
.global data_word

data_byte:
  .byte 0xDE, 0xAD, 0xBE, 0xEF
data_hword:
  .hword 0xDEAD, 0xBEEF
data_word:
  .word 0xDEADBEEF
