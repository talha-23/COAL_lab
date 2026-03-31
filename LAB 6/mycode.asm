; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h

.data
    marks db 45, 67, 80, 30, 55
    pass_count db 0

.code
main proc

    mov ax, @data
    mov ds, ax

    mov si, offset marks
    mov cx, 5

    mov bl, 0

loop_start:

    mov al, [si]

    cmp al, 50
    jl next_student

    inc bl

next_student:
    inc si
    loop loop_start
    mov pass_count, bl
    
    mov ah, 4ch
    int 21h

main endp
end main



