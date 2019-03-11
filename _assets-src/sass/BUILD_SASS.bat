:: "BUILD_SASS.bat"                     v2.0.0 | 2019/03/11 | by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: This script requires Dart Sass to be installed on the system:
::      https://github.com/sass/dart-sass
::
:: You can use Chocolatey to install Dart Sass and keep it updated:
::      https://chocolatey.org/packages/sass
:: -----------------------------------------------------------------------------
@ECHO OFF
ECHO.

SET "SRC=highlight-js.scss"
SET "OUT=../../_assets/hjs/styles/github.min.css"

ECHO =================================
ECHO Building Highlight.js' stylesheet
ECHO =================================
CALL SASS %SRC% %OUT%

EXIT /B

