; Practice Codes Here // Mirrored Star      

INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.DATA

MAIN PROC
    
    MOV CX, 5
    MOV AX, 1
    MOV BX, 1
    
    FOR:
    
    PUSH CX 
    
    FOR1:
    
    PRINT " "
    
    LOOP FOR1
    
    MOV CX, BX 
    
    FOR2:
    
    PRINT "*"
    
    LOOP FOR2
    
    GOTOXY 0, AL
    INC AL
    INC BX   
    
    POP CX
    
    LOOP FOR
    
    
ENDP MAIN
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
END MAIN