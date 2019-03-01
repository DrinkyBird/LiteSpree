@ECHO OFF
:: compile script for automatic Jenkins builds

CALL version.bat
SET LS_VER=%LS_VER%-build%BUILD_NUMBER%

CALL compile.bat