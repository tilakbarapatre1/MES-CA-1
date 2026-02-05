ORG 0000H

MOV 24H,#40H
MOV 40H,#22H

MOV R0,24H       ; R0 = 40H
MOV A,@R0        ; read from address 40H
INC A
MOV 30H,A

SJMP $
END
