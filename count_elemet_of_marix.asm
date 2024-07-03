.MODEL SMALL

.DATA

x db 1,3,2,4,   4,5,6,5,   8,8,4,5,  4,0,9,5
T db 0
ls equ 4
k equ 4 


.CODE 

mov ax, @Data
mov ds, ax

mov si,0
mov ax,0
mov dh,0

l1:
    mov dl, 0
    l2:
        cmp x[si], k
        je count
    
    cont:
        inc si        
        inc dl
        cmp dl, ls
        jne l2
    
    inc dh
    cmp dh, ls
    jne l1
    mov t, al
    hlt

count:
    inc al
    jmp cont