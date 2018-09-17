:: "BUILD.bat" v1.0.0 (2018/09/18) by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: This script is released into public domain via the Unlicense:
::     http://unlicense.org/
:: -----------------------------------------------------------------------------
@ECHO OFF
CLS

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
@ECHO OFF
EXIT /B
:: =============================================================================
:: func:                         Convert to PDF
:: =============================================================================
:ADoc2PDF

ECHO Converting to PDF:  %~n1.pdf
CALL asciidoctor^
  -b docbook^
  -a data-uri!^
  --safe-mode unsafe^
  --verbose^
  %1
CALL fopub^
  -t ..\..\_assets\xsl-fopub^
  %~n1.xml
@ECHO OFF
EXIT /B
