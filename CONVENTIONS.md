# Formatting and Styling Conventions

This document contains some guidelines for editors and contributors on how to apply consistent AsciiDoc formatting and styling in the ported Alan documentation.

These guidelines are not yet complete, and they are open for discussion and change proposals via [Issues].


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduction](#introduction)
- [Use UK English](#use-uk-english)
- [AsciiDoc Formatting Guidelines](#asciidoc-formatting-guidelines)
    - [Splitting Contents "One Sentence Per Line"](#splitting-contents-one-sentence-per-line)
- [Source Code](#source-code)
    - [Alan Code Examples](#alan-code-examples)
    - [Letter Casing](#letter-casing)
    - [Truncated Code](#truncated-code)
- [The Index](#the-index)
- [Related Issues](#related-issues)
- [External References](#external-references)
    - [AsciiDoctor Guides](#asciidoctor-guides)
        - [Extensions](#extensions)
    - [Wikipedia](#wikipedia)

<!-- /MarkdownTOC -->

-----

# Introduction

The following guidelines are _not_ absolute rules engraved in stone, and contributors might encounter cases where a different approach might be more appropriate in the given context. Understanding the purpose of these conventions and guidelines will enable contributors to decide when exceptions are due.

Formatting and styling conventions are intended to provide a better and more pleasant reading experience to the final users of the documentation. By adopting consistent styling in a document (and, possibly, across multiple Alan realted documents), the reader intuitively learns to associate those styles with specific context, providing a smoother reading experience.

The nature of the Alan documentation poses some special challanges when it comes to styling conventions, for in the natural flow of the documentation it's not always easy to decide how to represent a term that is both an Alan keyword and an English noun — the whole philosophy of Alan is centered around the idea that the Alan syntax should resemble natural English, rather than the classic programming languages paradigm.

Therefore, in the course of a sentence it might be difficult to choose how to represent certain words. For example, while discussing actors, we're dealing with both a natural English concept and an Alan keyword.

Sometimes the distinction is not so important, as the context has already clarified the topic at hand, and the Alan keywords and their English counterparts are one and the same in the discuourse. But sometimes it's important to let the reader distinguish when a word is referring to a specific keyword, and not a generic concept.

These guidelines were designed for the official Alan documentation, and if you're contributing your own documents to the project (tutorials, articles, etc.) you are under no obligations to follow them — we surely aren't going to tell anyone how they should style their own writings.

# Use UK English

The Alan documentation should follow UK English rules. If you use spell checking tool, set them accordingly. This affects also conventions for abbreviations, etc.

<!-- more details required here! -->

# AsciiDoc Formatting Guidelines

We strongly reccomend reading the _[AsciiDoc Recommended Practices]_ guidelines.

## Splitting Contents "One Sentence Per Line"

From _[AsciiDoc Recommended Practices](https://asciidoctor.org/docs/asciidoc-recommended-practices/#one-sentence-per-line)_:

> Don't wrap text at a fixed column width. Instead, put each sentence on its own line, a technique called _sentence per line_. This technique is similar to how you write and organize source code. 

Among the (many) benefits of this approach in terms of collaborative editing and text maintainance, it also prevents lots of headaches when it comes to diffing source documents (and in all Git related diffing operations and logs).


# Source Code

These guidelines pertain how code and language keywords should be formatted in the document.

## Alan Code Examples

Code examples blocks in the document should be formatted according to the following guidelines.

In the final document all Alan code examples will be syntax highlighted (not yet implemented), therefore colors will help the reader distinguish between keywords, predefined classes and user defined classes and instances.

## Letter Casing

- __keywords__ should be capitalized (eg, `If`, `Then`, `Every`).
- __keywords__ which consist of multiple words should be capitalized as if there was a space between them (eg, `IsA`, `ElsIf`).
- __predefined classes__ should be lowercase (eg, `thing`, `actor`).
- __indentation__: 1 Tab = 2 spaces.

## Truncated Code

For practical reasons, often part of the examples code is truncated to keep the focus on the topic being presented.

- __horiziontal truncation__ should be indicated by adding three inline full stops ("`...`").
- __vertical truncation__ should be indicated by a line containing only three full stops ("`...`") following the natural indentation of the code they replace.

Example:

```alan
Every door IsA object ...
  Has otherside door.
End Every door.

The east_door IsA door.
  Has otherside west_door.
  ...
```

> __NOTE__ — We'll need to check how these `...` will be handled by the syntax highlighter. Probably, they'll be highlighted as __Alan keywords__ (the current Highlight syntax treats the terminating dot as a keyword), but we'll probably need to tweak the syntax to treat three consecutive full-stops as a separate group, in order to allow different coloring for them.

# The Index

Here are some conventions regarding the style and structure of Index entries.

- __Alan keywords__ should always be in all-caps (eg, `IF`, `THEN`, `EVERY`).


-------------------------------------------------------------------------------

# Related Issues

Follow and contribute to the discussion on [formatting and sytling issues][Issues]:

- [#1 — Styling Keywords as Inline-Code][i1]
- [#2 — Code Styling Conventions][i2]
- [#5 — Index Reconstruction][i5]


[i1]: https://github.com/alan-if/alan-docs/issues/1 "Issue #1 — Styling Keywords as Inline-Code"
[i2]: https://github.com/alan-if/alan-docs/issues/2 "Issue #2 — Code Styling Conventions"
[i5]: https://github.com/alan-if/alan-docs/issues/5 "Issue #5 — Index Reconstruction"

<!-- 
- [#XX — YYY][iXX]
[iXX]: https://github.com/alan-if/alan-docs/issues/XX "Issue #XX — YYY"
-->

# External References

Some useful links...

## AsciiDoctor Guides

- [Asciidoctor User Manual]
- [AsciiDoc Recommended Practices]
- [AsciiDoc Syntax Quick Reference]
- [AsciiDoc Writer's Guide]

### Extensions

- [Asciidoctor Diagram]
- [Asciidoctor PDF]

## Wikipedia

- [Capitalization][WP Capitalization]

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[Issues]: https://github.com/alan-if/alan-docs/issues?utf8=%E2%9C%93&q=is%3Aissue+label%3A%22styling+conventions%22+ "View all Issues on 'syling conventions'"

<!-- AsciiDoctor Docs -->

[AsciiDoc Recommended Practices]: https://asciidoctor.org/docs/asciidoc-recommended-practices/ "Read the 'AsciiDoc Recommended Practices' guidelines"
[AsciiDoc Syntax Quick Reference]: https://asciidoctor.org/docs/asciidoc-syntax-quick-reference/
[AsciiDoc Writer's Guide]: https://asciidoctor.org/docs/asciidoc-writers-guide/
[Asciidoctor Diagram]: https://asciidoctor.org/docs/asciidoctor-diagram/
[Asciidoctor PDF]: https://asciidoctor.org/docs/asciidoctor-pdf/

[Asciidoctor User Manual]: https://asciidoctor.org/docs/user-manual/

<!-- Wikipedia -->

[WP Capitalization]: https://en.wikipedia.org/wiki/Capitalization "See Wikipedia page 'Capitalization'"

<!-- 
[WP XXX]: https://en.wikipedia.org/wiki/XXX "See Wikipedia: 'XXX'"
-->

<!-- EOF -->
