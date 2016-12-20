

echo 添加公共库环境变量
set regpath=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
set MSBuildFilesDir=".\ZZExtraLibsConfig\MSBuildFiles"
copy /-Y "%MSBuildFilesDir%\Microsoft.Cpp.Win32.user.props" "%LOCALAPPDATA%\Microsoft\MSBuild\v4.0"
copy /-Y "%MSBuildFilesDir%\Microsoft.Cpp.x64.user.props" "%LOCALAPPDATA%\Microsoft\MSBuild\v4.0"

cd	..
reg add "%regpath%" /v "ZZ_EXTRA_LIBS_HOME" /d "%CD%" /f
pause>nul