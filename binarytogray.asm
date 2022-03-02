.model small
.stack 32
.data
var Db 00001011b
var2 db ? 
.code

mov ax,@data  ;
mov ds,ax;

MOV AL, var
MOV BL, AL
SHR AL, 01
XOR BL, AL
MOV var2, BL
HLT




.exit
end;