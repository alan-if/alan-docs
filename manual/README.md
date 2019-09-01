# The Alan Manual

AsciiDoc port of _The ALAN Adventure Language Reference Manual_ (WIP).

Links to the converted _Alan Manual_:

- [`manual.html`](./manual.html) — __[Click here for an HTML Live Preview][HTML Live Preview]__
- [`manual.pdf`](./manual.pdf)


> __NOTE__ — The AsciiDoc files in this project are intended for [Asciidoctor], the Ruby implementation of AsciiDoc; some required features might not be available in [AsciiDoc Python]!


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
    - [Manual Source Files](#manual-source-files)
        - [Transcripts and Compiler Logs Sources](#transcripts-and-compiler-logs-sources)
    - [Conversion Scripts](#conversion-scripts)
    - [Converted Manual](#converted-manual)
    - [Helper Files](#helper-files)
- [Document Status](#document-status)
    - [Pending Tasks and Issues](#pending-tasks-and-issues)
        - [Common Issues](#common-issues)
        - [Issues With HTML Version](#issues-with-html-version)
        - [Issues With PDF Version](#issues-with-pdf-version)
    - [Available Formats](#available-formats)
        - [PDF Version](#pdf-version)
        - [HTML Version](#html-version)
    - [Syntax Highlighting](#syntax-highlighting)
- [Building The Manual](#building-the-manual)
    - [System Requirements](#system-requirements)
        - [Installing Ruby on Windows](#installing-ruby-on-windows)
    - [PDF Toolchain Setup](#pdf-toolchain-setup)
    - [HTML Toolchain Setup](#html-toolchain-setup)
- [Development](#development)
    - [Development Cycle](#development-cycle)
    - [Maintainers Check-list](#maintainers-check-list)
    - [Annotated Tasks in Comments](#annotated-tasks-in-comments)
    - [Conversion from ODT to AsciiDoc](#conversion-from-odt-to-asciidoc)

<!-- /MarkdownTOC -->

-----

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
    + [`manual_17.asciidoc`][man 17] — _Glossary_

### Transcripts and Compiler Logs Sources

In order to auto-generate the compiler output and game transcripts shown in some places of the Manual, some ALAN source adventures are provided.
The idea is to ensure that compiler output and code examples transcripts provided in the _Manual_ will always reflect the current status of the Alan compiler and interpreter.

- [`/src_scripts/`](./src_scripts/):
    + [`ZILexample.alan`](./src_scripts/ZILexample.alan) — source adventure to recreate original compiler log of _F.1_.
    + [`ZILexample.bat`](./src_scripts/ZILexample.bat) — batch to update compiler log.
    + [`ZILexample.log`](./src_scripts/ZILexample.log) — Compiler log shown in "_[F.1. Format of messages]_".

Currently, the output of those scripts is manually pasted into the _Manual_ AsciiDoc sources.
For more info, see:

- [`/src_scripts/README.md`](./src_scripts/README.md).

[F.1. Format of messages]: https://htmlpreview.github.io/?https://github.com/alan-if/alan-docs/blob/master/manual/manual.html#_format_of_messages "Click for a live HTML preview of 'F.1. Format of messages'"

## Conversion Scripts

Under Windows:

- [`BUILD_ALL.bat`][BUILD_ALL.bat] — convenience batch to invoke all conversion scripts at once.
- [`HTML_BUILD.bat`][HTML_BUILD.bat] — batch script to create `manual.html` document (single file document).
- [`PDF_BUILD.bat`][PDF_BUILD.bat] — batch script to create `manual.pdf` document (currently ignored in repository).

Bash scripts for Linux, macOS or Bash for Windows:

- [`html_build.sh`][html_build.sh] — bash script to create `manual.html` document (single file document).
- [`pdf_build.sh`][pdf_build.sh] — bash script to create `manual.pdf` document (currently ignored in repository).


> __PDF CONVERSION NOTE__ — The [`PDF_BUILD.bat`][PDF_BUILD.bat] script now uses [asciidoctor-fopub] to create the PDF version of the Manual. You'll need to setup it up on your machine and add it to your system Path in order to run the conversion script.
>
> See: [Instructions on setting up asciidoctor-fopub].

[Instructions on setting up asciidoctor-fopub]: ../README.md#asciidoctor-fopub

## Converted Manual

The _Alan Manual_ is also available in converted format:

- [`manual.html`](./manual.html) — HTML5 ([HTML Live Preview]).
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

<!---------------------------------------------------------------------------->

# Document Status

The original _Alan Manual_ (version 3.0beta5) has been fully ported from ODT to AsciiDoc.

This is the [`beta7-prep` branch][beta7-prep], where the _Manual_ contents are being updated to include new features that will be available with the upcoming Alan Beta7 release (currently available only in [Alan development snapshots]).

When Beta7 will be released, the `beta7-prep` branch will be squashed into `master` and the AsciiDoc port of the _Alan Manual_ will officially replace the old ODT-based version.

For more info on the pending tasks for the upcoming _Alan Manual_ release, see:

- [Milestones » Alan Beta7] — Integrate updates to the _ALAN Manual_ contents to match the upcoming beta7 release.
- [Project » New Alan Manual Release] — Pending tasks before the 1st release of the new _ALAN Manual_ from AsciiDoc.

[beta7-prep]: https://github.com/alan-if/alan-docs/tree/beta7-prep/manual

[Milestones » Alan Beta7]: https://github.com/alan-if/alan-docs/milestone/10

[Project » New Alan Manual Release]: https://github.com/alan-if/alan-docs/projects/1

## Pending Tasks and Issues

Here are some of the major pending tasks and issues with the new AsciiDoc version of the _Alan Manual_...

### Common Issues

Issues affecting the overall _Manual_, in all formats:

- [ ] __Missing header metadata__ — (See [Issue #8][i8]) This could affect distribution of the _Alan Manual_ on eBooks platforms, due to unclear copyright and lack of essential metadata for cataloguing and legal purposes.

[i8]: https://github.com/alan-if/alan-docs/issues/8 "Issue #8 — Manual Info & Metadata"

### Issues With HTML Version

Issues affecting only the HTML version of the _Manual_:

- [ ] __Highlight not supported__ — (See [Issues #50][i50] and [#36][i36]) Currently the _Alan Manual_ relies on __[highlight.js]__ for syntax highlighting, which needs to be included by the HTML document for in-browser dynamic highlighting, whereas we'd prefer to use André Simon's __[Highlight]__ instead, which works statically and doesn't require a JS module in the final HTML.

    Unfortunately, the Highlight extension for [Asciidoctor] doesn't currently support call-outs, which are present in a couple of examples in the _Manual_. To fix this, we need someone fluent in Ruby to help us by re-writing the Highlight extension from scratch, using the new Asciidoctor API 2.0 (it doesn't look like Asciidoctor is going to invest energy in Highlight, even though it's one of the oldest highlighters in the scene, with more syntaxes then others and possibly the easiest to use).

    The disadvantages of using highlight.js include:

    + __Overhead__ — The code in the document is highlighted dynamically, after the contentes are loaded in the browser, which can take a long time since the _Manual_ is currently a single huge document.
    + __Not Fully Standalone__ — Currently, the HTML document requires a custom highlight.js build to provide syntax highlighting ([`../_assets/hjs/highlight.min.js`][hjs]), which means it's not fully standalone — decoupling the HTML doc from the JavaScript package would break syntax highlighting.
    + __No CHM Support__ — Creation of a CHM Help version of the _Manual_ is not going to support highlight.js, due to the WebControl defaulting to IE7 mode (See [Rick Strahl's excellent article on the topic]).

[i50]: https://github.com/alan-if/alan-docs/issues/50 "Issue #50 — ALAN Manual: Switch to Highlight"
[i36]: https://github.com/alan-if/alan-docs/issues/36 "Issue #36 — Enable Callouts in AsciiDoc Extension for Highlight"

[Rick Strahl's excellent article on the topic]: https://weblog.west-wind.com/posts/2011/may/21/web-browser-control-specifying-the-ie-version "Read the article 'Web Browser Control & Specifying the IE Version'"

### Issues With PDF Version

Issues affecting only the PDF version of the _Manual_:

- [ ] __No Cover Design__ — (See [Issue #54][i54]) We still need to desgin a front cover page for the _Alan Manual_, and then setup up the DocBook XSL template to use the cover. Currently, the PDF document has a cover of sorts, relying on the document fonts and the Alan logo, but replacing it with an _ad hoc_ image (whole-page sized) would provide a better cover.


[i54]: https://github.com/alan-if/alan-docs/issues/54 "Issue #54 — Add Front Cover to ALAN Manual PDF"

## Available Formats

Currently the _Alan Manual_ is available in the following output formats:

- __PDF__
- __HTML__ — as a single HTML5 document.

In the future more output formats will be supported:

- [ ] __CHM Help__ — Can be included in any Windows code editor or IDEs that supports Alan.
- [ ] __Executable eBook__ — A standalone `.exe` file (for Windows) created with an eBook compiler that takes multiple HTML pages and creates a single binary file that can be browsed offline, adding extra features not avaiable in normal browsers.
- [ ] __Website version__ — Will be included in the website of the Alan Docs project via [GitHub Pages].

Supporting the above formats will require to split the output HTML document into individual chapters (aka HTML Chunking), instead of a single huge document.
Also, the native HTML template used by Asciidoctor needs to be either tweaked or wholly replaced with a custom template.

### PDF Version

- [`manual.pdf`](./manual.pdf)

The PDF toolchain uses [asciidoctor-fopub] to convert from DocBook to PDF, and a custom DocBook XSL template.

The DocBook XSL template is now looking good and the output PDF documents are ready for distribution.

The DocBook template and its assets have now been moved to an independent repository so that other Alan projects can use it too:

- https://github.com/alan-if/alan-xsl-fopub

The template is now included in this project via Git submodules, so you'll need to make sure that the submodule is correctly initialized in your local copy of the repository.

For full instructions on how to setup the PDF toolchain and all its dependencies, see:

- https://github.com/alan-if/alan-xsl-fopub#instructions

### HTML Version

- [`manual.html`](./manual.html) — HTML5 ([HTML Live Preview]).

The _Manual_ relies on Asciidoctor's native HTML backend for building the HTML version, so you won't need to install any extra tools beside [Asciidoctor].

The HTML document is not fully standalone yet, for it requires some external stylesheets and the highlight.js package in order to visualize correctly and perform dynamic syntax highlighting.

External files, added by us:

- [`../_assets/hjs/highlight.min.js`][hjs] — Custom [highlight.js] build.
- [`../_assets/hjs/styles/github.min.css`][hjs css] — Our CSS stylesheet for [highlight.js] code and custom template styles.

External files required by Asciidoctor native HTML template:

- [Google fonts: Open Sans + Noto Serif + Droid Sans Mono](https://fonts.googleapis.com/css?family=Open+Sans:300,300italic,400,400italic,600,600italic%7CNoto+Serif:400,400italic,700,700italic%7CDroid+Sans+Mono:400,700)
- [`font-awesome.min.css`](https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css) — [Font Awesome] CSS stylesheet.

[hjs]: ../_assets/hjs/highlight.min.js "View source file"
[hjs css]: ../_assets/hjs/styles/github.min.css "View source file"

## Syntax Highlighting

The HTML version uses __[highlight.js]__ for syntax highlighting the code in the _Manual_, while the PDF version uses __[XSLTHL]__ (included in __[asciidoctor-fopub]__).

<!---------------------------------------------------------------------------->

# Building The Manual

The repository already contains pre-built HTML and PDF versions of the _Alan Manual_:

- [`manual.html`](./manual.html)— __[Click here for an HTML Live Preview][HTML Live Preview]__
- [`manual.pdf`](./manual.pdf)

If you want to convert the _Manual_ yourself, below are some instructions on how to do it, and which dependencies are required.

To build both the HTML and the PDF  _Manual_ under Windows, open a command prompt in this folder and type:

```batch
BUILD_ALL.bat
```

Under Linux or macOS, you'll have to open a Bash terminal in this folder and manually run the following scripts:

```bash
./html_build.sh
./pdf_build.sh
```

## System Requirements

In order to build the _Manual_ to any format you'll need to install [Ruby] and the [Asciidoctor] gem:

- https://www.ruby-lang.org
- https://asciidoctor.org

### Installing Ruby on Windows

Under Windows OS, you can install Ruby two ways:

1. via the [Ruby Installer for Windows].
2. via the [Chocolatey]/[Chocolatey GUI] package manager, which will simplify installing and updating the [Ruby Installer for Windows]:
    + [Chocolatey] — The package manager for Windows.
    + [Chocolatey GUI] —  A nice GUI on top of the Chocolatey command line tool.
    + [Chocolatey » Ruby] — Ruby package for Chocolatey (installs [Ruby Installer for Windows]).

The latter solution is the advised way to proceed because (although it requires to first [setup Chocholatey] and its GUI) it will greatly simplify keeping Ruby and all its dependencies always up to date with a single click.

[setup Chocholatey]: https://chocolatey.org/install "View instructions on how to install Chocolatey"

## PDF Toolchain Setup

The PDF toolchain requires [asciidoctor-fopub] to convert from DocBook to PDF.

The DocBook XSL template is now looking good and the output PDF documents are ready for distribution.

The DocBook template and its assets have now been moved to an independent repository so that other Alan projects can use it too:

- https://github.com/alan-if/alan-xsl-fopub

The template is now included in this project via Git submodules. See the [_DocBook XSL Stylesheets_](#docbook-xsl-stylesheets) section for more details.

Once the PDF toolchain is correctly setup, you can then build the PDF document via the following scripts:

- [`PDF_BUILD.bat`][PDF_BUILD.bat] — batch script for Windows.
- [`pdf_build.sh`][pdf_build.sh] — bash script for Linux and macOS.


## HTML Toolchain Setup

The _Manual_ relies on Asciidoctor's native HTML backend for building the HTML version, so you won't need to install any extra tools beside [Asciidoctor].

Once [Asciidoctor] is correctly setup, you can then build the HTML document by using the following scripts:

- [`HTML_BUILD.bat`][HTML_BUILD.bat] — batch script for Windows.
- [`html_build.sh`][html_build.sh] — bash script for Linux and macOS.

<!---------------------------------------------------------------------------->

# Development

The _Alan Manual_ is being actively maintained, there's always room for improvements and new contents.
If you wish to contribute to its development, read the rest of this document and check the currently pending tasks on the repository Dashboard (issues, milestones and projects):

- [Isses » Alan Manual] — Issues relating to "The Alan Language Manual".
- [Milestones » Alan Manual Improve Contents] — Fix and improve current contents of the _ALAN Manual_.
- [Milestones » Appendix G: Localization] — Update _[Appendix G: Localization]_. WIP in branch [AppG-i18n].
- [Project » Alan Manual (dev)] — Planning future changes and improvements to the _ALAN Manual_.

[Appendix G: Localization]: https://htmlpreview.github.io/?https://github.com/alan-if/alan-docs/blob/AppG-i18n/manual/manual.html#_localization "Live preview of the Appendix WIP in AppG-i18n branch"

[AppG-i18n]: https://github.com/alan-if/alan-docs/tree/AppG-i18n "View branch"

[Milestones » Alan Manual Improve Contents]: https://github.com/alan-if/alan-docs/milestone/12
[Milestones » Appendix G: Localization]: https://github.com/alan-if/alan-docs/milestone/11
[Project » Alan Manual (dev)]: https://github.com/alan-if/alan-docs/projects/6
[Isses » Alan Manual]: https://github.com/alan-if/alan-docs/issues?q=is%3Aopen+is%3Aissue+label%3A%22%3Abook%3A+Alan+Manual%22

## Development Cycle

The _Manual_ in `master` branch will always represent the latest Alan release (currently, Beta releases), whereas further development occurs in dedicated branche reflecting the status of the latest [Alan development snapshots]  (i.e. Alpha releases), which will be merged into `master` branch once the next beta release is ready.

## Maintainers Check-list

Whenever a new Alan Beta version is released, before merging the updated _Manual_ into `master` branch:

- The autogenerated scripts in [`src_scripts/`](./src_scripts/) should be updated again using the new Alan SDK binaries, and the generated output added to the _Manual_ contents in order for it to reflect the latest SDK.

## Annotated Tasks in Comments

I've also annotated in comments various pending tasks as I've encountered during the proofreading stage. These tasks vary from errors which need to be corrected ASAP to improvements and ideas that could be handled sometime in the future.

As a convention, all commented annotations inside document source files will begin with "`// @`" to allow finding them quickly via Search functionality (eg, "`// @TODO:`", "`// @FIXME:`", "`// @NOTE`", "`// @CHECKME`", "`@IMPROVE`", etc.).

In some tasks I've also added either `@thoni56` or `@tajmone`, to indicate the user that should address the issue. As a rule, I've used `@tajmone` in annotated tasks which I'll need to address at some point in the future, acting as reminders; and I've used `@thoni56` for tasks that require Thomas' attention or approval.

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
     -o manual.asciidoc
```

Although some styles were lost in the process, the final ADoc was a rather good starting point.
The single source document was then split into multiple files according to chapters and appendixes.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>


[GitHub & BitBucket HTML Preview]: http://htmlpreview.github.io
[GitHub Pages]: https://pages.github.com/ "Learn more about GitHub Pages"

<!-- Alan -->

[Alan development snapshots]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots "Visit the development snapshots page on Alan website"
[alan-xsl-fopub]: https://github.com/alan-if/alan-xsl-fopub "Visit the alan-xsl-fopub repository on GitHub"

<!-- 3r party tools -->

[Font Awesome]: https://fontawesome.com/ "Visit Font Awesome website"
[highlight.js]: https://highlightjs.org/ "Visit highlight.js website"
[Highlight]: http://www.andre-simon.de/ "Visit Highlight website"
[XSLTHL]: https://sourceforge.net/projects/xslthl/ "Visit the XSLTHL project on SourceForge"

<!-- Alan-Docs Links --------------------------------------------------------->

[HTML Live Preview]: http://htmlpreview.github.io/?https://github.com/alan-if/alan-docs/blob/master/manual/manual.html "Preview 'The Alan Manual' via GitHub & BitBucket HTML Preview"

<!-- AsciiDoctor ------------------------------------------------------------->

[Asciidoctor]: https://asciidoctor.org/ "Visit AsciiDoctor website (Ruby implementation)"
[Asciidoctor PDF]: https://github.com/asciidoctor/asciidoctor-pdf "Visit the Asciidoctor PDF repository"
[asciidoctor-fopub]: https://github.com/asciidoctor/asciidoctor-fopub "Visit the asciidoctor-fopub repository"

[AsciiDoc Python]: http://asciidoc.org/ "Visit AsciiDoc website (original Python implementation)"

[Issue #2106]: https://github.com/asciidoctor/asciidoctor/issues/2106 "Issue #2106 — Add extension point for integrating an alternative source highlighter"

[Rouge]: http://rouge.jneen.net/ "Visti Rouge website (code highlighter in Ruby)"

<!-- Chocolatey -->

[Chocolatey]: https://chocolatey.org/ "Visit Chocolatey website"
[Chocolatey GUI]: https://chocolatey.org/packages/ChocolateyGUI "See the Chocolatey GUI frontend (a Chocolatey package)"
[Chocolatey » Ruby]: https://chocolatey.org/packages/ruby "See the Ruby package for Chocolatey"

<!-- Ruby -->

[Ruby]: https://www.ruby-lang.org "Visit the Ruby Language website"
[Ruby Installer for Windows]: https://rubyinstaller.org/ "Visit the Ruby Installer for Windows website"

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
[man 17]: ./manual_17.asciidoc "Source file of Glossary"


[BUILD_ALL.bat]:  ./BUILD_ALL.bat  "Batch script to invoke all Manual conversion scripts."
[HTML_BUILD.bat]: ./HTML_BUILD.bat "Batch script to convert Alan Manual to a single-file HTML5 document."
[PDF_BUILD.bat]: ./PDF_BUILD.bat   "Batch script to convert Alan Manual to PDF document."

[html_build.sh]: ./html_build.sh   "Bash script to convert Alan Manual to a single-file HTML5 document."
[pdf_build.sh]:  ./pdf_build.sh    "Bash script to convert Alan Manual to PDF document."


[Cross-References.md]: ./Cross-References.md "Look-up table for cross-reference links reconstruction"

[Index txt]: ./Manual_Index.txt
[TOC txt]:   ./Manual_TOC.txt

<!-- SCREENSHOTS -->

[PDF footnotes]: ./_pdf-footnotes.problem.png "Screenshots of how footnotes inside a Table are not rendered correctly with Asciidoctor PDF backend"

<!-- Document Cross-References ----------------------------------------------->

[PDF Toolchain Setup]: #pdf-toolchain-setup "Jump to the 'PDF Toolchain Setup' section"
[HTML Toolchain Setup]: #html-toolchain-setup "Jump to the 'HTML Toolchain Setup' section"
[Syntax Highlighting]: #syntax-highlighting "Jump to the 'Syntax Highlighting' section"

<!-- EOF -->