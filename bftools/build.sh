#!/bin/bash
set -eu

pkg=bftools-$PKG_VERSION-$PKG_BUILDNUM

bindir=$PREFIX/share/$pkg
mkdir -p $bindir $PREFIX/bin
rm $SRC_DIR/*.bat $SRC_DIR/*.jar $SRC_DIR/*.xml
cp $SRC_DIR/* $bindir/

for f in $SRC_DIR/*; do
    ln -s ../share/$pkg/${f##*/} $PREFIX/bin/
done
