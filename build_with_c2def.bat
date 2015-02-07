@echo off
pushd %~dp0
SET ProjectName="c2def"
FOR /F "TOKENS=1,2,*" %%I IN ('REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\.NETFramework" /v "InstallRoot"') DO IF "%%I"=="InstallRoot" SET FrameworkPath=%%K
SET PATH="%PATH%;%FrameworkPath%v4.0.30319\;%FrameworkPath%v3.5;%FrameworkPath%v3.0;"
csc /out:%ProjectName%.exe %ProjectName%\*.cs
if %ERRORLEVEL% NEQ 0 goto FAILURE
%ProjectName%
cscript //nologo vbac.wsf combine
exit

:FAILURE
%0
