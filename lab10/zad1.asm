org 0x100

mov AX, 0013h
int 10h

mov AX, 0001h
int 33h

main_loop:
    mov AH, 01h
    int 16h

    cmp AH, 10h
    je end

    cmp AH, 11h
    je change_color

    mov AX, 0003h
    int 33h
    cmp BX, 0001h
    je draw_pixel
jmp main_loop

draw_pixel:
    mov AH, 0Ch
    mov AL, [color]
    int 10h
    dec CX
    int 10h
    dec CX
    int 10h
    dec DX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    dec DX
    int 10h
    dec CX
    int 10h
    dec CX
    int 10h
jmp main_loop

change_color:
    inc byte [color]
    mov AH, 00h
    int 16h
    mov CX, 10h
    mov DX, 10h
jmp main_loop

end:
mov AH, 00h
int 16h
mov AX, 0002h
int 16h
mov AX, 4C00h
int 21h

color dw 1