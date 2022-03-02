
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.data
count1 db 2;decimal
.code
main proc near
    mov ah,09h; function to display string ending with $
    mov dx,offset message
    int 21h
    
    mov ah,4ch; function to terminate
    mov al,00h;
    int 21h

endp
message db "hello world $";
end main
ret




