ORG 0000H

MOV A,#07H      ; A = 7
MOV B,#96H      ; B = 150
MUL AB          ; 7 × 150 = 1050

ADD A,#1DH      ; +29 ? 1079

HERE: SJMP HERE
END
