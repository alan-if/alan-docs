# The Alan Beginner's Guide

AsciiDoc reconstruction of _Alan 3 Beginner's Guide_ by Michael Arnaud, 2006 ([WIP][TODO]).

__[Click here for an HTML Live Preview][HTML Live Preview]__

> __NOTE__ — The AsciiDoc files in this project are intended for [Asciidoctor], the Ruby implementation of AsciiDoc; some required features might not be available in [AsciiDoc Python]!


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Original Guide Documents](#original-guide-documents)
- [Folder Contents](#folder-contents)
    - [Guide Source Files](#guide-source-files)
    - [Conversion Scripts](#conversion-scripts)
    - [Converted Guide](#converted-guide)
- [DocBook XSL Stylesheets](#docbook-xsl-stylesheets)
- [Document Status](#document-status)
- [Document History](#document-history)

<!-- /MarkdownTOC -->

-----


# Original Guide Documents

The original files of the _Alan Beginner's Guide_ used as base document are available in:

- [`../_assets-src/original-docs/`][original-docs]
    + [`/images/`][images] — original images.
    + [`alanguide.html`][alanguide.html] — survived HTML version of original document.
    + [`alanguide.adoc`][alanguide.adoc] — AsciiDoc port of the HTML version.

# Folder Contents

## Guide Source Files

- [`alanguide.asciidoc`][guide]

## Conversion Scripts

- [`BUILD_ALL.bat`][BUILD_ALL.bat] — convenience batch to invoke all conversion scripts at once.
- [`HTML_BUILD.bat`][HTML_BUILD.bat] — batch script to create `alanguide.html` document (fully standalone).
- [`PDF_BUILD.bat`][PDF_BUILD.bat] — batch script to create `alanguide.pdf` document (currently ignored in repository).

> __PDF CONVERSION NOTE__ — The [`PDF_BUILD.bat`][PDF_BUILD.bat] script now uses [asciidoctor-fopub] to create the PDF version of the Manual. You'll need to setup it up on your machine and add it to your system Path in order to run the conversion script.
> 
> See: [Instructions on setting up asciidoctor-fopub].


## Converted Guide

- [`alanguide.html`][guide html] — Beginner's Guide converted to standalone HTML5 ([HTML Live Preview]).

An [HTML Live Preview] of the converted document is available via [GitHub & BitBucket HTML Preview] online service.

# DocBook XSL Stylesheets

For the conversion to PDF (from DocBook 5), asciidoc-fopub is set to use the customized XSL stylesheets in this folder:

- [`../_assets/xsl-fopub/`](../_assets/xsl-fopub/)

These stylesheets were adapted from the [asciidoctor-fopub] project, Copyright (C) 2013 Dan Allen ([MIT License](./manual-xsl/LICENSE)).


-------------------------------------------------------------------------------

# Document Status

- [`TODO.md`][TODO]

The AsciiDoc reconstruction of this document takes on from where Thomas Nilefalk left (see [Document History] below).

The AsciiDoc formatting still needs some cleaning up, and the contents relating to the Standard Library need to be updated because they refer to the old version of the Library. Also, the document should be adapted to the [styling conventions] adopted in this project.

For more details on the pending tasks and guidelines on the adaptation workflow, see the [`TODO.md`][TODO] document.


# Document History

The original source document of the _Alan 3 Beginner's Guide_ was lost, but the [HTML converted version][alanguide.html] survived on Alan website ([still available at this link][alanguide www]). In 2014, Thomas Nilefalk [converted to AsciiDoc][alanguide.adoc] the survived HTML version and began to clean up and restyle the ported document and update its contents.

The original AsciiDoc document was taken from [Alan repository], commit [`fb81645`][fb81645]:

- https://bitbucket.org/alanif/alan/src/fb81645/doc/guide/

The HTML version was [taken from the Alan website][alanguide www].

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

[BUILD_ALL.bat]:  ./BUILD_ALL.bat  "Batch script to invoke all the Alan Guide conversion scripts."
[HTML_BUILD.bat]: ./HTML_BUILD.bat "Batch script to convert the Alan Guide to a single-file standalone HTML5 document."
[PDF_BUILD.bat]: ./PDF_BUILD.bat "Batch script to convert the Alan Guide to PDF document."
[TODO]: ./TODO.md "View the TODO document"

<!-- original guide files -->

[original-docs]: ../_assets-src/original-docs/ "Navigate to folder"
[images]: ../_assets-src/original-docs/images/ "Navigate to folder"
[alanguide.adoc]: ../_assets-src/original-docs/alanguide.adoc "View source file"
[alanguide.html]: ../_assets-src/original-docs/alanguide.html "View source file"


<!-- In-Doc Croos References -->

[Document History]: #document-history "Jump to the section about the history of this document"

<!-- EOF -->
