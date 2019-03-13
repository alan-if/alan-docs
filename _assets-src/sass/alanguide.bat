@ECHO OFF
CHCP 65001 &:: Unicode (UTF-8)
ECHO.
ECHO ==============================================================================
ECHO Building ^& Watching "Beginner's Guide" stylesheet
ECHO ==============================================================================
@SASS --watch^
        alanguide.scss ^
        ../../alanguide/alanguide.css
EXIT /B
