#!/bin/bash

highlightDir=$(cd ../_assets/hl/; pwd)

echo "======================================================================"
echo "Converting the \"ALAN Author's Guide\" to a standalone HTML5 document..."
echo "======================================================================"
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
	-a linkattrs \
	-a reproducible \
	-a sectanchors \
	-a toc=left \
	writing.asciidoc
