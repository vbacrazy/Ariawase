@echo off
pushd %~dp0
SET ProjectName="c2def"
SET FrameworkPath="%Systemroot%\Microsoft.NET\Framework\"
SET PATH="%PATH%;%FrameworkPath%v4.0.30319\;%FrameworkPath%v3.5;%FrameworkPath%v3.0;"
csc /out:%ProjectName%.exe %ProjectName%\*.cs
if %ERRORLEVEL% NEQ 0 goto FAILURE
%ProjectName%
cscript //nologo vbac.wsf combine
exit

:FAILURE
%0
