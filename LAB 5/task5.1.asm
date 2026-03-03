; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
count db 0

.code
main proc

    mov ax,@data
    mov ds,ax

start_cycle:
    mov al,0

repeat_cycle:
    inc al
    cmp al,5
    jle repeat_cycle

decrease:
    dec al
    cmp al,0
    jge decrease

    inc count
    cmp count,2
    jl start_cycle

    mov ah,4ch
    int 21h

main endp
end main


