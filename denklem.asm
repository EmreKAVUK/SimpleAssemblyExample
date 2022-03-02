org 100h 
 mov cx,0000h; 
 lea si,r1;
 lea di,r2; 
 
 ;8x+6y = 46
 mov ch,8;
 mov cl,6;
 ;3x+3y = 18
 mov bh,3;
 mov bl,3;
 
 ;x ve y degerlerini kac ile carpacaksan ah ve al ye yaz
 mov ah,02;
 mov al,02
 ;6x+6y = 36
 mul bh;
 mov bh,al;
 mov al,02; tekrar kac ile carpacaksan yaz y degerini
 mul bl;
 mov bl,al;  
 mov ax,0000h;  
 
 ;2x =  10
 sub ch,bh;
 sub cl,bl; 
 mov [x1],ch;

 mov dx,[di];
 mov ax,0002;
 mul dx    ;36
 mov bx,[si];46
 sub bx,ax  
 mov bh,00h; 
 
 mov ax,bx;
 div x1   
 
 mov [x],al; x = 5
 
 ;find y
 
 ;3x+3y = 18
 mov ah,3;   x degerini ilk denkleme yazma
 mov al,3;
 mov cl,ah;
 mul x
 mov bx,ax;
 
 
 mov ax, 0000h;
 mov al,r2;
 sub al,bl; 18-15
 div cl;
 mov y,al;
 
 


ret

 x1 db ? 
 x db ?
 y db ?
 r1 db 46 
 r2 db 18   
 
 

