:: "PDF_BUILD.bat" v1.0.1 (2018/08/26) by Tristano Ajmone
@ECHO.
@ECHO ==============================================================================
@ECHO Converting "The ALAN Language Manual" to PDF document...
@ECHO ==============================================================================
:: To run this script the following Ruby Gems must be installed on your system:
::    https://github.com/asciidoctor/asciidoctor
::    https://github.com/asciidoctor/asciidoctor-pdf
asciidoctor^
  -r asciidoctor-pdf^
  --backend pdf^
  --safe-mode safe^
  --verbose^
  manual.asciidoc
@EXIT /B
