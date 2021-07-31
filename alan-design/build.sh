#!/bin/bash

# Generate HTML with
# embedded images - data-uri
# no-spurious dates - reproducible

rougeDir=$(cd ../_assets/rouge/; pwd)

echo "=================================================================="
echo "Converting the ALAN Design docs to a standalone HTML5 documents..."
echo "=================================================================="
for f in *.asciidoc
do
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
		$f
done
