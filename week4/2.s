.text
ldr r0,=0x12345678
mvn r1,r0
add r2,r1,#1
swi 0x11
.end
