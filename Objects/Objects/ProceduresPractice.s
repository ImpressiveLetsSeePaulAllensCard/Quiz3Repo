;-----------------------------------------------
		AREA RESET, DATA, READONLY
		EXPORT __Vectors
__Vectors
		DCD 0x20001000
		DCD Reset_Handler ; reset vector
		ALIGN
		AREA CS2400_Sp22, CODE, READONLY
		ENTRY
		EXPORT Reset_Handler
Reset_Handler
;-------------------------------------------------
;Write your code in this section
main 
      LDR R0,=num1
	  LDR R1,[R0]
	  BL fact
	  B stop


fact
     MOV R5,#3
loop
      SUB R1,R1,#1
	  MUL R0,R0,R1
	  CMP R1,#0
	  BGT loop
	  BX LR
	  ;fact needs a loop
	  
	   
	   
	     ADD R0,R0,#0
         ADD R0,R0,#0
;--------------------------------------
stop B stop
num1 DCD 5
;num2 DCD 5
		END