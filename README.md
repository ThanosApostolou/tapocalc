# tapocalc
TApoCalc (Thanos Apostolou' Calculator) is a simple calculator written in c++. Currently there is the application **tapocalc-cli** which is using the library **libtapocalc**. In the future a Gui will be added, most likely **tapocalc-qt** which will be using the same library.

**BUILD**
```
meson builddir
cd builddir
ninja
DESTDIR="DESTINATION" ninja install
```
