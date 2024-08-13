TITLE

; Name: Musaib Nagani
; Date: 05/10/2022
; ID: 110060703
; Description: Assignment 3 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
	; data declarations 

    val1 SDWORD 8
    val2 SDWORD -15
    val3 SDWORD 20

    Uarray WORD 1000h,2000h,3000h,4000h
    Sarray SWORD -1,-2,-3,-4

.code
main PROC

	; program 1 equation : EAX = -val2 + 7 - val3 + val1
    MOV EAX, 0              ; Moving 0 to EAX
    NEG val2                ; Negating Val2 
    MOV EAX, val2           ; Moving val2 to EAX, the vale of EAX 0Fh
    ADD EAX, 07h            ; Adding 07h to EAX, the vale of EAX 016h
    SUB EAX, Val3           ; Subtracting val3 to EAX , The value of EAX 02h
    ADD EAX, Val1           ; Adding val1 to EAX , The value of EAX 0Ah
    Call DumpRegs           ; calling DumpRegs to display the results.

    ; program 2 
    movzx eax,Uarray		; moving Uarray[0] to eax
	movzx ebx,[Uarray + 2]	; moving Uarray[1] to ebx
	movzx ecx,[Uarray + 4]	; moving Uarray[2] to ecx
	movzx edx,[Uarray + 6]	; moving Uarray[3] to edx
	call DumpRegs			; calling DumpRegs to display the results.

    ; Program 3
    movsx eax,Sarray		; moving Sarray[0] to eax
	movsx ebx,[Sarray + 2]	; moving Sarray[1] to ebx
	movsx ecx,[Sarray + 4]	; moving Sarray[2] to ecx
	movsx edx,[Sarray + 6]	; moving Sarray[3] to edx
	call DumpRegs			; to display 
	exit

main ENDP
END main