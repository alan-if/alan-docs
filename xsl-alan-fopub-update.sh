#!/bin/bash
# ------------------------------------------------------------------------------
# "xsl-alan-fopub-update.sh" v1.0 | 2019/09/10 | by Tristano Ajmone
# ------------------------------------------------------------------------------
# This script is released into public domain via the Unlicense:
#     http://unlicense.org/
#
# To run this script these applications must be installed on your system:
#
#    Git:
#    https://git-scm.com
#
#    Asciidoctor (Ruby Gem):
#    https://github.com/asciidoctor/asciidoctor
#
#    asciidoctor-fopub:
#    https://github.com/asciidoctor/asciidoctor-fopub
# ------------------------------------------------------------------------------

source ./_assets/sh/_print-funcs.sh

printBanner "Update XSL-FOPUB PDF Toolchain"
echo "This script will update the alan-xsl-fopub template."

# ==============================================================================
printHeading1 "Update alan-xsl-fopub Git Submodule"
# ==============================================================================
echo "Ensuring that the local submodule of the alan-xsl-fopub template is updated."

# Enter local submodule, force checkout master branch and pull:
pushd ./_assets/alan-xsl-fopub > /dev/null
git checkout -q -f master
git pull -q
popd > /dev/null

# Update Git submodule pointer in repository:
git submodule update --remote --merge _assets/alan-xsl-fopub

printFinished

# EOF #
