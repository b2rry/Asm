.model small

.stack 64h

.data 

    firstRule db  "Enter first digit of the first number:  $"
    secondRule db "Enter the next digit of the number:     $"
    thirdRule db "Error, incorrect digit!!! Try again.    $"    
    fourthRule db "Your number: $"
    fifthRule db "Enter first digit of the second number: $"
    sixthRule db "Result of a logical operation AND: $"
    seventhRule db "Result of a logical operation OR: $"
    eighthRule db "Result of a logical operation XOR: $"
    ninethRule db "Result of a logical operation NOT for first number: $"
    tenthRule db "Result of a logical operation NOT for second number: $"
    eleventhRule db "Enter the sign of your first number(+ or -): $"
    twelvethRule db "Enter the sign of your second number(+ or -): $"
    helpstring db 10,0,10 dup ('$')
    errorsign db "Incorrect sign, try again!$"
    thirteensRule db "Your final first number: $"
    fourteensRule db "Your final second number: $"
    second_helpstring db 2,0,10 dup ('$')
    s4 db 2,0,10 dup ('$')
    s3 db 2,0,10 dup ('$')
    s2 db 2,0,10 dup ('$')
    s1 db 2,0,10 dup ('$')
    f4 db 2,0,10 dup ('$')
    f3 db 2,0,10 dup ('$')
    f2 db 2,0,10 dup ('$')
    f1 db 2,0,10 dup ('$')
    first_number dw 15,0,10 dup ('$$')
    second_number dw 15,0,10 dup ('$$')
        
.code

nwl proc   
    mov ah,2h 
    mov dx,0ah 
    int 21h
    mov ah,2h 
    mov dx,0dh 
    int 21h     
    ret    
nwl endp

space proc 
    mov ah,9h 
    mov dx,OFFSET helpstring 
    int 21h
    ret
space endp

tab proc
    mov ah,2h 
    mov dx,09h 
    int 21h
    mov ah,2h 
    mov dx,09h 
    int 21h
    mov ah,2h 
    mov dx,09h 
    int 21h
    mov ah,2h 
    mov dx,09h 
    int 21h
    mov ah,2h 
    mov dx,09h 
    int 21h
    mov ah,2h 
    mov dx,09h 
    int 21h
    ret
tab endp
  
message1 proc   
    mov ah,9h
    lea dx,firstRule
    int 21h
    ret
message1 endp
  
message2 proc
    mov ah,9h
    lea dx,secondRule
    int 21h
    ret
message2 endp
  
message3 proc
    call nwl
    mov ah,9h
    lea dx,thirdRule
    int 21h
    ret
message3 endp

message4 proc   
    mov ah,9h
    lea dx,fifthRule
    int 21h
    ret
message4 endp
 
proverka_vvoda proc
    jmp skip
    
   continue:
    cmp [si],41h
    jge help2
    jmp error
   help2:
    cmp [si],46h
    jle endproc
    
    cmp [si],61h
    jge help3
    jmp error
   help3:
    cmp [si],66h
    jle endproc
   
   error:
    call message3
    
   skip: 
    mov ah,0ah
    mov dx,di
    int 21h
    mov di+3,0 
    
    lea si,di+2
    cmp [si],30h
    jge help1
    jmp continue
   help1:
    cmp [si],39h
    jle endproc
    jmp continue
    
   endproc:
    ret
proverka_vvoda endp

record proc
    cmp [di],39h
    jle rec1
    cmp [di],46h
    jle rec2
    cmp [di],66h
    jle rec5
    
   rec1: 
    mov si,[di]
    sub si,30h
    ret
   rec2:
    mov si,[di]
    sub si,37h
    ret
   rec5: 
    mov si,[di]
    sub si,57h
    ret
record endp

show_mechanic proc
    cmp si,09h
    jle rec3
    jmp rec4
    
   rec3:
    push di
    mov di,si
    add di,30h
    mov si,di
    pop di
    ret
   rec4:
    push di
    mov di,si
    add di,37h
    mov si,di
    pop di
    ret
show_mechanic endp 

show proc
    mov di,1000h
    div di
    
    mov si,ax
    mov di,dx
    
    call show_mechanic
    
    mov ax,si
    mov helpstring+2,al
    
    xor dx,dx
    
    mov ax,di
    mov di,100h
    div di
    
    mov si,ax
    mov di,dx
    
    call show_mechanic
    
    mov ax,si
    mov helpstring+3,al
    
    xor dx,dx
    
    mov ax,di
    mov di,10h
    div di
    
    mov si,ax
     
    call show_mechanic
    
    mov ax,si
    mov helpstring+4,al
   
    mov al,dl
    
    mov si,ax
    
    call show_mechanic
    
    mov ax,si
    mov helpstring+5,al 
    ret    
show endp

;___________enter_numbers____________________  
start: 

    mov ax, @data
    mov ds, ax
    
    
    call message1
    lea di,f1
    call proverka_vvoda
    
    call nwl
    call message2
        
    lea di,f2
    call proverka_vvoda
          
    call nwl
    call message2
        
    lea di,f3
    call proverka_vvoda 
    
    call nwl
    call message2
        
    lea di,f4
    call proverka_vvoda
    
    call nwl
    call tab
    mov ah,9h
    lea dx,fourthRule
    int 21h
    
    mov dl,f1+2 
    mov helpstring,dl
    mov dl,f2+2
    mov helpstring+1,dl
    mov dl,f3+2
    mov helpstring+2,dl 
    mov dl,f4+2
    mov helpstring+3,dl
    
    mov ah,9h
    lea dx,helpstring
    int 21h
    
