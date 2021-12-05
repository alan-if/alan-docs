# Formatting and Styling Conventions

This document contains some guidelines for editors and contributors on how to apply consistent AsciiDoc formatting and styling in the Alan documentation.

These guidelines are not yet complete, and they are open for discussion and change proposals via repository [Discussions] and [Issues].


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

The following guidelines are _not_ absolute rules engraved in stone, and contributors might encounter cases where a different approach might be more appropriate in the given context.
Understanding the purpose of these conventions and guidelines will enable contributors to decide when exceptions are due.

Formatting and styling conventions are intended to provide a better and more pleasant reading experience to final users of the documentation.
By adopting consistent styling in a document (and, possibly, across multiple Alan related documents), the reader intuitively learns to associate each style with a specific context, providing a smoother reading experience.

The nature of the Alan documentation poses some special challenges when it comes to styling conventions, for in the natural flow of the documentation it's not always easy to decide how to represent a term that is both an Alan keyword and an English noun — the Alan philosophy revolves around the idea that the Alan syntax should mimic natural English, rather than a classic programming languages paradigm.

Therefore, in the course of a sentence it might be difficult to choose how to represent certain words.
For example, while discussing actors, we're dealing with a natural English concept and an Alan predefined class, so 'actor' could refer either to the English noun or the Alan keyword.

Sometimes the distinction is not so important, as the context has already clarified the topic at hand, and the Alan keywords and their English counterparts are one and the same in the discourse.
But sometimes it's important to let the reader distinguish when a word is referring to a specific keyword, and not a generic concept.

These guidelines were designed for the official Alan documentation, and if you're contributing your own documents to the project (tutorials, articles, etc.) you are under no obligations to follow them — we surely aren't going to tell anyone how they should style their own writings.


# Use UK English

The Alan documentation should follow UK English rules.
If you use spell checking tool, set them accordingly.
This affects also conventions for abbreviations, etc.

<!-- more details required here! -->

# AsciiDoc Formatting Guidelines

We strongly recommend reading the _[AsciiDoc Recommended Practices]_ guidelines.

## Splitting Contents "One Sentence Per Line"

From _[AsciiDoc Recommended Practices][One Sentence Per Line]_:

> Don't wrap text at a fixed column width.
> Instead, put each sentence on its own line, a technique called _sentence per line_.
> This technique is similar to how you write and organize source code.

Among the (many) benefits of this approach in terms of collaborative editing and text maintenance, it also prevents lots of headaches when it comes to diffing source documents (and in all Git related diffing operations and logs).


# Source Code

These guidelines pertain how code and language keywords should be formatted in the document.

## Alan Code Examples

Code examples blocks in the document should be formatted according to the following guidelines.

In the final documents all Alan code blocks are syntax highlighted, therefore colours will provide the reader with helpful cues to distinguish reserved keywords, between built-in classes and user defined classes, and all the various language constructs.

## Letter Casing

All code should follow _prose case_ rules, i.e. use capital letters only when at the beginning of an independent line, or when it makes sense to do so (e.g. a proper name that in English would be capitalized), although the last rule is left to the author's discretion.

The goal is to provide a fluid text that looks natural, without emphasizing the programming language aspect.

- __keywords__ should be capitalized only when beginning or closing a block, or when on an independent line or sub-construct (e.g. `If`/`End if`, `The`/`End the`, `Every`/`End every`, etc.), with the exception of:
    + __compound keywords__ containing multiple words should be capitalized as if there was a space between them (e.g. `IsA`, `ElsIf`) to improve their readability.
- __predefined classes__ should be lowercase (e.g. `thing`, `actor`).
- __indentation__: 1 Tab = 2 spaces.


## Truncated Code

For practical reasons, often part of the examples code is truncated to keep the focus on the topic being presented.

- __horizontal truncation__ should be indicated by adding three inline full stops ("`...`").
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

