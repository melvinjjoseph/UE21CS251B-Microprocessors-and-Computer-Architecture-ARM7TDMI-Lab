mov r1,#13
ands r2,r1,#1
;mov r3,#0
cmp r2,#0
bne odd
mov r0,#0x00
b ending
odd:
mov r0,#0xFF
ending:
.end