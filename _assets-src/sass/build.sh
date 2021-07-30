#!/bin/bash

# "build.sh"                            v1.2.0 | 2021/07/31 | by Tristano Ajmone
# ------------------------------------------------------------------------------
# This script requires Dart Sass to be installed on the system:
#      https://github.com/sass/dart-sass
#
# On Windows you can use Chocolatey to install Dart Sass and keep it updated:
#      https://chocolatey.org/packages/sass
# ------------------------------------------------------------------------------

rm -f *.css

## Build CSS Stylesheets
########################
sass highlight-js.scss ../../_assets/hjs/styles/github.min.css
sass highlight.scss highlight.css
sass rouge.scss rouge.css

## Create docinfo Files from CSS
################################

docinfo_Highlight="../../_assets/hl/adoc/docinfo.html"
docinfo_Rouge="../../_assets/rouge/docinfo.html"

rm -f $docinfo_Highlight $docinfo_Rouge

echo "<style>"    >  $docinfo_Highlight
cat highlight.css >> $docinfo_Highlight
echo "</style>"   >> $docinfo_Highlight


echo "<style>"    >  $docinfo_Rouge
cat rouge.css     >> $docinfo_Rouge
echo "</style>"   >> $docinfo_Rouge


if [[ $(uname -s) == MINGW* ]];then
	unix2dos $docinfo_Highlight
	unix2dos $docinfo_Rouge
fi

