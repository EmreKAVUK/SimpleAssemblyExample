                .model small
.stack 32
.data
sayilar db 2,10,6,18,22
sayilar2 db 5 dup(?)
.code 

.STARTUP
lea si,sayilar;
lea di,sayilar2;

mov cx,5;
dongu:
mov al,[si];
shr al,1;
mov [di],al;
inc di;
inc si;



loop dongu



.exit
end