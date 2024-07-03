.model small

.data 

    msg db "only use a , b and c. (s for exiting program):  $"    
    
    ha db 0
    hb db 0
    hc db 0 
    
.code
  
mov ax , @data
mov ds ,ax   

lea dx , msg
mov ah , 09H
int 21H
   
   
   L0:
   mov ah , 01H
   int 21H 

   cmp al , "a"
   je A
   cmp al , "b"
   je B
   cmp al , "c" 
   je C
   cmp al , "s" 
   je S
    
   
   jmp l0
    
   S: 
 
   

HLT 

A: inc ha 
   jmp L0 
B: inc hb 
   jmp L0
C: inc hc 
   jmp L0