.model small
.stack 100h

.data
udividend db 200
udivisor db 10
uquotient db ?
uremainder db ?

sdividend db -120
sdivisor db 6
squotient db ?
sremainder db ?

.code
main proc
    mov ax, @data
    mov ds, ax

    mov al, udividend
    mov bl, udivisor
    div bl
    mov uquotient, al
    mov uremainder, ah

    mov al, sdividend
    cwd
    mov bl, sdivisor
    idiv bl
    mov squotient, al
    mov sremainder, ah

    mov ah, 4ch
    int 21h
main endp
end main