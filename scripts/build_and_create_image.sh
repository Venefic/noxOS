#!/bin/sh

BASEDIR=$(dirname "$0")
cd $BASEDIR/../

scripts/build_all.sh
scripts/create_image.sh
