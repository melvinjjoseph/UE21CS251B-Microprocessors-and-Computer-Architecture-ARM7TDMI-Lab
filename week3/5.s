.data
a: .word 0
stk: .word 0
.text
LDR r0,=a
MOV r1,#15
MOV r2,#25
MOV r3,#30
BL mulADD 
STR r6,[r0]
B exit
mulADD:
LDR r4,=stk
STR LR,[r4]
BL add
MUL r6,r5,r3
LDR LR,[r4]
MOV PC,LR
add:
ADD r5,r2,r1
MOV PC,LR
exit:
SWI 0x11
.end