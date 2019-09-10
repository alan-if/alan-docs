:: "alanguide\PDF_BUILD.bat"            v3.0.1 | 2019/09/10 | by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: This script is released into public domain via the Unlicense:
::     http://unlicense.org/
::
:: To run this script these applications must be installed on your system:
::
::    Asciidoctor (Ruby Gem):
::    https://github.com/asciidoctor/asciidoctor
::
::    asciidoctor-fopub:
::    https://github.com/asciidoctor/asciidoctor-fopub
:: -----------------------------------------------------------------------------
@ECHO OFF
@ECHO.
@ECHO ==============================================================================
@ECHO Converting the "ALAN Beginner's Guide" to PDF document...
@ECHO ==============================================================================

:: Set some required env vars
SET "CURRDIR=%CD%"
SET "FOPUB_DIR=..\_assets\alan-xsl-fopub\"

CALL asciidoctor^
  -b docbook^
  -d book^
  -a data-uri!^
  --safe-mode unsafe^
  --verbose^
  alanguide.asciidoc

:: Need to switch working directory to "//_assets/alan-xsl-fopub/" for FOP:
CD %FOPUB_DIR%

CALL fopub^
  -t xsl-fopub^
  %CURRDIR%\alanguide.xml

:: Restore origignal script working directory:
CD %CURRDIR%

@EXIT /B
