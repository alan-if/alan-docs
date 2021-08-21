#!/bin/bash

highlightDir=$(cd ../_assets/hl/; pwd)
export HIGHLIGHT_DATADIR="$highlightDir"

echo "========================================================================"
echo "Converting the \"ALAN Beginner's Guide\" to a standalone HTML5 document..."
echo "========================================================================"
asciidoctor \
	--safe-mode unsafe \
	--verbose \
	--template-dir $highlightDir/haml \
	--require $highlightDir/adoc/highlight-treeprocessor_mod.rb \
	-a source-highlighter=highlight \
	-a docinfodir=$highlightDir/adoc/ \
	-a docinfo=shared-head \
	-a data-uri \
	-a experimental \
	-a icons=font \
	-a reproducible \
	-a sectanchors \
	-a toc=left \
	alanguide.asciidoc
