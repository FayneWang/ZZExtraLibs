Note : The openssl version 1.1.x is not compatible old version 1.0.x. and many open source library is using old version 1.0.x.So use it must to think over.
1、Download ActivePerl install package in http://downloads.activestate.com/ActivePerl/releases/5.24.0.2400/ActivePerl-5.24.0.2400-MSWin32-x64-300558.exe
2、Execute Configure script to generate makefile, look like in the build_cmd.txt.
3、Copy .\zlib-1.2.8\zlib.h to the root directory.
4、Copy zlib.lib to the root directory. from .\zlib-1.2.8\libs\vc12_x86_Release_MD directory.

#Note:Modify the build configure.
5、In the ./ms/nt(dll).mak of built,modify the zlib1.lib to zlib.lib for using static library of zlib.and then copy zlib.h and zlib.lib of static library to root directory,
6、Modify /MT(d) of CFLAGS variable to /MD(d) in file of ./ms/nt(dll).mak file,  in root dir of lib for no-share compile.