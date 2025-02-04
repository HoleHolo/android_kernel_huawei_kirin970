#!/bin/bash

export ARCH=arm64

# 请自行修改交叉编译器路径及名称
export PATH=$PATH:/home/user/ToolChains/bin:/home/user/clang/bin
export CROSS_COMPILE=aarch64-none-linux-gnu-

# 填写你自己的主机名
export KBUILD_BUILD_HOST=PC

mkdir ../out

make ARCH=arm64 O=../out merge_kirin970_defconfig
make ARCH=arm64 O=../out -j$(($(nproc) * 2))
