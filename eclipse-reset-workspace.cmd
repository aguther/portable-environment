@echo off

:: change directory
pushd %~dp0

:: setup environment
call environment.cmd

:: change to eclipse workspace directory
cd %ECLIPSE_HOME%\workspace

:: clean
git clean -df

:: reset
git reset --hard HEAD

:: restore directory
popd