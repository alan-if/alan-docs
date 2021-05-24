#!/bin/bash

asciidoctor \
	--safe-mode unsafe \
	--verbose \
	-a data-uri \
	-a experimental \
	-a icons=font \
	-a reproducible \
	-a sectanchors \
	-a toc=left \
	--template-dir ../$PathFix/_assets/hl/haml \
	--require ../_assets/hl/adoc/highlight-treeprocessor_mod.rb \
	-a source-highlighter=highlight \
	-a docinfo=shared-head \
	conversion.asciidoc
