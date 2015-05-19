@echo off
setlocal enabledelayedexpansion

:: change to this directory
pushd %~dp0

:: execute subst command and store found token into variable
for /f "tokens=1" %%a in ('subst ^| find /i ^"%CD%^"') do set SUBST_DRIVE=%%a

:: detect if valid drive was found
if not [%SUBST_DRIVE%] == [] (
	set SUBST_DRIVE=%SUBST_DRIVE:~0,1%
	echo.SUBST already available on drive '!SUBST_DRIVE!'.
	exit /b 0
)

:: try to find a drive that is free
for %%d IN (z,y,x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h,g,f,e,d,c,b,a) do (
		
		:: ask for logical disks and try to find current candidate drive letter
		wmic logicaldisk get caption | find /i "%%d"
		
		:: check result, if not found >> use this drive letter
		if !ERRORLEVEL! neq 0 (
			set SUBST_DRIVE=%%d
			goto continue
		)
)
:continue

:: check if drive was detected
if [%SUBST_DRIVE%] == [] (
	echo.No drive available.
	exit /b 1
)

:: execute subst
subst %SUBST_DRIVE%: %CD%

:: check result
if %ERRORLEVEL% neq 0 (
	echo.Failed to create subst!
	exit /b 2
)

:: echo that subst was created
echo.SUBST created on drive '%SUBST_DRIVE%'.

:: restore directory
popd
