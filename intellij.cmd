@echo off

:: change directory
pushd %~dp0

:: setup environment
call environment.cmd

:: change to eclipse directory
cd %INTELLIJ_HOME%\bin

:: start eclipse
start idea64.exe

:: restore directory
popd
