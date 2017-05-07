#!/bin/sh

BASEDIR=$(dirname "$0")
cd $BASEDIR/../
mkdir -p build

i686-elf-as src/boot.s -o build/boot.o
