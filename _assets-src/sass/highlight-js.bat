@ECHO OFF
CHCP 65001 &:: Unicode (UTF-8)
ECHO.
ECHO ==============================================================================
ECHO Building ^& watching Alan-Docs highlight.js stylesheet
ECHO ==============================================================================
@SASS --watch^
        highlight-js.scss ^
        ../../_assets/hjs/styles/github.min.css
EXIT /B
