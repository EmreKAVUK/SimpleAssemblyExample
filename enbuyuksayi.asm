.model small
.stack 32
.data 
sayilar db 2,4,5,1,6,9,7,3
enbuyuk db ?
enkucuk db ?
.code

.STARTUP
lea si,sayilar;

mov al,[si];
mov enbuyuk,al;
inc si; 


mov cx,7;

dongu: 
geri:
mov al,[si];
cmp al,enbuyuk;
ja buyukat
jmp atla:  





buyukat:
mov enbuyuk,al; 
inc si;
jmp geri;

atla:
inc si;

loop dongu

.exit
end