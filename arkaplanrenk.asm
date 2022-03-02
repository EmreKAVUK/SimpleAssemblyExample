.model small
.stack 32
.data
.code

mov ax,data;
mov ds,ax;
mov es,ax;

mov ah,0;
mov al,0;
int 10h;

mov ah,9;
mov al,'A';
mov bh,0
mov cx,10;
mov bl,11101100b;
int 10h;