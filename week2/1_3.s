.data
a: .byte 21,53,11,7,4
b: .byte 0,0,0,0,0
.text
ldr r0,=a
ldr r1,=b
mov r3,#5
loop: ldrb r4,[r0]
add r0,r0,#1
strb r4,[r1]
add r1,r1,#1
subs r3,r3,#1
bne loop
.end
