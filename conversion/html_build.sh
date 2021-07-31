#!/bin/bash

rougeDir=$(cd ../_assets/rouge/; pwd)

echo "========================================================================"
echo "Converting the \"ALAN Conversion Guide\" to a standalone HTML5 document..."
echo "========================================================================"
asciidoctor \
	--safe-mode unsafe \
	--verbose \
	-r $rougeDir/custom-rouge-adapter.rb \
	-a source-highlighter=rouge \
	-a rouge-style=thankful_eyes \
	-a docinfodir=$rougeDir \
	-a docinfo=shared-head \
	-a data-uri \
	-a experimental \
	-a icons=font \
	-a linkattrs \
	-a reproducible \
	-a sectanchors \
	-a toc=left \
	conversion.asciidoc
