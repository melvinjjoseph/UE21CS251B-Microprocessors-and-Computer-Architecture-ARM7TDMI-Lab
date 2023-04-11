.data
a:.word 0,0,0,0,0,0,0,0,0,0
.text
ldr r0,=a
mov r1,#0
mov r2,#1
mov r3,#8
str r1,[r0],#4
str r2,[r0],#4
loop:
    add r4,r1,r2
    mov r1,r2
    mov r2,r4
    str r4,[r0],#4
    subs r3,r3,#1
    cmp r3,#0
    bne loop
.end