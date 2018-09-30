:: "WATCH_SASS.bat" v1.0.0 (2018/09/30) by Tristano Ajmone
@ECHO OFF
ECHO.

ECHO ======================================
ECHO Build ^& Watch Highlight.js' stylesheet
ECHO ======================================
CALL SCSS^
    --style nested^
    --watch highlight-js.scss:..\..\_assets\hjs\styles\github.min.css

EXIT /B

