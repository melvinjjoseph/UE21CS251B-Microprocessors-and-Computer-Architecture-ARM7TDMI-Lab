.text
mov r0,#8
mov r1,r0
loop:
sub r0,r0,#1
mul r2,r0,r1
mov r1,r2
cmp r0,#1
bne loop
swi 0x11
