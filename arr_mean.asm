 .MODEL SMALL

.DATA

x db 1, 2, 3, 4,19,0,18
lx equ $-x


.CODE 

mov ax, @Data
mov ds, ax

mov si, 0
mov cx, lx
mov bl, lx
mov ax, 0

l1:
    add al, x[si]
    inc si
    loop l1
div bl
hlt