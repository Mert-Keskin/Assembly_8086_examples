.MODEL SMALL

.DATA

x db 'kabak',0
lx equ $-x
flag db 0

.CODE 

mov ax, @Data
mov ds, ax

mov si, 0
mov cx, lx
mov ax, 0
mov di, lx-2

l1:
    mov ah, x[si]
    mov al, x[di]
    cmp ah, al
    jne fin
    inc si
    dec di
    cmp di, si
    jle fin1
    loop l1
fin1:    
    mov flag, 1
    hlt
fin:
    hlt
