# Styles Tests and Previews

This folder contains sample documents and build scripts to create sample documents in all supported backends and with all supported syntax highlighters, to allow developers to inspect that all styles and formatting features are rendered consistently across different document types.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Source Documents](#source-documents)
- [Output Documents](#output-documents)
- [Build Scripts](#build-scripts)

<!-- /MarkdownTOC -->

-----

# Source Documents

- [`typography.asciidoc`][typo adoc]
- [`styles-preview.asciidoc`][styles adoc]
- [`code.asciidoc`][code adoc]

# Output Documents

For each source file `<fname>.asciidoc` the build scripts will produce:

- HTML Format:
    + `<fname>_rouge.html` — using [Rouge] for code highlighting.
    + `<fname>_highlight.html` — using [Highlight] for code highlighting.
    + `<fname>_hljs.html` — using [highlight.js] for code highlighting.

# Build Scripts

- [`html_build.sh`][html_build.sh] — all OSs.

> __NOTE__ — (2026/08/15) The PDF build scripts were removed with the rest of the
> DocBook/FOP toolchain. These are HTML styling tests; if PDF styling ever needs
> testing again, model the script on [`manual/pdf_build.sh`](../../manual/pdf_build.sh).

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>


[highlight.js]: https://highlightjs.org/ "Visit highlight.js website"
[Highlight]: http://www.andre-simon.de/doku/highlight/en/highlight.php "Visit Highlight website"
[Rouge]: http://rouge.jneen.net "Visit Rouge website"


<!-- Project Files -->

[typo adoc]: ./typography.asciidoc
[styles adoc]: ./styles-preview.asciidoc
[code adoc]: ./code.asciidoc

[html_build.sh]: ./html_build.sh


<!-- EOF -->
