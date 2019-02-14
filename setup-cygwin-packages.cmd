@echo off
choco install cygwin --params "/NoStartMenu"
choco install cyg-get
cyg-get dos2unix patch unzip automake make bzip2 libsqlite-3-devel libtool gcc-g++ openssl-devel wget gcc doxygen libllvm5 libclang5 libedit0 libxapian30 cmake
uname -a
dos2unix step10-cmake.sh
sh step10-cmake.sh
