@echo off
setlocal enabledelayedexpansion

:: change to this directory
pushd %~dp0

:: execute subst command and store found token into variable
for /f "tokens=1" %%a in ('subst ^| find /i ^"%CD%^"') do set SUBST_DRIVE=%%a

:: detect if valid drive was found
if not [%SUBST_DRIVE%] == [] (
	set SUBST_DRIVE=%SUBST_DRIVE:~0,1%
) else (
	echo.No SUBST found for this directory.
	exit /b 1
)

:: delete subst
subst %SUBST_DRIVE%: /d

:: check result
if %ERRORLEVEL% neq 0 (
	echo.Failed to delete subst!
	exit /b 2
)

:: echo that subst was created
echo.SUBST drive '%SUBST_DRIVE%' deleted.

:: restore directory
popd
