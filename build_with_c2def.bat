@echo off
pushd %~dp0
SET FrameworkPath="%Systemroot%\Microsoft.NET\Framework\"
SET PATH="%PATH%;%FrameworkPath%v4.0.30319\;%FrameworkPath%v3.5;%FrameworkPath%v3.0;"
csc /out:c2def.exe c2def\*.cs
if %ERRORLEVEL% NEQ 0 goto FAILURE
c2def
cscript //nologo vbac.wsf combine
exit

:FAILURE
build_with_c2def.bat
