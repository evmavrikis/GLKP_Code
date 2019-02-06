rem Build GLPK DLL with Microsoft Visual Studio Community 2015

rem NOTE: Make sure that HOME variable specifies correct path
set HOME="C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\VC"

call %HOME%\Auxiliary\Build\vcvars64.bat
copy config_VC config.h
%HOME%\Tools\MSVC\14.16.27023\bin\Hostx64\x64\nmake.exe /f Makefile_VC_DLL
%HOME%\Tools\MSVC\14.16.27023\bin\Hostx64\x64\nmake.exe /f Makefile_VC_DLL check

pause
