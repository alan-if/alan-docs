@ECHO OFF
ECHO.

ECHO.
ECHO ==============================================================================
ECHO Converting to HTML ...
ECHO ==============================================================================
FOR %%i IN (*.asciidoc) DO (
    CALL :conv2adoc %%i
)

POPD
EXIT /B


:: =============================================================================
:: func:                        Convert to AsciiDoc
:: =============================================================================
:conv2adoc
ECHO Converting: %~nx1
CALL asciidoctor^
  --verbose^
  -S unsafe^
  -a data-uri^
  -a experimental^
  -a icons=font^
  -a linkattrs^
  -a reproducible^
  -a sectanchors^
  -a toc=left^
     %1
EXIT /B
