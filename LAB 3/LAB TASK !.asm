.model small
.stack 100h

.data
    userchar db ?
    msg1 db 13,10, "CHAR entered: $"
    msg2 db 13,10, "Program End$"

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 01h
    int 21h
    mov userchar, al
    
    mov ah, 09h
    lea dx, msg1
    int 21h
    
    mov dl, userchar
    mov ah, 02h
    int 21h
    
    mov ah, 09h
    lea dx, msg2
    int 21h
    
    mov ah, 4Ch
    int 21h

main endp
end main
```