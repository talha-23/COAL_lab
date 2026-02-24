; Program to swap two values using XCHG instruction
; Handles both digits and characters

.model small
.stack 100h

.data
    num1 db 'enter first value: $'
    num2 db 'enter second value: $'
    before db 0Dh,0Ah,'before Swap: value1 = $'
    after db 0Dh,0Ah,'after swap: value1 = $'
    separator db ' , value2 = $'
    newline db 0Dh,0Ah,'$'
    
    v1 db ?      
    v2 db ?      

.code
main proc
    mov ax, @data
    mov ds, ax
    
    ;fet first value from user
    lea dx, num1
    mov ah, 09h
    int 21h
    
    mov ah, 01h      ; Read character
    int 21h
    mov v1, al   
    
    ;get second value from user
    lea dx, num2
    mov ah, 09h
    int 21h
    
    mov ah, 01h      
    int 21h
    mov v2, al   
        
    ;display values before swap
    lea dx, before
    mov ah, 09h
    int 21h
    
    mov dl, v1   ;display first value
    mov ah, 02h
    int 21h
    
    lea dx, separator
    mov ah, 09h
    int 21h
    
    mov dl, v2   ;display second value
    mov ah, 02h
    int 21h
    
    ;swap the values using XCHG
    mov al, v1
    xchg al, v2
    mov v1, al   ;now value1 contains original value2
    
    ;display values after swap
    lea dx, after
    mov ah, 09h
    int 21h
    
    mov dl, v1   ;(now swapped)
    mov ah, 02h
    int 21h
    
    lea dx, separator
    mov ah, 09h
    int 21h
    
    mov dl, v2   
    mov ah, 02h
    int 21h
    
    lea dx, newline
    mov ah, 09h
    int 21h
    
    mov ah, 4Ch
    int 21h

main endp
end main