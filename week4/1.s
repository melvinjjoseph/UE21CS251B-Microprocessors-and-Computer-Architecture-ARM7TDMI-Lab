.data
a: .word 23127437,32287784
b: .word 12345678,87654321
sum: .word 0,0
.text
ldr r0, =a
ldr r1, =b
ldr r2, =sum
ldr r3, [r0],#4
ldr r4, [r1],#4
add r3, r3, r4
str r3, [r2],#4
ldr r3, [r0]
ldr r4, [r1]
add r3, r3, r4
str r3, [r2]
swi 0x11
.end