> __NOTE__ — We'll need to check how these `...` will be handled by the syntax highlighter.
> Probably, they'll be highlighted as __Alan keywords__ (the Highlight syntax treats the terminating dot as a keyword), but we could tweak the syntax to treat three consecutive full-stops as a separate token group, in order to have them styled using different colouring.

# The Index

Here are some conventions regarding the style and structure of Index entries.

- __Alan keywords__ should always be in all-caps (e.g. `IF`, `THEN`, `EVERY`).


-------------------------------------------------------------------------------

# Related Issues

Follow and contribute to the discussion on [formatting and styling issues][#styling]:

- [#1 — Styling Keywords as Inline-Code][#1]
- [#2 — Code Styling Conventions][#2]
- [#5 — Index Reconstruction][#5]


# External References

Some useful links...

## AsciiDoctor Guides

- [AsciiDoc Language Documentation]
- [AsciiDoc Recommended Practices]
- [AsciiDoc Syntax Quick Reference]
- [AsciiDoc Writer's Guide]
- [Asciidoctor Documentation]

### Extensions

- [Asciidoctor Diagram]
- [Asciidoctor PDF]

## Wikipedia

- [Capitalization][WP Capitalization]

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- AsciiDoc Docs -->

[AsciiDoc Language Documentation]: https://docs.asciidoctor.org/asciidoc/latest/ "AsciiDoc Language Documentation"
[AsciiDoc Recommended Practices]: https://asciidoctor.org/docs/asciidoc-recommended-practices/ "Read the 'AsciiDoc Recommended Practices' guidelines"
[AsciiDoc Syntax Quick Reference]: https://docs.asciidoctor.org/asciidoc/latest/syntax-quick-reference/ "AsciiDoc Language » AsciiDoc Syntax Quick Reference"
[AsciiDoc Writer's Guide]: https://asciidoctor.org/docs/asciidoc-writers-guide/ "Read the 'AsciiDoc Writer's Guide' guidelines"

[One Sentence Per Line]: https://asciidoctor.org/docs/asciidoc-recommended-practices/#one-sentence-per-line "AsciiDoc Recommended Practices » One Sentence Per Line"

<!-- Asciidoctor Docs -->

[Asciidoctor Documentation]: https://docs.asciidoctor.org/asciidoctor/latest/ "Asciidoctor Documentation"

<!-- Asciidoctor Ext. Docs -->

[Asciidoctor Diagram]: https://docs.asciidoctor.org/diagram-extension/latest/ "Asciidoctor Docs » Asciidoctor Diagram"
[Asciidoctor PDF]: https://asciidoctor.org/docs/asciidoctor-pdf/ "Asciidoctor PDF documentation"

<!-- Wikipedia -->

[WP Capitalization]: https://en.wikipedia.org/wiki/Capitalization "See Wikipedia page 'Capitalization'"

<!--
[WP XXX]: https://en.wikipedia.org/wiki/XXX "See Wikipedia: 'XXX'"
-->

<!-- Issues & Discussion -->

[Issues]: https://github.com/alan-if/alan-docs/issues "ALAN Docs repository Issues"
[Discussions]: https://github.com/alan-if/alan-docs/discussions "ALAN Docs repository Discussions"

[#styling]: https://github.com/alan-if/alan-docs/issues?q=label%3A%22%3Acop%3A+styling+conventions%22+ "View all Issues and Discussion on 'styling conventions'"

[#1]: https://github.com/alan-if/alan-docs/issues/1 "Issue #1 — Styling Keywords as Inline-Code"
[#2]: https://github.com/alan-if/alan-docs/issues/2 "Issue #2 — Code Styling Conventions"
[#5]: https://github.com/alan-if/alan-docs/issues/5 "Issue #5 — Index Reconstruction"

<!--
- [#XX — YYY][#XX]
[#XX]: https://github.com/alan-if/alan-docs/issues/XX "Issue #XX — YYY"
-->

<!-- EOF -->
