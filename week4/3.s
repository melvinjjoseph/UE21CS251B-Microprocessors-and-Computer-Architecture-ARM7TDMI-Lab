.data
a: .word 42,7,0,-3,0,-54,23,-11,33
.text
ldr r0,=a
mov r1,#0  ;number of zeroes
mov r2,#0  ;number of positive numbers
mov r3,#0  ;number of negative numbers
mov r5,#9
loop:
ldr r4,[r0],#4
cmp r4,#0
beq zero
cmp r4,#0
bgt positive
blt negative
zero:
add r1,r1,#1
b next
positive:
add r2,r2,#1
b next
negative:
add r3,r3,#1
next:
sub r5,r5,#1
cmp r5,#0
bne loop
swi 0x11
.end