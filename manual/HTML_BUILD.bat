:: "manual\HTML_BUILD.bat"              v1.1.2 | 2019/09/10 | by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: This script is released into public domain via the Unlicense:
::     http://unlicense.org/
::
:: To run this script these applications must be installed on your system:
::
::    Asciidoctor (Ruby Gem):
::    https://github.com/asciidoctor/asciidoctor
:: -----------------------------------------------------------------------------
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
  -a experimental^
  -a icons=font^
  -a reproducible^
  -a sectanchors^
  -a toc=left^
  -a source-highlighter=highlightjs^
  -a highlightjsdir=../_assets/hjs^
  manual.asciidoc
@EXIT /B
