.text
.global _start

# Hier gehts los
_start:
    adr r0,thumb_start
    add r0,r0,#1
    bx r0

.skip 0x100

.thumb
thumb_start:
#    mov r0,#0x100
    MOVS r0, #1      @ Lade "1"
    MOVS r1, #2      @ Lade "2"
    ADD r2, r0, r1   @ Addiere "1" + "2"
endless_start:
    B endless_start
