mov r0,#0
cmp r0,#0
beq zero
cmp r0,#0
bgt pos
mov r1,#3
b ending
pos:
    mov r1,#2
    b ending
zero:
    mov r1,#1
ending:
    .end