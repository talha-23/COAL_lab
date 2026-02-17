.model small
.stack 100h  

.data
    msg1 db "Welcome To Assembly Programming",13,10,"$"
    msg2 db "Enter initial for name: $"
    msg3 db 13,10,"Enter last digit of registration ID: $"
    msg4 db 13,10,"You entered: $"

    initial db ?
    digit db ?

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 09h
    lea dx, msg1
    int 21h
    
    mov ah, 09h
    lea dx, msg2
    int 21h
    
    mov ah, 01h
    int 21h
    mov initial, al
    
    mov ah, 09h
    lea dx, msg3
    int 21h
    
    mov ah, 01h
    int 21h
    mov digit, al
    
    mov ah, 09h
    lea dx, msg4
    int 21h
    
    mov dl, initial
    mov ah, 02h
    int 21h
    
    mov dl, digit
    mov ah, 02h
    int 21h
    
    mov ah, 4Ch
    int 21h
    
main endp
end main