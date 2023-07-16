INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.DATA
  array1 DB 1, 2, 3, 4, 5 ; initializing an array
  array2 DB 5 DUP (?)   ; uninitialized array

  length EQU $-array1 ; 5-0=5 finding the length of an array

.CODE
MAIN PROC

  mov ax, @data
  mov ds, ax

  mov ax, 0
  mov cx, length-1 ; set loop counter to the length of the array

  lea si, array1 ; load address of array1 into si
  lea di, array2 ; load address of array2 into di

copy_loop:
  mov al, [si] ; move byte from array1 to al
  mov [di], al ; move byte from al to array2

  inc si ; increment source index
  inc di ; increment destination index

  loop copy_loop ; repeat the loop until cx becomes zero

  ; Exit the program
  mov ax, 4C00h ; exit program with return code 0
  int 21h

ENDP MAIN
END MAIN
