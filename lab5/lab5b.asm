TITLE

; Name: Musaib Nagani
; Date: 02/11/2022
; ID: 110060703
; Description: Assignment 5b 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
count DWORD ?
count1 DWORD ?
num DWORD 16

.code

main PROC
        mov eax,0
        mov ecx, num                    ; 

    foreground:
        mov count1, ecx                 ; 
        push eax
        mov ecx, num                    ; 

    background:                         ; 
        call SetTextColor               ; 
        push eax                        ;    
        mov eax,'z'                     ; 
        call WriteChar                  
        pop eax                         ; 
        add eax, 10h                    ;

main ENDP
END main