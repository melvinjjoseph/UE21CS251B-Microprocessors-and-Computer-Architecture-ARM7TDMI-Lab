.data
a: .hword 22,12,10,23,76,4,35,32,59,87
sum: .word 0
.text
ldr r0,=a
ldr r4,=sum
mov r1,#10
mov r3,#0
loop:
ldrh r2,[r0]
add r3,r3,r2
add r0,r0,#2
sub r1,r1,#1
cmp r1,#0
bne loop
str r3,[r4]
swi 0x11