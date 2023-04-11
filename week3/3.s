.data
a: .word 21,33,54,2,5,3,24,2,8
b: .word 13,12,11,10,9,8,7,6,5
c: .word 0
.text
LDR r0,=a
LDR r1,=b
LDR r2,=c
MOV r5,#0
MOV r6,#1
loop:
LDR r3,[r0],#4
LDR r4,[r1],#4
MUL r7,r3,r4
ADD r5,r5,r7
ADD r6,r6,#1
CMP r6,#10
BNE loop
B exit
exit:
STR r5,[r2]
swi 0x11
.end