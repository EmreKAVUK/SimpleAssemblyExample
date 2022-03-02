
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov cx,0;
dongu:
mov ah,1;
int 21h;
cmp al,030h; 
jz atla
push ax;
inc bx; 

loop dongu
atla:
mov cx,bx;
dongu2:
  pop ax
  mov dl,al;
  mov ah,02;
  int 21h;



loop dongu2
ret




