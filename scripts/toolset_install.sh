#!/bin/bash

# Preparation
export PREFIX="$HOME/opt/cross"
export TARGET="i686-elf"
export PATH="$PREFIX/bin:$PATH"

# Binutils
# Uses $HOME/binutils-gdb/configure
cd $HOME/src
mkdir build-binutils
cd build-binutils
../binutils-gdb/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
make
make install

# GCC
# Uses $HOME/gcc-7.1.0/configure
cd $HOME/src
which -- $TARGET-as || echo $TARGET-as is not in the PATH

mkdir build-gcc
cd build-gcc
../gcc-7.1.0/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c,c++ --without-headers
make all-gcc
make all-target-libgcc
make install-gcc
make install-target-libgcc
