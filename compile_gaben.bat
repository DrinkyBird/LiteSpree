@echo off

set PATH=%CD%\bin;%PATH%

DEL /F /Q "%CD%\build\litespree-gaben.pk3"

7za a -tzip -mm=deflate "%CD%\build\litespree-gaben.pk3" -r "%CD%\announcer-gaben\*.*" -x!.gitignore -x!*.bcs
if not %errorlevel%==0 (
	pause
	exit
)