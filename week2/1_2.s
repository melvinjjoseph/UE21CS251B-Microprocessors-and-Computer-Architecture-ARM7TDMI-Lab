.data
a: .hword 21,53,11,7,4
b: .hword 0,0,0,0,0
.text
ldr r0,=a
ldr r1,=b
mov r3,#5
loop: ldrh r4,[r0]
add r0,r0,#2
strh r4,[r1]
add r1,r1,#2
subs r3,r3,#1
bne loop
.end
