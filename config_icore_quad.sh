#!/bin/bash
export ARCH=arm
if [ ! -f /data/iCoreM6/imx-android-13.4.1/myandroid/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi- ]
	export CROSS_COMPILE=/data/iCoreM6/imx-android-13.4.1/myandroid/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi-
then
	export CROSS_COMPILE=/opt/freescale/usr/local/gcc-4.4.4-glibc-2.11.1-multilib-1.0/arm-fsl-linux-gnueabi/bin/arm-none-linux-gnueabi-
	export PATH=$PATH:/opt/freescale/usr/local/gcc-4.4.4-glibc-2.11.1-multilib-1.0/arm-fsl-linux-gnueabi/bin
fi
make distclean
make mx6q_icore_config
echo u-boot-icore-quad > icore_config
make
read dest < icore_config
mv u-boot.bin $dest.bin
echo
echo
echo $dest.bin "done"
