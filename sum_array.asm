INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.DATA
  array1 db 1, 2, 3, 4, 5 ; initializing an array
  array2 db 5 dup (?) ; uninitialized array

  length equ $-array1 ; 5-0=5 finding the length of an array
  sum db 0

.CODE
MAIN PROC

  mov ax, @data
  mov ds, ax

  mov ax, 0

  mov cx, length-1

  lea si, array1
  xor bl, bl ; clear bl (set sum to 0)

for:
  mov al, [si]
  add bl, al ; sum = sum + array[i]

  inc si
  loop for

  mov ax, 0
  mov al, bl
  call print_num

ENDP MAIN
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_SCAN_NUM
END MAIN
