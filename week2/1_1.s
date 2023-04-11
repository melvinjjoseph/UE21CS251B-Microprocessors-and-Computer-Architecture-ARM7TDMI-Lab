.data
a: .word 53,72,13,38,62
b: .word 0,0,0,0,0
.text
ldr r0,=a
ldr r1,=b
mov r3,#5
loop: ldr r4,[r0]
add r0,r0,#4
str r4,[r1]
add r1,r1,#4
subs r3,r3,#1
bne loop
.end
