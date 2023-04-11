;write an ALP to move a string from one location to another
.data
a: .asciz "PESU EC CAMPUS"
b: .asciz "aaaaaaaaaaaaaa"
.text
ldr r0,=a
swi 0x02
ldr r0,=b
swi 0x02
ldr r0,=a
ldr r1,=b
mov r2,#14
loop:
ldrb r3,[r0],#1
strb r3,[r1],#1
subs r2,r2,#1
bne loop
ldr r0,=b
swi 0x02
swi 0x11
.end
