ORG 0000H

; build high byte = 26H
CLR A
MOV A,#20H
ORL A,#06H
MOV B,A

; build low byte = CAH
CLR A
MOV A,#0C0H
ORL A,#0AH

HERE: SJMP HERE
END
