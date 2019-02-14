#!/bin/bash

wget https://github.com/Kitware/CMake/releases/download/v3.13.4/cmake-3.13.4.tar.gz
tar -xf cmake-3.13.4.tar.gz
cd cmake-3.13.4

if [ $TRAVIS ]
then
echo "Travis run. Change path env"
export PATH=/usr/bin:/usr/local/bin
else
echo "No travis runing"
fi

./configure
make
make install
