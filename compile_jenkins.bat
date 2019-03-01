@ECHO OFF
:: compile script for automatic Jenkins builds

CALL version.bat
SET LS_VER=%LS_VER%-%GIT_COMMIT:~0,7%

CALL compile.bat
CALL compile_gaben.bat