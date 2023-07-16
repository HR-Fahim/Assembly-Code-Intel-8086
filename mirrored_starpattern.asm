INCLUDE 'EMU8086.INC' 
.MODEL SMALL .STACK 100H 
.DATA 
.CODE 
MAIN PROC 
             
  mov cx, 5
  mov bx, 1; column 
  mov al, 1; row 
  
  
  for1: 
  push cx ; mov dx, cx  
  
  for2:   
  print " "  ;using another loop for printing spaces
  loop for2 
  
  
  mov cx, bx  
  
  
  for3:
  print "*" 
  loop for3 
  
  gotoxy 0, al    ; set the cursor
  
  inc al ; i++
  inc bx  ;j++
  
  pop cx ; mov cx, dx
  loop for1 
          

 
ENDP MAIN 
END MAIN