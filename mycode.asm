
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.data
count1 db 2;decimal
.code
main proc
    mov dl,2h;
    add dl,30h;
    mov ah, 02h;Printing DL content ASCII CODE
    int 21h;execute code

ret




