@ECHO OFF
:: compile script for automatic Jenkins builds

CALL version.bat
SET LS_VER=%LS_VER%-build%GIT_COMMIT%

CALL compile.bat