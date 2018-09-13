:: "HTML_BUILD.bat" v1.0.1 (2018/09/13) by Tristano Ajmone
@ECHO.
@ECHO ==============================================================================
@ECHO Converting the "ALAN Beginner's Guide" to a standalone HTML5 document...
@ECHO ==============================================================================
:: To run this script the following Ruby Gems must be installed on your system:
::    https://github.com/asciidoctor/asciidoctor
asciidoctor^
  -a data-uri^
  --safe-mode unsafe^
  --verbose^
  alanguide.asciidoc
@EXIT /B
