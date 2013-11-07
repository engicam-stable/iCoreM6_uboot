#!/bin/bash
export ARCH=arm
if [ ! -f /data/iCoreM6/imx-android-13.4.1/myandroid/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi- ]
	export CROSS_COMPILE=/data/iCoreM6/imx-android-13.4.1/myandroid/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi-
then
	export CROSS_COMPILE=/opt/freescale/usr/local/gcc-4.6.2-glibc-2.13-linaro-multilib-2011.12/fsl-linaro-toolchain/bin/arm-none-linux-gnueabi-
	export PATH=$PATH:/opt/freescale/usr/local/gcc-4.6.2-glibc-2.13-linaro-multilib-2011.12/fsl-linaro-toolchain/bin
fi
make distclean
make mx6dl_icore_rqs_config
echo u-boot-icore-rqs-duallight > icore_config
make
read dest < icore_config
mv u-boot.bin $dest.bin
echo
echo
echo $dest.bin "done"
