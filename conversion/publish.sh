#! /bin/bash -i
#
# Commit the generated Conversion guide in HTML format
# to get them published on https://alan-if.github.io/alan-docs/
#
# This script assumes you have recent .html file
#
echo Publishing conversion guide...
cd /tmp
git clone -b published git@github.com:alan-if/alan-docs --single-branch
cd alan-docs
cp $source/conversion/conversion.html conversion/
git commit -am"Publishing new version of conversion guide"
git push
cd ..
rm -rf alan-docs
