@ECHO OFF & ECHO.
CHCP 65001 > nul &:: (UTF-8 Unicode)

ECHO Executing tests...

:: ==================
:: Compile Adventures
:: ==================
CALL :CompileAdventure lib-test.alan ..\alanguide-code\lib
IF ERRORLEVEL 1 GOTO :Abort

ECHO.
ECHO [92m/// FINISHED ///[0m
EXIT /B

:Abort
ECHO.
ECHO [91m/// ABORTED ///[0m
EXIT /B 1

:: =============================================================================
::                                  FUNCTIONS                                   
:: =============================================================================

:CompileAdventure
:: %1 = Adventure source
:: %2 = Imports path
ECHO.
ECHO [94m==============================================================================
ECHO COMPILING: [93m%~nx1
ECHO [94m==============================================================================[97m
ECHO.
alan -import %2 %1 > nul 2>&1 ^
  && (
    ECHO [92m^*^* COMPILATION SUCCEEDED! ^*^*
  ) || (
    ECHO [91m^*^* COMPILATION FAILED! ^*^*
    ECHO.
    ECHO [37m~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    alan -import %2 %1
    ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    EXIT /B 1
  )
EXIT /B
