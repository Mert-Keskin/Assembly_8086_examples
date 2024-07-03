.MODEL

.DATA
x equ 11
y db 5
FL db 0


.CODE

mov ax, @Data
mov ds, ax

mov ax, 0
mov bx, 0

prime:    
    mov ah, 0
    dec y
    cmp y, 1
    je fin1
    mov al, x
    mov bl, y
    div bl
    cmp ah, 0
    jne prime
    je fin


fin:
    mov FL, 1
    hlt
    
fin1:
    hlt    