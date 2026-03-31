; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h

.data
    val db 0B3h
    msd db 0Dh,0Ah, 'final value of AL :$'
    hex db '0123456789ABCDEF$'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov al,val
    
    ;PERFROM BITWISE OPERATIONS
    rol al,1
    ror al,1
    shl al,2
    shr al,1
    
    ;DSPLAU MESSAGE
    mov ah,09h
    lea dx,msd
    int 21h
    
    ;CONVERT AND DISPLAY AL IN HEX
    mov ah,al
    mov cl,4
    shr al,cl
    and al, 0Fh
    mov bl,al
    lea si, hex
    mov dl,[si+bx]
    mov ah, 02h
    int 21h
    
    mov ah,4ch
    int 21h


main endp
end main




