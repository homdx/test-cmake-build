@echo off
rem choco install cygwin --params "/NoStartMenu"
rem choco install cyg-get
rem cyg-get dos2unix patch unzip automake make bzip2 libsqlite-3-devel libtool gcc-g++ openssl-devel wget gcc doxygen libllvm5 libclang5 libedit0 libxapian30 cmake
set PATH=c:\tools\cygwin\bin;%PATH%
cyg-get --help
echo current shell system is
uname -a
dos2unix step10-cmake.sh
sh step10-cmake.sh
