.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    MOV AL, 5
    CMP AL, 5
    
    JZ LABEL
    
    MOV BL, 2
    ADD AL, BL
    JMP exit
    
    LABEL:
    
    MOV BL, 3
    ADD AL, BL
    
    exit:
    ENDP MAIN 

END MAIN

    
    