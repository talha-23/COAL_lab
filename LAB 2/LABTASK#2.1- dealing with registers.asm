.model small
.stack 100h

.data


.code
main proc
    mov ax ,@data
    mov ds,ax
    
    mov ax, 1234h
    
    mov bx, 9ABCh
    
    mov ah, 4Ch
    int 21h
   
main endp
end main