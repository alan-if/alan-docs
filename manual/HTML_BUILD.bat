:: "HTML_BUILD.bat" v1.0.2 (2018/08/26) by Tristano Ajmone
@ECHO.
@ECHO ==============================================================================
@ECHO Converting "The ALAN Language Manual" to a standalone HTML5 document...
@ECHO ==============================================================================
:: To run this script the following Ruby Gems must be installed on your system:
::    https://github.com/asciidoctor/asciidoctor
asciidoctor^
  -a data-uri^
  --safe-mode safe^
  --verbose^
  manual.asciidoc
@EXIT /B
