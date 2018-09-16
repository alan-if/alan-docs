# XSL Dev Notes

Some notes and useful links for working on FOP/XSL customization of the PDF template.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Tech Specs](#tech-specs)
- [Useful Links](#useful-links)
- [Reference Links](#reference-links)
    - [Asciidoctor Toolchain for PDF](#asciidoctor-toolchain-for-pdf)
    - [DocBook](#docbook)
    - [DocBook XSL Stylesheets](#docbook-xsl-stylesheets)
    - [XSLTHL — Syntax Highlighting](#xslthl-%E2%80%94-syntax-highlighting)

<!-- /MarkdownTOC -->

-----

# Tech Specs

Asciidoctor-fopub uses the following components versions:



| Software Project            | Version |
| :-------------------------- | :------ |
| Apache FOP                  | 2.1     |
| DocBook XSL                 | 1.78.1  |
| Apache Commons XML Resolver | 1.2     |
| Xalan                       | 2.6.0   |
| JEuclid                     | 3.1.9   |
| XSLTHL                      | 2.1.0   |
| Gradle                      | 2.0     |


# Useful Links

- [Apache™ FOP v2.1]:
    + [FOP Configuration]
    + [FOP Fonts]
- [XSL FO reference] — by Miloslav Nic.
- _[Practical Formatting Using XSL-FO]_ — free eBook by Crane Softwrights Ltd.
- [DocBook XSL: The Complete Guide]:
    + [Adding a font] — tutorial (FOP v0.93)
    + [Syntax highlighting]
- [DocBook XSL Stylesheets: Reference Documentation]:
    + [`highlight.source`][highlight.source]
- [XSLTHL Wiki]:
    + [Syntax Highlighters] (syntax definitions specs)
- [Schema Central » XSL-FO 1.1]
    + [`fo:border-style`][fo:border-style]
- [Adobe: Font technical notes]

# Reference Links

- [Wikipedia » XSLT][WP XSLT] (Extensible Stylesheet Language Transformations)

## Asciidoctor Toolchain for PDF

- [asciidoctor-fopub] — at GiHub.

Dependencies:

- [Apache™ FOP][FOP] (Formatting Objects Processor)
- [XSLTHL]  (XSLT syntax highlighting) — at Sourceforge.
- DocBook XSL
- Apache Commons XML Resolver
- Xalan
- JEuclid
- Gradle


## DocBook

- [DocBook 5: The Definitive Guide] — (DocBook 5.0) by Norman Walsh, online book.
- [DocBook Wiki] — (rebooted) on GitHub.
- [Wikipedia » DocBook][WP DocBook]


## DocBook XSL Stylesheets

- [DocBook XSL: The Complete Guide] — (4th Edition) by Bob Stayton, online book.
- [DocBook XSL Stylesheets: Reference Documentation] — by Norman Walsh, online book.
- [Wikipedia » DocBook XSL][WP DocBook XSL]
- https://github.com/docbook/xslt20-stylesheets
- https://github.com/docbook/xslt10-stylesheets

## XSLTHL — Syntax Highlighting

- [XSLTHL]  (XSLT syntax highlighting) — at Sourceforge.
- [XSLTHL Wiki] — at Sourceforge.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[asciidoctor-fopub]: https://github.com/asciidoctor/asciidoctor-fopub

<!-- fonts -->

[Adobe: Font technical notes]: https://www.adobe.com/devnet/font.html

<!-- Apache FOP -->

[FOP]: https://xmlgraphics.apache.org/fop/ "Visit the Apache™ FOP Project"
[Apache™ FOP v2.1]: https://xmlgraphics.apache.org/fop/2.1/

[FOP Configuration]: https://xmlgraphics.apache.org/fop/2.1/configuration.html
[FOP Fonts]: https://xmlgraphics.apache.org/fop/2.1/fonts.html

<!-- XSL FO -->

[XSL FO reference]: http://zvon.org/xxl/xslfoReference/Output/index.html
[Practical Formatting Using XSL-FO]: https://cranesoftwrights.github.io/books/pfux/index.htm "Free eBook download page: 'Practical Formatting Using XSL-FO'"

<!-- DocBook -->

[DocBook 5: The Definitive Guide]: https://tdg.docbook.org/tdg/5.0/docbook.html
[DocBook Wiki]: https://github.com/docbook/wiki/wiki

<!-- DocBook XSL Stylesheets: Reference Documentation -->

[DocBook XSL Stylesheets: Reference Documentation]: http://docbook.sourceforge.net/release/xsl/current/doc/
[highlight.source]: http://docbook.sourceforge.net/release/xsl/current/doc/fo/highlight.source.html

<!-- Misc Info Resources -->

[Schema Central » XSL-FO 1.1]: http://www.datypic.com/sc/fo11/s-fo.xsd.html
[fo:border-style]: http://www.datypic.com/sc/fo11/t-fo_border-style.html

<!-- XSLTHL -->

[XSLTHL]: https://sourceforge.net/projects/xslthl/
[XSLTHL Wiki]: https://sourceforge.net/p/xslthl/wiki/Home/
[Syntax Highlighters]: https://sourceforge.net/p/xslthl/wiki/Syntax%20Highlighters/

<!-- DocBook XSL: The Complete Guide -->

[DocBook XSL: The Complete Guide]: http://www.sagehill.net/docbookxsl/index.html
[Adding a font]: http://www.sagehill.net/docbookxsl/AddFont.html
[Syntax highlighting]: http://www.sagehill.net/docbookxsl/SyntaxHighlighting.html

<!-- Wikipedia -->

[WP DocBook]: https://en.wikipedia.org/wiki/DocBook
[WP DocBook XSL]: https://en.wikipedia.org/wiki/DocBook_XSL
[WP XSLT]: https://en.wikipedia.org/wiki/XSLT


<!-- EOF -->
