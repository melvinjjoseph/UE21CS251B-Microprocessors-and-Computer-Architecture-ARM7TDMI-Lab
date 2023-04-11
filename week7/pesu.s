;set the 8-segment display for values from 0-9 and a-f and PES on the 8-segment display
.data
zero: .byte 0b11101101
one: .byte 0b01100000
two: .byte 0b11001110
three: .byte 0b11101010
four: .byte 0b01100011
five: .byte 0b10101011
six: .byte 0b10101111
seven: .byte 0b11100000
eight: .byte 0b11101111
nine: .byte 0b11100011
A: .byte 0b11100111
B: .byte 0b00101111
C: .byte 0b10001101
D: .byte 0b01101110
F: .byte 0b10000111
P: .byte 0b11000111
E: .byte 0b11000111
S: .byte 0b10101011
U: .byte 0b01101101

.text
begin:
mov r0,#0
mov r2,#0
again:
swi 0x202
cmp r0,#4
ldr r1,=P
ldrb r1,[r1,r0]
add r1,r1,r2
swi 0x202
add r0,r0,#1
cmp r0,#4
bne again
.end
.data
P: .byte 0b11000111
E: .byte 0b10001111
S: .byte 0b10101011
U: .byte 0b01101101
.end