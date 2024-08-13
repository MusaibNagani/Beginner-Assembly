TITLE

; Name: Musaib Nagani
; Date: 11/11/2022
; ID: 110060703
; Description: Assignment 6

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
array BYTE 10 DUP(?)                ; defining an array with 10 size 

.code
    main PROC
        mov ecx, 20                 ; counter initialised to 20 in ecx
        mov esi, offset array       ; adress of the the array offset which is 0
        Loop1:                      ; Loop1
            push ecx                ; push in ecx
            call genString          ; call function made to generate string
            pop ecx                 ; get outer loop count back from ecx
        Loop Loop1                  ; loop till ecx has a value of 0
        exit
    main ENDP

    genString PROC                  ; procedure to generate string
        mov ecx, 10                 ; counter of 10 to generate 10 characters
        Loop2:
            mov eax, 26             ; moving 26 into eax
            call RandomRange        ; this will generate a number from 0-25 which is a lower case letter and RandomRange Generates an unsigned pseudo-random numbers 
            add eax, 65             ; adding 65 to make the character uppercase
            mov [esi], eax          ; moving eax in the position of esi
            call WriteChar          ; write character (Writes a single character to standard output)
        loop Loop2                  ; loop till we have 10 random characters
        call Crlf                   ; new line
        ret                         ; transfers control to the return address located on the stack
    genString ENDP
END main
 