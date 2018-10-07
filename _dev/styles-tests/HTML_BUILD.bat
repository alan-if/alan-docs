:: "HTML_BUILD.bat" v1.0.0 (2018/10/07) by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: This script is released into public domain via the Unlicense:
::     http://unlicense.org/
:: -----------------------------------------------------------------------------
@ECHO OFF

ECHO ==============================================================================
ECHO Converting to HTML5
ECHO ==============================================================================
FOR /R %%i IN (*.asciidoc) DO (
    CALL :ADoc2HTML %%i
)
EXIT /B

:: =============================================================================
:: func:                         Convert to HTML
:: =============================================================================
:ADoc2HTML

ECHO Converting to HTML: %~n1.html
CALL asciidoctor^
    --safe-mode unsafe^
    --verbose^
    -a data-uri!^
    -a icons=font^
    -a toc=left^
    -a experimental^
    -a source-highlighter=highlightjs^
    -a highlightjsdir=../../_assets/hjs^
    %1
EXIT /B

