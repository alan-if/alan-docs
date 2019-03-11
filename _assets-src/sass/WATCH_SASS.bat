:: "WATCH.bat"                          v2.0.0 | 2019/03/11 | by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: This script requires Dart Sass to be installed on the system:
::      https://github.com/sass/dart-sass
::
:: You can use Chocolatey to install Dart Sass and keep it updated:
::      https://chocolatey.org/packages/sass
:: -----------------------------------------------------------------------------
@ECHO OFF
ECHO.

CALL BUILD_SASS.bat
ECHO ======================================
ECHO Build ^& Watch Highlight.js' stylesheet
ECHO ======================================
CALL SASS --watch %SRC%:%OUT%

EXIT /B

