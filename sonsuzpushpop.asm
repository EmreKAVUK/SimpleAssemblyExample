.model small
.stack 32
.data
.code
.startup  
    mov cx,0;
    mov bl,1;
    dongu: 
        mov ah,1;
        int 21h;
        push ax;
        inc bl
        cmp al,48;
        jz cikart; 
        jmp atla;
        
        cikart:
        up: 
        dec bl;
        cmp bl,0;
        jz bitir
        pop ax
        mov dl,al;
        mov ah,2;
        int 21h;
        jmp up;
        atla:
    
    loop dongu
    bitir:
.exit
end