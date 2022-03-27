section .text
	global main
	extern printf

_start:

  	mov eax, 25
  	mov ebx, 75
  	add eax,ebx ; adding the numbers
  	push eax
  	push message
  	call printf
  	add esp, 8


;Exit
	mov eax,1
	mov ebx,0
	int 0x80

section .data
	message db "Sum = %d", 10, 0
	
;Commands used
;
;nasm -f elf32 -o add2num.o add2num.asm
;ld -m elf_i386 -dynamic-linker /lib/ld-linux.so.2 -lc add2num.o -o add2num
;./add2num

