#!/bin/bash

INSTALLDIR=`pwd`/../libecl-install

rm -rf build
mkdir build
cd build
cmake ../ -DCMAKE_INSTALL_PREFIX=$INSTALLDIR -DBOOST_ROOT=/home/robertk/work/Dune/modules/boost/1.59_gcc4.9.4/ -DBUILD_APPLICATIONS=ON
#  -DPING_PATH=/bin
make -j4
make install
cd ../
