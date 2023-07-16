INCLUDE 'EMU8086.INC' 
.MODEL SMALL
.STACK 100H 

.DATA   

array1 db 1,2,3,4,5 ; initializing an array 
array2 db 5 dup ?   ; uninitialized array 

length equ $-array1;5-0=5 finding the length of an array


.CODE 
MAIN PROC 
             
mov  ax, @data
mov ds, ax 

mov ax, 0   

mov cx, length-1 ; i<array_size


lea si, array1 ;  lea=pointer
lea di, array2  


mov al, [si] ; temp=array1[0] 
mov [di], al ; array2[0]=temp
   
inc si
inc di

mov al, [si] ; temp=array1[1] 
mov [di], al ; array2[1]=temp
                                                                                                                          
inc si
inc di 


mov al, [si] ; temp=array1[2] 
mov [di], al ; array2[2]=temp
   
inc si
inc di  

mov al, [si] ; temp=array1[3] 
mov [di], al ; array2[3]=temp
   
inc si
inc di  

mov al, [si] ; temp=array1[4] 
mov [di], al ; array2[4]=temp
   
inc si
inc di
         


 
ENDP MAIN 
END MAIN