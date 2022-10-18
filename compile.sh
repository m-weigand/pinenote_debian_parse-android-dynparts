#!/bin/bash
cd /root/pad/

if [ ! -d mutter ]; then
	git clone --depth 1 https://github.com/m-weigand/parse-android-dynparts.git
fi

tar cvf parse-android-dynparts_src.tar.gz parse-android-dynparts
mv parse-android-dynparts_src.tar.gz /github/home

cd parse-android-dynparts
mkdir build; cd build
cmake ..
make
mv parse-android-dynparts /github/home
