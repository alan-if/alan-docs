# The Alan Manual

AsciiDoc port of _The ALAN Adventure Language Reference Manual_ (WIP).

Links to the converted _Alan Manual_:

- [`manual.html`](./manual.html) — __[Click here for an HTML Live Preview][HTML Live Preview]__
- [`manual.pdf`](./manual.pdf)


> __NOTE__ — The AsciiDoc files in this project are intended for [Asciidoctor], the Ruby implementation of AsciiDoc; some required features might not be available in [AsciiDoc Python]!


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Document Status](#document-status)
    - [AsciiDoc Conversion](#asciidoc-conversion)
    - [PDF Toolchain Setup](#pdf-toolchain-setup)
    - [HTML Toolchain Setup](#html-toolchain-setup)
    - [Syntax Highlighting](#syntax-highlighting)
- [Folder Contents](#folder-contents)
    - [Manual Source Files](#manual-source-files)
        - [Scripts Sources](#scripts-sources)
    - [Conversion Scripts](#conversion-scripts)
    - [Converted Manual](#converted-manual)
    - [Helper Files](#helper-files)
- [DocBook XSL Stylesheets](#docbook-xsl-stylesheets)
- [Misc Work Notes](#misc-work-notes)
    - [Conversion from ODT to AsciiDoc](#conversion-from-odt-to-asciidoc)
    - [Annotated Comments](#annotated-comments)

<!-- /MarkdownTOC -->

-----


# Document Status

Before the new version of the _Alan Manual_ is ready, some pending tasks must be resolved. For more info, visit the [Alan Manual project board].

- [ ] __[AsciiDoc Conversion]__ ([milestones][ADoc miles]) — porting from ODT to ADoc, reconstructing styles and lost formatting and structure.
- [ ] __[PDF Toolchain Setup]__ ([milestones][PDF Chain miles]):
    + [x] organize all the tools, scripts to convert from AsciiDoc to DocBook and then to PDF via asciidoctor-fopub. 
    + [ ] customize FOP template to produce a PDF version with custom styling. 
- [ ] __[HTML Toolchain Setup]__:
    + [ ] organize all the tools, scripts to convert to HTML.
    + [ ] ([milestones][HTML template miles]) customize template to produce an HTML version with custom styling.
- [x] __[Syntax Highlighting]__ — find solution(s) to enable syntax highlighting of Alan examples in all output formats:
    + [x] __PDF format__ — implemented using XSLHL with custom Alan syntax.
    + [x] __HTML format__ — implemented using highlight.js with custom Alan syntax.

[ADoc miles]: https://github.com/alan-if/alan-docs/milestone/1 "See the milestones for Alan Manual's AsciiDoc porting"
[PDF Chain miles]: https://github.com/alan-if/alan-docs/milestone/3 "See the milestone for this task"
[HTML template miles]: https://github.com/alan-if/alan-docs/milestone/7 "See the milestone for this task"

[Alan Manual project board]: https://github.com/alan-if/alan-docs/projects/1 "See the project board on GitHub"

## AsciiDoc Conversion

The porting work is pretty much finished, a couple of (rather long) chapters still need some cleaning-up, but this is the state of the finished Chapters:


- [x] _1. Introduction_
- [x] _2. Concepts_
- [x] _3. Lexical Definitions_
- [x] _4. Language Reference_
- [x] _5. Running An Adventure_
- [ ] _6. Hints And Tips_
- [x] _7. Adventure Construction_
- [x] _Appendix A: How To Use The System_
- [x] _Appendix B: A Sample Interaction_
- [x] _Appendix C: Run-Time Messages_
- [x] _Appendix D: Language Grammar_
- [x] _Appendix E: Predefined player words_
- [x] _Appendix F: Compiler Messages_
- [x] _Appendix G: Localization_
- [x] _Appendix H: Portability of Games_
- [x] _Appendix I: Copying Conditions_
- [x] _Index_

All lost cross-references, styles, the document sections hierarchy and header, as well as the Index and its entries, have all been reconstructed. The remaining work consists mainly in polishing up, ensuring that every chapter is compliant to AsciiDoc. 

An here follows a task list of the remaining porting tasks:

- [ ] Add missing header metadata (See [Issue #8][i8])
- [ ] Rebuild current images, in vector format (optional):
    + [ ] Figure 1 (Sec. 2.3, p.20 of PDF) — "The principles for and relations between a game description, a compiler, ...".
    + [x] Figure 2 (Sec. 2.4, p.33 of PDF) — "_Relationships between the pre-defined classes._".
- [x] Fix some non-Ascii chars (especially Unicode dingbats) that may cause problems in some output formats (See [Issue #23][i23]).
- [ ] Fix Headings:
    + [ ] Check that all headings are properly title cased.
    + [ ] Change to all-caps Alan keywords in headings.
- [ ] Finish reading through the whole book, checking for missing styles and fixing the ADoc source:
    + [ ] _6. Hints And Tips_



## PDF Toolchain Setup

The PDF toolchain will employ [asciidoc-fopub] to convert from DocBook to PDF. I've just started working on this, and there is still a lot to do before the required custom styles will be usable to create a distributable PDF.

- [ ] Customize XSL styles (See [Issue #14][i14]):
    + [ ] Footnotes: use numbers instead of letters.
    + [ ] Improve admonitions styles:
        * [ ] Nicer icons
        * [ ] Icons colors according to type of admonition (red, yellow, green, blue, etc.)
    + [ ] Customize Verbatim blocks (colors and styles):
        * [x] Alan code examples
        * [x] BNF rules
        * [x] Game transcripts
        * [ ] Shell output
- [x] Fix problem with special Unicode chars not showing in PDF (eg, arrows symbols in Tables — See [Issue #23][i23])
- [ ] Fonts:
    + [ ] Find appropriate fonts and include them in project
    + [x] Set fonts in XSL stylesheets
- [ ]  (_more issues expected soon..._)

## HTML Toolchain Setup

Currently I'm relying on Asciidoctor's native HTML backend to convert and preview the Manual, but some required styles are not supported by the default theme. Still need to look into it.

- [ ]  (_optional_) Find a pure Sass based theme for Asciidoctor (no Compass, no Foundation)

## Syntax Highlighting

Currently, I've created an Alan syntax definition for André Simon's Hihglihgt tool, which should be usable at least for the HTML conversion.

+ [x] Create custom Alan syntax for Highlight.js (used in HTML output).
+ [x] Create a custom Alan syntax definition for XSLHL (used by asciidoc-fopub in PDF conversion).

-------------------------------------------------------------------------------

# Folder Contents

The original files of the _Alan Manual_ used for AsciiDoc conversion are available in:

- [`../_assets-src/original-docs/`](../_assets-src/original-docs/)
    + [`manual.odt`](../_assets-src/original-docs/manual.odt)
    + [`manual.pdf`](../_assets-src/original-docs/manual.pdf)

## Manual Source Files

- [`manual.asciidoc`][man] — The main Alan Manual file that imports all other chapters:
    + [`manual_01.asciidoc`][man 01] — _1. Introduction_
    + [`manual_02.asciidoc`][man 02] — _2. Concepts_
    + [`manual_03.asciidoc`][man 03] — _3. Lexical Definitions_
    + [`manual_04.asciidoc`][man 04] — _4. Language Reference_
    + [`manual_05.asciidoc`][man 05] — _5. Running An Adventure_
    + [`manual_06.asciidoc`][man 06] — _6. Hints And Tips_
    + [`manual_07.asciidoc`][man 07] — _7. Adventure Construction_
    + [`manual_08.asciidoc`][man 08] — _Appendix A: How To Use The System_
    + [`manual_09.asciidoc`][man 09] — _Appendix B: A Sample Interaction_
    + [`manual_10.asciidoc`][man 10] — _Appendix C: Run-Time Messages_
    + [`manual_11.asciidoc`][man 11] — _Appendix D: Language Grammar_
    + [`manual_12.asciidoc`][man 12] — _Appendix E: Predefined player words_
    + [`manual_13.asciidoc`][man 13] — _Appendix F: Compiler Messages_
    + [`manual_14.asciidoc`][man 14] — _Appendix G: Localization_
    + [`manual_15.asciidoc`][man 15] — _Appendix H: Portability of Games_
    + [`manual_16.asciidoc`][man 16] — _Appendix I: Copying Conditions_

### Scripts Sources

In order to auto-generate the compiler output or game transcripts shown in some places of the Manual, source files are provided:

- [`/src_scripts/`](./src_scripts/):
    + [`ZILexample.alan`](./src_scripts/ZILexample.alan) — source adventure to recreate original compiler log of _F.1_.
    + [`ZILexample.bat`](./src_scripts/ZILexample.bat) — batch to update compiler log.
    + [`ZILexample.log`](./src_scripts/ZILexample.log) — Compiler log shown in "_[F.1. Format of messages]_".

[F.1. Format of messages]: https://htmlpreview.github.io/?https://github.com/alan-if/alan-docs/blob/master/manual/manual.html#_format_of_messages "Click for a live HTML preview of 'F.1. Format of messages'"

## Conversion Scripts

- [`BUILD_ALL.bat`][BUILD_ALL.bat] — convenience batch to invoke all conversion scripts at once.
- [`HTML_BUILD.bat`][HTML_BUILD.bat] — batch script to create `manual.html` document (fully standalone).
- [`PDF_BUILD.bat`][PDF_BUILD.bat] — batch script to create `manual.pdf` document (currently ignored in repository).

> __PDF CONVERSION NOTE__ — The [`PDF_BUILD.bat`][PDF_BUILD.bat] script now uses [asciidoctor-fopub] to create the PDF version of the Manual. You'll need to setup it up on your machine and add it to your system Path in order to run the conversion script.
> 
> See: [Instructions on setting up asciidoctor-fopub].

[Instructions on setting up asciidoctor-fopub]: ../README.md#asciidoctor-fopub

## Converted Manual

The _Alan Manual_ is also available in converted format:

- [`manual.html`](./manual.html) — standalone HTML5 ([HTML Live Preview]).
- [`manual.pdf`](./manual.pdf) — PDF version

Both file formats should always reflect the current AsciiDoc version, but the PDF version might not be updated in case of very small changes.

An [HTML Live Preview] of the converted document is available via [GitHub & BitBucket HTML Preview] online service.


## Helper Files

Some files to help editing the manual:

- [`Alan_Keywords.txt`](./Alan_Keywords.txt) — Alan keywords list in various formats. 
- [`Cross-References.md`][Cross-References.md] — Look-up table for cross-reference links.
- [`Manual_Index.txt`][Index txt] — Manual Index in plaintext (for reference).
- [`Manual_TOC.txt`][TOC txt] — Manual TOC in plaintext (for reference).
- [`RegExs.txt`](./RegExs.txt) — frequently needed regular expressions for S&R operations.
- [`SNIPPTES.adoc`](./SNIPPTES.adoc) — useful snippets to copy and paste.

# DocBook XSL Stylesheets

For the conversion to PDF (from DocBook 5), asciidoc-fopub is set to use the customized XSL stylesheets in this folder:

- [`../_assets/xsl-fopub/`](../_assets/xsl-fopub/)

These stylesheets were adapted from the [asciidoctor-fopub] project, Copyright (C) 2013 Dan Allen ([MIT License](./manual-xsl/LICENSE)).


-------------------------------------------------------------------------------

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
        manual.docx ^
     -o manual_pandoc_odt-2-adoc.asciidoc
```

Although some styles were lost in the process, the final ADoc was a rather good starting point.

## Annotated Comments

As a convention, all commented annotations inside document source files will begin with "`// @`" to allow finding them quickly via Search functionality (eg, "`// @TODO:`", "`// @FIXME:`", "`// @NOTE`", etc.).

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[GitHub & BitBucket HTML Preview]: http://htmlpreview.github.io

<!-- Alan-Docs Links --------------------------------------------------------->

[HTML Live Preview]: http://htmlpreview.github.io/?https://github.com/alan-if/alan-docs/blob/master/manual/manual.html "Preview 'The Alan Manual' via GitHub & BitBucket HTML Preview"

<!-- Issues -->

[i8]: https://github.com/alan-if/alan-docs/issues/8 "Issue #8 — Manual Info & Metadata"
[i14]: https://github.com/alan-if/alan-docs/issues/14 "Issue #14 — Customization of PDF Template"
[i23]: https://github.com/alan-if/alan-docs/issues/23 "Issue #23 — Unicode Chars Problems in PD"



<!-- AsciiDoctor ------------------------------------------------------------->

[Asciidoctor]: https://asciidoctor.org/ "Visit AsciiDoctor website (Ruby implementation)"
[Asciidoctor PDF]: https://github.com/asciidoctor/asciidoctor-pdf "Visit the Asciidoctor PDF repository"
[asciidoctor-fopub]: https://github.com/asciidoctor/asciidoctor-fopub "Visit the asciidoctor-fopub repository"

[AsciiDoc Python]: http://asciidoc.org/ "Visit AsciiDoc website (original Python implementation)"

[Issue #2106]: https://github.com/asciidoctor/asciidoctor/issues/2106 "Issue #2106 — Add extension point for integrating an alternative source highlighter"

[Rouge]: http://rouge.jneen.net/ "Visti Rouge website (code highlighter in Ruby)"

<!-- Project Files ----------------------------------------------------------->

[man]: ./manual.asciidoc
[man 01]: ./manual_01.asciidoc "Source file of Chapter 1. Introduction"
[man 02]: ./manual_02.asciidoc "Source file of Chapter 2. Concepts"
[man 03]: ./manual_03.asciidoc "Source file of Chapter 3. Lexical Definitions"
[man 04]: ./manual_04.asciidoc "Source file of Chapter 4. Language Reference"
[man 05]: ./manual_05.asciidoc "Source file of Chapter 5. Running An Adventure"
[man 06]: ./manual_06.asciidoc "Source file of Chapter 6. Hints And Tips"
[man 07]: ./manual_07.asciidoc "Source file of Chapter 7. Adventure Construction"
[man 08]: ./manual_08.asciidoc "Source file of Appendix A: How To Use The System"
[man 09]: ./manual_09.asciidoc "Source file of Appendix B: A Sample Interaction"
[man 10]: ./manual_10.asciidoc "Source file of Appendix C: Run-Time Messages"
[man 11]: ./manual_11.asciidoc "Source file of Appendix D: Language Grammar"
[man 12]: ./manual_12.asciidoc "Source file of Appendix E: Predefined player words"
[man 13]: ./manual_13.asciidoc "Source file of Appendix F: Compiler Messages"
[man 14]: ./manual_14.asciidoc "Source file of Appendix G: Localization"
[man 15]: ./manual_15.asciidoc "Source file of Appendix H: Portability of Games"
[man 16]: ./manual_16.asciidoc "Source file of Appendix I: Copying Conditions"


[BUILD_ALL.bat]:  ./BUILD_ALL.bat  "Batch script to invoke all Manual conversion scripts."
[HTML_BUILD.bat]: ./HTML_BUILD.bat "Batch script to convert Alan Manual to a single-file standalone HTML5 document."
[PDF_BUILD.bat]: ./PDF_BUILD.bat "Batch script to convert Alan Manual to PDF document."

[Cross-References.md]: ./Cross-References.md "Look-up table for cross-reference links reconstruction"

[Index txt]: ./Manual_Index.txt
[TOC txt]:   ./Manual_TOC.txt

<!-- SCREENSHOTS -->

[PDF footnotes]: ./_pdf-footnotes.problem.png "Screenshots of how footnotes inside a Table are not rendered correctly with Asciidoctor PDF backend"

<!-- Document Cross-References ----------------------------------------------->

[AsciiDoc Conversion]: #asciidoc-conversion "Jump to the 'AsciiDoc Conversion' section"
[PDF Toolchain Setup]: #pdf-toolchain-setup "Jump to the 'PDF Toolchain Setup' section"
[HTML Toolchain Setup]: #html-toolchain-setup "Jump to the 'HTML Toolchain Setup' section"
[Syntax Highlighting]: #syntax-highlighting "Jump to the 'Syntax Highlighting' section"

<!-- EOF -->