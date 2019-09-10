#! /bin/bash
# ------------------------------------------------------------------------------
# "alanguide/pdf_build.sh"              v1.0.0 | 2019/09/10 | by Tristano Ajmone
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
echo "Converting \"ALAN Beginner's Guide\" to a standalone PDF document..."
echo "=============================================================================="

# Set some required env vars
CURRDIR=$PWD
ASSETSDIR="../_assets/alan-xsl-fopub"

asciidoctor \
  --safe-mode unsafe \
  --verbose \
  -b docbook \
  -d book \
  -a data-uri! \
  alanguide.asciidoc

# Need to switch working directory to "//_assets/" for FOP:
cd $ASSETSDIR

fopub \
  -t xsl-fopub \
  $CURRDIR/alanguide.xml

cd $CURRDIR
