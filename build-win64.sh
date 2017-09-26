#!/usr/bin/bash

mkdir -p ./tapocalc-win64
meson --cross-file build-win64.config --buildtype=release builddir-win64
cd builddir-win64
ninja
cp *.exe ../tapocalc-win64
cp *.dll ../tapocalc-win64
cd ../tapocalc-win64
rm -r ../builddir-win64
cp /usr/x86_64-w64-mingw32/bin/libgcc_s_seh-1.dll ./
cp /usr/x86_64-w64-mingw32/bin/libwinpthread-1.dll ./
cp /usr/x86_64-w64-mingw32/bin/libstdc++-6.dll ./
cp ../README.md ../LICENSE ./
