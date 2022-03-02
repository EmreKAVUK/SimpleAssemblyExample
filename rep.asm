.model small 
.stack 32
.data
veri1 db "Darkbons"
veri2 db 8 dup(?)
.code

mov ax, @data;
mov ds, ax;   
mov es,ax;


lea si,veri1;
lea di,veri2;  
mov cx,4;
rep movsw;



