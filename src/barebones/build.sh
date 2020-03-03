
nasm -felf32 boot_nasm.asm -o boot.o
i686-linux-gnu-gcc-8 -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
ld -m elf_i386 -T linker.ld -o kernel.bin boot.o kernel.o
#qemu-system-i386 -kernel kernel.bin
# problem with the graphics display with the above command can be removed with the following
# ref: https://stackoverflow.com/questions/22967925/running-qemu-remotely-via-ssh:while
qemu-system-i386 -kernel kernel.bin -curses
# to exit from the qemu command, type ESC+2, then q and <Enter>
