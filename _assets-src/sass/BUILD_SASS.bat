:: "BUILD_SASS.bat" v1.0.1 (2018/10/06) by Tristano Ajmone
@ECHO OFF
ECHO.

SET "SRC=highlight-js.scss"
SET "OUT=../../_assets/hjs/styles/github.min.css"

ECHO =================================
ECHO Building Highlight.js' stylesheet
ECHO =================================
CALL SCSS %SRC% %OUT%

EXIT /B

