;write an ALP to add two matrices c[i][j]=a[i][j]+b[i][j]
.data
a: .word 1,2,3,4,5,6,7,8,9
b: .word 14,11,4,2,17,19,13,6,21
c: .word 0,0,0,0,0,0,0,0,0
.text
ldr r0,=a
ldr r1,=b
ldr r2,=c
mov r3,#3
mov r4,#3
mov r5,#0
mov r6,#0
for_i:
mov r7,#0
for_j:
ldr r8,[r0]
ldr r9,[r1]
add r10,r8,r9
str r10,[r2]
add r0,r0,#4
add r1,r1,#4
add r2,r2,#4
add r7,r7,#1
cmp r7,r4
bne for_j
add r5,r5,#1
cmp r5,r3
bne for_i
mov r0,#0
swi 0x11
.end
