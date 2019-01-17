#! /bin/bash
# "html_build.sh" v1.1.1 (2018/10/24) by Tristano Ajmone
echo ==============================================================================
echo Converting "The ALAN Language Manual" to a standalone PDF document...
echo ==============================================================================
# To run this script the following Ruby Gems must be installed on your system:
#    https://github.com/asciidoctor/asciidoctor
#    https://github.com/asciidoctor/asciidoctor-fopub

# Set some required env vars
CURRDIR=$PWD
ASSETSDIR="../_assets/"

asciidoctor \
  --safe-mode unsafe \
  --verbose \
  -b docbook \
  -d book \
  -a data-uri! \
  manual.asciidoc

# Need to switch working directory to "//_assets/" for FOP:
cd $ASSETSDIR

fopub \
  -t xsl-fopub \
  $CURRDIR/manual.xml

cd $CURRDIR
