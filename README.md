# Assembly-Programs

We can use NASM compiler to compile our assembly program.

Linux Machine:

1.Install nasm | sudo apt-get install nasm

2.To compile the program :
            ->If your system is 32 bit then you should use "nasm -f elf32 -o hello_world.o hello_world.asm"
            ->If your system is 64 bit then you should use "nasm -f elf64 -o hello_world.o hello_world.asm"

3.After compiling your code you will get a object file as "hello_world.o".

4.To execute the "hello.o" file write the command "ld -m elm_i386 hello_world.o -o hello_world".

5.After executing the "hello_world.o" file you will get one more executable file as "hello_world".

6.To Run the file just type ./hello_world and press Enter you will get your output.