;second
    call nwl    
    call message4
    lea di,s1
    call proverka_vvoda
    
    call nwl
    call message2
        
    lea di,s2
    call proverka_vvoda
          
    call nwl
    call message2
        
    lea di,s3
    call proverka_vvoda 
    
    call nwl
    call message2
        
    lea di,s4
    call proverka_vvoda
    
    call nwl
    call tab
    mov ah,9h
    lea dx,fourthRule
    int 21h
    
    mov dl,s1+2 
    mov helpstring,dl
    mov dl,s2+2
    mov helpstring+1,dl
    mov dl,s3+2
    mov helpstring+2,dl 
    mov dl,s4+2
    mov helpstring+3,dl
    
    mov ah,9h
    lea dx,helpstring
    int 21h
;______________record__________________
    
    mov di,offset f1+2
    call record
    xor ax,ax
    mov ax,si
    mov di,1000h
    mul di
    add first_number+2,ax
    
    mov di,offset f2+2
    call record
    xor ax,ax
    mov ax,si
    mov di,100h
    mul di
    add first_number+2,ax
    
    mov di,offset f3+2
    call record
    xor ax,ax
    mov ax,si 
    mov di,10h
    mul di
    add first_number+2,ax
    
    mov di,offset f4+2
    call record
    xor ax,ax
    add first_number+2,si
    
;second
    mov di,offset s1+2
    call record
    xor ax,ax
    mov ax,si
    mov di,1000h
    mul di
    add second_number+2,ax
    
    mov di,offset s2+2
    call record
    xor ax,ax
    mov ax,si
    mov di,100h
    mul di
    add second_number+2,ax
    
    mov di,offset s3+2
    call record
    xor ax,ax
    mov ax,si 
    mov di,10h
    mul di
    add second_number+2,ax
    
    mov di,offset s4+2
    call record
    xor ax,ax
    add second_number+2,si 

;____________sign______________________    
   onesmore: 
    call nwl
    mov ah,9h
    mov dx,offset eleventhRule
    int 21h 
    mov ah,0ah
    mov dx,offset second_helpstring
    int 21h
    mov di,offset second_helpstring+2
    cmp [di],2Bh;  +
    je h1
    cmp [di],2Dh;  -
    je h2
    call nwl
    mov ah,9h
    mov dx,offset errorsign
    int 21h
    jmp onesmore
    
   h2:
    mov di,offset first_number+2 
    mov si,[di]
    neg si
    mov first_number+2,si  
     
   h1: 
    call nwl
    mov ah,9h
    mov dx,offset twelvethRule
    int 21h 
    mov ah,0ah
    mov dx,offset second_helpstring
    int 21h
    mov di,offset second_helpstring+2
    cmp [di],2Bh;  +
    je h3
    cmp [di],2Dh;  -
    je h4
    call nwl
    mov ah,9h
    mov dx,offset errorsign
    int 21h
    jmp h1
    
   h4: 
    mov di,offset second_number+2 
    mov si,[di]
    neg si
    mov second_number+2,si
   h3:
   
    xor dx,dx
    mov ax,first_number+2
    call show
    call nwl
    mov ah,9h
    mov dx,offset thirteensRule
    int 21h
    mov ah,9h
    mov dx,offset helpstring+2
    int 21h
                    
    xor dx,dx
    mov ax,second_number+2
    call show
    call nwl
    mov ah,9h
    mov dx,offset fourteensRule
    int 21h
    mov ah,9h
    mov dx,offset helpstring+2
    int 21h
;_______________compare_________________    
    mov di,first_number+2
    mov si,second_number+2
    and di,si
    mov first_number+4, di
    mov di,first_number+2
    or di,si
    mov first_number+6, di
    mov di,first_number+2
    xor di,si
    mov second_number+4, di
    mov di,first_number+2 
    not di
    not si
    mov second_number+6, di
    mov second_number+8, si
;______________show_result_______________
    
    xor dx,dx
    mov ax,first_number+4
    call show
    call nwl
    mov ah,9h
    mov dx,offset sixthRule
    int 21h
    mov ah,9h
    mov dx,offset helpstring+2
    int 21h
     
    xor dx,dx
    mov ax,first_number+6
    call show
    call nwl
    mov ah,9h
    mov dx,offset seventhRule
    int 21h
    mov ah,9h
    mov dx,offset helpstring+2
    int 21h
    
    xor dx,dx
    mov ax,second_number+4
    call show
    call nwl
    mov ah,9h
    mov dx,offset eighthRule
    int 21h
    mov ah,9h
    mov dx,offset helpstring+2
    int 21h
    
    xor dx,dx
    mov ax,second_number+6
    call show
    call nwl
    mov ah,9h
    mov dx,offset ninethRule
    int 21h
    mov ah,9h
    mov dx,offset helpstring+2
    int 21h
    
    xor dx,dx
    mov ax,second_number+8
    call show
    call nwl
    mov ah,9h
    mov dx,offset tenthRule
    int 21h
    mov ah,9h
    mov dx,offset helpstring+2
    int 21h
    
    int 20h     
end start