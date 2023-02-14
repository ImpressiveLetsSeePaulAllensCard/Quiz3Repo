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
    LDR R0,= x
    LDR R1,[R0]
    LDR R0,= y
    LDR R2,[R0]
	
	MOV R6,#8  ; masking number
	
	EOR R4,R2,#1
	ADD R4,R4,#1 ; twos complement for y
    
	
	
	BIC R1,R6
	BIC R2,R6
	CMP R1,#0
	BGT branch1
	BLT branch3
	ADD R1,R1,R4
	
branch1
    CMP R2,#0
	BGT branch2
branch2
    ADD R1,R1,R2
branch3
     CMP R2,#0
	 BLT branch4
branch4
     SUB R1,R1,R2
	
	
	
	


;--------------------------------------
stop B stop
x DCD 5
y DCD -5
		
	AREA data1,DATA,READWRITE  
		END