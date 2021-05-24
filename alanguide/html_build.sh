#!/bin/bash

echo "=============================================================================="
echo "Converting the \"ALAN Beginner's Guide\" to a standalone HTML5 document..."
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
	--template-dir ../_assets/hl/haml \
	--require ../_assets/hl/adoc/highlight-treeprocessor_mod.rb \
	-a source-highlighter=highlight \
	-a docinfo=shared-head \
	alanguide.asciidoc
