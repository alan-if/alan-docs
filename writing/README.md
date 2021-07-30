# The Alan Author's Guide

AsciiDoc port of _The ALAN Adventure Language Author's Guide_ (WIP).

Links to the converted _Author's Guide_:

> __NOTE__ — The AsciiDoc files in this project are intended for [Asciidoctor], the Ruby implementation of AsciiDoc; some required features might not be available in [AsciiDoc Python]!


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Document Status](#document-status)
    - [Highlighter Info and Limits](#highlighter-info-and-limits)
- [Folder Contents](#folder-contents)
    - [Manual Source Files](#manual-source-files)
    - [Conversion Scripts](#conversion-scripts)
- [Misc Work Notes](#misc-work-notes)
    - [Conversion from ODT to AsciiDoc](#conversion-from-odt-to-asciidoc)

<!-- /MarkdownTOC -->

-----

# Document Status

The _Author's Guide_ was successfully ported from ODT to AsciiDoc, but the document isn't ready for publication, for most of its document contents still need to be written.

In the meantime, anyone interested in following its development can always preview the latest document via this project.

Further development of the _Author's Guide_ contents shall be done here, in AsciiDoc format, instead of the old ODT file, to simplify collaborative editing and to benefit from the shared assets of the Alan Docs project.

## Highlighter Info and Limits

Highlight doesn't support callouts in syntax highlighted code blocks, so don't use them!

This document must use Highlight instead of Rouge because it uses [highlight marking] inside code blocks, which is currently not supported with Rouge.


# Folder Contents

The original files of the _Author's Guide_ used for the AsciiDoc conversion are available in:

- [`../_assets-src/original-docs/`](../_assets-src/original-docs/)
    + [`writing.odt`](../_assets-src/original-docs/writing.odt)
    + [`writing.pdf`](../_assets-src/original-docs/writing.pdf)

## Manual Source Files

- [`writing.asciidoc`][aut] — The main _Author's Guide_ file that imports all other chapters:
    + [`writing_01.asciidoc`][aut 01] — _1. Introduction_
    + [`writing_02.asciidoc`][aut 02] — _2. Writing With Alan_
- [`alan-logo.png`][logo] — Alan logo for cover image.

## Conversion Scripts

- [`html_build.sh`][html_build.sh] — bash script to create `manual.html` document (fully standalone).


# Misc Work Notes

## Conversion from ODT to AsciiDoc

The original ODT document was first exported to __Office Open XML__ using LibreOffice, and the resulting `.docx` file was then converted to AsciiDoc using pandoc:

```bat
pandoc ^
     -f docx ^
     -t asciidoc ^
    --wrap=none ^
    --atx-headers ^
    --extract-media=extracted-media ^
        writing.docx ^
     -o writing.asciidoc
```

Although some styles were lost in the process, the final ADoc was a rather good starting point.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[highlight marking]: https://docs.asciidoctor.org/asciidoc/latest/text/highlight/ "AsciiDoc Manual » Highlight syntax"

<!-- AsciiDoctor ------------------------------------------------------------->

[Asciidoctor]: https://asciidoctor.org/ "Visit AsciiDoctor website (Ruby implementation)"

[AsciiDoc Python]: http://asciidoc.org/ "Visit AsciiDoc website (original Python implementation)"

<!-- Project Files ----------------------------------------------------------->

[aut]: ./writing.asciidoc
[aut 01]: ./writing_01.asciidoc "Source file of Chapter 1. Introduction"
[aut 02]: ./writing_02.asciidoc "Source file of Chapter 2. Writing With Alan"

[logo]: ./alan-logo.png "Alan logo"

[html_build.sh]: ./html_build.sh "Bash script to convert Author's Guide to a single-file standalone HTML5 document."

<!-- Document Cross-References ----------------------------------------------->

<!-- EOF -->
