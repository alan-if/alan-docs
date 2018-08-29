:: "PDF_BUILD.bat" v1.0.0 (2018/08/29) by Tristano Ajmone
@ECHO.
@ECHO ==============================================================================
@ECHO Converting the "ALAN Beginner's Guide" to PDF document...
@ECHO ==============================================================================
:: To run this script the following Ruby Gems must be installed on your system:
::    https://github.com/asciidoctor/asciidoctor
::    https://github.com/asciidoctor/asciidoctor-pdf
asciidoctor^
  -r asciidoctor-pdf^
  --backend pdf^
  --safe-mode safe^
  --verbose^
  alanguide.asciidoc
@EXIT /B
