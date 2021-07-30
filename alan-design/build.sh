#!/bin/bash

# Generate HTML with
# embedded images - data-uri
# no-spurious dates - reproducible

rougeDir=$(cd ../_assets/rouge/; pwd)

for f in *.asciidoc
do
	asciidoctor \
		--load-path $rougeDir \
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
		$f
done
