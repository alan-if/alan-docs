:: "BUILD_SASS.bat" v1.0.0 (2018/09/30) by Tristano Ajmone
@ECHO OFF
ECHO.

ECHO =================================
ECHO Building Highlight.js' stylesheet
ECHO =================================
SET "_DEST=..\..\_assets\hjs\styles\github.min.css"
CALL SCSS^
    --style nested^
    highlight-js.scss^
   ..\..\_assets\hjs\styles\github.min.css

EXIT /B

