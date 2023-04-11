.data
a: .byte 43,12,4,21,14,22,15,2,8,28
sum: .word 0
.text
ldr r0,=a
ldr r4,=sum
mov r1,#10
mov r3,#0
loop:
ldrb r2,[r0]
add r3,r3,r2
add r0,r0,#1
sub r1,r1,#1
cmp r1,#0
bne loop
str r3,[r4]
swi 0x11