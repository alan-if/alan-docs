# Typography and Syntax Highlighting Tests

Various documents for previewing and testing templates styles across the supported output formats.

> __WIP NOTE__ — The tests are now progressing toward completion.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [The Documents](#the-documents)
    - [Preview Document](#preview-document)
    - [Test Documents](#test-documents)
- [Folder Contents Notes](#folder-contents-notes)
- [Tech Notes](#tech-notes)
    - [Backends and Highlighters](#backends-and-highlighters)
- [TODO](#todo)
    - [General Chores](#general-chores)
    - [Scripts](#scripts)
    - [Preview Document](#preview-document-1)

<!-- /MarkdownTOC -->

-----

# The Documents

Next to each source document are the links to its HTML and PDF version.

## Preview Document

- [`styles-preview.asciidoc`][Prev adoc] ([`.html`][Prev html]|[`.pdf`][Prev pdf])

This document offers a comprehensive preview of the templates used for Alan documentation, offering samples of how fonts, typography, AsciiDoc elements, custom styles and syntax highlighting will be rendered and styled in the final documentation, allowing to compare quality and differences across all the supported output formats.

## Test Documents

- [`tests-syntax-highlighting.asciidoc`][HL adoc] ([`.html`][HL html]|[`.pdf`][HL pdf]) — test syntax highlighting and styling of other verbatim blocks.
- [`tests-typography.asciidoc`][Typ adoc] ([`.html`][Typ html]|[`.pdf`][Typ pdf]) — test fonts and tests-typography.

# Folder Contents Notes

Files with `*.adoc` extension are AsciiDoc include files shared by multiple docs. To simplify their management, they follow this naming convention:

- `_inc_*` prefix — the file is included in every document, always.


# Tech Notes

## Backends and Highlighters

For the HTML5 format we're using [Asciidoctor]'s native HTML backend, and [highlight.js] for syntax highlighting.

For the PDF format we're using the [asciidoctor-fopub] backend ([Apache™ FOP based]), and [XSLTHL] for syntax highlighting.

Custom Alan syntax definitions have been created to enable syntax highlighting of Alan code.

# TODO

The preview and tests documents are not yet completed, here are some pending tasks.

## General Chores

- [x] __ADD PREVIEW DOC__. This doc should provide samples of all styles (custom and not) using real case examples from the Manual, show fonts specimen and syntax highlighting sample.
- [ ] __TEST DOCS__. Separate between preview and styles doc:
    + [x] Add "`test-`" prefix to all test docs.
    + [ ] __ALAN HIGHLIGHTING TESTS__. New doc for extensive syntax highlighting tests for Alan syntax only, using custom color scheme via CLI attributes overrides (need strong colors for the defaults are low contrast and difficult to distinguish).
- [ ] __INCLUDE FILES__:
    + [x] __custom attributes__. move them all in a one file shared by all docs.

## Scripts

- [ ] __TWEAK BUILD SCRIPT__. The introduction of cutom attributes via CLI will require per-file invocations instead of FOR loops, since since docs will have different parameters.
- [ ] __BUILD ALL__. Split the current BUILD script in two separate scripts, one for each format, and then just invoke them from here: 
    + [ ] __HTML BUILD__. Add separate script for building only html version of the docs, to simplify testing (PDF creation takes too long).
    + [ ] __PDF BUILD__. Add separate script to build PDFs.


## Preview Document

`styles-preview.asciidoc`:

- [ ] Add example of native AsciiDoc elements:
    + [ ] sample INDEX (for PDF preview).
    + [ ] footnotes.
    + [ ] tables.
    + [ ] admonitions.
- [ ] Add samples of custom styles (real snippets from Manual):
    + [ ] `role=commentary`
    + [ ] shell listings
    + [ ] game transcript
    + [ ] Alan code
    + [ ] BNF
- [ ] Add color swatches and palettes for the various color schemes used in the template.



<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[XSLTHL]: https://sourceforge.net/projects/xslthl/ "Visit XSLTHL project at Sourceforge"
[asciidoctor-fopub]: https://github.com/asciidoctor/asciidoctor-fopub "Visit asciidoctor-fopub repository on GitHub"
[Asciidoctor]: https://asciidoctor.org "Visit Asciidoctor website"
[Apache™ FOP based]: https://xmlgraphics.apache.org/fop/2.1/ "Visit Apache™ FOP website"
[highlight.js]: https://highlightjs.org/ "Visit highlight.js website"

<!-- project files -->

[Typ adoc]: ./tests-typography.asciidoc
[Typ html]: ./tests-typography.html
[Typ pdf]:  ./tests-typography.pdf

[HL adoc]: ./tests-syntax-highlighting.asciidoc
[HL html]: ./tests-syntax-highlighting.html
[HL pdf]:  ./tests-syntax-highlighting.pdf

[Prev adoc]: ./styles-preview.asciidoc
[Prev html]: ./styles-preview.html
[Prev pdf]:  ./styles-preview.pdf

<!-- EOF -->
