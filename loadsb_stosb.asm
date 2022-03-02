.model small
.stack 32
.data
veri1 db 1,2,3,4,5,6
veri2 db 6 dup(?)
.code
.STARTUP
    mov ax,@data;
    mov ds,ax;
    mov es,ax;
    
    
    lea si,veri1;
    lea di,veri2;
    mov cx,6;
    rep movsb
    
    lodsb;
    stosb;
    ;loadsb = mov al,[si] + inc si
    ;stosb = mov [di],al + inc di



.exit

end