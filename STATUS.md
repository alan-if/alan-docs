# Project Status

Info about the status of the various documents and project features.

> **WIP** — this document is still work-in-progress; we still need to add a section about all the project documents, their status and info about their output formats, the AsciiDoc features they use, and which highlighters they require.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Syntax Highlighters](#syntax-highlighters)
    - [Highlighters for HTML Backend](#highlighters-for-html-backend)
    - [Highlighters for PDF Backend](#highlighters-for-pdf-backend)
    - [Highlighters Features Support](#highlighters-features-support)

<!-- /MarkdownTOC -->

-----

# Syntax Highlighters

This section described the various options regarding the choice of a syntax highlighter for the HTML backend according to supported features, and describes the unsupported features for the PDF backed.

These elements are crucial for determining which AsciiDoc features to use in a source document, and how these might affect the choice of the syntax highlighter to adopt in the HTML backend, and whether these features will allow creating a well formed PDF document.

## Highlighters for HTML Backend

The documents in this repository can choose to use different syntax highlighters for highlighting ALAN source code in the HTML format.
Each highlighter has its pros and cons, supporting some features but not others, which might ultimately be the determining factor in one documentation project choosing one highlighter over the other.

These are the supported highlighters, in order of recommendation:

1. [Rouge]
2. [Highlight]
3. [highlight.js]

Maintainers of a document in HTML format for this project should try to pick the first highlighter in the list that works well for their document; and only choose the next one if experiencing problems with features supports.

## Highlighters for PDF Backend

As for the PDF format, we currently support only the [asciidoctor-fopub] backend, which can only use its own syntax highlighter:

1. [XSLTHL]

Custom styles and our own ALAN syntax definition are provided via the [alan-xsl-fopub] repository, included as a Git submodule in this project.

## Highlighters Features Support

The following table shows the features supported by each highlighter.

> **NOTE** — To preview and test these features, build the developer test documents found in the [`_dev/styles-tests/`][/styles-tests/] folder.


|  highlighter   |  ALAN block comments  |       alt themes      |     callouts    | marked code |
|----------------|-----------------------|-----------------------|-----------------|-------------|
| [Rouge]        | &check;               | &check;               | &check;         | &cross;     |
| [Highlight]    | &cross; (WIP: [#122]) | &check;               | &cross; ([#36]) | &check;     |
| [highlight.js] | &cross; (TBD: [#121]) | &cross; (TBD: [#120]) | &check;         | &check;     |
| [XSLTHL]       | &cross;               | &cross; (TBD: [#123]) | &check;         | &cross;     |

The above columns refer to:

- __ALAN block comments__ — ALAN Beta8 introduces block comments; pre-existing ALAN syntax definitions for highlighters need to be updated in order to support this feature.

- __alt themes__ — beside the default theme for ALAN code blocks, there are two alternative themes which are used by some documents in this project:
    + __Library__ (`[source,alan,role="lib"]`), a dark theme to indicate that a code block is an excerpt from an existing library or extensions.
    + __Tutorial__ (`[source,alan,role="tutorial"]`), a very light theme used to differentiate generic code examples from code that is part of a tutorial file, i.e. excerpts from a source file that ships with the tutorial or that the reader needs to create for the sake of the tutorial.

- __callouts__ — this column indicates whether [callouts] in code blocks are supported by the highlighter.
    Example:

    ```asciidoc
    [source,alan,subs="quotes"]
    -------------------------------------------------
    -- "Paradise Lost" a short example in ALAN IF <1>
    The shore IsA location -- <2> <3>
      Name Shore of Great Sea
      Description -- <4>
        "A beautiful sea shore,
         probably Paradise lost."
    End the shore.
    -------------------------------------------------

    - <1> callout text.
    - <2> other callout text.
    - <3> yet another callout text.
    - <4> and another callout text.
    ```

    This _doesn't_ affect support for callouts in other type of verbatim blocks (e.g. the Shell mock-up literal block), which will work as expected since the block contents won't be handled by the syntax highlighter.
    Example:

    ```asciidoc
    [literal, role="shell"]
    ...................................................................
    D:\>alan -help <1>
    Usage: ALAN <adventure> [-help] [options]

    Arguments:
      <adventure>       -- file name, default extension '.alan' <2> <3>
    ...................................................................
    ```

- __marked code__ — indicates whether the highlighter supports custom styling selections within a code block using the `#` delimiters for [text span] or [highlight syntax].
    Example:

    ```asciidoc
    [source,alan,subs="quotes"]
    ------------------------------------------
    -- Example 1: #Yellow highlighting#.
    Every book IsA object.
      [green]#Description "It's just a book."#
      Has not been_read.
    End Every.End Every.
    ------------------------------------------
    ```



<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[alan-xsl-fopub]: https://github.com/alan-if/alan-xsl-fopub "Visit the alan-xsl-fopub repository on GitHub"

<!-- highlighters -->

[Rouge]: http://rouge.jneen.net "Visit Rouge website"
[Highlight]: http://www.andre-simon.de/doku/highlight/en/highlight.php "Visit Highlight website"
[highlight.js]: https://highlightjs.org/ "Visit highlight.js website"
[XSLTHL]: https://github.com/xmlark/xslthl "Visit XSLTHL repository on GitHub"

<!-- backends -->

[asciidoctor-fopub]: https://github.com/asciidoctor/asciidoctor-fopub "Visit the asciidoctor-fopub repository on GitHub"
[asciidoctor-pdf]: https://github.com/asciidoctor/asciidoctor-pdf "Visit the asciidoctor-pdf repository on GitHub"

<!-- Asciidoctor -->

[callouts]: https://docs.asciidoctor.org/asciidoc/latest/verbatim/callouts/ "AsciiDoc Language Documentation » Callouts"
[Highlight syntax]: https://docs.asciidoctor.org/asciidoc/latest/text/highlight/ "AsciiDoc Language Documentation » Highlight syntax"
[text span]: https://docs.asciidoctor.org/asciidoc/latest/text/text-span-built-in-roles/#text-span-syntax "AsciiDoc Language Documentation » Text span syntax"

<!-- project files and folders -->

[/styles-tests/]: ./_dev/styles-tests/ "Navigate to documents tests folder"

<!-- Issues -->

[#36]: https://github.com/alan-if/alan-docs/issues/36 "Issue #36 — HLJS: Enable Callouts in AsciiDoc Extension for Highlight"
[#120]: https://github.com/alan-if/alan-docs/issues/120 "Issue #120 — HLJS: Missing Alternative ALAN Themes"
[#121]: https://github.com/alan-if/alan-docs/issues/121 "Issue #121 — Highlight ALAN: Add Block Comments Support"
[#122]: https://github.com/alan-if/alan-docs/issues/122 "Issue #122 — Highlight.js ALAN: Add Block Comments Support"
[#123]: https://github.com/alan-if/alan-docs/issues/123 "Issue #123 — XSL FOP: Missing Alternative ALAN Themes"



<!-- EOF -->
