# The Alan Manual

AsciiDoc port of _The ALAN Adventure Language Reference Manual_ (WIP).

__[Click here for an HTML Live Preview][HTML Live Preview]__

> __NOTE__ — This document was created using [Asciidoctor], the Ruby implementation of AsciiDoc; some used features might not be available in [AsciiDoc Python]!


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
- [Document Status](#document-status)
- [Work Notes](#work-notes)
    - [Splitting Into Multiple Files](#splitting-into-multiple-files)
- [Conversion from ODT to AsciiDoc](#conversion-from-odt-to-asciidoc)

<!-- /MarkdownTOC -->

-----

# Folder Contents

- [`manual.asciidoc`](./manual.asciidoc) — The Alan Manual.
- [`manual.html`](./manual.html) — [HTML preview][HTML Live Preview] of The Alan Manual.
- [`Manual_TOC.txt`](./Manual_TOC.txt) — Manual TOC in plaintext (for reference).
- [`RegExs.txt`](./RegExs.txt) — frequently needed regular expressions for S&R operations.
- [`SNIPPTES.adoc`](./SNIPPTES.adoc) — useful snippets to copy and paste.


# Document Status

This is an aproximate status report and pending tasks list of the current document. As I'll keep working closer on the document, more issues/tasks are likely to come up, so task-trees that are now marked as _done_ might be reset to _undone_ as new needs come to attention.

- [ ] Document header:
    + [x] Basic info added.
    + [ ] Missing author.
    + [x] Missing license (although full license is available in Appendix I).
- [ ] Structural reconstruction:
    + [x] Reconstruct all headings/sections levels.
    + [x] Handle section numbering.
    + [x] Add special Appendix headings.
    + [x] Exclude _Appendix I_ (License) sub-headings from TOC.
    + [ ] Fix all cross-reference links (_after_ splitting into multiple files!).
    + [ ] Rebuild _Index_
- [ ] Add missing images:
    + [x] Alan logo (cover)
- [x] Global styles reconstruction:
    + [x] Alan code examples:
        * [x] Paste-over original examples, fix curly quotes, and indent them properly.
        * [x] Convert them to code blocks (`[source,alan]`).
    + [x] Alan EBNF blocks:
        * [x] Paste-over original EBNF, fix curly quotes, and indent them properly.
        * [x] Convert them to code blocks (`[source,ebnf]`).
    + [x] Game transcripts:
        + [x] Add bold style to room descriptions.
        + [x] Convert them to example blocks (`[EXAMPLE,role="gametranscript"]`).
    + [x] Fix notes (as Admonition notes).
    + [ ] Fix tables.
- [ ] Global styles fixing:
    + [x] Style as inline-code keywords and code snippets within paragraphs, admonitons, etc. — eccept headings and tables (tables will be dealt with separately).
- [ ] Typography cleanup:
    + [x] Delete all non-breaking hyphens.
    + [ ] Decide how to handle:
        * [ ] Curly single/double quotes (ie: AsciiDoc way vs use ofUTF8 chars)
        * [ ] Special chars substitutions (em dash, etc.)
- [ ] Split book into multiple files (once all search-&-replace work is done).
- [ ] Proof-reading:
    + [ ] Go through whole document and fix inline styles, typos, etc.
- [ ] Syntax highlighting
    + [ ] Test how Highlight can be integrated into AsciiDoctor to handle Alan and EBNF code (See [Issue #2106]).
    + [ ] Consider creating an Alan syntax definition for [Rouge].

# Work Notes

## Splitting Into Multiple Files

The manual will be split into chapters, with each chapter in its own file. Right now, I'm keeping it as a single document because it simplifies some global search-&-replace operations to fix styles, etc.; once these are done with I'll proceed with multi-file splitting of the source doc.

# Conversion from ODT to AsciiDoc

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



<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[HTML Live Preview]: http://htmlpreview.github.io/?https://github.com/alan-if/alan-docs/blob/master/manual/manual.html "Preview 'The Alan Manual' via GitHub & BitBucket HTML Preview"

<!-- AsciiDoctor -->

[Asciidoctor]: https://asciidoctor.org/ "Visit AsciiDoctor website (Ruby implementation)"

[AsciiDoc Python]: http://asciidoc.org/ "Visit AsciiDoc website (original Python implementation)"

[Issue #2106]: https://github.com/asciidoctor/asciidoctor/issues/2106 "Issue #2106 — Add extension point for integrating an alternative source highlighter"

[Rouge]: http://rouge.jneen.net/ "Visti Rouge website (code highlighter in Ruby)"



<!-- EOF -->