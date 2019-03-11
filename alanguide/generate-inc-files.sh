#!/bin/bash
# ==============================================================================
# "generate-inc-files.sh"               v1.0.0 | 2019/03/11 | by Tristano Ajmone
# ==============================================================================

# Create an UTF-8 version of the "TV TIME!" source file to allow including it in
# the AsciiDoc document, because Asciidoctor won't handle ISO-8859-1 files.

iconv -f ISO-8859-1 -t UTF-8 ./alanguide-code/tvtime.alan > inc_tvtime.utf8_alan

# EOF #
