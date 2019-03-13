#!/bin/bash

# generate-inc-files.sh"                      # by Tristano Ajmone , MIT License.
# ------------------------------------------------------------------------------
version="v2.0.0" ; revdate="2019/03/13"
# ------------------------------------------------------------------------------
# Create UTF-8 versions of Alan source files to allow including them in AsciiDoc
# document, because Asciidoctor won't handle ISO-8859-1 files.
# ------------------------------------------------------------------------------
echo -e "\e[94m******************************************************************************"
echo -e "*                                                                            *"
echo -e "*\e[93m               Convert ALAN Sources from ISO-8859-1 to UTF-8\e[94m                *"
echo -e "*                                                                            *"
echo -e "******************************************************************************"
echo -e "\e[97mby Tristano Ajmone, MIT License.                           $version | $revdate"


function alan2utf8 {
  outfile=inc_$(basename ${1%.*}.utf8_alan)
  echo -e "\e[90m------------------------------------------------------------------------------"
  echo -e "PROCESSING: \e[93m$1"
  echo -e "\e[90mCONVERTING: \e[34m$outfile"
  iconv -f ISO-8859-1 -t UTF-8 $1 > $outfile
}

declare -a AlanSources=(
  "../alanguide-code/tvtime.alan"
  "../alanguide-code/lib/nowhere.i"
  "../alanguide-code/lib/std.i"
  )
 
for infile in ${AlanSources[@]}; do
   alan2utf8 $infile
done

echo -e "\e[90m------------------------------------------------------------------------------"
echo -e "\e[92m/// Finished ///\e[0m"

exit
# ------------------------------------------------------------------------------
# The MIT License
#
# Copyright (c) 2019 Tristano Ajmone: <tajmone@gmail.com>
# https://github.com/tajmone/Base16-Sass
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
# ------------------------------------------------------------------------------
# EOF #
