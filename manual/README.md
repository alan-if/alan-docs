# The Alan Manual

AsciiDoc port of _The ALAN Adventure Language Reference Manual_ (WIP).

__[Click here for an HTML Live Preview][HTML Live Preview]__

> __NOTE__ — The AsciiDoc files in this project are intended for [Asciidoctor], the Ruby implementation of AsciiDoc; some required features might not be available in [AsciiDoc Python]!


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
    - [Manual Source Files](#manual-source-files)
    - [Conversion Scripts](#conversion-scripts)
    - [Converted Manual](#converted-manual)
    - [Helper Files](#helper-files)
- [Document Status](#document-status)
    - [Document header](#document-header)
    - [Document Structure](#document-structure)
        - [Cross-References](#cross-references)
        - [Index](#index)
        - [Footnotes](#footnotes)
    - [Document Assests](#document-assests)
    - [Global Styles Reconstruction](#global-styles-reconstruction)
    - [Tables](#tables)
    - [Typography Cleanup](#typography-cleanup)
    - [Proof-Reading](#proof-reading)
    - [Syntax highlighting](#syntax-highlighting)
- [Work Notes](#work-notes)
    - [Conversion from ODT to AsciiDoc](#conversion-from-odt-to-asciidoc)
    - [Annotated Comments](#annotated-comments)

<!-- /MarkdownTOC -->

-----

# Folder Contents

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
    + [`manual_10.asciidoc`][man 10] — _Appendix C: Run-time Messages_
    + [`manual_11.asciidoc`][man 11] — _Appendix D: Language Grammar_
    + [`manual_12.asciidoc`][man 12] — _Appendix E: Predefined player words_
    + [`manual_13.asciidoc`][man 13] — _Appendix F: Compiler Messages_
    + [`manual_14.asciidoc`][man 14] — _Appendix G: Localization_
    + [`manual_15.asciidoc`][man 15] — _Appendix H: Portability of Games_
    + [`manual_16.asciidoc`][man 16] — _Appendix I: Copying Conditions_

## Conversion Scripts

- [`BUILD_ALL.bat`][BUILD_ALL.bat] — convenience batch to invoke all conversion scripts at once.
- [`HTML_BUILD.bat`][HTML_BUILD.bat] — batch script to create `manual.html` document (fully standalone).
- [`PDF_BUILD.bat`][PDF_BUILD.bat] — batch script to create `manual.pdf` document (currently ignored in repository).

> __PDF NOTE__ — In order to build the PDF manual, you need to install the [Asciidoctor PDF] Ruby Gem:
> 
> ```
> gem install asciidoctor-pdf --pre
> ```


## Converted Manual

- [`manual.html`](./manual.html) — Alan Manual converted to standalone HTML5 ([HTML Live Preview]).

An [HTML Live Preview] of the converted document is available via [GitHub & BitBucket HTML Preview] online service.

## Helper Files

Some files to help editing the manual:

- [`Cross-References.md`][Cross-References.md] — Look-up table for cross-reference links.
- [`Manual_Index.txt`][Index txt] — Manual Index in plaintext (for reference).
- [`Manual_TOC.txt`][TOC txt] — Manual TOC in plaintext (for reference).
- [`RegExs.txt`](./RegExs.txt) — frequently needed regular expressions for S&R operations.
- [`SNIPPTES.adoc`](./SNIPPTES.adoc) — useful snippets to copy and paste.


-------------------------------------------------------------------------------

# Document Status

- [x] _1. Introduction_
- [ ] _2. Concepts_
- [ ] _3. Lexical Definitions_
- [ ] _4. Language Reference_
- [ ] _5. Running An Adventure_
- [ ] _6. Hints And Tips_
- [ ] _7. Adventure Construction_
- [ ] _Appendix A: How To Use The System_
- [ ] _Appendix B: A Sample Interaction_
- [ ] _Appendix C: Run-time Messages_
- [ ] _Appendix D: Language Grammar_
- [ ] _Appendix E: Predefined player words_
- [ ] _Appendix F: Compiler Messages_
- [ ] _Appendix G: Localization_
- [ ] _Appendix H: Portability of Games_
- [ ] _Appendix I: Copying Conditions_
- [ ] _Index_

Below is an aproximate status report and pending tasks list of the current document. As I'll keep working closer on the document, more issues/tasks are likely to come up, so task-trees that are now marked as _done_ might be reset to _undone_ as new needs come to attention.

## Document header

Status of document header (in [`manual.asciidoc`][man]):

- [x] Basic info added.
- [ ] Missing author.
- [x] Missing license (although full license is available in Appendix I).

## Document Structure

- [x] Reconstruct all headings/sections levels.
- [x] Handle section numbering.
- [x] Add special Appendix headings.
- [x] Exclude _Appendix I_ (License) sub-headings from TOC.
- [x] Split book into multiple files.

As a reference to check TOC integrity, use [`Manual_TOC.txt`][TOC txt] file.


### Cross-References

Rebuild original cross-reference links (lost in conversion):

- [x] _1. Introduction_
- [x] _2. Concepts_
- [x] _3. Lexical Definitions_
- [x] _4. Language Reference_
- [X] _5. Running An Adventure_
- [x] _6. Hints And Tips_
- [x] _7. Adventure Construction_
- [x] _Appendix A: How To Use The System_
- [x] _Appendix B: A Sample Interaction_ (none found)
- [x] _Appendix C: Run-time Messages_
- [x] _Appendix D: Language Grammar_
- [x] _Appendix E: Predefined player words_
- [x] _Appendix F: Compiler Messages_
- [x] _Appendix G: Localization_
- [x] _Appendix H: Portability of Games_ (none found)
- [x] _Appendix I: Copying Conditions_ (none found)

### Index

Rebuild _Index_:

- [x] _1. Introduction_ (none found)
- [x] _2. Concepts_
- [x] _3. Lexical Definitions_
- [x] _4. Language Reference_
- [x] _5. Running An Adventure_
- [x] _6. Hints And Tips_
- [x] _7. Adventure Construction_ (none found)
- [x] _Appendix A: How To Use The System_
- [x] _Appendix B: A Sample Interaction_ (none found)
- [x] _Appendix C: Run-time Messages_
- [x] _Appendix D: Language Grammar_
- [x] _Appendix E: Predefined player words_ (none found)
- [x] _Appendix F: Compiler Messages_
- [x] _Appendix G: Localization_ (none found)
- [x] _Appendix H: Portability of Games_ (none found)
- [x] _Appendix I: Copying Conditions_ (none found)

Also:

- [x] manually rebuilt Index entries that where in the PDF but not the ODT file.

As a reference to rebuild the Index, use [`Manual_Index.txt`][Index txt] file.

> __NOTE__ — Asciidoctor does not create an Index in HTML5 documents, therefore the PDF format will have to be used to check the Index reconstruction.

### Footnotes

There are only 2 footnotes in the Manual, both in "_3.2. Options_" Table.

- [x] Notes 1-2 (in Sec. 3.2).

## Document Assests

- [ ] Add missing images:
    + [x] Alan logo (cover)
    + [ ] Figure 1 (Ch.2, p.20 of PDF)
    + [ ] Figure 2 (Ch.2, p.33 of PDF) — "_Relationships between the pre-defined classes._"

## Global Styles Reconstruction

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
- [ ] Global styles fixing:
    + [x] Style as inline-code keywords and code snippets within paragraphs, admonitons, etc. — eccept headings and tables (tables will be dealt with separately).

## Tables

Clean-up, fix styling, add caption and anchor ID to all tables:

* [x] _3.2. Options_ — [Table 1. Adventure Settings via OPTION]
* _3.7. Properties_
    - [ ] _Inheriting Properties_ — [Table 2. Properties Inheritance]
    - [ ]  _Entered_ — [Table 3. Order of Execution of ENTERED in Nested Locations]
* [ ] _3.9. Syntax Definitions_ — ([_captionless table_])
* _3.10. Verbs_
    - [ ] _Verb Execution_ — [Table 4. Order of Execution of Verbs]

[Table 1. Adventure Settings via OPTION]: http://htmlpreview.github.io/?https://github.com/alan-if/alan-docs/blob/master/manual/manual.html#table-of-options
[Table 2. Properties Inheritance]: http://htmlpreview.github.io/?https://github.com/alan-if/alan-docs/blob/master/manual/manual.html#table-of-properties-inheritance
[Table 3. Order of Execution of ENTERED in Nested Locations]: http://htmlpreview.github.io/?https://github.com/alan-if/alan-docs/blob/master/manual/manual.html#table-of-entered-execution
[_captionless table_]: http://htmlpreview.github.io/?https://github.com/alan-if/alan-docs/blob/master/manual/manual.html#table-syntax-parameters
[Table 4. Order of Execution of Verbs]: http://htmlpreview.github.io/?https://github.com/alan-if/alan-docs/blob/master/manual/manual.html#table-of-verbs-execution

## Typography Cleanup

+ [x] Delete all non-breaking hyphens.
+ [ ] Fix Smart Typography (from UTF8 chars to AsciiDoc smart punctuation):
    * [x] Substitute curly single quotes and apostrophes.
    * [x] Substitute curly double quotes.
    * [x] Substitute ellipses chars with `...`.
    * [x] Apply em dashes (as `--`) instead of hyphens, where due.
    * [ ] Check for presence of other non-Ascii chars.

## Proof-Reading

Proof-reading and side-by-side comparison with the original PDF document, to spot any lost styles, formatting, etc.

During this step, also split contents "[One Sentence Per Line](https://asciidoctor.org/docs/asciidoc-recommended-practices/#one-sentence-per-line)".

This stage will be done once all global substitution have been dealt with in each chapter.

- [ ] Go through whole document and fix inline styles, typos, etc:
    + [x] _1. Introduction_
    + [ ] _2. Concepts_
    + [ ] _3. Lexical Definitions_
    + [ ] _4. Language Reference_
    + [ ] _5. Running An Adventure_
    + [ ] _6. Hints And Tips_
    + [ ] _7. Adventure Construction_
    + [ ] _Appendix A: How To Use The System_
    + [ ] _Appendix B: A Sample Interaction_
    + [ ] _Appendix C: Run-time Messages_
    + [ ] _Appendix D: Language Grammar_
    + [ ] _Appendix E: Predefined player words_
    + [ ] _Appendix F: Compiler Messages_
    + [ ] _Appendix G: Localization_
    + [ ] _Appendix H: Portability of Games_
    + [ ] _Appendix I: Copying Conditions_

## Syntax highlighting

+ [ ] Test how Highlight can be integrated into AsciiDoctor to handle Alan and EBNF code (See [Issue #2106]).
+ [ ] Consider creating an Alan syntax definition for [Rouge].


-------------------------------------------------------------------------------

# Work Notes

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
     -o manual_pandoc_odt-2-adoc.asciidoc
```

Although some styles were lost in the process, the final ADoc was a rather good starting point.

## Annotated Comments

As a convention, all commented annotations inside document source files will begin with "`// @`" to allow finding them quickly via Search functionality (eg, "`// @TODO:`", "`// @FIXME:`", "`// @NOTE`", etc.).

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[HTML Live Preview]: http://htmlpreview.github.io/?https://github.com/alan-if/alan-docs/blob/master/manual/manual.html "Preview 'The Alan Manual' via GitHub & BitBucket HTML Preview"
[GitHub & BitBucket HTML Preview]: http://htmlpreview.github.io

<!-- AsciiDoctor -->

[Asciidoctor]: https://asciidoctor.org/ "Visit AsciiDoctor website (Ruby implementation)"
[Asciidoctor PDF]: https://github.com/asciidoctor/asciidoctor-pdf "Visit the Asciidoctor PDF repository"

[AsciiDoc Python]: http://asciidoc.org/ "Visit AsciiDoc website (original Python implementation)"

[Issue #2106]: https://github.com/asciidoctor/asciidoctor/issues/2106 "Issue #2106 — Add extension point for integrating an alternative source highlighter"

[Rouge]: http://rouge.jneen.net/ "Visti Rouge website (code highlighter in Ruby)"

<!-- Project Files -->

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
[man 10]: ./manual_10.asciidoc "Source file of Appendix C: Run-time Messages"
[man 11]: ./manual_11.asciidoc "Source file of Appendix D: Language Grammar"
[man 12]: ./manual_12.asciidoc "Source file of Appendix E: Predefined player words"
[man 13]: ./manual_13.asciidoc "Source file of Appendix F: Compiler Messages"
[man 14]: ./manual_14.asciidoc "Source file of Appendix G: Localization"
[man 15]: ./manual_15.asciidoc "Source file of Appendix H: Portability of Games"
[man 16]: ./manual_16.asciidoc "Source file of Appendix I: Copying Conditions"


[BUILD_ALL.bat]:  ./BUILD_ALL.bat  "Batch script to invoke all Manual conversion scripts."
[HTML_BUILD.bat]: ./HTML_BUILD.bat "Batch script to convert Alan Manual to a single-file standalone HTML5 document."
[PDF_BUILD.bat]: ./PDF_BUILD.bat "Batch script to convert Alan Manual to PDF document."

[Cross-References.md]: ./Cross-References.md "Look-up table for cross-reference links reconstruction"

[Index txt]: ./Manual_Index.txt
[TOC txt]:   ./Manual_TOC.txt

<!-- EOF -->