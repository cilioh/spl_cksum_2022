#!/bin/bash

rm -rf *.rpm
#make clean

echo y | yum remove '*spl*'

#sh ./autogen.sh
#./configure --with-spec=redhat
make pkg-utils -j32
make rpm-dkms -j32
make rpm-kmod -j32

#echo y | yum localinstall *dkms*.rpm
#echo y | yum localinstall *.rpm

echo y | yum localinstall *.x86_64.rpm
