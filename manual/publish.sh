#! /bin/bash -i
#
# Commit the generated Manual files to the `published` branch
# to get them published on https://alan-if.github.io/alan-docs/
source=`git rev-parse --show-toplevel`
case "`git branch --show-current`" in
   "alan-manual-alpha")
       stream=alpha
       ;;
   "master")
       stream=beta
       ;;
   *)
       echo "Unknown branch, can't publish"
       exit
       ;;
esac
echo Publishing manual for $stream stream...
cd /tmp
git clone -b published git@github.com:alan-if/alan-docs --single-branch
cd alan-docs
cp $source/manual/manual.html manual-$stream/
cp $source/manual/manual.pdf manual-$stream/
git commit -am"Publishing new version of $stream manual"
git push
rm -rf alan-docs
