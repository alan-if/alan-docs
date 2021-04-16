#! /bin/bash -i
#
# Commit the generated Design Documentation files to the `published` branch
# to get them published on https://alan-if.github.io/alan-docs/
echo Publishing design documentation...
cd /tmp
git clone -b published git@github.com:alan-if/alan-docs --single-branch
cd alan-docs
for f in design actors-in-containers rules
         cp $source/alan-design/$f.html design/
git commit -am"[publish script] new version of design documentation"
git push
rm -rf alan-docs
