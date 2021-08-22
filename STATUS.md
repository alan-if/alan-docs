# Project Status

Info about the status of the various documents and project features.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Project Documents](#project-documents)
- [Syntax Highlighters](#syntax-highlighters)
    - [Highlighters for HTML Backend](#highlighters-for-html-backend)
    - [Highlighters for PDF Backend](#highlighters-for-pdf-backend)
    - [Highlighters Features Support](#highlighters-features-support)

<!-- /MarkdownTOC -->

-----

# Project Documents

The following table provides status info on all the documents available in this repository:

|           document          |              folder              | highlighter |   HTML  |   PDF   |   status  | on website |
|-----------------------------|----------------------------------|-------------|---------|---------|-----------|------------|
| [Actors in containers]      | [`/alan-design/`][/alan-design/] | Rouge       | &check; | &cross; | WIP draft | &check;    |
| [ALAN 3 Beginner's Guide]   | [`/alanguide/`][/alanguide/]     | Highlight   | &check; | &check; | ADoc WIP  | &check;    |
| [Alan Design Documentation] | [`/alan-design/`][/alan-design/] | Rouge       | &check; | &cross; | WIP draft | &check;    |
| [Alan IDE Reference Guide]  | [`/ideguide/`][/ideguide/]       | _none_      | &check; | &cross; | final     | &check;    |
| [Alan Rules]                | [`/alan-design/`][/alan-design/] | Rouge       | &check; | &cross; | WIP draft | &check;    |
| Conversion Guide            | [`/conversion/`][/conversion/]   | Rouge       | &check; | &cross; | ADoc WIP  | &cross;    |
| The ALAN Author's Guide     | [`/writing/`][/writing/]         | Highlight   | &check; | &cross; | WIP draft | &cross;    |
| [The ALAN Manual]           | [`/manual/`][/manual/]           | Rouge       | &check; | &check; | ongoing   | &check;    |

<!-- website links to docs -->

[Actors in containers]: https://alan-if.github.io/alan-docs/design/actors-in-containers.html "View live HTML document on website"
[ALAN 3 Beginner's Guide]: https://alan-if.github.io/alan-docs/alanguide/alanguide.html "View live HTML document on website"
[Alan Design Documentation]: https://alan-if.github.io/alan-docs/design/design.html "View live HTML document on website"
[Alan IDE Reference Guide]: https://alan-if.github.io/alan-docs/ideguide/ideguide.pdf "View PDF document on website"
[Alan Rules]: https://alan-if.github.io/alan-docs/design/rules.html "View live HTML document on website"
[The ALAN Manual]: https://alan-if.github.io/alan-docs/manual-beta/manual.html "View live HTML document on website"

The "status" columns values indicate:

- __ADoc WIP__ — document is not fully ported to AsciiDoc, and still needs adaptation to make full use of our toolchain, templates features, and styling conventions.
- __final__ — there are no plans to update the document.
- __ongoing__ — document is productions ready, but still being regularly updated and improved.
- __WIP draft__ — document is still being written.

As you might notice from the above table, none of the documents is currently using [highlight.js] for syntax highlighting, but they are either using [Rouge] or [Highlight].

[Rouge] is the number one highlighter choice in this project, because it supports [callouts] in code blocks, it's powerful, and it's natively supported by Asciidoctor's HTML backend as well as by [asciidoctor-pdf]  (which we're planning to use once some current problems are fixed).
So we've migrated to Rouge all the documents we could.

Documents still using [Highlight] are doing so because they contain custom styling selections within a code block using the `#` delimiters for [text span] or [highlight syntax], which is currently not supported with the Rouge highlighter (when these elements are present, syntax highlighting is disabled).
This is a problem with the native Rouge adapter that ships with Asciidoctor (Ruby).
Note that these documents can't be properly converted to PDF either, because our custom templates for [asciidoctor-fopub] currently don't render properly [highlight syntax] or [text span]s in code blocks.

For example, the [ALAN 3 Beginner's Guide] makes heavy use of [text span]s and [highlight syntax] in code blocks, which won't allow us to use [Rouge] with it until the problem is fixed in the Asciidoctor application.

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
| [Highlight]    | &check;               | &check;               | &cross; ([#36]) | &check;     |
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

<!-- docs folders -->

[/alan-design/]: ./alan-design/
[/alanguide/]: ./alanguide/
[/conversion/]: ./conversion/
[/ideguide/]: ./ideguide/
[/manual/]: ./manual/
[/writing/]: ./writing/

<!-- Issues -->

[#36]: https://github.com/alan-if/alan-docs/issues/36 "Issue #36 — HLJS: Enable Callouts in AsciiDoc Extension for Highlight"
[#120]: https://github.com/alan-if/alan-docs/issues/120 "Issue #120 — HLJS: Missing Alternative ALAN Themes"
[#121]: https://github.com/alan-if/alan-docs/issues/121 "Issue #121 — Highlight ALAN: Add Block Comments Support"
[#122]: https://github.com/alan-if/alan-docs/issues/122 "Issue #122 — Highlight.js ALAN: Add Block Comments Support"
[#123]: https://github.com/alan-if/alan-docs/issues/123 "Issue #123 — XSL FOP: Missing Alternative ALAN Themes"



<!-- EOF -->
