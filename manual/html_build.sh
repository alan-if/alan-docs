#! /bin/bash
# ------------------------------------------------------------------------------
# "manual/html_build.sh"                v1.1.3 | 2021/06/10 | by Tristano Ajmone
# ------------------------------------------------------------------------------
# This script is released into public domain via the Unlicense:
#     http://unlicense.org/
#
# To run this script these applications must be installed on your system:
#
#    Asciidoctor (Ruby Gem):
#    https://github.com/asciidoctor/asciidoctor
# ------------------------------------------------------------------------------
echo "=============================================================================="
echo "Converting The Alan Manual to a Standalone HTML Document..."
echo "=============================================================================="

asciidoctor \
	--safe-mode unsafe \
	--verbose \
	-a data-uri \
	-a experimental \
	-a icons=font \
	-a reproducible \
	-a sectanchors \
	-a toc=left \
	-a source-highlighter=highlightjs \
	-a highlightjsdir=../_assets/hjs \
	manual.asciidoc
