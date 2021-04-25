#!/bin/bash

# "_assets-src/images/dia/build.sh"                        | v1.0.0 | 2021/04/25
# ==============================================================================
# Converts all DIA diagrams in this folder to same-named SVG images into the
# common images folder:

destDir=../../../_assets/images/

# ------------------------------------------------------------------------------
# By Tristano Ajmone, released into the public domain via the Unlicense.
# ------------------------------------------------------------------------------
# This script requires installation of the following applications:
#
#    Dia Diagram Editor:
#     	http://dia-installer.de
#
#	 SVGO (Node.js) via NPM:
#     	https://www.npmjs.com/package/svgo
# ==============================================================================

if ! command -v svgo -v &> /dev/null
then
	echo -e "\033[1;31mSVGO could not be found on this machine!\033[0m"
	exit 1
fi

echo -e "\033[1;33m======================================"
echo -e "\033[1;34mChecking for Dia Diagram Editor Binary"
echo -e "\033[1;33m======================================\033[1;37m"


if ! command -v dia -v &> /dev/null
then
	echo -e "\033[1;31mDia could not be found on this machine!\033[0m"
	exit 1
fi

dia -v

echo -e "\033[1;33m======================================"
echo -e "\033[1;34mBuilding SVG Diagrams from Dia Sources"
echo -e "\033[1;33m======================================\033[0;37m"

for f in *.dia ; do
	dia -n -t cairo-svg -O $destDir $f
done

echo -e "\033[1;33m======================================"
echo -e "\033[1;34mOptimizing Generated SVGs via SVGO"
echo -e "\033[1;33m======================================\033[0;37m"

svgo -f $destDir

echo -e "\033[1;32m\n/// Finished ///\033[0m"

# EOF #
