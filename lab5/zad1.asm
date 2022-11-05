org 100h

;mov AX, a
;mov DX, [a]
;add [a], AX 

;mov AX, 0xFFFF
;mul AX ; AX * AX, result in DX, AX or just AX

;div BL ; AX/BL, wynik w AL, reszta w AH
;div BX ; DX:AX/BX, wynik w AX, reszta w DX

add AX, a
add AX, b
add AX, c
mov word [y], AX

mov AX, 4C00h
int 21h

a dw 0x05
b dw 0x0f
c dw 0x04
y dw 0h