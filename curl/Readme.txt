1、Copy .\zlib-1.2.8\zlib.h to the ./deps/include directory.
2、Copy zlib.lib and zdll.lib to the ./deps/include directory from .\zlib-1.2.8\libs\vc12_x86_Release_MD directory.
3、Modify the content at line 161、line 165、line 256 and line 257 in ./winbuild/Makefile.

# Dynamic debug library.
nmake /f Makefile.vc mode=dll VC=12 WITH_ZLIB=static ENABLE_SSPI=yes ENABLE_IPV6=yes ENABLE_IDN=yes ENABLE_WINSSL=yes GEN_PDB=yes DEBUG=yes MACHINE=x86

# Dynamic release library.
nmake /f Makefile.vc mode=dll VC=12 WITH_ZLIB=static ENABLE_SSPI=yes ENABLE_IPV6=yes ENABLE_IDN=yes ENABLE_WINSSL=yes GEN_PDB=yes DEBUG=no MACHINE=x86

# Static debug library.
nmake /f Makefile.vc mode=static VC=12 WITH_ZLIB=static ENABLE_SSPI=yes ENABLE_IPV6=yes ENABLE_IDN=yes ENABLE_WINSSL=yes GEN_PDB=yes DEBUG=yes MACHINE=x86

# Static release library.
nmake /f Makefile.vc mode=static VC=12 WITH_ZLIB=static ENABLE_SSPI=yes ENABLE_IPV6=yes ENABLE_IDN=yes ENABLE_WINSSL=yes GEN_PDB=yes DEBUG=no MACHINE=x86