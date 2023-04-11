;write an alp to read from a 2D array such that B[i][j]=a[i][j]
.data
a: .word 11,32,27,84,45,36,31,48,59
b: .word 0,0,0,0,0,0,0,0,0
.text
ldr r0,=a
ldr r1,=b
mov r2,#3
mov r3,#3
mov r4,#0
mov r5,#0
mov r6,#0
for_i:
mov r7,#0
for_j:
ldr r8,[r0,r4]
str r8,[r1,r6]
add r4,r4,#4
add r6,r6,#4
add r7,r7,#1
cmp r7,r3
blt for_j
add r5,r5,#1
cmp r5,r2
blt for_i
mov r0,#0
swi 0x11
.end

