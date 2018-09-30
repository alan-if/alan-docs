:: "HTML_BUILD.bat" v1.1.0 (2018/09/30) by Tristano Ajmone
@ECHO.
@ECHO ==============================================================================
@ECHO Converting "The ALAN Language Manual" to a standalone HTML5 document...
@ECHO ==============================================================================
:: To run this script the following Ruby Gems must be installed on your system:
::    https://github.com/asciidoctor/asciidoctor
asciidoctor^
  --safe-mode unsafe^
  --verbose^
  -a data-uri^
  -a icons=font^
  -a toc=left^
  -a experimental^
  -a source-highlighter=highlightjs^
  -a highlightjsdir=../_assets/hjs^
  manual.asciidoc
@EXIT /B
