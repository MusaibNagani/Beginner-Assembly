TITLE

; Name: Musaib Nagani
; Date: 20/10/2022
; ID: 110060703
; Description: Assignment 4a 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib


.code
main PROC
    mov eax,1           ;move 1 to eax
    mov ebx,0           ;move 0 to ebx
    mov edx,1           ;move 0 to edx
    mov ecx,6           ;loop count = 6
    call DumpRegs       ;To print the register value 
    L1:                 ;Loop L1
    mov eax,ebx 
    add eax,edx         ;adding
    call DumpRegs       ;To print the register value 
    mov ebx,edx         ;fibonacci sequence 
    mov edx,eax         
    Loop L1             ;Loop L1
    exit

main ENDP
END main
 