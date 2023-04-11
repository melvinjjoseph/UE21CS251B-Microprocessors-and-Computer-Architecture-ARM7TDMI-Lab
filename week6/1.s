;write an ALP to find the length of a string
.data 
a: .asciz "HELLO WORLD"
.text
ldr r0,=a
mov r1,#0 
loop:
ldrb r2,[r0]
add r0,r0,#1
cmp r2,#0
beq end
add r1,r1,#1
b loop
end:
ldr r0,=a
swi 0x02
swi 0x11
.end
