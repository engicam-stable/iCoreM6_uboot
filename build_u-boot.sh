#!/bin/bash
export ARCH=arm
export CROSS_COMPILE=/opt/freescale/usr/local/gcc-4.4.4-glibc-2.11.1-multilib-1.0/arm-fsl-linux-gnueabi/bin/arm-none-linux-gnueabi- 
export PATH=$PATH:/opt/freescale/usr/local/gcc-4.4.4-glibc-2.11.1-multilib-1.0/arm-fsl-linux-gnueabi/bin
make
read dest < icore_config
mv u-boot.bin $dest.bin
echo
echo
echo $dest.bin "done"
