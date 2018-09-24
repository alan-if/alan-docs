:: "PDF_BUILD.bat" v2.1.0 (2018/09/24) by Tristano Ajmone
@ECHO.
@ECHO ==============================================================================
@ECHO Converting "The ALAN Language Manual" to PDF document...
@ECHO ==============================================================================
:: To run this script the following tools must be installed on your system:
::    https://github.com/asciidoctor/asciidoctor
::    https://github.com/asciidoctor/asciidoctor-fopub

:: Set some required env vars
SET "CURRDIR=%CD%"
SET "ASSETSDIR=..\_assets\"

CALL asciidoctor^
  -b docbook^
  -d book^
  -a data-uri!^
  --safe-mode unsafe^
  --verbose^
  manual.asciidoc

:: Need to switch working directory to "//_assets/" for FOP:
CD %ASSETSDIR%

CALL fopub^
  -t xsl-fopub^
  %CURRDIR%\manual.xml

:: Restore origignal script working directory:
CD %CURRDIR%

@EXIT /B
