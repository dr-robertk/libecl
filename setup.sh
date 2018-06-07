#!/bin/bash

INSTALLDIR=`pwd`/install

rm -rf build
mkdir build
cd build
cmake ../ -DCMAKE_INSTALL_PREFIX=$INSTALLDIR -DBUILD_APPLICATIONS=ON -DBUILD_SHARED_LIBS=OFF
#  -DPING_PATH=/bin
make -j4
make install
cd ../
