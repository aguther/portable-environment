@echo off

:: change to directory of this script
pushd %~dp0

:: open section in printout
echo.===============================================================================

:: set home
set HOME=%CD%
echo.HOME=%HOME%
echo.-------------------------------------------------------------------------------

:: set locale
set LANG=en-US.UTF-8
echo.LANG=%LANG%
echo.-------------------------------------------------------------------------------

:: git
set GIT_HOME=%CD%\tools\portable-git-2.4.1.1
echo.GIT_HOME=%GIT_HOME%
echo.-------------------------------------------------------------------------------

:: java JDK
::set JAVA_HOME=%CD%\tools\java\jdk1.8.0_45
set JAVA_HOME=%CD%\tools\java\jdk1.7.0_79
echo.JAVA_HOME=%JAVA_HOME%
echo.-------------------------------------------------------------------------------

:: maven
set M2_HOME=%CD%\tools\apache-maven-3.3.3
echo.M2_HOME=%M2_HOME%
echo.-------------------------------------------------------------------------------

:: gradle
set GRADLE_HOME=%CD%\tools\gradle-2.4
echo.GRADLE_HOME=%GRADLE_HOME%
echo.-------------------------------------------------------------------------------

:: sonar
set SONAR_HOME=%CD%\tools\sonarqube-5.1
set SONAR_RUNNER_HOME=%CD%\tools\sonar-runner-2.4
echo.SONAR_HOME=%SONAR_HOME%
echo.SONAR_RUNNER_HOME=%SONAR_RUNNER_HOME%
echo.-------------------------------------------------------------------------------

:: set eclipse home
set ECLIPSE_HOME=%CD%\tools\eclipse-4.4.2
echo.ECLIPSE_HOME=%ECLIPSE_HOME%
echo.-------------------------------------------------------------------------------

:: set IntelliJ home
set INTELLIJ_HOME=%CD%\tools\idea-14.1.3
echo.INTELLIJ_HOME=%INTELLIJ_HOME%
echo.-------------------------------------------------------------------------------

:: set path environment
set PATH=%GIT_HOME%\cmd;%GIT_HOME%;%JAVA_HOME%\bin;%M2_HOME%\bin;%GRADLE_HOME%\bin;%SONAR_HOME%\bin\windows-x86-64;%SONAR_RUNNER_HOME%\bin;%ECLIPSE_HOME%;%INTELLIJ_HOME%\bin;%PATH%;
echo.PATH=%PATH%
echo.-------------------------------------------------------------------------------

:: add fonts
pushd %CD%\tools\fonts
regfont --add *.ttf
popd

:: close section in printout
echo.===============================================================================

:: restore directory
popd
