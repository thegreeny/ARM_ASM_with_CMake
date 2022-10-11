.text
.global _start

# Hier gehts los
_start:
    MOVS r0, #1      @ Lade "1"
    MOVS r1, #2      @ Lade "2"
    ADDS r2, r0, r1  @ Addiere "1" + "2"
