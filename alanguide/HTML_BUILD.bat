:: "HTML_BUILD.bat"                     v2.0.0 | 2019/03/11 | by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: To run this script these applications must be installed on your system:
::
::    Asciidoctor (Ruby Gem):
::    https://github.com/asciidoctor/asciidoctor
::
::    Highlight:
::    http://www.andre-simon.de/
:: -----------------------------------------------------------------------------
@ECHO OFF
CHCP 65001 &:: Unicode (UTF-8)
@ECHO.
@ECHO ==============================================================================
@ECHO Converting the "ALAN Beginner's Guide" to a standalone HTML5 document...
@ECHO ==============================================================================
asciidoctor^
  --safe-mode unsafe^
  --verbose^
  -a data-uri^
  -a experimental^
  -a icons=font^
  -a reproducible^
  -a sectanchors^
  -a toc=left^
  --template-dir ..\_assets\hl\haml^
  --require ..\_assets\hl\adoc\highlight-treeprocessor_mod.rb^
  -a source-highlighter=highlight^
  -a docinfo=shared-head^
     alanguide.asciidoc
@EXIT /B
