@ECHO OFF & ECHO.

ECHO [94m===============================
ECHO [93mCompile ^"TV TIME!^" adventure...
ECHO [94m===============================[97m

DEL compile_err.log > nul 2>&1
alan -import mylib tvtime.alan > nul 2>&1 ^
  && (
    ECHO [92m^*^* COMPILATION SUCCEEDED! ^*^*
  ) || (
    ECHO [91m^*^* COMPILATION FAILED! ^*^*
    ECHO.
    ECHO See "compile_err.log" file for details.[0m
    alan -import mylib tvtime.alan > compile_err.log 2>&1 ^
    EXIT /B 1
  )
IF ERRORLEVEL 1 EXIT /B 1


ECHO.
ECHO [94m=======================
ECHO [93mRun commands scripts...
ECHO [94m=======================[97m

:: ====================
:: Run commands scripts
:: ====================
FOR %%i IN (*.a3s) DO (
  ECHO - "%%i"
  CALL arun.exe -r tvtime.a3c < %%i > %%~ni.a3t
)

ECHO.
ECHO [92m/// FINISHED ///[0m
EXIT /B
