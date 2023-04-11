.data
a: .word 0
.text
ldr r2,=a
mov r1,#13
mov r0,#0
mov r3,#1
loop:
add r0,r0,r3
add r3,r3,#1
cmp r3,r1
bne loop
str r0,[r2]
swi 0x11

