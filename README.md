# Alan IF Documentation Project

- https://github.com/alan-if/alan-docs

This temporary repository was created by [Tristano Ajmone] for the conversion of Alan documentation to AsciiDoc.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduction](#introduction)
- [Project Contents](#project-contents)
- [Project Dependencies](#project-dependencies)
    - [AsciiDoctor](#asciidoctor)
- [Syntax Highlighting](#syntax-highlighting)
- [Work Tools](#work-tools)
    - [Asciidoc FX](#asciidoc-fx)
    - [Sublime Text Asciidoctor](#sublime-text-asciidoctor)
- [License Terms](#license-terms)
- [External Links](#external-links)
    - [Alan](#alan)
    - [AsciiDoctor](#asciidoctor-1)
    - [Highlight](#highlight)

<!-- /MarkdownTOC -->

-----

# Introduction

At the present stage, Alan documentation consists of multiple documents in various formats; the goal of this project is to port them to AsciiDoc and create a unified project and a toolchain to handle conversion to different formats.

After discussing about it on the [Alan IF Yahoo group]  (and [receveing the green light] to go ahead) I've started working on the conversion of the _Alan Refence Manual_ from ODT to AsciiDoc, and decided to share publicly the work in progress via this project.

Other members of the Alan group are also working on porting other Alan documents to AsciiDoc, so hopefully this might become a collaborative project to join efforts and resources toward a unified goal. So, right now this project is still rather undefined and open to suggestions.

# Project Contents

- [`/manual/`](./manual) — _The Alan Manual_ ported to AsciiDoc (WIP).
- [`/originals/`](./originals) — copy of the original docs being ported.
- [`LICENSE`](./LICENSE) — the [Artistic License 2.0].

# Project Dependencies

## AsciiDoctor

- https://asciidoctor.org/

This is the environemnt setup I'm using to work on the project:

    Ruby 2.5.1p57 (2018-03-29 revision 63029) [x64-mingw32]
    Asciidoctor 1.5.7.1
    Asciidoc FX v1.6.7


# Syntax Highlighting

- [Highlight website]
- [Highlight repository]

[Tristano Ajmone] has created an Alan syntax definition for Highlight, the cross platform syntax highlighter by André Simon. The Alan syntax is now part of the official Highlight distribution:

- https://gitlab.com/saalen/highlight/blob/master/langDefs/alan.lang

We're planning to integrate Hihglight into the Asciidoctor workflow in order to syntax highlight the code examples in the documentation. For more info, see [Issue #2106] at [Asciidoctor].


# Work Tools

To edit the AsciiDoc documents I'm using both Asciidoc FX and Sublime Text 3 with the Asciidoctor Package.

## Asciidoc FX

- https://www.asciidocfx.com/

Asciidoc FX is a cross platform and opensource book/document editor to build PDF, Epub, Mobi and HTML books, documents and slides.

This is a great editor for AsciiDoc and offers many useful features for tracking errors and converting to various formats; but most of all it offers an in-editor live-updated HTML5 preview of the document being edited, and also supports in-browser preview with live updates.


## Sublime Text Asciidoctor

- https://packagecontrol.io/packages/Asciidoctor

When it comes to global editing a document or project, Sublime Text offers many powerful features which make it my first-choice editor. So I tend to do all RegEx substitutions work via Sublime Text.

The Asciidoctor package adds to Sublime Text 3 AsciiDoc syntax highlighting.


# License Terms

- [`LICENSE`](./LICENSE)

The Alan System is distributed under the [Artistic License 2.0], which includes also the documentation that ships with it.


# External Links

## Alan

- [Alan website]
- [Alan IF Yahoo group]
- [Alan Git repository]

## AsciiDoctor

- [AsciiDoc Syntax Quick Reference]
- [Asciidoctor User Manual]

## Highlight

- [Highlight website]
- [Highlight repository]
- [Highlight's Alan syntax definition]


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>


[Artistic License 2.0]: https://www.perlfoundation.org/artistic-license-20.html "Read the full text of the Artistic License 2.0 at The Perl Foundation website"

[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"


<!-- Citations  -------------------------------------------------------------->

[receveing the green light]: https://groups.yahoo.com/neo/groups/alan-if/conversations/messages/3513

<!-- Alan Links -------------------------------------------------------------->

[Alan IF Yahoo group]: https://groups.yahoo.com/neo/groups/alan-if/info "Visit the Alan IF group at Yahoo! Groups"
[Alan Git repository]: https://bitbucket.org/alanif/alan "Visit Alan Git repository on Bitbucket"
[Alan website]: https://www.alanif.se/ "Visit Alan official website"


<!-- AsciiDoctor -->

[AsciiDoc Syntax Quick Reference]: https://asciidoctor.org/docs/asciidoc-syntax-quick-reference/

[Asciidoctor User Manual]: https://asciidoctor.org/docs/user-manual/

[Asciidoctor]: https://github.com/asciidoctor/asciidoctor/ "Visit Asciidoctor repository at GitHub"
[Issue #2106]: https://github.com/asciidoctor/asciidoctor/issues/2106 "Issue #2106 — Add extension point for integrating an alternative source highlighter"


<!-- External Tools and Dependencies -->

[Highlight website]: http://www.andre-simon.de/doku/highlight/en/highlight.php "Visit Highlight website"
[Highlight repository]: https://gitlab.com/saalen/highlight "Visit Highlight Git repository at GitLab"
[Highlight's Alan syntax definition]: https://gitlab.com/saalen/highlight/blob/master/langDefs/alan.lang "View the sourcefile of the Alan syntax definition for Highlight"

<!-- Project Files ----------------------------------------------------------->




<!-- EOF -->
