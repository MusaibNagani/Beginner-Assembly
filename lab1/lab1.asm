TITLE

; Name: Musaib Nagani
; Date: 09/21/2022
; ID: 110060703
; Description: Lab_1

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib


.data
	YOU WORD 1234h, 1555h
 	ME DWORD 8AF67B11h
.code
main PROC
MOV ESI,OFFSET YOU
MOVZX EBX, BYTE PTR [ESI+1] ; BH =
call DumpRegs ; check value of EAX

    exit

main ENDP
END main