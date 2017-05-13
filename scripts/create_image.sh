
#!/bin/bash

BASEDIR=$(dirname "$0")
cd $BASEDIR/../

mkdir -p isodir/boot/grub
cp build/kefka.bin isodir/boot/kefka.bin
cp grub.cfg isodir/boot/grub/grub.cfg
grub-mkrescue -o kefka.iso isodir
