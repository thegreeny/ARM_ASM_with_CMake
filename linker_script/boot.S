.section .boot, "ax"
.global _start
.extern (thumb_start)

# Hier gehts los
_start:
    ldr r0,=thumb_start
    add r0,r0,#1
    bx r0
