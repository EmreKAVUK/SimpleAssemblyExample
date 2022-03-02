org 100h

mov cx,64h
mov dx,01h
mov ax,5000h
mov ds,ax
mov bx,3000h 
mov [bx], 01h

dongu: 

    inc bx
    inc dx
    mov [bx],dx
    loop dongu




