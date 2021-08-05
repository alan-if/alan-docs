# The Alan Beginner's Guide

AsciiDoc reconstruction of _Alan 3 Beginner's Guide_ by Michael Arnaud, 2006 ([WIP][TODO]).

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

- [`alanguide.asciidoc`][guide] — _B.Guide_ main source document:
    + `alanguide_*.adoc` — sub-sources (split modules).

## Conversion Scripts

|              script              |      output      | supported OSs |
|----------------------------------|------------------|---------------|
| [`html_build.sh`][html_build.sh] | `alanguide.html` | all           |
| [`pdf_build.sh`][pdf_build.sh]   | `alanguide.pdf`  | Linux, macOS  |
| [`PDF_BUILD.bat`][PDF_BUILD.bat] | `alanguide.pdf`  | Windows       |

Unfortunately, the `pdf_build.sh` script doesn't currently work under Bash for Windows due to paths resolution problems ([Issue #66]), so we need to keep also a batch version (`PDF_BUILD.bat`).


> **NOTE** — (2020/12/27) Now the AsciiDoc sources exploit the new (and undocumented) `encoding` option for the `include::` directive, so the toolchain no longer needs to first convert external ALAN sources and transcripts to UTF-8 before their inclusion in the source documents (see [Issue #84]).

### HTML Toolchain Dependencies

Now the HTML toolchain uses [Highlight] instead of [highlight.js], therefore you'll need André Simon's Highlight command line tool to be available on the system `%Path%`:

- http://www.andre-simon.de/

> **NOTE** — (2021/08/05) This document can't use the Rouge highlighter because it uses [highlight/marker formatting] in code blocks (and _lots_ of them), which are currently not supported by the native Asciidoctor Rouge adapter.
> E.g.
>
> ```asciidoc
> [source,alansubs=quotes]
> -------------------------
> The tv_room IsA location
>   [green]#Name 'TV Room'#
> -------------------------
> ```


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
    + [`alanguide.adoc`][alanguide.adoc] — AsciiDoc port of the HTML version, by Thomas Nilefalk, 2014.

# DocBook XSL Stylesheets

For the conversion to PDF (from DocBook 5), asciidoc-fopub is set to use the customized XSL stylesheets in this folder:

- [`../_assets/alan-xsl-fopub/xsl-fopub/`](../_assets/alan-xsl-fopub/xsl-fopub/)

These stylesheets are part of the [alan-xsl-fopub] template project, included in this repository as a Git submodule. Its XSL stylesheets were adapted from the [asciidoctor-fopub] project, Copyright (C) 2013 Dan Allen ([MIT License](../_assets/alan-xsl-fopub/xsl-fopub/LICENSE)).

[alan-xsl-fopub]: https://github.com/alan-if/alan-xsl-fopub "Visit the alan-xsl-fopub repository on GitHub"

-------------------------------------------------------------------------------

# Document Status

- [`TODO.md`][TODO]

The AsciiDoc reconstruction of this document takes on from where Thomas Nilefalk left (see [Document History] below).

The AsciiDoc formatting still needs some cleaning up, and the document should be adapted to the [styling conventions] adopted in this project. The source files of the tutorial are being reconstructed, along with a copy of the required Library (v0.6.2) so that the reader is able to actually work on the tutorial.

For more details on the pending tasks and guidelines on the adaptation workflow, see the [`TODO.md`][TODO] document.


# Document History

The original source document of the _Alan 3 Beginner's Guide_ was lost, but the [HTML converted version][alanguide.html] survived on Alan website ([still available at this link][alanguide www]). In 2014, Thomas Nilefalk [converted to AsciiDoc][alanguide.adoc] the survived HTML version and began to clean up and restyle the ported document and update its contents.

The original AsciiDoc document was taken from [Alan repository], commit [`fb81645`][fb81645]:

- https://github.com/alan-if/alan/blob/fb81645/doc/guide/

The HTML version was [taken from the Alan website][alanguide www].

# Changes List

Here is a list of changes to the original _Beginner's Guide_ document and it's associated source files applied by Tristano Ajmone in his conversion work and reprint.

## Document and Adventure Images

The original `plasma.jpg` image was converted to `plasma.png`, a PNG with transparency where the white background was knocked off to allow the image to adapt to any background color in Alan interpreters, as well as to be able to show it properly in the tutorial transcript (which has blue background).

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Alan repository]: https://github.com/alan-if/alan "Visit Alan repository on GitHub"

[fb81645]: https://github.com/alan-if/alan/blob/fb81645/ "View Alan repository's commit fb81645"

[alanguide www]: https://alanif.se/files/alanguide/alanguide.html "View the 'Alan 3 Beginner's Guide' at Alan website (outdated version)"

[styling conventions]: ../CONVENTIONS.md "Read the 'Formatting and Styling Conventions' guidelines adopted in Alan-Docs"


[ALAN Standard Library 2]: https://github.com/AnssiR66/AlanStdLib "Visit the official repository of the ALAN Standard Library 2"

[iconv]: https://en.wikipedia.org/wiki/Iconv "See Wikipedia page on iconv"

<!-- people -->

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

<!-- AsciiDoctor Manual -->

[docinfo header file]: https://docs.asciidoctor.org/asciidoctor/latest/docinfo/ "AsciiDoc Language Documentation » Docinfo Files"
[highlight/marker formatting]: https://docs.asciidoctor.org/asciidoc/latest/text/highlight/ "AsciiDoc Language Documentation » Highlight syntax"

<!-- Project Files -->

[guide]: ./alanguide.asciidoc


[html_build.sh]: ./html_build.sh "Bash script to convert the Alan Guide to a single-file standalone HTML5 document."
[PDF_BUILD.bat]: ./PDF_BUILD.bat "Batch script to convert the Alan Guide to PDF document."
[pdf_build.sh]: ./pdf_build.sh "Batch script to convert the Alan Guide to PDF document."
[TODO]: ./TODO.md "View the TODO document"

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

<!-- In-Doc Cross References -->

[Document History]: #document-history "Jump to the section about the history of this document"

<!-- Repo Issues -->

[Issue #66]: https://github.com/alan-if/alan-docs/issues/66 "Issue #66 — Shell Scripts Produce Corrupt PDFs under Bash for Windows"
[Issue #84]: https://github.com/alan-if/alan-docs/issues/84 "Issue #84 — Use New encoding Option with include:: Directives"

<!-- EOF -->
