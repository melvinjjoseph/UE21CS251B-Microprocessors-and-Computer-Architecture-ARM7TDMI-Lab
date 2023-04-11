.data
o: .asciiz "Odd parity"
e: .asciiz "Even parity"
.text
ldr r5,=0b11100110010101001101100101100101
mov r1,#32
mov r2,#0 ;count of 1s
mov r3,#0 ;count of 0s
loop:
and r4,r5,#1
cmp r4,#1
beq one
b zero
one:
add r2,r2,#1
mov r5,r5,lsr #1
sub r1,r1,#1
cmp r1,#0
bne loop
b print
zero:
add r3,r3,#1
mov r5,r5,lsr #1
sub r1,r1,#1
cmp r1,#0
bne loop
print:
and r6,r2,#1
cmp r6,#1
beq odd
b even
odd:
ldr r0,=o
swi 0x02
swi 0x11
even:
ldr r0,=e
swi 0x02
swi 0x11
.end