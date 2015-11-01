#!/bin/bash
# simple script for executing menuconfig

# root directory of LeanKernel git repo (default is this script's location)
RDIR=$(pwd)

cd $RDIR
mkdir -p build
ARCH=arm make -C $RDIR O=build lk_defconfig VARIANT_DEFCONFIG=lk_defconfig menuconfig
echo "look in build directory for .config file with changes, swap arch/arm/configs/lk_defconfig"
