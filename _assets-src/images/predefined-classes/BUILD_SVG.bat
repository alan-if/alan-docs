:: "BUILD_SVG.bat" v1.0.0 (2018/09/13) | Dia v0.97.2
:: -----------------------------------------------------------------------------
:: Written by Tristano Ajmone, released into the public domain via Unlicense:
::    http://unlicense.org/
:: -----------------------------------------------------------------------------
:: In order to run this script you'll need to install Dia Diagram Editor:
::    http://dia-installer.de/
:: -----------------------------------------------------------------------------
@ECHO OFF
ECHO ======================================================
ECHO Building SVG image of "predefined-classes" diagram ...
ECHO ======================================================
CALL dia.exe -n^
    -t svg^
       predefined-classes.dia
EXIT /B
