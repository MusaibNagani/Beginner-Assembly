TITLE

; Name: Musaib Nagani
; Date: 20/10/2022
; ID: 110060703
; Description: Assignment 4b

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.code
main PROC

    mov al, 0FFh            ;Moving the max value of 8 bits that is 255 to al an 8 bit register  
    add al,1                ;adding one to the register causing overflow 
    call DumpRegs           ;printing the register value with CF = 1  

    mov al,0                ;Moving the smallest value of 8 bits that is 0 to al an 8 bit register  
    sub al,1                ;subtracting one from the register causing underflow
    call DumpRegs           ;printing the register value with CF = 1 

    mov al,1                ;Moving one to al  
    sub al,0                ;subtracting 0 
    call DumpRegs           ;printing the register value with CF = 0 

main ENDP
END main