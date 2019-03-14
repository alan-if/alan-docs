@ECHO OFF
ECHO.
ECHO [94m################################################
ECHO #[93m Optimizing all imgaes via imagemin-power-cli [94m#
ECHO ################################################
ECHO.
CALL imagemin-power %~dp0\*.* -o .\ > NUL 2>&1 ^
 || (
    ECHO [91m^*^*^* ERROR! ^*^*^*
    ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ECHO You need to install imagemin-power-cli:
    ECHO.
    ECHO https://www.npmjs.com/package/imagemin-power-cli
    ECHO [91m~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ECHO [91m/// Aborting ///[0m
    EXIT /B 1
)
ECHO [92m/// Done ///[0m
EXIT /B
