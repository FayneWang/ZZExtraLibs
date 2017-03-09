
COPY /Y "ares_build.h" "original_repo"
COPY /Y "zzMakefile.msvc" "original_repo"

CD original_repo 
nmake -f zzMakefile.msvc ALL
nmake -f zzMakefile.msvc clean
CD ..