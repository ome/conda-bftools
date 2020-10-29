#!/bin/bash
set -eu

pkg=bftools-$PKG_VERSION-$PKG_BUILDNUM

libdir=$PREFIX/share/$pkg
mkdir -p $libdir
cp $SRC_DIR/*.jar $SRC_DIR/*.xml $libdir/
