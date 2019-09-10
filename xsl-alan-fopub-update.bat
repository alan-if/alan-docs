:: "xsl-alan-fopub-update.bat"          v1.0.0 | 2019/09/10 | by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: This script is released into public domain via the Unlicense:
::     http://unlicense.org/
::
:: To run this script these applications must be installed on your system:
::
::    Git for Windows:
::    https://git-scm.com
::
::    Asciidoctor (Ruby Gem):
::    https://github.com/asciidoctor/asciidoctor
::
::    asciidoctor-fopub:
::    https://github.com/asciidoctor/asciidoctor-fopub
:: -----------------------------------------------------------------------------
@ECHO OFF
CHCP 65001 > nul &:: (UTF-8 Unicode)

ECHO.
ECHO ******************************************************************************
ECHO *                                                                            *
ECHO *                       Update XSL-FOPUB PDF Toolchain                       *
ECHO *                                                                            *
ECHO ******************************************************************************
ECHO This script will update the alan-xsl-fopub template and rebuild all the PDF
ECHO documents that rely on it:
ECHO.
ECHO ^* manual\manual.pdf
ECHO ^* alanguide\alanguide.pdf
ECHO ^* _dev\styles-tests\styles-preview.pdf
ECHO ^* _dev\styles-tests\tests-syntax-highlighting.pdf
ECHO ^* _dev\styles-tests\tests-typography.pdf
ECHO.
ECHO ==============================================================================
ECHO 1^/4. Update alan-xsl-fopub Git Submodule
ECHO ==============================================================================
ECHO Ensuring that the local submodule of the alan-xsl-fopub template is updated.
:: Enter local submodule, force checkout master branch and pull:
PUSHD _assets\alan-xsl-fopub
git checkout -q -f master
git pull -q
POPD
:: Update Git submodule pointer in repository:
git submodule update --remote --merge _assets/alan-xsl-fopub
ECHO.
ECHO ==============================================================================
ECHO Update PDF Docs
ECHO ==============================================================================
ECHO Now reuild all PDF docs that use the XSL-FOPUB template.
ECHO.
ECHO ------------------------------------------------------------------------------
ECHO 2^/4. Rebuild Alan Manual
ECHO ------------------------------------------------------------------------------
PUSHD manual
CALL PDF_BUILD.bat > NUL
POPD
ECHO.
ECHO ------------------------------------------------------------------------------
ECHO 3^/4. Rebuild Alan Beinnger's Guide
ECHO ------------------------------------------------------------------------------
PUSHD alanguide
CALL PDF_BUILD.bat > NUL
POPD
ECHO.
ECHO ------------------------------------------------------------------------------
ECHO 4^/4. Rebuild Typography and Syntax Highlighting Tests
ECHO ------------------------------------------------------------------------------
PUSHD _dev\styles-tests
CALL PDF_BUILD.bat > NUL
POPD
ECHO.
ECHO // FINISH ///
EXIT /B
