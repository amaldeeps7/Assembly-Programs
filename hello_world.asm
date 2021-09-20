;hello_world.asm
;assemply program to print hello world!

global _start

section .text:

_start:
	mov eax, 0x4			; use the right syscall
	mov ebx, 1			; use stdout as the fd
	mov ecx, message		; use the message as the buffer
	mov edx, message_length		; and supply the length
	int 0x80
	
	mov eax, 0x1
	mov ebx, 0
	int 0x80

section .data:
	message: db "Hello World!", 0xA
	message_length equ $-message