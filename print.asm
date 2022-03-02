
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.data
count1 db 5;decimal
.code
main proc
    mov DL,count1;
    add DL,48; ;decimal
    
    mov ah,02h;  Print char in DL
    int 21h


ret




