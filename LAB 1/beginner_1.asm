

.model small    ;tell the size of code
.stack 100h     ; make the stack of size 100

.data
msg db 'MUHAMMAD TALHA',13,10,'$'   ; 13,10 = new line
cls db '4/A$'

.code
main proc
    
mov ax,@data
mov ds,ax

mov ah,09h
mov dx,offset msg
int 21h

mov ah,09h
mov dx,offset cls
int 21h

mov ah,4ch
int 21h 
    
main endp
end main
