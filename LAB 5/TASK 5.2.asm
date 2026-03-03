; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data

.code
main proc

    mov ax,@data
    mov ds,ax

    mov al,5

    add al,30h
    mov dl,al
    mov ah,02h
    int 21h

    jmp invert

    mov dl,'x'
    int 21h

invert:
    mov al,5
    not al

    mov al,5
    neg al

    mov ah,4ch
    int 21h

main endp
end main


