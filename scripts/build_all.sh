#!/bin/bash

BASEDIR=$(dirname "$0")
cd $BASEDIR/../

scripts/build_bootloader_assembly.sh
scripts/build_kernel.sh
scripts/link.sh
scripts/check_multiboot_kernel.sh
