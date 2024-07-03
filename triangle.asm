include 'emu8086.inc'

.model small


.data

.code

main proc far  
 
    mov cl , 10
    mov ch , 0

    L1: 
    gotoxy ch , cl 
    putc '*'
    inc ch
    dec cl   
    
    cmp cl , 0
    jne L1
    
    mov cl , 0
    mov ch , 10
    
    L2: 
    gotoxy ch , cl 
    putc '*'
    inc cl
    inc ch   
    
    cmp cl , 11
    jne L2
    
    hlt
     
    
main endp