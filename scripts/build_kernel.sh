
#!/bin/sh

BASEDIR=$(dirname "$0")
cd $BASEDIR/../
mkdir -p build

i686-elf-gcc -c src/kernel.c -o build/kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
