:: "BUILD_SASS.bat" v1.0.1 (2018/10/06) by Tristano Ajmone
@ECHO OFF
ECHO.

CALL BUILD_SASS.bat
ECHO ======================================
ECHO Build ^& Watch Highlight.js' stylesheet
ECHO ======================================
CALL SCSS --watch %SRC%:%OUT%

EXIT /B

