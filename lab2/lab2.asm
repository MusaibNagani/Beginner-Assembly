TITLE

; Name: Musaib Nagani
; Date: 29/09/2022
; ID: 110060703
; Description: Assignment 2 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

	; Using TEXTEQU to create string. 
	string1 TEXTEQU <"Kill me I'm Bored.">        
	string2 TEXTEQU <"Hi my name is Musaib Nagani and this is assignent 2."> 
	string3 TEXTEQU <"HI my TA.">    

.data
	; data declarations
	
	; first question
	var1 BYTE 233			 	; Declaring a variable with unsigned byte 
    var2 SBYTE -21		 	    ; Declaring a variable with signed byte 
	var3 WORD 786			 	; Declaring a variable with unsigned word
	var4 SWORD -1921		 	; Declaring a variable with signed word 
	var5 DWORD 5119h		 	; Declaring a variable with unsigned double word
	var6 SDWORD -489287h	 	; Declaring a variable with signed double word
	var7 QWORD 6565656565h 	    ; Declaring a variable with quaraple word
	var8 TBYTE 11111111h	 	; Declaring a variable with ten byte

	; second Question 
	Mesg1 BYTE string1,0	    ; Declaring a string 
    Mesg2 BYTE string2,0	    ; Declaring a string 
	Mesg3 BYTE string3,0	    ; Declaring a string 



.code
main PROC

	; program 

	; second Question 
	MOV EDX, OFFSET Mesg1    	; Moving Mesg1 to data register
    call WriteString        	; Calling the strings
	MOV EDX, OFFSET Mesg2    	; Moving Mesg2 to data register
    call WriteString         	; Calling the strings
	MOV EDX, OFFSET Mesg3    	; Moving Mesg3 to data register
    call WriteString         	; Calling the strings

	call DumpRegs            	; Displaying the register in console 
	exit

main ENDP
END main
