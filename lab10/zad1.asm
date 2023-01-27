org 0x100

mov AX, 0013h
int 10h

mov AX, 0001h
int 33h

main_loop:
    mov AX, 0003h
    int 33h

    shr cx, 1

    cmp BX, 0001h
    je draw_pixel

    jmp check_for_input

check_for_input:
    mov AH, 01h
    int 16h

    jz main_loop

    cmp AL, 'q'
    je end

    cmp AL, 'w'
    je change_color

    cmp AL, 'a'
    je dec_brush_size

    cmp AL, 'd'
    je inc_brush_size

    mov AX, 0C00h
    int 21h

    jmp main_loop

draw_pixel:
    dec DX
    dec CX

    mov AH, 0Ch
    mov AL, [color]
    mov BL, [brush_size]
    mov byte [i], BL

    petla1:
        mov byte [j], BL
        petla2:
            int 10h
            dec DX
            dec byte [j]
            cmp byte [j], 00h
            jne petla2
        
        add DL, [brush_size]
        dec CX
        dec byte [i]
        cmp byte [i], 00h
        jne petla1
    
    jmp main_loop

change_color:
    inc byte [color]
    mov AH, 00h
    int 16h
    mov CX, [brush_size]
    mov DX, [brush_size]

    jmp draw_pixel

inc_brush_size:
    inc byte [brush_size]
    mov AH, 00h
    int 16h
    jmp draw_pixel

dec_brush_size:
    dec byte [brush_size]
    mov AH, 00h
    int 16h
    jmp draw_pixel

end:
    mov AH, 00h
    int 16h
    mov AX, 0003h
    int 10h
    mov AX, 0002h
    int 33h
    mov AX, 4C00h
    int 21h

color db 01h
brush_size db 03h
i db 00h
j db 00h