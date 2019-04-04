# The Alan Beginner's Guide

AsciiDoc reconstruction of _Alan 3 Beginner's Guide_ by Michael Arnaud, 2006 ([WIP][TODO]).

__[Click here for an HTML Live Preview][HTML Live Preview]__

> __NOTE__ — The AsciiDoc files in this project are intended for [Asciidoctor], the Ruby implementation of AsciiDoc; some required features might not be available in [AsciiDoc Python]!


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduction](#introduction)
- [Folder Contents](#folder-contents)
    - [Document Source Files](#document-source-files)
    - [Conversion Scripts](#conversion-scripts)
        - [HTML Toolchain Dependencies](#html-toolchain-dependencies)
        - [PDF Toolchain Dependencies](#pdf-toolchain-dependencies)
    - [Maintainers Stuff](#maintainers-stuff)
- [Original Guide Documents](#original-guide-documents)
- [DocBook XSL Stylesheets](#docbook-xsl-stylesheets)
- [Document Status](#document-status)
- [Document History](#document-history)
- [Changes List](#changes-list)
    - [Document and Adventure Images](#document-and-adventure-images)

<!-- /MarkdownTOC -->

-----

# Introduction

Michael Arnaud's _Alan 3 Beginner's Guide_ (2006) is an excellent step-by-step tutorial that will guide the reader through the creation of a full adventure using ALAN Library v0.6.1 — the _TV TIME!_ adventure.

The fact that the Library used in this tutorial is a very old version (now superseded by [Anssi Räisänen]'s [ALAN Standard Library 2]) doesn't affect the usefulness of this tutorial. As a matter of fact, it's actually easier for a beginner to work with this older version of the Library for it's much smaller and manageable, and therefore easier to study and experiment with.

When the adapatation work started, there were initial concerns about this obsolete library version, and the original intention was to adapt the tutorial contents and code to make it work the latest StdLib 2.1. The rationale was that it would have been more useful for the reader to start working with a current version of the library instead of an obsolete version. 

Also, there were concernes that Library v0.6.1 (dates back to 2007) might no longer be compatible with the current version of ALAN, for the language has undergone considerable changes in 12 years. As it turns out, Library v0.6.1 still works fine today and I was able to compile the _TV TIME!_ adventure of this tutorial without problems. I've only tweaked the library in a couple of places to introduce two minor fixes and improvements from v0.6.2 that specifically targetted changes in ALAN features. (v0.6.2 was the last update in the v0.X series, before migration to Library v1, which superseded it in 2010, which in turn was superseded by StdLib v2.0 in 2016).

Therefore, the decision was to preserve the _Alan 3 Beginner's Guide_ tutorial as it is, and provide the reader with a (slightly tweaked) copy of the Library v0.6.1 sources so that he/she might enjoy putting into practice the step-by-step instructions of the tutorial. After all, the philosophy behind ALAN is not to enforce any library on authors, so ultimately there is no "official" ALAN library — all these libraries are the result of collective efforts and shared knowledge, experience and needs.

Obviously, the reader is encouraged to study and use the newest [ALAN Standard Library 2] by [Anssi Räisänen], for Library v0.6.1 was an adpatation of v0.4.0, originally designed for ALAN 2 and then ported to ALAN 3 in v0.4.1, while the Library v2.0 was designed from the onset as an ALAN 3 library, and therefore takes full advantage of the new features of the language.


# Folder Contents

- [`alanguide.html`][guide html] — _Beginner's Guide_ converted to HTML5 ([HTML Live Preview]).
- [`alanguide.css`][guide css] — _Beginner's Guide_ extra stylesheet.

The reader will also need to download the source files of the __ALAN Library__ required to follow the tutorial steps, as well as the complete sources of the _TV TIME!_ adventure created during the tutorial.

- [`/alanguide-code/`][alanguide-code] — Alan sources of (and for) tutorial.
    + [`/lib/`][lib] — ALAN Library v0.6.2.
    + [`/mylib/`][mylib] — ALAN Library v0.6.2 modified for tutorial.
    + [`COMPILE.bat`][COMPILE] — script to compile the adventure.
    + [`plasma.png`][plasma] — required adventure asset.
    + [`tvtime.alan`][tvtime.alan] — the final _TV TIME!_ adventure.

> __IMPORTANT__ — Some Alan sources are included in the AsciiDoc source via the `include::[]` directive targetting specific line ranges. If you need to edit those source files you'll then need to adjust the line ranges accordingly to prevent the document from showing the wrong lines of code. These are the files included by line ranges:
> 
> - [`./alanguide-code/lib/std.i`](./alanguide-code/lib/std.i)

## Document Source Files

- [`alanguide.asciidoc`][guide] — _B.Guide_ source doc.
- [`/_adoc/`][_adoc] — required Asciidoctor assets to build _B.Guide_:
    + [`generate-inc-files.sh`][generate-inc-files] — script to create UTF-8 versions of Alan sources to include in _B.Guide_.
    + [`inc_tvtime.utf8_alan`][inc_tvtime] — UTF-8 version of [`./alanguide-code/tvtime.alan`][tvtime.alan] (auto-generated).
    + `*.utf8_alan` — other Lib sources or ALAN snippets in UTF-8.
    + [`docinfo.html`][docinfo] — head docinfo file for including custom CSS.

The file `inc_tvtime.utf8_alan` is an UTF-8 converted copy of the `tvtime.alan` source adventure, created (via `generate-inc-files.sh`) so that it might be included in the AsciiDoc document, because Asciidoctor can't handle ISO-8859-1 files.

Any file with the `*.utf8_alan` extension is an Alan source file in UTF-8 encoding. 

> __IMPORTANT__ — The `generate-inc-files.sh` script should be run every time the Alan sources in  [`alanguide-code/`] are edited, so that the source of the adventure shown in the document will always reflect the actual source file of the project.


## Conversion Scripts

- [`BUILD_ALL.bat`][BUILD_ALL.bat] — convenience batch to invoke all conversion scripts at once.
- [`HTML_BUILD.bat`][HTML_BUILD.bat] — batch script to create `alanguide.html` document.
- [`PDF_BUILD.bat`][PDF_BUILD.bat] (_experimental_) — batch script to create `alanguide.pdf` document (currently ignored in repository).

There's and additional automation script that needs to be executed whenever the source files in the `alanguide-code/` are changed:

- [`/_adoc/generate-inc-files.sh`][generate-inc-files]

The `generate-inc-files.sh` script exploits the __[iconv]__ tool to convert Alan sources from ISO-8859-1 to UTF-8 encoding. Since Windows doesn't have an equivalent native tool, I've used a Bash script instead of a Windows batch in this case. Git for Windows ships with a Bash, which has the iconv tool. Besides, you won't need to use this script unless you modify the Alan sources of the tutorial.


### HTML Toolchain Dependencies

Now the HTML toolchain uses [Highlight] instead of [highlight.js], therefore you'll need André Simon's Highlight command line tool to be available on the system `%Path%`:

- http://www.andre-simon.de/

### PDF Toolchain Dependencies

> __PDF WARNING__ — There are some difficulties in rendering in the PDF output the code coloring notation used in the _B.Guide_, therefore there won't be any PDF releases of this document until the problem is solved. 


The [`PDF_BUILD.bat`][PDF_BUILD.bat] script now uses [asciidoctor-fopub] to create the PDF version of the Manual. You'll need to setup it up on your machine and add it to your system Path in order to run the conversion script.


## Maintainers Stuff

- [`/tests/`](./tests/)

This folder contains various scripts to test the integrity of the Library and the tutorial sources. Used by maintainers when editing sources, just to ensure that everything still works fine.

# Original Guide Documents

The original files of the _Alan Beginner's Guide_ used as base document are available in:

- [`../_assets-src/original-docs/`][original-docs]
    + [`/images/`][images] — original images.
    + [`alanguide.html`][alanguide.html] — survived HTML version of original document.
    + [`alanguide.adoc`][alanguide.adoc] — AsciiDoc port of the HTML version.

# DocBook XSL Stylesheets

For the conversion to PDF (from DocBook 5), asciidoc-fopub is set to use the customized XSL stylesheets in this folder:

- [`../_assets/xsl-fopub/`](../_assets/xsl-fopub/)

These stylesheets were adapted from the [asciidoctor-fopub] project, Copyright (C) 2013 Dan Allen ([MIT License](./manual-xsl/LICENSE)).


-------------------------------------------------------------------------------

# Document Status

- [`TODO.md`][TODO]

The AsciiDoc reconstruction of this document takes on from where Thomas Nilefalk left (see [Document History] below).

The AsciiDoc formatting still needs some cleaning up, and the document should be adapted to the [styling conventions] adopted in this project. The source files of the tutorial are being reconstructed, along with a copy of the required Library (v0.6.2) so that the reader is able to actually work on the tutorial.

For more details on the pending tasks and guidelines on the adaptation workflow, see the [`TODO.md`][TODO] document.


# Document History

The original source document of the _Alan 3 Beginner's Guide_ was lost, but the [HTML converted version][alanguide.html] survived on Alan website ([still available at this link][alanguide www]). In 2014, Thomas Nilefalk [converted to AsciiDoc][alanguide.adoc] the survived HTML version and began to clean up and restyle the ported document and update its contents.

The original AsciiDoc document was taken from [Alan repository], commit [`fb81645`][fb81645]:

- https://bitbucket.org/alanif/alan/src/fb81645/doc/guide/

The HTML version was [taken from the Alan website][alanguide www].

# Changes List

Here is a list of changes to the original _Beginner's Guide_ document and it's associated source files applied by Tristano Ajmone in his conversion work and reprint.

## Document and Adventure Images

The original `plasma.jpg` image was converted to `plasma.png`, a PNG with transparency where the white background was knocked off to allow the image to adapt to any background color in Alan interpreters, as well as to be able to show it properly in the tutorial transcript (which has blue background).

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[HTML Live Preview]: http://htmlpreview.github.io/?https://github.com/alan-if/alan-docs/blob/master/alanguide/alanguide.html "Preview the 'Alan 3 Beginner's Guide' via GitHub & BitBucket HTML Preview"
[GitHub & BitBucket HTML Preview]: http://htmlpreview.github.io


[Alan repository]: https://bitbucket.org/alanif/alan/src/master/ "Visit Alan repository at Bitbucket"

[fb81645]: https://bitbucket.org/alanif/alan/src/fb81645/ "View Alan repository's commit fb81645"

[alanguide www]: https://alanif.se/files/alanguide/alanguide.html "View the 'Alan 3 Beginner's Guide' at Alan website (outdated version)"

[styling conventions]: ../CONVENTIONS.md "Read the 'Formatting and Styling Conventions' guidelines adopted in Alan-Docs"
[BUILD_ALL.bat]:  ./BUILD_ALL.bat  "Batch script to invoke all the Alan Guide conversion scripts."
[HTML_BUILD.bat]: ./HTML_BUILD.bat "Batch script to convert the Alan Guide to a single-file standalone HTML5 document."
[PDF_BUILD.bat]: ./PDF_BUILD.bat "Batch script to convert the Alan Guide to PDF document."

[ALAN Standard Library 2]: https://github.com/AnssiR66/AlanStdLib "Visit the official repository of the ALAN Standard Library 2"

[iconv]: https://en.wikipedia.org/wiki/Iconv "See Wikipedia page on iconv"

<!-- people ------------------------------------------------------------------>

[Anssi Räisänen]: https://github.com/AnssiR66 "View Anssi Räisänen's GitHub profile"

<!-- 3rd Party Tools -->

[Highlight]: http://www.andre-simon.de/ "Visit Highlight website"
[highlight.js]: https://highlightjs.org/ "Visit highlight.js website"

<!-- AsciiDoctor -->

[Asciidoctor]: https://asciidoctor.org/ "Visit AsciiDoctor website (Ruby implementation)"
[Asciidoctor PDF]: https://github.com/asciidoctor/asciidoctor-pdf "Visit the Asciidoctor PDF repository"
[asciidoctor-fopub]: https://github.com/asciidoctor/asciidoctor-fopub "Visit the asciidoctor-fopub repository"

[AsciiDoc Python]: http://asciidoc.org/ "Visit AsciiDoc website (original Python implementation)"

[Issue #2106]: https://github.com/asciidoctor/asciidoctor/issues/2106 "Issue #2106 — Add extension point for integrating an alternative source highlighter"

[Rouge]: http://rouge.jneen.net/ "Visti Rouge website (code highlighter in Ruby)"

<!-- Project Files -->

[guide]: ./alanguide.asciidoc
[guide html]: ./alanguide.html
[guide css]: ./alanguide.css
[guide pdf]: ./alanguide.pdf

[BUILD_ALL.bat]:  ./BUILD_ALL.bat  "Batch script to invoke all the Alan Guide conversion scripts."
[HTML_BUILD.bat]: ./HTML_BUILD.bat "Batch script to convert the Alan Guide to a single-file standalone HTML5 document."
[PDF_BUILD.bat]: ./PDF_BUILD.bat "Batch script to convert the Alan Guide to PDF document."
[TODO]: ./TODO.md "View the TODO document"

<!-- Asciidoctor assets -->

[_adoc]: ./_adoc/ "Navigate to folder"

[inc_tvtime]: ./_adoc/inc_tvtime.utf8_alan "View source file"
[docinfo]: ./_adoc/docinfo.html "View source file"
[generate-inc-files]: ./_adoc/generate-inc-files.sh "View script source"

<!-- Tutorial code assets -->

[alanguide-code]: ./alanguide-code/ "Navigate to folder"
[lib]: ./alanguide-code/lib/ "Navigate to folder"
[mylib]: ./alanguide-code/mylib/ "Navigate to folder"
[tvtime.alan]: ./alanguide-code/tvtime.alan "View source file"
[COMPILE]: ./alanguide-code/COMPILE.bat "View source file"
[plasma]: ./alanguide-code/plasma.png "View image"


<!-- original guide files -->

[original-docs]: ../_assets-src/original-docs/ "Navigate to folder"
[images]: ../_assets-src/original-docs/images/ "Navigate to folder"
[alanguide.adoc]: ../_assets-src/original-docs/alanguide.adoc "View source file"
[alanguide.html]: ../_assets-src/original-docs/alanguide.html "View source file"

<!-- In-Doc Croos References -->

[Document History]: #document-history "Jump to the section about the history of this document"

<!-- EOF -->
