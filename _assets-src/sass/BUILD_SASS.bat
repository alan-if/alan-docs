:: "BUILD_SASS.bat"                     v2.1.0 | 2019/03/13 | by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: This script requires Dart Sass to be installed on the system:
::      https://github.com/sass/dart-sass
::
:: You can use Chocolatey to install Dart Sass and keep it updated:
::      https://chocolatey.org/packages/sass
:: -----------------------------------------------------------------------------
@ECHO OFF
ECHO.

ECHO ==============================================================================
ECHO Building highlight.js stylesheet
ECHO ==============================================================================
SASS highlight-js.scss ^
     ../../_assets/hjs/styles/github.min.css

ECHO ==============================================================================
ECHO Building Beginner's Guide stylesheet
ECHO ==============================================================================
SASS alanguide.scss ^
     ../../alanguide/alanguide.css

ECHO /// Finished ///

EXIT /B

