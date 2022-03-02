
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
MOV BX, 0xAABBh;
MOV CX, 0XCCDDh;
MOV DX,CX;
MOV CX,BX;
MOV BX,DX;
MOV DX,0000h; 

;SIMPLE WAY 
;XCHG BX,CX;


ret




