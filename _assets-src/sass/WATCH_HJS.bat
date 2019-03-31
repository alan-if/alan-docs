:: "WATCH_HJS.bat"                      v2.1.0 | 2019/03/31 | by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: This script requires Dart Sass to be installed on the system:
::      https://github.com/sass/dart-sass
::
:: You can use Chocolatey to install Dart Sass and keep it updated:
::      https://chocolatey.org/packages/sass
:: -----------------------------------------------------------------------------
@ECHO OFF
ECHO.

ECHO ======================================
ECHO Build ^& Watch Highlight.js' stylesheet
ECHO ======================================
SASS --watch ^
       highlight-js.scss ^
       ../../_assets/hjs/styles/github.min.css

EXIT /B

