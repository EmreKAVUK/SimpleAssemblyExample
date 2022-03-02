
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov bl,1
mov cx,2;

dongu:
 mov ah,1;
 int 21h;
 sub al,030h; 
 mul bl;
 mov bl,al;
 
 
 


loop dongu
mov [result],bx 

mov ax,[result];123 100 ah:23 al:1 23 10 ah:3 al:2
cmp ax,10;
jb one_digit;
cmp ax,100;
jb two_digit;
jmp three_digit;last choice three digit


one_digit:
mov ax,[result];
add ax,48;
mov ah,0eh;
int 10h;
jmp finish; 

two_digit:
mov ax,[result];For ex 23 /10 al:2 ah:3 we print first al
mov bl,10;
div bl; div use ax register 
mov bl,ah;Save ah's value because we use ah print string under
add al,48;
mov ah,0eh;print al
int 10h;
mov al,bl;
add al,48;
mov ah,0eh;
int 10h;
jmp finish;

three_digit:
mov ax,[result];
mov bl,100;
div bl;
mov bl,ah;
add al,48;
mov ah,0eh;
int 10h;
mov ax,0000h;
mov al,bl;
mov bl,10;
div bl
mov bl,ah;
add al,48;
mov ah,0eh;
int 10h;
mov al,bl;
add al,48; 
mov ah,0eh;
int 10h;


finish:

ret

result dw ?


