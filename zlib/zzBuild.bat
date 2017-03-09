
SET ZlibVersion=v1.12.11


CD original_repo 
IF "%1"=="debug" GOTO debug ELSE GOTO release


:release

COPY /Y "..\zzMakefile.msc" ".\win32"
SET BuildDir="..\%ZlibVersion%\vc%VisualStudioVersion%_Release_MD_x86"
IF NOT EXIST %BuildDir% MKDIR %BuildDir%
nmake -f win32/zzMakefile.msc BUILD_DIR=%BuildDir%

GOTO end

:debug

COPY /Y "..\zzMakefile_debug.msc" ".\win32"
SET BuildDir="..\%ZlibVersion%\vc%VisualStudioVersion%_Debug_MD_x86"
IF NOT EXIST %BuildDir% MKDIR %BuildDir%
nmake -f win32/zzMakefile.msc BUILD_DIR=%BuildDir%

GOTO end

:end

nmake -f win32/zzMakefile.msc clean_objs
CD ..