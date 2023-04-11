;write an ALP to implement c[i] = a[i] + b[i] 
.data
a: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
b: .word 17, 23, 18, 14, 16, 8, 2, 4, 5, 12
c: .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
.text
ldr r0, =a
ldr r1, =b
ldr r2, =c
mov r6,#10
loop:
ldr r3,[r0],#4
ldr r4,[r1],#4
add r5,r3,r4
str r5,[r2],#4
subs r6,r6,#1
bne loop
swi 0x11
.end

