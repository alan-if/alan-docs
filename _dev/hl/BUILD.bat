@ECHO OFF
CLS
ECHO.
ECHO ==============================================================================
ECHO Converting to HTML...
ECHO ==============================================================================
SET "ADocOPTS=-b html"
CALL :AdocConv

ECHO.
ECHO ==============================================================================
ECHO Converting to PDF...
ECHO ==============================================================================
SET "ADocOPTS=-b docbook"
CALL :AdocConv
CALL fopub^
  -t ..\..\_assets\xsl-fopub^
  syntax-highlighting.xml

EXIT /B

:: -----------------------------------------------------------------------------

:AdocConv
ECHO ON
CALL asciidoctor^
  %ADocOPTS%^
  -a data-uri!^
  --safe-mode unsafe^
  --verbose^
  syntax-highlighting.asciidoc
@ECHO OFF

EXIT /B
