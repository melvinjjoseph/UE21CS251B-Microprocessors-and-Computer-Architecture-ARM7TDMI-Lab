;write an ALP to find how many times the given character is present in the given string
.data
str1: .asciz "Pes University EC Campus"
char1: .asciz "s"
.text 
ldr r0, =str1
ldr r1, =char1
mov r2, #0
mov r3, #0      ;number of times the character is present in the string
loop:
ldrb r4, [r0, r2]
cmp r4, #0
beq end
ldrb r5,[r1]
cmp r4, r5
beq count
add r2, r2, #1
b loop
count:
add r3, r3, #1
add r2, r2, #1
b loop
end:
swi 0x11
.end