; write an ALP to multiply an array where c[i]=a[i]*b[i]
.data
a: .word 1,2,3,4,5,6,7,8,9,10
b: .word 1,2,3,4,5,6,7,8,9,10
c: .word 0,0,0,0,0,0,0,0,0,0
.text
ldr r0, =a
ldr r1, =b
ldr r2, =c
ldr r3, =10
loop:
ldr r4, [r0], #4
ldr r5, [r1], #4
mul r6, r4, r5
str r6, [r2], #4
subs r3, r3, #1
bne loop
swi 0x11
.end 

