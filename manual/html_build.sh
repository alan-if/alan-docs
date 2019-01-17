#! /bin/bash
# "html_build.sh" v1.1.1 (2018/10/24) by Tristano Ajmone
echo ==============================================================================
echo Converting "The ALAN Language Manual" to a standalone HTML5 document...
echo ==============================================================================
# To run this script the following Ruby Gems must be installed on your system:
#    https://github.com/asciidoctor/asciidoctor
asciidoctor \
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
  manual.asciidoc
