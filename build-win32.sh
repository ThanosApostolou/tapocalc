#!/usr/bin/bash

mkdir -p ./tapocalc-win32
meson --cross-file build-win32.config --buildtype=release builddir-win32
cd builddir-win32
ninja
cp *.exe ../tapocalc-win32
cp *.dll ../tapocalc-win32
cd ../tapocalc-win32
rm -r ../builddir-win32
cp /usr/i686-w64-mingw32/bin/libgcc_s_sjlj-1.dll ./
cp /usr/i686-w64-mingw32/bin/libwinpthread-1.dll ./
cp /usr/i686-w64-mingw32/bin/libstdc++-6.dll ./
cp ../README.md ../LICENSE ./
