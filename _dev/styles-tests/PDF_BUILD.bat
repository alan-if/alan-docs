:: "PDF_BUILD.bat" v1.0.1 (2018/10/07) by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: This script is released into public domain via the Unlicense:
::     http://unlicense.org/
:: -----------------------------------------------------------------------------
@ECHO OFF

:: Set some required env vars
SET "CURRDIR=%CD%"
SET "ASSETSDIR=..\..\_assets\"

ECHO ==============================================================================
ECHO Converting to PDF
ECHO ==============================================================================
FOR /R %%i IN (*.asciidoc) DO (
    CALL :ADoc2PDF %%i
)
EXIT /B

:: =============================================================================
:: func:                         Convert to PDF
:: =============================================================================
:ADoc2PDF

:: Need to switch working directory to "//_assets/" for FOP:
CD %ASSETSDIR%

ECHO Converting to PDF:  %~n1.pdf
CALL asciidoctor^
    -b docbook^
    -a data-uri!^
    --safe-mode unsafe^
    --verbose^
    %1
CALL fopub^
    -t xsl-fopub^
    %~dpn1.xml
ECHO ------------------------------------------------------------------------------
:: Restore origignal script working directory:
CD %CURRDIR%

EXIT /B
