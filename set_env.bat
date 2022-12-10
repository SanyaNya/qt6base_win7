@echo off

REM Set up Microsoft Visual Studio 2022, where <arch> is amd64, x86, etc.
CALL "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" amd64

REM Edit this location to point to the source code of Qt
SET _ROOT=C:\Qt\6.4.1\Src
SET PATH=%_ROOT%\qtbase\bin;%PATH%
SET _ROOT=

REM Set Windows version macros to Windows 7
SET CL=/DWINVER=0x0601 %CL%
SET CL=/D_WIN32_WINNT=0x0601 %CL%
SET CL=/DNTDDI_VERSION=0x06010000 %CL%

REM Assume Internet Explorer 8.0
REM See https://docs.microsoft.com/en-us/windows/win32/winprog/using-the-windows-headers#macros-for-conditional-declarations
SET CL=/D_WIN32_IE=0x0800 %CL%

REM Keeps the command line open when this script is run.
cmd /k
