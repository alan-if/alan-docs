#!/bin/bash

# "build.sh"                            v1.0.0 | 2021/05/24 | by Tristano Ajmone
# ------------------------------------------------------------------------------
# This script requires Dart Sass to be installed on the system:
#      https://github.com/sass/dart-sass
#
# On Windows you can use Chocolatey to install Dart Sass and keep it updated:
#      https://chocolatey.org/packages/sass
# ------------------------------------------------------------------------------

# Build highlight.js stylesheet
###############################
sass highlight-js.scss ../../_assets/hjs/styles/github.min.css

# Build Highlight stylesheet
############################
sass highlight.scss highlight.css

# Create docinfo file from CSS:

echo "<style>"    >  docinfo.html
cat highlight.css >> docinfo.html
echo "</style>"   >> docinfo.html

if [[ $(uname -s) == MINGW* ]];then
	unix2dos docinfo.html
fi

# Deploy docinfo file to dest folders (can't be used via relative paths):
cp docinfo.html ../../alanguide/
