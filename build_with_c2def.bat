REM cscript��������Ȃ��B�݂����ȃG���[���o���ꍇ�A
REM �R�}���h�v�����v�g�łQ��Ăяo���Ǝ��s�ł���B�i�Č����s���j

@echo off
pushd %~dp0
SET FrameworkPath="%Systemroot%\Microsoft.NET\Framework\"
SET PATH="%PATH%;%FrameworkPath%v4.0.30319\;%FrameworkPath%v3.5;%FrameworkPath%v3.0;"
csc /out:c2def.exe c2def\*.cs
c2def
cscript //nologo vbac.wsf combine
