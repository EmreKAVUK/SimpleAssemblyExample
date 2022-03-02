.model small
.stack 32
.data  
veri db 1,2,3,4,5,6,7,8,9
.code
.STARTUP
lea si,veri

mov al,[si]
inc si
xchg [si],al
mov [si-1],al

.EXIT
end