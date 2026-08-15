#! /bin/bash
# ------------------------------------------------------------------------------
# "manual/pdf_build_adpdf.sh"
# ------------------------------------------------------------------------------
# Converts "The ALAN Manual" to PDF via Asciidoctor PDF, as an alternative to
# the DocBook/FOP toolchain used by "pdf_build.sh".
#
# To run this script you need the asciidoctor-pdf Ruby gem:
#     gem install asciidoctor-pdf
#
# Unlike the FOP route this needs no Java, no Gradle and no DocBook XSL: it is
# a single Ruby process, which is why it can also run unattended in CI.
#
# NOTE: `chapter-signifier` is set here rather than in "manual.asciidoc", where
#       it is deliberately switched off: the DocBook/FOP output prefixes
#       chapter titles with "Chapter N." of its own accord, while the HTML
#       manual numbers them plainly. Setting it only for this build keeps the
#       PDF wording without changing the HTML.
# ------------------------------------------------------------------------------

echo "=============================================================================="
echo "Converting \"The ALAN Manual\" to PDF via Asciidoctor PDF..."
echo "=============================================================================="

assetsDir=$(cd ../_assets/; pwd)

asciidoctor-pdf \
	--safe-mode unsafe \
	--verbose \
	-r $assetsDir/pdf/alan-rouge-theme.rb \
	-r $assetsDir/pdf/alan-pdf-extensions.rb \
	-a pdf-theme=$assetsDir/pdf/alan-theme.yml \
	-a pdf-fontsdir="$assetsDir/pdf/fonts;GEM_FONTS_DIR" \
	-a source-highlighter=rouge \
	-a rouge-style=alandocs \
	-a reproducible \
	-a chapter-signifier=Chapter \
	-o manual-asciidoctor-pdf.pdf \
	manual.asciidoc
