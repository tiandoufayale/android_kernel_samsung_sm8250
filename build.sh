#!/bin/bash
args="-j$(nproc --all) \
	O=out \
	ARCH=arm64 \
	CLANG_TRIPLE=aarch64-linux-gnu- \
	CROSS_COMPILE=/home/tiandou/clang3/aarch64/bin/aarch64-linux-android- \
	CC=/home/tiandou/clang3/llvm/bin/clang
	CROSS_COMPILE_COMPAT=/home/tiandou/clang3/aarch32/bin/arm-linux-androideabi- "
	LLVM=1 
        LLVM_IAS=1
	make ${args} vendor/gts7lwifi_eur_open_defconfig 
	make ${args} 
