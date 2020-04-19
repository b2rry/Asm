.model tiny 

org 100h

.code

start:
 
mov ah,9h 
mov dx,offset message 
int 21h

mov ah,9h 
mov dx,offset messagee 
int 21h

mov ah,2h 
mov dx,7h
int 21h

int 20h
message db "4 Variant, na meste!",0Dh,0Ah,24h 
messagee db "5 Variant, na meste!",0Dh,0Ah,24h
end start