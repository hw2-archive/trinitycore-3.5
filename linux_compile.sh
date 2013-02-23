#!/bin/sh

SPATH=$HOME/WORKSPACE/hw2_dev/hw2-emu-wow/servers/server_bin/trinitycore-3-5
CORE=`grep -c ^processor /proc/cpuinfo`
CORE=3
DIRNAME=${PWD##*/}

mkdir build
cd build

cmake ../../$DIRNAME -DPREFIX="$SPATH"
make -j $CORE #-d #for debug mode
make -j $CORE install

#cp $SPATH/etc/worldserver.conf.dist $SPATH/etc/worldserver.conf
#cp $SPATH/etc/authserver.conf.dist $SPATH/etc/authserver.conf

