REM cscriptが見つからない。みたいなエラーが出た場合、
REM コマンドプロンプトで２回呼び出すと実行できる。（再現性不明）

@echo off
pushd %~dp0
SET FrameworkPath="%Systemroot%\Microsoft.NET\Framework\"
SET PATH="%PATH%;%FrameworkPath%v4.0.30319\;%FrameworkPath%v3.5;%FrameworkPath%v3.0;"
csc /out:c2def.exe c2def\*.cs
c2def
cscript //nologo vbac.wsf combine
