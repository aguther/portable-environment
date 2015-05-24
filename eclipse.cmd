@echo off

:: change directory
pushd %~dp0

:: setup environment
call environment.cmd

:: change to eclipse directory
cd %ECLIPSE_HOME%

:: start eclipse
start eclipse.exe -vm %JAVA_HOME%\bin\javaw.exe

:: restore directory
popd
