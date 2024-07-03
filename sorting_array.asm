.MODEL SMALL

.DATA 

x db 1,3,5,2,1,4,8,3,2,1 
lx equ $-x-1

.CODE

main proc far 
    
mov ax , @data
mov ds , ax


L0:
mov ax , 0
mov si , 0
mov bl , 0 
mov cx , 0

inc cl 

L:
mov al , x[si]
mov ah , x[si+1] 

call SWP

inc si
cmp si , lx 
jnz L

cmp bl , 0
jnz L0

HLT
    
main endp


SWP proc
        
    cmp al , ah
    jg S

D:   
    
    ret
S:     
    mov x[si]   , ah
    mov x[si+1] , al
    mov bl , 1 
    inc ch
    jmp D
    
    
SWP endp