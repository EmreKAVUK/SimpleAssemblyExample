.model small
.stack 32
.data
deg db 'Darkbones'
deg2 db 9 dup(?)
deg3 db 9 dup(?)
.code

.STARTUP
    lea si, deg;
    lea di, deg2;
    lea bx, deg3;     
    
    add bx,8;
    
    mov cx,9;
    dongu:
    
    mov al,[si];
    mov [di],al;        
    mov [bx],al;
    inc si;
    inc di;
    dec bx;
    loop dongu
    
    
    
    


.exit