#! /bin/bash

echo "================================================================="
echo "Converting \"The ALAN Manual\" to a Standalone HTML Document..."
echo "================================================================="

rougeDir=$(cd ../_assets/rouge/; pwd)

asciidoctor \
	--safe-mode unsafe \
	--verbose \
	-r asciidoctor-diagram \
	-r $rougeDir/custom-rouge-adapter.rb \
	-a source-highlighter=rouge \
	-a rouge-style=thankful_eyes \
	-a docinfodir=$rougeDir \
	-a docinfo=shared-head \
	-a data-uri \
	-a icons=font \
	-a linkattrs \
	-a reproducible \
	-a sectanchors \
	-a toc=left \
	manual.asciidoc
