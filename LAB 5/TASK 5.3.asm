; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.MODEL SMALL
.STACK 100H
.DATA
    prompt  DB 0DH, 0AH, "Enter 4-digit passcode: $"
    success DB 0DH, 0AH, "Access Granted! $"
    pass    DB "1234" ; The predefined secret passcode
    input   DB 4 DUP(?) ; Buffer to store user input
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    ; --- The Infinite Loop Starts Here ---
CHECK_START:
    ; 1. Display the prompt
    LEA DX, prompt
    MOV AH, 09H
    INT 21H
    ; 2. Get 4 characters from the user
    MOV SI, 0           
GET_INPUT:
    MOV AH, 01H        
    INT 21H
    MOV input[SI], AL  
    INC SI
    CMP SI, 4           
    JL GET_INPUT
    ; 3. Compare input with the stored passcode
    MOV SI, 0           
COMPARE:
    MOV AL, input[SI]
    MOV BL, pass[SI]
    CMP AL, BL          
    JNE CHECK_START     
    
    INC SI
    CMP SI, 4
    JL COMPARE          

    ; 4. Success Path
    LEA DX, success
    MOV AH, 09H
    INT 21H

    ; Halt the program
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN