:: "PDF_BUILD.bat" v2.0.0 (2018/09/13) by Tristano Ajmone
@ECHO.
@ECHO ==============================================================================
@ECHO Converting the "ALAN Beginner's Guide" to PDF document...
@ECHO ==============================================================================
:: To run this script the following tools must be installed on your system:
::    https://github.com/asciidoctor/asciidoctor
::    https://github.com/asciidoctor/asciidoctor-fopub
CALL asciidoctor^
  -b docbook^
  -d book^
  -a data-uri!^
  --safe-mode unsafe^
  --verbose^
  alanguide.asciidoc

CALL fopub^
  -t ..\manual\manual-xsl ^
  alanguide.xml

@EXIT /B
