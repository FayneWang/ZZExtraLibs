1、build static library use the Makefile_Lib_sqlcipher.msc makefile.
2、build dynamiclibrary use the Makefile_DLL_sqlcipher.msc makefile.
3、build command look like the ./libs/build_cmd.txt file.
4、Note build arguments : 
PLATFORM=x86 
USE_AMALGAMATION=0 
USE_NATIVE_LIBPATHS=1 
NO_TCL=1 
DEBUG=6 
USE_FULLWARN=1 
USE_LISTINGS=1 
USE_CRT_DLL=1 
WIN32HEAP=1 
USE_CRYPTO_OPENSSL=1 
OPTS="-DSQLITE_HAS_CODEC -DSQLCIPHER_CRYPTO_OPENSSL" 
OPT_FEATURE_FLAGS="-DSQLITE_ENABLE_FTS3=1 -DSQLITE_ENABLE_RTREE=1" 
dll/static