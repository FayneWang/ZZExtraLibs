

echo add common libraries environment variable.

set regpath=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
set MSBuildFilesDir=".\ZZExtraLibsConfig\MSBuildFiles"
copy /-Y "%MSBuildFilesDir%\Microsoft.Cpp.Win32.user.props" "%LOCALAPPDATA%\Microsoft\MSBuild\v4.0"
copy /-Y "%MSBuildFilesDir%\Microsoft.Cpp.x64.user.props" "%LOCALAPPDATA%\Microsoft\MSBuild\v4.0"

reg add "%regpath%" /v "ZZCppLibsHome" /d "%CD%" /f
pause>nul