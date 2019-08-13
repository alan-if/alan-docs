:: "HTML_BUILD.bat" v1.0.0 (2019/08/13) by Tristano Ajmone
@ECHO.
@ECHO ==============================================================================
@ECHO Converting "The ALANAuthor's Guide" to a standalone HTML5 document...
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
  writing.asciidoc
@EXIT /B
