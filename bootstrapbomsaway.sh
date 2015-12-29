#!/bin/sh
TMP_DIR=$(mktemp -d --suffix='.bomsaway')

echo bomsaway
cd $TMP_DIR
git clone https://github.com/joshuacox/bomsaway.git
cd bomsaway
sudo make install
cd
rm -Rf $TMP_DIR
