#!/bin/sh

# Navigate to the project build directory
alias g++='g++ -std=c++11'

echo "### We will not try to build the Measurer module ###"

echo '*** Going to the project build folder ***'

cd /home/ubuntu/mount/work/gr-measurer/build

# Build it - otherwise GRC will not recognise the module

echo '*** Compiling the module ***'
cmake .. > /dev/null || exit -1

echo '*** Installing the module ***'
sudo make install > /dev/null || exit -1

echo '*** Executing ldconfig ***'
sudo ldconfig > /dev/null || exit -1

echo '*** The module has been successfully installed ***'
