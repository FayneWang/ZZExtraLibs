1、Copy ./Makefile.msvc to ./ZZExtraLibsMakefile.msvc for modify custom build config.
2、Change the build BASE_DIR to ./libs and build target target lib-release | lib-debug | dll-release | dll-debug to Release_Lib_MD | Debug_Lib_MD | Release_DLL_MD | Debug_DLL_MD.
3、Modify the static build /MT(d) FLAG to /MD(d).
4、Remove unuse build target:acountry,adig,ahost.


#build command
nmake /f ZZExtraLibsMakefile.msvc ALL