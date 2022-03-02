org 100h
.stack 100h
.data
var DW 1111111100001111b
.code
;Intilization of Data Segment
mov ax,@DATA
mov DS,ax
;First find 1's complement
not var
;Add 1 to 1's complement of number
inc var
;to terminate program
mov ah,4ch
int 21h
ret