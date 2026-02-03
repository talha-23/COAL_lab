
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov bx, 4566h
mov ax, 0abcdh
mov ax,bx
mov si, bx

hlt






