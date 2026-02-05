ORG 0000H

MOV 24H,#40H     ; 24H contains pointer value
MOV 40H,#22H     ; real data

MOV A,24H        ; direct read from 24H
INC A
MOV 30H,A

SJMP $
END
