:: "BUILD.bat" v1.1.0 (2018/09/24) by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: This script is released into public domain via the Unlicense:
::     http://unlicense.org/
:: -----------------------------------------------------------------------------
@ECHO OFF
CLS
:: Set some required env vars
SET "CURRDIR=%CD%"
SET "ASSETSDIR=..\..\_assets\"

FOR /R %%i IN (*.asciidoc) DO (
  ECHO ==============================================================================
    ECHO Processing: %%~nxi
  ECHO ==============================================================================
    CALL :ADoc2HTML %%i
    CALL :ADoc2PDF %%i
)
EXIT /B

:: =============================================================================
:: func:                         Convert to HTML
:: =============================================================================
:ADoc2HTML

ECHO Converting to HTML: %~n1.html
CALL asciidoctor^
  -a data-uri!^
  --safe-mode unsafe^
  --verbose^
  %1
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
:: Restore origignal script working directory:
CD %CURRDIR%

EXIT /B
