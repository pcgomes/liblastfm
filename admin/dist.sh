#!/bin/bash

v=`perl -ne '/VERSION\s*=\s*((\d.)*\d)/ and print \$1' $0/../../src/lastfm.pro`

# OSX copies special file attributes to ._files when you tar!
export COPY_EXTENDED_ATTRIBUTES_DISABLE=true
export COPYFILE_DISABLE=true

git archive --prefix=liblastfm-$v/ HEAD | bzip2 > liblastfm-$v.tar.bz2

echo `pwd`/liblastfm-$v.tar.bz2