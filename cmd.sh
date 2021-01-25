#!/bin/bash

BUILD_PATH=/opt

cd $BUILD_PATH/corrade
ln -s package/debian .
dpkg-buildpackage
dpkg -i ../corrade*.deb

cd $BUILD_PATH/magnum
ln -s package/debian .
dpkg-buildpackage
dpkg -i ../magnum*.deb

cd $BUILD_PATH/magnum-plugins
ln -s package/debian .
dpkg-buildpackage
dpkg -i ../magnum-plugins*.deb

cd $BUILD_PATH/magnum-integration
ln -s package/debian .
dpkg-buildpackage
dpkg -i ../magnum-integration*.deb

tar -cvf /out/packages.tar.gz ../*.deb 

