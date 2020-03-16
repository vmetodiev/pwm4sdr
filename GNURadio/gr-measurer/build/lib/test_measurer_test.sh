#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/ubuntu/mount/work/gr-measurer/lib
export PATH=/home/ubuntu/mount/work/gr-measurer/build/lib:$PATH
export LD_LIBRARY_PATH=/home/ubuntu/mount/work/gr-measurer/build/lib:$LD_LIBRARY_PATH
export PYTHONPATH=$PYTHONPATH
test-measurer 
