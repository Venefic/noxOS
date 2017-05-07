
#!/bin/sh

BASEDIR=$(dirname "$0")
cd $BASEDIR/../
mkdir -p build

i686-elf-gcc -T src/linker.ld -o build/kefka.bin -ffreestanding -O2 -nostdlib build/boot.o build/kernel.o -lgcc
