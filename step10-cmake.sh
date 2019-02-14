#!/bin/bash

if [ $TRAVIS ]
then
echo "Travis run. Change path env"
echo $PATH
export PATH=/cygdrive/c/tools/cygwin/lib:/cygdrive/c/tools/cygwin/bin:/cygdrive/c/tools/usr/bin:/cygdrive/c/tools/usr/local/bin:$PATH
echo old root is $CMAKE_ROOT
export CMAKE_ROOT=/usr/share/cmake-3.13.1/Templates
echo now is root $CMAKE_ROOT
echo ls tools-cygwin-bin
ls /cygdrive/c/tools/cygwin/bin
echo ls tools-cygwin-bin
ls /cygdrive/c/tools/cygwin
echo ls tools-cygwin-usr-bin
ls /cygdrive/c/tools/cygwin/usr/bin
wget http://mirrors.kernel.org/sourceware/cygwin/x86_64/release/cmake/cmake-3.13.1-1.tar.xz
tar -xvf cmake-3.13.1-1.tar.xz -C /
rm cmake-3.13.1-1.tar.xz
echo usr-bin
ls /usr/bin/
echo usr-local-bin
ls /usr/local/bin
cmake --version
/usr/bin/cmake --version
whereis cmake
cmake --version
echo result path
echo $PATH
else
echo "No travis runing"
fi
