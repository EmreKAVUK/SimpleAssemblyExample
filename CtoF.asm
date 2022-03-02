.model small
.stack 32
.data 
C dw 260
F DW ?
.code
.startup
  MOV AX,C;
  MOV BX,9;
  MUL BX;
  MOV BX,5;
  DIV BX;
  MOV BX,32;
  ADD AX,BX;
  MOV BX,1
  SUB AX,BX
  MOV F,AX



.exit
end;