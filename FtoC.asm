.model small
.stack 32
.data 
C dw ?
F DW 230
.code
.startup 
;FORMULA  C = 5/9(F-32)
  MOV AX,F;
  SUB AX,32;
  MOV BX,5;
  MUL BX;
  MOV BX,9;
  DIV BX;

  MOV C,AX



.exit
end;