.MODEL SMALL
.STACK 100H
.DATA
    buffer DB 20, 0, 20 DUP('$')  ; max=20 characters, fill with '$'
    msg DB 0Dh,0Ah,'You typed: $'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; input string
    LEA DX, buffer
    MOV AH, 0Ah
    INT 21h

    ; add $ terminator at the end of input
    MOV BL, buffer+1          ; get actual length (including CR)
    MOV BH, 0
    MOV [buffer+2+BX], '$'    ; replace CR with $ terminator

    ; display message
    LEA DX, msg
    MOV AH, 09h
    INT 21h

    ; display input (from buffer+2)
    LEA DX, buffer+2
    MOV AH, 09h
    INT 21h

    MOV AH, 4Ch
    INT 21h
MAIN ENDP
END MAIN