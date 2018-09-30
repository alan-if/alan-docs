# Typography and Syntax Highlighting Tests

This folder contains various documents for previeweing and testing template styles across the supported output formats.

> __WIP NOTE__ — The tests are now progressing toward completion.

This folder is for testing syntax highlighting and styling of other verbatim blocks in Alan documentation across the supported output formats.

# Test Documents

Next to each source document are the links to the HTML and PDF version:

- [`syntax-highlighting.asciidoc`][HL adoc] ([`.html`][HL html]|[`.pdf`][HL pdf]) — test syntax highlighting and styling of other verbatim blocks.
- [`typography.asciidoc`][Typ adoc] ([`.html`][Typ html]|[`.pdf`][Typ pdf]) — test fonts and typography.

## Backends and Highlighters

For the HTML5 format we're using [Asciidoctor]'s native HTML backend, and [highlight.js] for syntax highlighting.

For the PDF format we're using the [asciidoctor-fopub] backend ([Apache™ FOP based]), and [XSLTHL] for syntax highlighting.

Custom Alan syntax definitions have been created to enable syntax highlighting of Alan code.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[XSLTHL]: https://sourceforge.net/projects/xslthl/ "Visit XSLTHL project at Sourceforge"
[asciidoctor-fopub]: https://github.com/asciidoctor/asciidoctor-fopub "Visit asciidoctor-fopub repository on GitHub"
[Asciidoctor]: https://asciidoctor.org "Visit Asciidoctor website"
[Apache™ FOP based]: https://xmlgraphics.apache.org/fop/2.1/ "Visit Apache™ FOP website"
[highlight.js]: https://highlightjs.org/ "Visit highlight.js website"

<!-- project files -->

[Typ adoc]: ./typography.asciidoc
[Typ html]: ./typography.html
[Typ pdf]:  ./typography.pdf

[HL adoc]: ./syntax-highlighting.asciidoc
[HL html]: ./syntax-highlighting.html
[HL pdf]:  ./syntax-highlighting.pdf

<!-- EOF -->
