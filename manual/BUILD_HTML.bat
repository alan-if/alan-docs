:: "BUILD_HTML.bat" v1.0.0 (2018/08/21) by Tristano Ajmone
@ECHO ==============================================================================
@ECHO Converting "The ALAN Language Manual" to a standalone HTML5 document...
@ECHO ==============================================================================
asciidoctor^
  -a data-uri^
  --safe-mode safe^
  manual.asciidoc
