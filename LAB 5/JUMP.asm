; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h

.data

.code
main proc
    jmp start

    mov al,5   ;skipped

start:
    mov al,10  ;starts here
    hlt

main endp
end main




