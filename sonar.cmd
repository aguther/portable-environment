@echo off

:: change directory
pushd %~dp0

:: setup environment
call environment.cmd

:: start sonar
StartSonar.bat

:: restore directory
popd
