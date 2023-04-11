;write an ALP to find whether a given character is present in a string or not
.data
str: .asciz "World"
char: .asciz "l"
found: .asciz "Character found"
notfound: .asciz "Character not found"
.text
ldr r0, =str
ldr r1, =char
mov r2, #0
loop:
ldrb r3, [r0, r2]
cmp r3, #0
beq end
ldrb r4,[r1]
cmp r3, r4
beq present
add r2, r2, #1
b loop
present:
ldr r0, =found
swi 0x02
swi 0x11
end:
ldr r0, =notfound
swi 0x02
swi 0x11
.end