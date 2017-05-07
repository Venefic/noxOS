
# noxOS #
Operating system for personal use.

## Why? ##
* Learning by designing and implementing:
  * Kernel
  * Unix OS and tools

## Cross-compiler toolset ##
* Pre-requisites:
  * binuntils installed at: `$HOME/binutils-gdb`
  * gcc installed at: `$HOME/gcc-7.1.0/configure`
* Run `toolset_install.sh`
* To be able to run tools with commands like `i686-elf-gcc --version`:
  * Add location to PATH: `export PATH="$HOME/opt/cross/bin:$PATH"`
