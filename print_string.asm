.model small
.stack 100h

.data
    DATA_ASC DB 'I AM HR','$'

.code
    mov ax, @data
    mov ds, ax

    mov ah, 09h      ; Set function code 09h - Display string
    mov dx, OFFSET DATA_ASC ; Load offset address of the string into DX
    int 21h          ; Invoke interrupt 21h

    mov ah, 4Ch      ; Set function code 4Ch - Terminate program
    int 21h          ; Invoke interrupt 21h

end



