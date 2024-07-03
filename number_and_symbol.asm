include 'emu8086.inc'

.model small

.data    

msg1 db 'any number: $'
msg2 db 0Ah , 0DH , 'any symbol: $' 

.code

main proc far
    mov ax , @data
    mov ds , ax
    
    lea dx, msg1
    mov ah, 09H
    int 21H
    
    mov ah, 01H
    int 21H
    and al, 0FH
    mov bl, al 
    
    lea dx, msg2
    mov ah, 09H
    int 21H
    
    mov ah, 01H
    int 21H
    
    mov cl, 2
    mov dl, 0
    L1: 
         
        mov ch , 0

        L2: 
 
        gotoxy ch , cl
        putc al
        
        inc ch
        cmp ch , dl
        jle L2 
    
        inc cl 
        inc dl
        
        cmp dl , bl
        
        
        
        jnz L1

    HLT
            