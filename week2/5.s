.data
a: .word 23
b: .word 23
c: .word 13
d: .word 37
e: .word 21
.text
ldr r0,=a
ldr r1,=b
ldr r2,=c
ldr r3,=d
ldr r4,=e
ldr r6,[r0]
ldr r7,[r1]
ldr r11,[r2]
cmp r6,r7
beq addi
cmp r7,r11
beq subt
mul r5,r6,r7
str r4,[r5]
swi 0x11
addi:
add r8,r6,r7
str r8,[r3]
swi 0x11
subt:
sub r9,r0,r1
str r9,[r3]
swi 0x11