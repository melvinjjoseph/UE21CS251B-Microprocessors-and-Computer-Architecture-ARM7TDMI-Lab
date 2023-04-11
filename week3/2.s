.data
array: .word 43,13,87,54,32,13,98,21,65,6
.text
ldr r0,=array
mov r1,#9
ldr r2,[r0]
loop:
ldr r3,[r0,#4]
cmp r2,r3
blt skip
mov r2,r3
skip:
add r0,r0,#4
sub r1,r1,#1
cmp r1,#0
bne loop
mov r0,r2
swi 0x11
.end