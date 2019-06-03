#!/bin/bash
cd cmake
mkdir release-nmake-x86_64
cd    release-nmake-x86_64
cmake -G "Unix Makefiles" -Dprefix= $PREFIX -Dwith-tcl=${BUILD_PREFIX}/lib -Dwith-tk=${BUILD_PREFIX}/lib -DCMAKE_INSTALL_PREFIX=../runtime ../..
make  CC=cc install

#./configure \
#   --with-tcl=${BUILD_PREFIX}/lib \
#   --with-tk=${BUILD_PREFIX}/lib \
#   --with-tclinclude=${BUILD_PREFIX}/include \
#   --with-tkinclude=${BUILD_PREFIX}/include

#make macdnd CC=cc CFLAGS="-DPACKAGE_NAME=\"tkdnd\" -DPACKAGE_TARNAME=\"tkdnd\" -DPACKAGE_VERSION=\"2.9.2\" -DPACKAGE_STRING=\"tkdnd\ 2.9.2\" -DPACKAGE_BUGREPORT=\"\" -DPACKAGE_URL=\"\" -DBUILD_tkdnd=/\*\*/ -I${BUILD_PREFIX}/include -DMAC_OSX_TK -lpthread -framework CoreFoundation -framework Cocoa -framework Carbon -framework IOKit -lz  -lpthread -framework CoreFoundation -ltclstub8.6 -ltkstub8.6 -dynamiclib"
#make PKG_SOURCES=macosx/macdnd.m

#cc ./macosx/macdnd.m  -DMAC_OSX_TK -o macdnd -DPACKAGE_NAME=\"tkdnd\" -DPACKAGE_TARNAME=\"tkdnd\" -DPACKAGE_VERSION=\"2.9.2\" -DPACKAGE_STRING=\"tkdnd\ 2.9.2\" -DPACKAGE_BUGREPORT=\"\" -DPACKAGE_URL=\"\" -DBUILD_tkdnd=/\*\*/ -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DNO_STRSAFE_H=1 -DBUILD_tkdnd=1 -DTCL_THREADS=1 -DUSE_TCL_STUBS=1 -DUSE_TCLOO_STUBS=1 -DUSE_TK_STUBS=1 -DMODULE_SCOPE=__private_extern__ -DTCL_WIDE_INT_IS_LONG=1 -DUSE_TCL_STUBS=1 -DUSE_TK_STUBS=1 -DUNICODE -D_UNICODE -I"/Users/philippegagne/anaconda3/include" -L"/Users/philippegagne/anaconda3/lib" -lpthread -framework CoreFoundation -framework Cocoa -framework Carbon -framework IOKit    -lz  -lpthread -framework CoreFoundation   -ltclstub8.6 -ltkstub8.6 -dynamiclib 