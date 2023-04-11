mov r0,#14
mov r1,#14
cmp r0,r1
beq l1
sub r2,r1,r0
b ending
l1:
    add r2,r1,r0
ending:
    .end