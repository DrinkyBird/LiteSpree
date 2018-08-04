@echo off

set LS_VER=1a

set PATH=%CD%\bin;%PATH%

bcc -I "%CD%\bin\lib" -x bcs -tab-size 4 src/source/litespre.bcs src/acs/litespre.o
if not %errorlevel%==0 (
	pause
	exit
)

DEL /F /Q "%CD%\build\litespree-v%LS_VER%.pk3"

7za a -tzip "%CD%\build\litespree-v%LS_VER%.pk3" -r "%CD%\src\*.*" -x!.gitignore
if not %errorlevel%==0 (
	pause
	exit
)

7za a -tzip "%CD%\build\litespree-announcers-v%LS_VER%.pk3" -r "%CD%\announcers\*.*" -x!.gitignore
if not %errorlevel%==0 (
	pause
	exit
)