
#!/bin/bash

BASEDIR=$(dirname "$0")
cd $BASEDIR/../

if grub-file --is-x86-multiboot build/kefka.bin; then
  echo multiboot confirmed
else
  echo the file is not multiboot
fi
