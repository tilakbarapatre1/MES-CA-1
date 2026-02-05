ORG 0000H

MOV R0,#40H      ; read pointer
MOV R1,#40H      ; write pointer
MOV R2,#20H      ; 32 bytes counter

LOOP1:
MOV A,@R0
CJNE A,#0FFH,VALID
SJMP SKIP1

VALID:
MOV @R1,A
INC R1

SKIP1:
INC R0
DJNZ R2,LOOP1

; fill remaining memory with 00H

MOV A,#00H

LOOP2:
MOV @R1,A
INC R1
MOV A,R1
CJNE A,#60H,LOOP2

STOP: SJMP STOP
END
