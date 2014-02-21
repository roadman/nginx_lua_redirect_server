#!/bin/sh
CUR=`pwd`

git submodule init
git submodule update

egrep "^\[submodule " .gitmodules | cut -d\" -f2 | while read module
do
    echo
    echo "= $module =================================="
    cd $module
    git checkout master
    git pull origin master
#    git log -1 --decorate=short
    cd $CUR
done

