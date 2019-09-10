:: "manual\PDF_BUILD.bat"               v3.0.1 | 2019/09/10 | by Tristano Ajmone
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
@ECHO.
@ECHO ==============================================================================
@ECHO Converting "The ALAN Language Manual" to PDF document...
@ECHO ==============================================================================
:: To run this script the following tools must be installed on your system:
::    https://github.com/asciidoctor/asciidoctor
::    https://github.com/asciidoctor/asciidoctor-fopub

:: Set some required env vars
SET "CURRDIR=%CD%"
SET "FOPUB_DIR=..\_assets\alan-xsl-fopub\"

CALL asciidoctor^
  -b docbook^
  -d book^
  -a data-uri!^
  --safe-mode unsafe^
  --verbose^
  manual.asciidoc

:: Need to switch working directory to "//_assets/alan-xsl-fopub/" for FOP:
CD %FOPUB_DIR%

CALL fopub^
  -t xsl-fopub^
  %CURRDIR%\manual.xml

:: Restore origignal script working directory:
CD %CURRDIR%

@EXIT /B
