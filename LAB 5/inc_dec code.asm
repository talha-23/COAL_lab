; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h

.data
     newline db 0dh,0ah,'$'
.code
main proc
    mov ax,@data
    mov ds,ax

    mov al,5
    inc al

    mov dl,al
    add dl,30h
    mov ah,02h
    int 21h   
               
    mov ah,09h
    mov dx,offset newline
    int 21h    
        
    mov al,9
    dec al

    mov dl,al
    add dl,30h
    mov ah,02h
    int 21h

    mov ah,4ch
    int 21h  
    
main endp
end main




