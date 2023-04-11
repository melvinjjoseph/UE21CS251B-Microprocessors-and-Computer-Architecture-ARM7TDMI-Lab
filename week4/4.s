.text
mov r0,#-83
cmp r0,#0
bmi neg
b pos
neg:
mov r1,#1           ;store value 1 in r1 if number is negative
b end
pos:
mov r1,#0           ;store value 0 in r1 if number is positive
end:
swi 0x11
.end
