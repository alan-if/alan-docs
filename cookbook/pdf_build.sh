#! /bin/bash
# ------------------------------------------------------------------------------
# "cookbook/pdf_build.sh"
# ------------------------------------------------------------------------------
# Converts "The ALAN Language Cookbook" to PDF via Asciidoctor PDF.
#
# To run this script you need the asciidoctor-pdf Ruby gem:
#     gem install asciidoctor-pdf
#
# The HTML build uses highlight.js, which runs in the browser and so is no use
# for PDF; this build uses Rouge with the project's ALAN lexer instead.
# ------------------------------------------------------------------------------

echo "=============================================================================="
echo "Converting \"The ALAN Language Cookbook\" to PDF via Asciidoctor PDF..."
echo "=============================================================================="

assetsDir=$(cd ../_assets/; pwd)

asciidoctor-pdf \
	-r $assetsDir/adoc/doc-revision.rb \
	-r $assetsDir/pdf/alan-rouge-theme.rb \
	-r $assetsDir/pdf/alan-pdf-extensions.rb \
	--safe-mode unsafe \
	--verbose \
	-a pdf-theme=$assetsDir/pdf/alan-theme.yml \
	-a pdf-fontsdir="$assetsDir/pdf/fonts;GEM_FONTS_DIR" \
	-a source-highlighter=rouge \
	-a rouge-style=alandocs \
	-a reproducible \
	-o cookbook.pdf \
	cookbook.asciidoc
