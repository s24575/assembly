org 100h

mov AX, 10h
cmp AX, 07h
jg bigger
gl less

bigger:
mov BX, 0xBEEF
jmp koniec

less:
mov AX, 2137h

koniec:
mov AX, 4C00h
int 21h