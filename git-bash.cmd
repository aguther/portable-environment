@echo off

:: change directory
pushd %~dp0

:: setup environment
call environment.cmd

:: start cmd with environment
start git-bash.exe

:: restore directory
popd