;Write an ALP to find factorial using subroutine
.text
mov r1,#7
mov r2,#1
bl fact
fact:
cmp r1,#0
beq end
mul r3,r2,r1
mov r2,r3
sub r1,r1,#1
b fact
end:
swi 0x11
.end