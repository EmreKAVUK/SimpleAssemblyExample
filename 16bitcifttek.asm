.model small
.stack 32
.data 
series dw 5,6,7,8,9,10,11,12 
odd db 8 dup(?)
even db 8 dup(?)
.startup
lea si,series;
lea di,odd;
lea bx,even;

mov cx,16;
start:
test [si],00000001;
jz ev;
jmp od;   

ev:
mov al,[si];
mov [bx],al;
inc si;
inc bx;
jmp atla;

od:
mov al,[si];
mov [di],al;
inc di;
inc si;


atla:

loop start


.exit



end;