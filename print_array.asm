INCLUDE 'EMU8086.INC'
.MODEL SMALL  
.STACK 100H
.DATA

ARRAY1 DB 5,4,3,2,1
ARRAY2 DB 5 DUP ?
LENGTH EQU $-ARRAY1

.CODE

MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    MOV AX, 0
    MOV CX, LENGTH-1
    
    LEA SI, ARRAY1
    LEA DI, ARRAY2
    
    FOR:
    
    MOV AL, [SI]
    MOV [DI], AL
    
    INC SI
    INC DI
    
    LOOP FOR
    
    ; PRINT
    
    MOV CX, LENGTH-1
    MOV BX, OFFSET ARRAY2 ; Use BX to store the offset
    
    FOR1:
    
    MOV AL, [BX]
    CALL PRINT_NUM
    PRINT ","
    ADD BX, 1  ; Increment the offset
    
    LOOP FOR1

    
ENDP MAIN

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

END MAIN






