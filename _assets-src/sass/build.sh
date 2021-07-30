#!/bin/bash

# "build.sh"                            v1.1.0 | 2021/07/30 | by Tristano Ajmone
# ------------------------------------------------------------------------------
# This script requires Dart Sass to be installed on the system:
#      https://github.com/sass/dart-sass
#
# On Windows you can use Chocolatey to install Dart Sass and keep it updated:
#      https://chocolatey.org/packages/sass
# ------------------------------------------------------------------------------

rm -f *.css docinfo*.html

## Build CSS Stylesheets
########################
sass highlight-js.scss ../../_assets/hjs/styles/github.min.css
sass highlight.scss highlight.css

## Create docinfo Files from CSS
################################

echo "<style>"    >  docinfo_HL.html
cat highlight.css >> docinfo_HL.html
echo "</style>"   >> docinfo_HL.html


if [[ $(uname -s) == MINGW* ]];then
	unix2dos docinfo*.html
fi

## Deploy docinfo Files to Dest Folders
#######################################

# docinfo files can't be used via relative paths!

# =========
# Highlight
# =========

DestDirs="alanguide conversion"
for folder in ${DestDirs[*]} ; do
	echo "../../$folder/"
	cp docinfo_HL.html "../../$folder/docinfo.html"
done
