#! /bin/bash

# "_dev/styles-tests/html_build.sh"     v1.0.0 | 2021/08/04 | by Tristano Ajmone
# ==============================================================================
# This script is released into public domain via the Unlicense:
#     http://unlicense.org/
# ------------------------------------------------------------------------------
# * * * * * * * * * * *   HIGHLIGHTER ATTRIBUTES ONLY!!!   * * * * * * * * * * *
# ------------------------------------------------------------------------------
# Documents in this folder already define all the document attributes they need,
# both in their own header and via the shared attributes defined in:
#
# 	./inc/attr_header.adoc
#
# So command line invocation should only define attributes which are strictly
# required to enforce a specific syntax highlighter or backend.
# ==============================================================================


echo -e "\n===================================================="
echo      "Converting Test Docs to Standalone HTML Documents..."
echo -e   "====================================================\n"

rougeDir=$(cd ../../_assets/rouge/; pwd)
highlightDir=$(cd ../../_assets/hl/; pwd)
hljsDir=$(cd ../../_assets/hjs/; pwd)

HtmlConvRouge() {
	outname="${1%.*}_rouge.html"
	asciidoctor \
		--safe-mode unsafe \
		--verbose \
		--require $rougeDir/custom-rouge-adapter.rb \
		-a source-highlighter=rouge \
		-a rouge-style=thankful_eyes \
		-a docinfodir=$rougeDir \
		-a docinfo=shared-head \
		-o $outname \
		$1
}

HtmlConvHighlight() {
	outname="${1%.*}_highlight.html"
	asciidoctor \
		--safe-mode unsafe \
		--verbose \
		--template-dir $highlightDir/haml \
		--require $highlightDir/adoc/highlight-treeprocessor_mod.rb \
		-a source-highlighter=highlight \
		-a docinfodir=$highlightDir/adoc/ \
		-a docinfo=shared-head \
		-o $outname \
		$1
}

HtmlConvHLJS() {
	outname="${1%.*}_hljs.html"
	asciidoctor \
		--safe-mode unsafe \
		--verbose \
		-a source-highlighter=highlightjs \
		-a highlightjsdir=$hljsDir \
		-o $outname \
		$1
}
rm -f *.html

for f in *.asciidoc; do
	echo -e "\e[0;34m=======================================\e[0m"
	echo -e "\e[0;33m$f\e[0m"
	echo -e "\e[0;34m=======================================\e[0m"
	echo -e "\e[1;30m---------------------------------------\e[0;31m"
	echo -e "\e[1;37m * * Highlight * *"
	echo -e "\e[1;30m---------------------------------------\e[0;31m"
	HtmlConvHighlight "$f"
	echo -e "\e[1;30m---------------------------------------\e[0;31m"
	echo -e "\e[1;37m * * highlight.js * *"
	echo -e "\e[1;30m---------------------------------------\e[0;31m"
	HtmlConvHLJS "$f"
	echo -e "\e[1;30m---------------------------------------\e[0;31m"
	echo -e "\e[1;37m * * Rouge * *"
	echo -e "\e[1;30m---------------------------------------\e[0;31m"
	HtmlConvRouge "$f"
	echo -e "\e[0m"
done
