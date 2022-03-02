
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.data
count1 db 2;decimal
.code
main proc
    mov ah,01h; Code for Readinf From standart input Keyboard
    int 21h;character is going to be saved in al
    mov dl, al;
    mov ah, 02h; Code for writing to standart output display
    int 21h;execute code

ret




