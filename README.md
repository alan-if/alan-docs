# Alan IF Documentation Project

- https://github.com/alan-if/alan-docs

This repository contains the [AsciiDoc] sources of the ALAN Documentation published at:

- https://git.io/alan-docs

Help and contributions are welcome (see [`CONTRIBUTING.md`][CONTRIBUTING]).

For a quick overview of the status of the documents in this project, see the [`STATUS.md`][STATUS] document.

> __SUBMODULES NOTE__ — This repository contains Git submodules; clone with:
>
>     $ git clone --recursive https://github.com/alan-if/alan-docs
>
> If you've already cloned it, update via:
>
>     $ git submodule update --init

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Latest News](#latest-news)
    - [Adopting Rouge](#adopting-rouge)
    - [Migration to Highlight v4](#migration-to-highlight-v4)
    - [New Project Website](#new-project-website)
- [About This Project](#about-this-project)
    - [License Terms](#license-terms)
    - [Project Structure and Contents](#project-structure-and-contents)
        - [Git Submodules](#git-submodules)
        - [File Extensions Conventions](#file-extensions-conventions)
    - [Development Enviroment Info](#development-enviroment-info)
    - [Syntax Highlighting](#syntax-highlighting)
    - [Project Dependencies](#project-dependencies)
        - [Asciidoctor](#asciidoctor)
        - [Asciidoctor-fopub](#asciidoctor-fopub)
        - [Asciidoctor Diagram](#asciidoctor-diagram)
        - [Dia Diagram Editor](#dia-diagram-editor)
        - [Highlight](#highlight)
        - [highlight.js](#highlightjs)
        - [Rouge](#rouge)
    - [Work Tools](#work-tools)
        - [Asciidoc FX](#asciidoc-fx)
        - [Sublime Text Asciidoctor](#sublime-text-asciidoctor)
- [External Links](#external-links)
    - [Alan](#alan)
    - [Asciidoctor](#asciidoctor-1)
    - [Highlight](#highlight-1)

<!-- /MarkdownTOC -->

-----

# Latest News

Some important news for project maintainers and contributors...

## Adopting Rouge

Since July 2021, this project support syntax highlighting via Rouge (Ruby).

The new Rouge toolchain uses our own custom Rouge adapter and lexer for ALAN, allowing static highlighting supporting callouts (which Highlight doesn't support).
All documents that don't make use of span or highlight marker formatting in highlighted code blocks (a feature currently unsupported with Rouge) are migrating from Highlight or highlight.js to the Rouge toolchain.

## Migration to Highlight v4

Since May 2021, this project uses the new Highlight v4 version.

Since the new major version introduced some changes in the class names in the generated HTML, we've updated all Sass/SCSS sources accordingly, and Highlight v3.x will no longer work correctly (some elements wouldn't be highlighted as expected).

## New Project Website

Since April 2021, this repository now has its own website were you can consult and download all the ALAN documentation:

- https://git.io/alan-docs

PDF and HTML builds of the documents will no longer be tracked by the repository (will be ignored by Git), and will only be available through the website.


# About This Project

This repository was created on August 15th, 2018 by [Tristano Ajmone] on behalf of the [Alan Interactive Fiction Development team] in order to port to the [AsciiDoc] format the original Alan documentation, which consisted of multiple documents in various formats, and create a unified project and a toolchain to handle their conversion to different formats.

In the course of 2021, after three years of work, we finally achieved the stage where all the documents originally stored in the ALAN repository, as well as some other third party documents, were all successful recreated in AsciiDoc and made available on the project's website for online consultation or download.

Other members of the Alan group are also working on porting other Alan related documents to AsciiDoc, so hopefully this might become a [collaborative project][CONTRIBUTING] to join efforts and resources toward a unified goal.


## License Terms

- [`LICENSE`](./LICENSE)

The Alan System is distributed under the [Artistic License 2.0], which includes also the documentation that ships with it.


## Project Structure and Contents

- [`/_assets/`][/_assets/] — shared assets:
    + [`/alan-xsl-fopub/`][/alan-xsl-fopub/] — submoduled [alan-xsl-fopub] repository, for XSL FOP template:
        * [`/xsl-fopub/`][/xsl-fopub/] — XSL Stylesheets for PDF conversion via asciidoctor-fopub.
        * [`/fonts/`][/fonts/] — required fonts for PDF conversion.
    + [`/hjs/`][/hjs/] — custom [highlight.js] build for Alan.
    + [`/hl/`][/hl/] — assets for the Asciidoctor Highlight toolchain.
    + [`/images/`][/images/]
    + [`/rouge/`][/rouge/] — assets for the Asciidoctor Rouge toolchain.
    + [`/sh/`][/sh/] — Bash/Shell reusable scripts and modules.
- [`/_assets-src/`][/_assets-src/] — assets source files:
    + [`/colors/`][/colors/] — Color schemes and palettes used in the documents.
    + [`/images/`][/images/]:
        * [`/alan-logo/`][/alan-logo/] — Alan logo reconstructed as vector image.
        * [`/dia/`][/dia/] — [Dia Diagram Editor] source projects for SVG diagrams.
    + [`/original-docs/`][/original-docs/] — copy of the original docs being ported.
    + [`/sass/`][/sass/] — [Sass] source files to build CSS stylesheets.
- [`/_dev/`][/_dev/] — Project developers' stuff (testing, etc.).
- [`/alan-design/`][/alan-design/] — Various WIP documents on ALAN design and internals.
- [`/alanguide/`][/alanguide/] — _Alan 3 Beginner's Guide_ ported to AsciiDoc (WIP).
- [`/conversion/`][/conversion/] — _ALAN Conversion Guide from v2 to v3_ ported to AsciiDoc (WIP).
- [`/ideguide/`][/ideguide/] — _Alan IDE Reference Guide_ v1.0, by Robert DeFord, 2018.
- [`/manual/`][/manual/] — _The Alan Manual_ ported to AsciiDoc.
- [`/writing/`][/writing/] — _The Alan Author's Guide_ ported to AsciiDoc (WIP).
- [`CONTRIBUTING.md`][CONTRIBUTING] — Guidelines for contributing to this project.
- [`CONVENTIONS.md`][CONVENTIONS] — Editors' formatting and styles guidelines.
- [`LICENSE`](./LICENSE) — the [Artistic License 2.0].
- [`STATUS.md`][STATUS] — Info about the various docs, highlighters and backends.


### Git Submodules

Please, be aware of the presence of a Git submodule inside the [`/alan-xsl-fopub/`](./alan-xsl-fopub/) folder, and make sure you properly update it in your local clone of the repository to avoid regressions when commiting to the project.

For a tutorial on the common pitfalls of submodules, refer to Christophe Porteneuve's article [_Mastering Git submodules_] » [The dangers we face].

For detailed info on how to use Git submodules, see:

- [_Pro Git_ book » Git Submodules][Git Submodules] — by Scott Chacon and Ben Straub.
- [_Learn Version Control with Git_ » Submodules] — by Git Tower.
- [Using submodules in Git - Tutorial] — by Lars Vogel.



### File Extensions Conventions

In order to distinguish between AsciiDoc documents according to their role in the project, the following file-extensions conventions are being adopted:

- `.asciidoc` — used for Alan documentation source files.
- `.adoc` — used for sub-sources in multi-file ALAN documents, i.e. imported in the main source via `include::` directives.
- `.asc` — used for project docs (e.g. READMEs) and any AsciiDoc files not intendend for distribution in the Alan documentation.

Using different extensions is also required for automation scripts, which select sourcefiles by their extension during batch operations.

## Development Enviroment Info

This is the environemnt setup used for the project by its maintainer:

    ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x64-mingw32]
    Asciidoctor 2.0.15
    asciidoctor-fopub
    asciidoctor-diagram 2.1.2
    Rouge 3.26.0
    Asciidoc FX v1.6.8
    Dia Diagram Editor v0.97

## Syntax Highlighting

This project provides all the required assets to highlight AsciiDoc documents containing ALAN code blocks, using Asciidoctor and a choice of different highlighters, for which [Tristano Ajmone] has created custom ALAN syntax definitions:

|  highlighter   | formats  |             backends             |
|----------------|----------|----------------------------------|
| [Highlight]    | HTML     | [Asciidoctor]                    |
| [highlight.js] | HTML     | [Asciidoctor]                    |
| [Rouge]        | HTML/PDF | [Asciidoctor], [asciidoctor-pdf] |
| [XSLTHL]       | PDF      | [asciidoctor-fopub]              |

For more info on the various features supported by each highlighter, and how these might affect which highlighter to use for a new document, see the [`STATUS.md`][STATUS] document.


## Project Dependencies

### Asciidoctor

- https://asciidoctor.org/

In order to convert the AsciiDoc sources to any format you'll need to install Ruby and the Asciidoctor gem.

Once you've installed Ruby, you can install the Asciidoctor gem via CLI:

    gem install asciidoctor


### Asciidoctor-fopub

- https://github.com/asciidoctor/asciidoctor-fopub

The AsciiDoc to PDF toolchain also requires setting up asciidoctor-fopub on your machine; this tool is required to convert from DocBook to PDF.

For guidelines on setting up the asciidoctor-fopub toolchain, refer to documentation of the [alan-xsl-fopub] submodule:

- https://github.com/alan-if/alan-xsl-fopub/blob/master/README.md

Also available locally at:

- `_assets/alan-xsl-fopub/README.md`


### Asciidoctor Diagram

- https://docs.asciidoctor.org/diagram-extension/latest/

This Ruby gem is an Asciidoctor extension,

> Asciidoctor Diagram is a set of Asciidoctor extensions that enable you to add diagrams, which you describe using plain text, to your AsciiDoc document.

It's only required to build some documents in this project, i.e. the ALAN design docs found in:

- [`/alan-design/`][/alan-design/]

To install the Asciidoctor Diagram via the CLI:

    gem install asciidoctor-diagram


### Dia Diagram Editor

- http://dia-installer.de/

Optionally, if you want to edit and build the diagram images, you'll need to install Dia on your machine too. This tool is required to build via automated scripts some images found in [`/_assets-src/images/`](./_assets-src/images/).

### Highlight

- http://www.andre-simon.de/doku/highlight/en/highlight.php

This is a cross platform application, just download the installer matching your OS and architecture.

### highlight.js

- https://highlightjs.org

You don't need to install anything for documents using highlight.js; the repository contains a custom highlight.js package which is used for syntax highlighting.

### Rouge

- http://rouge.jneen.net
- https://github.com/rouge-ruby/rouge

Rouge is our syntax highlighter of choice in this project, so you should really install it.

This is a Ruby gem, to install it via CLI type:

    gem install rouge


## Work Tools

To edit the AsciiDoc documents I'm using both Asciidoc FX and Sublime Text 3 with the Asciidoctor Package.

### Asciidoc FX

- https://www.asciidocfx.com/

Asciidoc FX is a cross platform and open source book/document editor to build PDF, Epub, Mobi and HTML books, documents and slides.

This is a great editor for AsciiDoc and offers many useful features for tracking errors and converting to various formats; but most of all it offers an in-editor live-updated HTML5 preview of the document being edited, and also supports in-browser preview with live updates.


### Sublime Text Asciidoctor

- https://packagecontrol.io/packages/Asciidoctor

When it comes to global editing a document or project, Sublime Text offers many powerful features which make it my first-choice editor. So I tend to do all RegEx substitutions work via Sublime Text.

The Asciidoctor package adds to Sublime Text 3 AsciiDoc syntax highlighting.

-------------------------------------------------------------------------------


# External Links

## Alan

- [Alan website]
- [Alan IF Google group]
- [Alan sources on GitHub][Alan GitHub] — source code repository on GitHub.
- [Alan IF Development team] — GitHub profile and public projects.

## Asciidoctor

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

<!-- people & organizations -------------------------------------------------->

[Dan Allen]: https://github.com/mojavelinux "View Dan Allen's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

[Alan IF Development team]: https://github.com/alan-if "Visit the Alan Interactive Fiction Development team organization on GitHub"
[Alan Interactive Fiction Development team]: https://github.com/alan-if "View the Alan Interactive Fiction Development team profile on GitHub"

<!-- Alan Links -------------------------------------------------------------->

[Alan IF Google group]: https://groups.google.com/g/alan-if "Visit the Alan IF group at Google Groups"
[Alan website]: https://www.alanif.se/ "Visit Alan official website"
[Alan GitHub]: https://github.com/alan-if/alan/ "Visit the Alan source repository on GitHub"

<!-- Asciidoctor -->

[AsciiDoc]: https://asciidoctor.org/ "Visit Asciidoctor website"

[AsciiDoc Syntax Quick Reference]: https://docs.asciidoctor.org/asciidoc/latest/syntax-quick-reference/

[Asciidoctor User Manual]: https://docs.asciidoctor.org/asciidoc/latest/

[Asciidoctor]: https://github.com/asciidoctor/asciidoctor/ "Visit Asciidoctor repository at GitHub"
[Issue #2106]: https://github.com/asciidoctor/asciidoctor/issues/2106 "Issue #2106 — Add extension point for integrating an alternative source highlighter"

[asciidoctor-fopub]: https://github.com/asciidoctor/asciidoctor-fopub "Visit the asciidoctor-fopub repository on GitHub"
[asciidoctor-pdf]: https://github.com/asciidoctor/asciidoctor-pdf "Visit the asciidoctor-pdf repository on GitHub"

<!-- External Tools and Dependencies -->

[alan-xsl-fopub]: https://github.com/alan-if/alan-xsl-fopub "Visit the alan-xsl-fopub repository on GitHub"

[Dia]: http://dia-installer.de/ "Visit Dia's website"
[Dia Diagram Editor]: http://dia-installer.de/ "Visit Dia's website"

[highlight.js]: https://highlightjs.org/ "Visit highlight.js website"

[Highlight]: http://www.andre-simon.de/doku/highlight/en/highlight.php "Visit Highlight website"
[Highlight website]: http://www.andre-simon.de/doku/highlight/en/highlight.php "Visit Highlight website"
[Highlight repository]: https://gitlab.com/saalen/highlight "Visit Highlight Git repository at GitLab"
[Highlight's Alan syntax definition]: https://gitlab.com/saalen/highlight/blob/master/langDefs/alan.lang "View the sourcefile of the Alan syntax definition for Highlight"

[Rouge]: http://rouge.jneen.net "Visit Rouge website"

[Sass]: https://sass-lang.com "Visit Sass website"
[Sass]: https://sass-lang.com "Visit Sass website"
[Dart Sass]: https://github.com/sass/dart-sass "Visit Dart Sass repository on GitHub"
[Ruby Sass]: https://sass-lang.com/ruby-sass "Visit Ruby Sass homepage"
[Choco Sass]: https://chocolatey.org/packages/sass "View the Chocolatey package for Dart Sass"

[XSLTHL]: https://github.com/xmlark/xslthl "Visit XSLTHL repository on GitHub"

<!-- Project Files ----------------------------------------------------------->

[CONVENTIONS]: ./CONVENTIONS.md "Read the 'Formatting and Styling Conventions' guidelines adopted in Alan-Docs"
[CONTRIBUTING]: ./CONTRIBUTING.md "Read the guidelines for contributing to Alan-Docs"
[STATUS]: ./STATUS.md "Status info about the docs and assets in this project"

<!-- Project Folders --------------------------------------------------------->

[/_assets/]: ./_assets/
[/alan-xsl-fopub/]: https://github.com/alan-if/alan-xsl-fopub/
[/xsl-fopub/]: https://github.com/alan-if/alan-xsl-fopub/tree/master/xsl-fopub/
[/fonts/]: https://github.com/alan-if/alan-xsl-fopub/tree/master/fonts/
[/hjs/]: ./_assets/hjs/
[/hl/]: ./_assets/hl/
[/images/]: ./_assets/images/
[/rouge/]: ./_assets/rouge/
[/sh/]: ./_assets/sh/
[/_assets-src/]: ./_assets-src/
[/colors/]: ./_assets-src/colors/
[/images/]: ./_assets-src/images/
[/alan-logo/]: ./_assets-src/images/alan-logo/
[/dia/]: ./_assets-src/images/dia/
[/original-docs/]: ./_assets-src/original-docs/
[/sass/]: ./_assets-src/sass/
[/_dev/]: ./_dev/
[/alan-design/]: ./alan-design/
[/alanguide/]: ./alanguide/
[/conversion/]: ./conversion/
[/ideguide/]: ./ideguide/
[/manual/]: ./manual/
[/writing/]: ./writing/

<!-- Git references -->

[Pro Git]: https://git-scm.com/book "'Pro Git' book online"
[Git Submodules]: https://git-scm.com/book/en/v2/Git-Tools-Submodules "Read the chapter on Git Submodules from the 'Pro Git' book"

[Using submodules in Git - Tutorial]: https://www.vogella.com/tutorials/GitSubmodules/article.html "Read tutorial"
[_Learn Version Control with Git_ » Submodules]: https://www.git-tower.com/learn/git/ebook/en/command-line/advanced-topics/submodules#start

[_Mastering Git submodules_]: https://medium.com/@porteneuve/mastering-git-submodules-34c65e940407 "Read article"
[The dangers we face]: https://medium.com/@porteneuve/mastering-git-submodules-34c65e940407#6b21 "Jump to section 'The dangers we face' of the 'Mastering Git submodules' article"

<!-- Repo Issues -->

[Issue #84]: https://github.com/alan-if/alan-docs/issues/84 "Issue #84 — Use New encoding Option with include:: Directives"

<!-- EOF -->
