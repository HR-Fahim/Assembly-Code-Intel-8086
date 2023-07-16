INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H 

STARPATTERN PROC
    
    MOV CX, 5
    MOV AX, 1
    MOV BX, 1
    
    FOR1:
    
    PUSH CX
    MOV CX, BX
    
    FOR2:
    
    PRINT "*"
    
    LOOP FOR2
    
    GOTOXY 0, AL
    
    INC AL
    INC BX
    
    POP CX 
    
    LOOP FOR1
    
    RET
    
ENDP STARPATTERN

DOLLARPATTERN PROC
    
    MOV CX, 5
    MOV AX, 6
    MOV BX, 1
    
    FOR3:
    
    PUSH CX
    MOV CX, BX
    
    FOR4:
    
    PRINT "$"
    
    LOOP FOR4
    
    GOTOXY 0, AL
    
    INC AL
    INC BX
    
    POP CX 
          
    ; Print      
          
    LOOP FOR3
    
    RET
    
    ENDP DOLLARPATTERN

MAIN PROC
    
    CALL STARPATTERN  
    
    CALL DOLLARPATTERN
    
ENDP MAIN
END MAIN










