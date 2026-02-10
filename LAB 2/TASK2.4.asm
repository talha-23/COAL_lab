
.model small
.stack 100h

.data
    num1 DB 5
    num2 DB 3
    

.code
main proc


     MOV AX,@DATA
     MOV DS,AX

     MOV AL ,NUM1
     MOV NUM1,AL

     MOV AL,NUM2
     ADD AL,30H

     MOV DL,AL
     MOV AH,02H
     INT 21H
     MOV AH ,02H

     MOV AH,4CH
     INT 21H

    end main