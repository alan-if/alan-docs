#  Alan Manual DocBook XSL Stylesheets

Customized XSL stylesheets for the PDF conversion of the Alan Manual via [asciidoctor-fopub].

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [About The XSL Stylesheets](#about-the-xsl-stylesheets)
    - [Customizations](#customizations)
        - [Syntax Highlighting](#syntax-highlighting)
    - [Useful Links](#useful-links)
- [License](#license)
- [Reference Links](#reference-links)
    - [Asciidoctor Toolchain for PDF](#asciidoctor-toolchain-for-pdf)
    - [DocBook](#docbook)
    - [DocBook XSL Stylesheets](#docbook-xsl-stylesheets)
    - [XSLTHL — Syntax Highlighting](#xslthl-%E2%80%94-syntax-highlighting)

<!-- /MarkdownTOC -->

-----

# About The XSL Stylesheets

The original XSL stylesheets in this folder tree were taken from the "`/src/dist/docbook-xsl/`" folder of the [asciidoctor-fopub] project, Copyright (C) 2013 Dan Allen (MIT License):

- https://github.com/asciidoctor/asciidoctor-fopub/tree/9afeab8/src/dist/docbook-xsl

They were subsequently edited by Tristano Ajmone to adapt them to the styling needs of the _Alan Manual_ project. The adaptation work may include deleting some of the original files, as well as adding new ones.

## Customizations

The original stylesheets are being customized to resemble the original layout and styles of the _Alan Manaul_. The idea is that of creating a dedicated PDF template shared by all the Alan documentation.

### Syntax Highlighting

The changes include the creation of an Alan language definition for the FOP syntax highlighter that ships with [asciidoctor-fopub], and setting a dedicate color scheme for Alan code examples blocks.

> _**WIP**_ — More details will be added to this document once ultimated the customization of the Alan syntax and scheme.

## Useful Links

- [DocBook XSL: The Complete Guide]:
    + [Adding a font]
    + [Syntax highlighting]
- [DocBook XSL Stylesheets: Reference Documentation]:
    + [`highlight.source`][highlight.source]
- [XSLTHL Wiki]:
    + [Syntax Highlighters] (syntax definitions specs)
- [Schema Central » XSL-FO 1.1]
    + [`fo:border-style`][fo:border-style]

# License

- [`LICENSE`](./LICENSE)

All files in this directory tree are released under the MIT License:

```
The MIT License

Copyright (C) 2018 Tristano Ajmone
Copyright (C) 2013 Dan Allen

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```


-------------------------------------------------------------------------------

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

[FOP]: https://xmlgraphics.apache.org/fop/ "Visit the Apache™ FOP Project"

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
