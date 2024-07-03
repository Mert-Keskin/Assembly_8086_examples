.MODEL SMALL

.DATA
msg1 db "Enter chars:", 0AH , 0DH, "$"

.CODE 


mov ax , @DATA
mov ds , ax
 
mov bl , 0 

lea dx , msg1
mov ah , 09H
int 21H

L:
mov ah , 01H
int 21H

cmp al , "a"
je A 
 
cmp al , "s"
je D 

jmp L
    

D:
HLT

A:
mov ah , 01H
int 21H

cmp al , "t"
je T 

jmp L 

T:
mov ah , 01H
int 21H

cmp al , "g"
je SAY   

jmp L 

SAY:
inc di
jmp L