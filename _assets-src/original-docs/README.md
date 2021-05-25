# Alan Documentation

This folder contains the original documents used in the AsciiDoc conversion works.

Most of these docs taken from the [`doc/`][doc/] folder of the [Alan repository]; some of them have been deleted from the repository after having been moved here.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [The Alan Manual](#the-alan-manual)
- [The Author's Guide](#the-authors-guide)
- [Beginner's Guide](#beginners-guide)
- [Alan Design Documents](#alan-design-documents)
- [ALAN Conversion Guide](#alan-conversion-guide)

<!-- /MarkdownTOC -->

-----

# The Alan Manual

- [`manual.odt`][manual.odt]
- [`manual.pdf`][manual.pdf]

ODT source document and PDF release of _The ALAN Adventure Language Reference Manual_, version 3.0beta5 (2018/08/09), taken from the [`doc/manual/`][doc/manual/] folder of the [Alan repository], commit [`fb81645`][doc/manual/ fb81645].

License: [Artistic License 2.0].

New AsciiDoc version located in [`../../manual/`](../../manual/) folder.


# The Author's Guide

- [`writing.odt`][writing.odt]
- [`writing.pdf`][writing.pdf]

ODT source document and PDF version of _The ALAN Adventure Language Author's Guide_, version 3.0beta2 (2017/02/05), taken from the [`doc/manual/`][doc/manual/] folder of the [Alan repository], commit [`caedbb8`][doc/manual/ caedbb8].

License: [Artistic License 2.0].

New AsciiDoc version located in [`../../writing/`](../../writing/) folder.


# Beginner's Guide

- [`/images/`][images]
- [`alanguide.adoc`][alanguide.adoc]
- [`alanguide.html`][alanguide.html]

Michael Arnaud's _Alan 3 Beginner's Guide_ (2006). The AsciiDoc version was taken from the [`doc/guide/`][doc/guide/] folder of the [Alan repository], commit [`fb81645`][doc/guide/ fb81645] (the last version before its removal in commit [`ba90baa`][guide removal ba90baa]); the HTML version from [Alan website][alanguide www].

The original source document was lost, but the HTML-converted version survived on Alan website ([still available at this link][alanguide www]).
In 2014, Thomas Nilefalk converted the HTML version to AsciiDoc and began to clean up and restyle the ported document and update its contents.
Then, with the advent of the Alan Docs project, Tristano took on the porting and reprint work from where Thomas left.

New AsciiDoc version located in [`../../alanguide/`](../../alanguide/) folder.

The AsciiDoc still needs some cleaning up, but the correct Library version required to compile the tutorial sources was found and added to the project, and the Alan sources of the tutorial reconstructed and fixed to work with the current version of Alan.

# Alan Design Documents

- [`ACTORS_IN_CONTAINERS.md`][ACTORS_IN_CONTAINERS.md] — _Actors in containers_.
- [`design.doc`][design.doc] — _Alan Design Documentation_.
- [`rules.rtf`][rules.rtf] — _Alan Rules_.

Various documents on Alan's design, taken from the [`doc/design/`][doc/design/] folder of the Alan repository (in case of deletion, view them at commit [`49f6a19`][doc/design/ 49f6a19]).

Their new AsciiDoc versions are located in the [`../../alan-design/`][alan-design/] folder.


# ALAN Conversion Guide

- [`conversion.odt`][conversion.odt]
- [`conversion.pdf`][conversion.pdf]

Original files of _The ALAN Adventure Language Conversion Guide from v2 to v3_, taken from the [`doc/manual/`][doc/manual/] folder of the [Alan repository].

Their new AsciiDoc version is located in the [`../../conversion/`][conversion/] folder.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Artistic License 2.0]: ../LICENSE

[Alan repository]: https://github.com/alan-if/alan "Visit the Alan repository at GitHub"

<!-- Project Folders -->

[alan-design/]: ../../alan-design/ "Navigate to the Alan Design docs folder"
[conversion/]: ../../conversion/ "Navigate to the 'Alan Conversion Guide' folder"

<!-- Project Files -->

[manual.odt]: ./manual.odt "'The ALAN Adventure Language Reference Manual' (ODT)"
[manual.pdf]: ./manual.pdf "'The ALAN Adventure Language Reference Manual' (PDF)"

[writing.odt]: ./writing.odt "'The ALAN Adventure Language Author's Guide' (ODT)"
[writing.pdf]: ./writing.pdf "'The ALAN Adventure Language Author's Guide' (PDF)"

[alanguide.adoc]: ./alanguide.adoc "View source file"
[alanguide.html]: ./alanguide.html "View source file"
[images]: ./images/ "Navigate to folder"

[ACTORS_IN_CONTAINERS.md]: ./ACTORS_IN_CONTAINERS.md "'Actors in containers' (markdown)"
[design.doc]: ./design.doc "'Alan Design Documentation' (Word)"
[rules.rtf]: ./rules.rtf "'Alan Rules' (Rich Text Format)"

<!-- Original Docs Links ----------------------------------------------------->

[doc/]: https://github.com/alan-if/alan/tree/master/doc/ "View upstream 'doc/' folder on Alan repository at GitHub"
[doc/guide/]: https://github.com/alan-if/alan/tree/master/doc/guide "View upstream 'doc/guide/' folder on Alan repository at GitHub"

<!-- ALAN Manual -->

[doc/manual/]: https://github.com/alan-if/alan/tree/master/doc/manual/ "View upstream 'doc/manual/' folder on Alan repository at GitHub"
[doc/manual/ fb81645]: https://github.com/alan-if/alan/tree/fb81645e1d1d2a2bfaacd67f6bbd2e1fffbe9449/doc/manual/  "View upstream 'doc/manual/' folder on Alan repository commit fb81645"
[doc/manual/ caedbb8]: https://github.com/alan-if/alan/tree/caedbb82700121edc710050b752970a55d92e863/doc/manual/ "View upstream 'doc/manual/' folder on Alan repository commit caedbb8"

<!-- Beginner's Guide -->

[alanguide www]: https://alanif.se/files/alanguide/alanguide.html "View the 'Alan 3 Beginner's Guide' at Alan website (outdated version)"

[doc/guide/ fb81645]: https://github.com/alan-if/alan/tree/fb81645e1d1d2a2bfaacd67f6bbd2e1fffbe9449/doc/guide/ "View upstream 'doc/guide/' folder on Alan repository commit fb81645"
[guide removal ba90baa]: https://github.com/alan-if/alan/commit/ba90baaeb073c74ecb74bc2bf11bbd1e0aa821e9  "View commit ba90baa on Alan repository"

<!-- Design Docs -->

[doc/design/]: https://github.com/alan-if/alan/tree/master/ "View upstream 'doc/design/' folder on Alan repository at GitHub"
[doc/design/ 49f6a19]: https://github.com/alan-if/alan/tree/49f6a1957599ebebc3388c94e80d07aa12dcfbe0/doc/design "View upstream 'doc/design/' folder on Alan repository commit 49f6a19"

<!-- Conversion Guide -->


[conversion.odt]: ./conversion.odt
[conversion.pdf]: ./conversion.pdf

<!-- EOF -->
