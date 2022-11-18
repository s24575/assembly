org 100h

mov AH, 00h
int 16h
mov AH, 09h
cmp AL, "a"
jl error
cmp AL, "z"
jle small
cmp AL, "A"
jl error
cmp AL, "Z"
jle big
jmp end

big:
mov DX, big_str
jmp end

small:
mov DX, small_str
jmp end

error:
mov DX, error_str

end:
int 21h
mov AX, 4C00h
int 21h

small_str db "small", "$"
big_str db "big", "$"
error_str db "error", "$"