# Shared Assets Folder

This folder stores assets that are (or might be) shared by multiple documents — images, stylesheets, fonts, etc. As a rule of thumb, any assets that could be reused by other documents (present or future) should be stored within this folder tree; but if a particular asset is going to be used only by a single document, then it should be placed in that document's main folder.

# Assets Tree

- [`/adoc/`](./adoc/) — Asciidoctor extensions shared by all documents:
    + [`doc-revision.rb`](./adoc/doc-revision.rb) — fills in `revdate` and `revnumber` at build time.
- [`/pdf/`](./pdf/) — assets for the [Asciidoctor PDF] toolchain:
    + [`alan-theme.yml`](./pdf/alan-theme.yml) — fonts, colours and block styling.
    + [`alan-rouge-theme.rb`](./pdf/alan-rouge-theme.rb) — the ALAN colour scheme for Rouge; also registers the ALAN lexer.
    + [`alan-pdf-extensions.rb`](./pdf/alan-pdf-extensions.rb) — the BNF block background.
    + [`/fonts/`](./pdf/fonts/) — the fonts embedded in the PDFs.
- [`/hjs/`](./hjs/) — custom highlight.js build for Alan.
- [`/hl/`](./hl/) — assets for the Asciidoctor Highlight toolchain.
- [`/images/`](./images)
- [`/rouge/`](./rouge/) — assets for the Asciidoctor Rouge toolchain (HTML).
- [`/sh/`](./sh/) — Bash/Shell reusable scripts and modules.

> __NOTE__ — This folder used to hold `/alan-xsl-fopub/`, a submodule carrying the XSL stylesheets and fonts of the DocBook/FOP PDF toolchain. That toolchain was retired in August 2026; the fonts it provided now live in [`/pdf/fonts/`](./pdf/fonts/), and the [alan-xsl-fopub] repository itself is untouched.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[alan-xsl-fopub]: https://github.com/alan-if/alan-xsl-fopub "Visit the alan-xsl-fopub repository on GitHub"
[Asciidoctor PDF]: https://github.com/asciidoctor/asciidoctor-pdf "Visit the asciidoctor-pdf repository on GitHub"

<!-- EOF -->
