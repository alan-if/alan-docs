@ECHO OFF & ECHO.
DEL compile_err.log > nul 2>&1
alan -import mylib tvtime.alan > nul 2>&1 ^
  && (
    ECHO ^*^* COMPILATION SUCCEEDED! ^*^*
  ) || (
    ECHO ^*^* COMPILATION FAILED! ^*^*
    ECHO.
    ECHO See "compile_err.log" file for details.
    alan -import mylib tvtime.alan > compile_err.log 2>&1 ^
  )
EXIT /B
