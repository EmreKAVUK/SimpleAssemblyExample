.model small
.stack 32
.data 
isim db 'BaTtAL'
.code

.STARTUP
lea si,isim;

mov cx,6;
dongu:
cmp [si],90;
jb kucuk    
jmp atla


kucuk:
add [si],32;
atla:
inc si;


loop dongu

.exit
ret




