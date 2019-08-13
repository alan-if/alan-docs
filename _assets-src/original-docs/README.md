# Alan Documentation

This folder contains the original documents used in the AsciiDoc conversion works.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [The Alan Manual](#the-alan-manual)
- [The Author's Guide](#the-authors-guide)
- [Beginner's Guide](#beginners-guide)

<!-- /MarkdownTOC -->

-----

# The Alan Manual

- [`manual.odt`][manual.odt]
- [`manual.pdf`][manual.pdf]

ODT source document and PDF release of _The ALAN Adventure Language Reference Manual_, version 3.0beta5 (2018/08/09), taken from [Alan repository], commit [`fb81645`][fb81645].

License: [Artistic License 2.0].

New AsciiDoc version located in [`../../manual/`](../../manual/) folder.

# The Author's Guide

- [`writing.odt`][writing.odt]
- [`writing.pdf`][writing.pdf]

ODT source document and PDF version of _The ALAN Adventure Language Author's Guide_, version 3.0beta2 (2017/02/05), taken from [Alan repository], commit [`caedbb8`][caedbb8].

License: [Artistic License 2.0].

New AsciiDoc version located in [`../../writing/`](../../writing/) folder.

# Beginner's Guide

- [`/images/`][images]
- [`alanguide.adoc`][alanguide.adoc]
- [`alanguide.html`][alanguide.html]

Michael Arnaud's _Alan 3 Beginner's Guide_ (2006). The AsciiDoc version was taken from [Alan repository], commit [`fb81645`][fb81645 guide]; the HTML version from [Alan website][alanguide www].

The original source document was lost, but the HTML-converted version survived on Alan website ([still available at this link][alanguide www]).
In 2014, Thomas Nilefalk converted the HTML version to AsciiDoc and began to clean up and restyle the ported document and update its contents.
Then, with the advent of the Alan Docs project, Tristano took on the porting and reprint work from where Thomas left.

New AsciiDoc version located in [`../../alanguide/`](../../alanguide/) folder.

The AsciiDoc still needs some cleaning up, but the correct Library version required to compile the tutorial sources was found and added to the project, and the Alan sources of the tutorial reconstructed and fixed to work with the current version of Alan. 


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[Alan repository]: https://github.com/alan-if/alan/tree/master/doc/ "View upstream 'doc/' folder on Alan repository at GitHub"

[fb81645 guide]: https://github.com/alan-if/alan/tree/fb81645/doc/guide/  "View upstream 'doc/guide/' folder on Alan repository commit fb81645"
[fb81645]: https://github.com/alan-if/alan/tree/fb81645/doc/manual/  "View upstream 'doc/manual/' folder on Alan repository commit fb81645"
[caedbb8]: https://github.com/alan-if/alan/tree/caedbb8/doc/manual/ "View upstream 'doc/manual/' folder on Alan repository commit caedbb8"

[alanguide www]: https://alanif.se/files/alanguide/alanguide.html "View the 'Alan 3 Beginner's Guide' at Alan website (outdated version)"

<!-- Project Files ----------------------------------------------------------->

[manual.odt]: ./manual.odt "'The ALAN Adventure Language Reference Manual' (ODT)"
[manual.pdf]: ./manual.pdf "'The ALAN Adventure Language Reference Manual' (PDF)"

[writing.odt]: ./writing.odt "'The ALAN Adventure Language Author's Guide' (ODT)"
[writing.pdf]: ./writing.pdf "'The ALAN Adventure Language Author's Guide' (PDF)"

[alanguide.adoc]: ./alanguide.adoc "View source file"
[alanguide.html]: ./alanguide.html "View source file"
[images]: ./images/ "Navigate to folder"


[Artistic License 2.0]: ../LICENSE

<!-- EOF -->