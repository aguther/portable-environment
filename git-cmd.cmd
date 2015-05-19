@echo off

:: change directory
pushd %~dp0

:: start cmd with environment
start cmd.exe /k environment.cmd

:: restore directory
popd
