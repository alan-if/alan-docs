#! /bin/bash

echo "=============================================================================="
echo "Converting \"The ALAN Language Cookbook\" to a standalone HTML5 document..."
echo "=============================================================================="

asciidoctor \
	-r ../_assets/adoc/git-revdate.rb \
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
	cookbook.asciidoc
