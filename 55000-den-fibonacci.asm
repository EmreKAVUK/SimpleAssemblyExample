mov ax,5000h
mov DS,ax
MOV AL,00H
MOV SI,5000H
org 100h

MOV [SI],AL
ADD SI,01H
ADD AL,01H
MOV [SI],AL
MOV CX,[0000H]
SUB CX,0002H
mov ch,00h;
up:

    MOV AL,[SI-1]
    ADD AL,[SI]
    ADD SI,01H
    MOV [SI],AL 
    LOOP up
    
    HLT