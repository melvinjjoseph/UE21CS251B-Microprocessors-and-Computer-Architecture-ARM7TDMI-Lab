.text
ldr r0,=0b11100110010101001101100101101101
mov r1,#32
mov r2,#0 ;count of 1s
mov r3,#0 ;count of 0s
loop:
and r4,r0,#1
cmp r4,#1
beq one
b zero
one:
add r2,r2,#1
mov r0,r0,lsr #1
sub r1,r1,#1
cmp r1,#0
bne loop
swi 0x11
zero:
add r3,r3,#1
mov r0,r0,lsr #1
sub r1,r1,#1
cmp r1,#0
bne loop
swi 0x11
.end