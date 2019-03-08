# Alan Beginner's Guide TODOs

Laying out a ground plan and noting down the pending tasks to finish porting to AsciiDoc the _Alan 3 Beginner's Guide_ and updating it.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduction](#introduction)
    - [Original HTML Document](#original-html-document)
- [AsciiDoc Porting](#asciidoc-porting)
    - [Color Coding Conventions](#color-coding-conventions)
        - [Original Colors](#original-colors)
- [Contents Updating](#contents-updating)

<!-- /MarkdownTOC -->

-----

# Introduction

The original source document of the _Alan 3 Beginner's Guide_ was lost and only [the HTML converted version survived on Alan website][alanguide www]. In 2014, Thomas Nilefalk [converted to AsciiDoc][alanguide.adoc] the survived HTML version and began to clean up and restyle the ported document and update its contents, but the work is far from complete.

The _Guide_ still requires quite some adaptation work in two main areas:

- [ ] __AsciiDoc porting__ — fixing/improving AsciiDoc elements and adapting it to the [styling conventions] of this project.
- [ ] __Contents updates__ — port all examples from Library v0.6.1 to the newer StdLib v2.1.

The AsciiDoc formatting still needs some cleaning up, and the contents relating to the Standard Library need to be updated because they refer to the old version of the Library. Also, the document should be adapted to the [styling conventions] adopted in this project.

This document should serve as a guide to plan how to approach the adaption, establish some standards and then subdvide the work in isolate prending tasks.

## Original HTML Document

Because the original document employed a custom color-coding convention, a copy of the original HTML version of the _Beginner's Guide_ has been stored in the project for visual comparison:

- [`../_assets-src/original-docs/alanguide.html`][alanguide.html]


# AsciiDoc Porting

The AsciiDoc reconstruction of this document takes on from where Thomas Nilefalk left.

## Color Coding Conventions

The original document uses a custom color-coding convention to simplify visually sifiting through the text and source code examples.

The main challenge here is to introduce syntax highlighting of Alan source code and at the same time preserve the original color notation. It should be possible to achieve this, but it will require some changes:

- Use background coloring instead (highlighter marker style).
- Change colors to fit the syntax theme and preserve code readability.
- Update all references to the original color system in the document.

### Original Colors

The first step is to track down all the colors used in the original document, and what purpose they serve.

#### Cyan Highlighted Text

Cyan highlighting is used in the original text to mark notes and tip:

![cyan color][screenshot cyan]

As a general rule, cyan-highlighted text is being converted to an admonition block of some type in the ported AsciiDoc document.

#### Red Code

In the original doc, __red__ is used to indicate new code added to the examples:

![cyan color][screenshot red]

This makes it easier for the reader to follow the step-by-step tutorial and visually track the changes introduced at each step.

#### Yellow Highlighting

In some places, code is highlighted in yellow as a means to draw attention to specific lines:

![yellow color][screenshot yellow]


# Contents Updating

The main problem with the _Beginner's Guide_ contents is that its examples depend on an old version of the Standard Library (0.6.1). Although the examples will work with ALAN, it would have been much better for newbies to start working with the latest StdLib version.

There are two ways to go about this problem:

1. Keep the Standard Library used in the original doc.
2. Update all examples to the latest version of  Anssi Räisänen's [ALAN Standard Library].

While the latter would undoubtedly make the _Beginner's Guide_ more useful in the present day context, it would require quite a lot of adaptation work of all the code examples.

Maybe, initially it would be enough to revive the book _as is_, and just add to the project the sources of the Library v0.6.1 used in the original document, so that the reader can actually compile the example and experiment with his/her own code. After all, this is a guide for _learning_ how to write adventures in ALAN, and readers would still be learning the language even with the older library, and could always switch to the new StdLib v2.1 once they've learned the basics on how to program in ALAN.

Then, at some point in the future, all the examples could be updated/ported to the latest incarnation of the Standard Library — but reviving the _Beginner's Guide_ should be the primary goal right now, even if it relies on an older library version. After all, none of the libraries are part of ALAN distribution, and any library could serve as a starting point to learn using ALAN without having to write every single verb.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>


[styling conventions]: ../CONVENTIONS.md "Read the 'Formatting and Styling Conventions' guidelines adopted in Alan-Docs"


[ALAN Standard Library]: https://github.com/AnssiR66/AlanStdLib "View the ALAN Standard Library repository"

<!--------------------------- original guide files --------------------------->

[alanguide www]: https://alanif.se/files/alanguide/alanguide.html "View the 'Alan 3 Beginner's Guide' at Alan website (outdated version)"

[original-docs]: ../_assets-src/original-docs/ "Navigate to folder"
[images]: ../_assets-src/original-docs/images/ "Navigate to folder"
[alanguide.adoc]: ../_assets-src/original-docs/alanguide.adoc "View source file"
[alanguide.html]: ../_assets-src/original-docs/alanguide.html "View source file"
<!------------------------------- screenshots -------------------------------->

[screenshot cyan]: ./screenshots/cyan-highlighting.png "Example of cyan coloring of text in original document"
[screenshot red]: ./screenshots/red-code.png "Example of red coloring of code in original document"
[screenshot yellow]: ./screenshots/yellow-highlighting.png "Example of yellow highlighting of code in original document"

<!-- EOF -->