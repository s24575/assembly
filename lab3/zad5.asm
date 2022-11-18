org 100h

mov AH, 00h
mov AL, 11h
int 10h

;mov AH, 00h
int 16h

mov AX, 4C00h
int 21h

;change screen to 640x480 mono and wait for keyboard input