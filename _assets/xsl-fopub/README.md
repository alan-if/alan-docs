#  Alan Manual DocBook XSL Stylesheets

Customized XSL stylesheets for the PDF conversion of the Alan Manual via [asciidoctor-fopub].

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [About The XSL Stylesheets](#about-the-xsl-stylesheets)
    - [Customizations](#customizations)
        - [Syntax Highlighting](#syntax-highlighting)
    - [Tech Specs](#tech-specs)
- [License](#license)

<!-- /MarkdownTOC -->

-----

# About The XSL Stylesheets

The original XSL stylesheets in this folder tree were taken from the "`/src/dist/docbook-xsl/`" folder of the [asciidoctor-fopub] project, Copyright (C) 2013 Dan Allen (MIT License):

- https://github.com/asciidoctor/asciidoctor-fopub/tree/9afeab8/src/dist/docbook-xsl

They were subsequently edited by Tristano Ajmone to adapt them to the styling needs of the _Alan Manual_ project. The adaptation work may include deleting some of the original files, as well as adding new ones.

## Customizations

The original stylesheets are being customized to resemble the original layout and styles of the _Alan Manaul_. The idea is that of creating a dedicated PDF template shared by all the Alan documentation.

For more details and references on customizing the template, see:

- [`DEV_NOTES.md`](./DEV_NOTES.md)


### Syntax Highlighting

The changes include the creation of an Alan language definition for the FOP syntax highlighter that ships with [asciidoctor-fopub], and setting a dedicate color scheme for Alan code examples blocks.

> _**WIP**_ — More details will be added to this document once ultimated the customization of the Alan syntax and scheme.

## Tech Specs

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

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[asciidoctor-fopub]: https://github.com/asciidoctor/asciidoctor-fopub


<!-- EOF -->
