:: "DEPLOY.bat" v1.0.0 (2018/09/13)
:: -----------------------------------------------------------------------------
:: Written by Tristano Ajmone, released into the public domain via Unlicense:
::    http://unlicense.org/
:: -----------------------------------------------------------------------------
rem @ECHO OFF
ECHO ==============================================================================
ECHO Copying Built Images of "predefined-classes" diagram to "/_assets/images/" ...
ECHO ==============================================================================
SET _DESTFOLDER=..\..\..\_assets\images\
COPY /Y predefined-classes.svg %_DESTFOLDER%
EXIT /B
