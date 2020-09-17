#! /bin/bash
# ------------------------------------------------------------------------------
# "_dev/styles-test/pdf_build.sh"       v1.0.0 | 2019/09/10 | by Tristano Ajmone
# ------------------------------------------------------------------------------
# This script is released into public domain via the Unlicense:
#     http://unlicense.org/
#
# To run this script these applications must be installed on your system:
#
#    Asciidoctor (Ruby Gem):
#    https://github.com/asciidoctor/asciidoctor
#
#    asciidoctor-fopub:
#    https://github.com/asciidoctor/asciidoctor-fopub
# ------------------------------------------------------------------------------

# Abort if script is being run in Bash for Windows:
if [[ $(uname -s) == MINGW* ]];then
	echo -e "\e[31m//////////////////////////////////////////////////////////"
	echo -e "//\e[33m Asciidoctor-fopub won't work under Bash for Windows! \e[31m//"
	echo -e "\e[31m//////////////////////////////////////////////////////////"
	exit
fi

echo "=============================================================================="
echo "Converting all style tests to standalone PDF documents..."
echo "=============================================================================="

# Set some required env vars
CURRDIR=$PWD
ASSETSDIR="../../_assets/alan-xsl-fopub"

for adocFile in *.asciidoc ; do
	echo "Converting to DocBook: $adocFile"
	asciidoctor \
	--safe-mode unsafe \
	--verbose \
	-b docbook \
	-d book \
	-a data-uri! \
	$adocFile
done

# Need to switch working directory to "//_assets/" for FOP:
cd $ASSETSDIR

for docbookFile in $CURRDIR/*.xml ; do
	echo "Converting to PDF: $docbookFile"
	fopub \
		-t xsl-fopub \
		$docbookFile
done

cd $CURRDIR
