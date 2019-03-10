# Alan Beginner's Guide TODOs

Laying out a ground plan and noting down the pending tasks to finish porting to AsciiDoc the _Alan 3 Beginner's Guide_ and updating it.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduction](#introduction)
    - [Original HTML Document](#original-html-document)
- [AsciiDoc Porting](#asciidoc-porting)
    - [Document Settings](#document-settings)
    - [Document Layout](#document-layout)
    - [Typography](#typography)
    - [Styles](#styles)
    - [XRefs](#xrefs)
    - [Examples Code](#examples-code)
- [Recreate Tutorial Code](#recreate-tutorial-code)
    - [Reconstruct _TV TIME!_ Source](#reconstruct-_tv-time_-source)
    - [Add StdLib 0.6.2](#add-stdlib-062)
        - [Lib Fixes](#lib-fixes)
    - [Fix Compiler Errors](#fix-compiler-errors)
        - [Mylib Tweaks](#mylib-tweaks)
- [Editing Notes and Guidelines](#editing-notes-and-guidelines)
    - [Color Coding Conventions](#color-coding-conventions)
        - [The AsciiDoc Solution](#the-asciidoc-solution)
        - [Original Colors](#original-colors)

<!-- /MarkdownTOC -->

-----

# Introduction

The original source document of the _Alan 3 Beginner's Guide_ was lost and only [the HTML converted version survived on Alan website][alanguide www]. In 2014, Thomas Nilefalk [converted to AsciiDoc][alanguide.adoc] the survived HTML version and began to clean up and restyle the ported document, but the work is far from complete.

The _Guide_ still requires some adaptation work:

+ [ ] 1. __AsciiDoc porting__ — fixing/improving AsciiDoc elements and adapting it to the [styling conventions] of this project.
+ [ ] 2. __Recreate tutorial code__ — make available to the reader the source files of the tutorial "TV Time" example and the required Library v0.6.x dependencies.

The AsciiDoc formatting still needs some cleaning up, and the document should be adapted to the [styling conventions] adopted in this project. At that point the document can be made puclily available again.

This document serves as a guide to plan how to approach the adaption, establish some standards and then subdvide the work in isolate prending tasks.

## Original HTML Document

Because the original document employed a custom color-coding convention, a copy of the original HTML version of the _Beginner's Guide_ has been stored in the project for visual comparison:

- [`../_assets-src/original-docs/alanguide.html`][alanguide.html]


-------------------------------------------------------------------------------


# AsciiDoc Porting

The AsciiDoc reconstruction of this document takes on from where Thomas Nilefalk left.

## Document Settings

- [ ] Enable `experimental`
- [ ] Enable font-icons.

## Document Layout

This document is actually a book with parts, so its structure should be reorganized accordingly.

- [ ] Divide book into parts.

## Typography

- [ ] Add non-breaking spaces in "ALAN 2/3" to prevent wrapping from splitting ALAN from its version number (looks bad).
- [ ] Smart typography:
    + [ ] Fix all occurences of `--` by adding surrounding spaces.
    + [ ] Make double quotes curly.
- [ ] Fox inline code occurences.

## Styles

- [ ] Fix styling of game transcripts.

## XRefs

The _B.Guide_ references explicit Chapters and sections of the _Alan Manual_, but their numbering might have changed since then, so they need to be fixed.

- [ ] Check (and fix) numbered references to _Alan Manual_ Ch/Sect.

> __NOTE__ — i should look into using some cross-book references, which could also make the HTML doc cross-link to the actual _Manual_.

## Examples Code

- [ ] Enable syntax highlighting on all code blocks.
- [ ] Preserve custom coloring in source code:
    + [ ] Red code — using `[green]#`...`#`.
    + [ ] Yellow code — using `#`...`#`.

# Recreate Tutorial Code

In order to make the tutorial usable, we need to provide to the end users the following:

- [x] 1. `tvtime.alan` — Source code of _TV TIME!_ adventure (the final version).
- [x] 2. `mylib/` — Library modified according to tutorial, so that _TV TIME!_ can be compiled.
- [x] 3. `lib/` — The original (unchanged) Library, for the reader to edit during the tutorial.

Tasks list:

- [x] Create `alanguide-code/` folder.
- [x] Add StdLib v0.6.2 in `alanguide-code/lib/` folder.
    + [x] Cleanup folder contents.
    + [x] Add `alanguide-code/README.md`.
    + [ ] Tweak any references to v0.6.1 accordingly.
    + [ ] Rename `alanguide-code/lib/` folder to `alanguide-code/mylib/` (as indicated in tutorial).

## Reconstruct _TV TIME!_ Source

The full source of the _TV TIME!_ adventure is actually available in the _Beginner's Guide_ document, in _§50. Compile and Play It!_. But the pasted code wouldn't compile due to a missing EVENT and a wrong attribute (now fixed).


- [x] Recreate source files of the tutorial:
    + [x] Create `tvtime.alan` from the code contained _§50. Compile and Play It!_.
    + [x] Fix attribute `closed` to `NOT open` in:

        ```alan
        MAKE otherside OF THIS closed.
        ```

    + [x] Add the missing `time_pass` EVENT definition, taken form _§49. A Colorful EVENT_:

        ```alan
        EVENT time_pass
          DEPENDING ON RANDOM 1 to 3
            = 1 THEN "$pThe time for the big game is getting nearer."
            = 2 THEN "$pDon't let time get away from you!"
            = 3 THEN "$pThe clock is ticking..."
          END DEPEND.
          SCHEDULE time_pass AT Hero AFTER RANDOM 4 to 6.
        END EVENT.
        ```

        (It looks like it was accidentally left out from the final adventure code in the document.)

## Add StdLib 0.6.2

The original _Beginner's Guide_ used v0.6.1 of the Library, but I've managed to find a copy of both v0.6.1 and v0.6.2 (the latter is most likely the last version before the newer v1.0). So, if the examples works fine with v0.6.2 I'll try to use that instead for it was tweaked to work with new features introduced with ALAN updates.

### Lib Fixes

I need to to some changes to the original Lib sources because it seems that it contained some mistakes:

- `lib/invent.i`
    + changed `THE worn ISA thing IN hero` to `THE worn ISA entity`, as it should have been — header comments states `changed 'the Worn' from a 'thing' to an 'entity'`, so it looks like an error. In any case, it was causing a compile error, so it had to be changed.

At the same time, I've preserved some default attributes and CHECKS from v0.6.1 that were removed in v0.6.2 (my assumption is that the TV Time example might rely on them):

- `lib/open.i`
    + Restored the `And obj1 Is openable` CHECK.
- `lib/people.i` 
    + Restored in `person` class definition:
        * `Is Not named.`
        * Customized `Description` based on `named` attribute.


## Fix Compiler Errors

The code as found at the end of the _B.Guide_ doesn't compile out of the box with Lib 0.6.2. There are many compiler errors. Probably the library files need to be manually twaked according to the tutorial.

### Mylib Tweaks

The tutorial requires changing the original library files, so a copy of Lib 0.6.2 was created with name `mylib`, and all indicated changes and addition were carried out thereing:

- [x] __EDIT THE LIBRARY FILEs__ according to the tutorial instructions.
    + `mylib/examine.i`
        * Tweak `search` VERB, as instructed in Sec. _Searching Is Not Examining_.
    + `mylib/push.i`
        * Add SYNONYMS `press` and `click` for `push`, as instructed in Sec. _Fine Tune_.
    + `mylib/put.i`
        * Tweak `put_in` VERB, as instructed in Sec. _The put_in VERB_.
    + `mylib/open.i`
        * as instructed in Sec. _An Open and Shut Case_:
            - Remove `Is Not closeable` attribute from EVERY OBJECT.
            - Tweak `close` VERB.
        * as instructed in Sec. _The Cutting Edge_:
            - Tweak `open_with` VERB.
    + `mylib/nowhere.i`
        + Comment out unused directions and add custom `nodirection` definition, as instructed in _32. Cardinal Rules_. 
    + `mylib/scenery.i`
        * Tweak as instructed in Sec. _What "Isa Scenery"?_.
    + `mylib/push.i`
        * Tweak as instructed in Sec. _Push the Box_.
        * Rename attribute `pushable` to `MOVEABLE`, as instructed in Sec. _Advanced Attribute Changes_.
- [x] __ADD NEW FILES TO THE LIBRAY__ folder (and add them to the IMPORT directives `std.i`):
    + `mylib/plug.i` (as instructed in Sec. _Create the "plug in" VERB_)
    + `mylib/cut.i` (as instructed in Sec. _37. "cut.i"_)



-------------------------------------------------------------------------------


# Editing Notes and Guidelines

Some notes on how the original document is organized, its conventions, and how to adapt it to AsciiDoc.

## Color Coding Conventions

The original document uses a custom color-coding convention to simplify visually sifiting through the text and source code examples.

The main challenge here is to introduce syntax highlighting of Alan source code and at the same time preserve the original color notation. This is achievable but it will require some changes:

- Use background coloring instead (highlighter marker style).
- Change colors to fit the syntax theme and preserve code readability.
- Update all references to the original color system in the document.

### The AsciiDoc Solution

I've managed to achieve both syntax highlighting and custom color-marking of code via custom styling using the `#` element (see Asciidoctor Manual [§19.5 _Custom Styling With Attributes_][§19.5]):

- `#`...`#` — for yellow highlighting.
- `[green]#`...`#` — for green highlighting.

This solution overlaps neatly with Alan syntax highlighting, and it only requires specifying the appropriate text substitutions in the code block:

```asciidoc
[source,alan,subs="quotes"]
-------------------------------------------
-- Custom coloring.
-- Example 1: #Yellow highlighting#.
-- Example 2: [green]#green highlighting#.
Every book IsA object.
  [green]#Description "It's just a book."
  Has not been_read.#
End Every.
-------------------------------------------
```

> __PDF WARNING!__ — The above solution currently works only with the HTML backend; I still need to work out how to adapt the FOP XSL template to support it.


### Original Colors

The first step is to track down all the colors used in the original document, and what purpose they serve.

#### Cyan Highlighted Text

Cyan highlighting is used in the original text to mark notes and tip:

![cyan color][screenshot cyan]

As a general rule, cyan-highlighted text is being converted to an admonition block of some type in the ported AsciiDoc document.

#### Red Code

In the original doc, __red__ is used to indicate new code added to the examples:

![red color][screenshot red]

This makes it easier for the reader to follow the step-by-step tutorial and visually track the changes introduced at each step.

> __NOTE__ — In the ported version we shall use green instead, because a red background would make the code less readable, and also because green background coloring is also used in diff logs to indicate additions (whereas red is usually associated with deletions).

#### Yellow Highlighting

In some places, code is highlighted in yellow as a means to draw attention to specific lines:

![yellow color][screenshot yellow]


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[ALAN Standard Library 2]: https://github.com/AnssiR66/AlanStdLib "Visit the official repository of the ALAN Standard Library 2"

<!-- project files ----------------------------------------------------------->

[styling conventions]: ../CONVENTIONS.md "Read the 'Formatting and Styling Conventions' guidelines adopted in Alan-Docs"

<!-- people ------------------------------------------------------------------>

[Anssi Räisänen]: https://github.com/AnssiR66 "View Anssi Räisänen's GitHub profile"

<!-- original guide files ---------------------------------------------------->

[alanguide www]: https://alanif.se/files/alanguide/alanguide.html "View the 'Alan 3 Beginner's Guide' at Alan website (outdated version)"

[original-docs]: ../_assets-src/original-docs/ "Navigate to folder"
[images]: ../_assets-src/original-docs/images/ "Navigate to folder"
[alanguide.adoc]: ../_assets-src/original-docs/alanguide.adoc "View source file"
[alanguide.html]: ../_assets-src/original-docs/alanguide.html "View source file"
<!-- screenshots ------------------------------------------------------------->

[screenshot cyan]: ./screenshots/cyan-highlighting.png "Example of cyan coloring of text in original document"
[screenshot red]: ./screenshots/red-code.png "Example of red coloring of code in original document"
[screenshot yellow]: ./screenshots/yellow-highlighting.png "Example of yellow highlighting of code in original document"

<!-- Asciidoctor Manual references ------------------------------------------->

[§19.5]: https://asciidoctor.org/docs/user-manual/#custom-styling-with-attributes "Read the Asciidoctor Manual on this topic..."

<!-- EOF -->