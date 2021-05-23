# Alan IF Documentation Project

- https://github.com/alan-if/alan-docs

This repository contains the [AsciiDoc] sources of the ALAN Documentation published at:

- https://git.io/alan-docs

Help and contributions are welcome (see [`CONTRIBUTING.md`][CONTRIBUTING]).

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
    - [Migration to Highlight v4](#migration-to-highlight-v4)
    - [New Project Website](#new-project-website)
    - [Asciidoctor Inclusions with ISO Encoding](#asciidoctor-inclusions-with-iso-encoding)
    - [Switching to Java JDK 12](#switching-to-java-jdk-12)
    - [Switching to Dart Sass](#switching-to-dart-sass)
- [About This Project](#about-this-project)
    - [License Terms](#license-terms)
    - [Project Contents](#project-contents)
        - [Git Submodules](#git-submodules)
        - [File Extensions Conventions](#file-extensions-conventions)
    - [Development Enviroment Info](#development-enviroment-info)
    - [Project Dependencies](#project-dependencies)
        - [Asciidoctor](#asciidoctor)
        - [Asciidoctor-fopub](#asciidoctor-fopub)
        - [Dia Diagram Editor](#dia-diagram-editor)
    - [Syntax Highlighting](#syntax-highlighting)
    - [Work Tools](#work-tools)
        - [Asciidoc FX](#asciidoc-fx)
        - [Sublime Text Asciidoctor](#sublime-text-asciidoctor)
- [About Alan Documentation](#about-alan-documentation)
    - [Standard Library Documentation](#standard-library-documentation)
    - [Alan Cookbook](#alan-cookbook)
- [External Links](#external-links)
    - [Alan](#alan)
    - [Asciidoctor](#asciidoctor-1)
    - [Highlight](#highlight)

<!-- /MarkdownTOC -->

-----

# Latest News

Some important news for project maintainers and contributors...

## Migration to Highlight v4

Since May 2021, this project uses the new Highlight v4 version.

Since the new major version introduced some changes in the class names in the generated HTML, we've updated all Sass/SCSS sources accordingly, and Highlight v3.x will no longer work correctly (some elements wouldn't be highlighted as expected).

## New Project Website

Since April 2021, this repository now has its own website were you can consult and download all the ALAN documentation:

- https://git.io/alan-docs

PDF and HTML builds of the documents will no longer be tracked by the repository (will be ignored by Git), and will only be available through the website.

## Asciidoctor Inclusions with ISO Encoding

Since December 2020, the project began levering the new (and undocumented) `encoding` option for the `include::` directive, so the toolchain no longer needs to first convert external ALAN sources and transcripts to UTF-8 before their inclusion in the source documents (see [Issue #84]).

The syntax of the new feature is as follows:

```asciidoc
include::./somefile.alan[encoding=iso-8859-1]
```

Being able to directly include ALAN sources and transcript in their native ISO-8859-1 encoding, without having to create UTF-8 versions via iconv, is going to have a huge build time impact on those documents that rely on external ALAN sources and dynamically generated transcripts.

Huge thanks to [Dan Allen]  (@mojavelinux) for having promptly accepted and implemented [our feature request][#3248] to support on-the-fly encoding in `include::` directives.

## Switching to Java JDK 12

Since July 2019, this project is using __[asciidoctor-fopub]__ with Java JDK 12. At the time the project was created, there was [a problem with gradle] that prevented using Java versions above v8; the problem has been fixed since (but Tristano only recently managed to actually test it locally and start using JDK 12).

So, anyone still using Java 8 for __[asciidoctor-fopub]__ should now switch to JDK 12, which fixes many security issues.

[a problem with gradle]: https://github.com/asciidoctor/asciidoctor-fopub/issues/87 "Read more about the original problem on asciidoctor-fopub Issue #87"

## Switching to Dart Sass

Since March 11 2019 this project has switched from using [Ruby Sass] to the newest [Dart Sass] because starting from March 26 2019 Ruby Sass will no longer be maintained.

Since Dart Sass behavior is slightly different from Ruby Sass, anyone working on the repository Sass sources must ensure to switch to Dart Sass to avoid creating divergent CSS stylesheets.

The easiest way to install Dart Sass on Windows, and keep it always updated, is to [install it via Chocolatey][Choco Sass].

From [Ruby Sass homepage][Ruby Sass]:

> Ruby Sass will continue to be maintained until 26 March 2019. During this maintenance period, bugs will be fixed as much as possible but no new features will be added. The only exception is for features that are necessary to support new CSS syntax, which will continue to be added.
>
> Dart Sass, the new primary implementation, doesn't always behave 100% the same as Ruby Sass—it implements a number of behavioral changes that were planned for Ruby Sass, but were never implemented in a stable version. To make migration easier, recent versions of Ruby Sass emit warnings for any code that won't be compatible with Dart Sass. Ongoing maintenance includes adding any warnings for new behavioral differences, if they come up.
>
> Once the maintenance period ends, Ruby Sass's repository will be archived, no more changes of any kind will be made, and no new releases will be cut.


# About This Project

This repository was created on August 15th, 2018 by [Tristano Ajmone] on behalf of the [Alan Interactive Fiction Development team] in order to port to the [AsciiDoc] format the original Alan documentation, which consisted of multiple documents in various formats, and create a unified project and a toolchain to handle their conversion to different formats.

In the course of 2021, after three years of work, we finally achieved the stage where all the documents originally stored in the ALAN repository, as well as some other third party documents, were all successful recreated in AsciiDoc and made available on the project's website for online consultation or download.

Other members of the Alan group are also working on porting other Alan related documents to AsciiDoc, so hopefully this might become a [collaborative project][CONTRIBUTING] to join efforts and resources toward a unified goal.


## License Terms

- [`LICENSE`](./LICENSE)

The Alan System is distributed under the [Artistic License 2.0], which includes also the documentation that ships with it.


## Project Contents

- [`/_assets/`](./_assets/) (shared assets):
    + [`/alan-xsl-fopub/`](./_assets/alan-xsl-fopub/) — submoduled [alan-xsl-fopub] repository, for XSL FOP template:
        * [`/xsl-fopub/`](./_assets/alan-xsl-fopub/xsl-fopub/) — XSL Stylesheets for PDF conversion via asciidoctor-fopub.
        * [`/fonts/`](./_assets/alan-xsl-fopub/fonts/) — required fonts for PDF conversion.
    + [`/hjs/`](./_assets/hjs/) — custom [highlight.js] build for Alan.
    + [`/hl/`](./_assets/hl/) — assets for the Asciidoctor Highlight toolchain.
    + [`/images/`](./_assets/images/)
    + [`/sh/`](./_assets/sh/) — Bash/Shell reusable scripts and modules.
- [`/_assets-src/`](./_assets-src/) (assets' source files):
    + [`/colors/`](./_assets-src/colors/) — Color schemes and palettes used in the documents.
    + [`/images/`](./_assets-src/images/):
        * [`/alan-logo/`](./_assets-src/images/alan-logo/) — Alan logo reconstructed as vector image.
        * [`/dia/`](./_assets-src/images/dia/) — [Dia Diagram Editor] source projects for SVG diagrams.
    + [`/original-docs/`](./_assets-src/original-docs/) — copy of the original docs being ported.
    + [`/sass/`](./_assets-src/sass/) — [Sass] source files to build CSS stylesheets.
- [`/_dev/`](./_dev) — Project developers' stuff (testing, etc.).
- [`/alan-design/`](./alan-design) — Various WIP documents on ALAN design and internals.
- [`/alanguide/`](./alanguide) — _Alan 3 Beginner's Guide_ ported to AsciiDoc (WIP).
- [`/ideguide/`](./ideguide) — _Alan IDE Reference Guide_ v1.0, by Robert DeFord, 2018.
- [`/manual/`](./manual/) — _The Alan Manual_ ported to AsciiDoc.
- [`/writing/`](./writing/) — _The Alan Author's Guide_ ported to AsciiDoc (WIP).
- [`CONTRIBUTING.md`][CONTRIBUTING] — Guidelines for contributing to this project.
- [`CONVENTIONS.md`][CONVENTIONS] — Editors' formatting and styles guidelines.
- [`LICENSE`](./LICENSE) — the [Artistic License 2.0].

### Git Submodules

Please, be aware of the presence of a Git submodule inside the [`/alan-xsl-fopub/`](./alan-xsl-fopub/) folder, and make sure you properly update it in your local clone of the repository to avoid regressions when commiting to the project.

For a tutorial on the common pitfalls of submodules, refer to Christophe Porteneuve's article [_Mastering Git submodules_] » [The dangers we face].

For detailed info on how to use Git submodules, see:

- [_Pro Git_ book » Git Submodules][Git Submodules] — by Scott Chacon and Ben Straub.
- [_Learn Version Control with Git_ » Submodules] — by Git Tower.
- [Using submodules in Git - Tutorial] — by Lars Vogel.



### File Extensions Conventions

In order to distinguish between AsciiDoc documents according to their role in the project, the following file-extensions conventions are being adopted:

- "`.asciidoc`" is used for Alan documentation source files.
- "`.adoc`" is used for project docs (e.g. READMEs) and any AsciiDoc files not intendend for distribution in the Alan documentation.

Using different extensions is also required for automation scripts, which select sourcefiles by their extension during batch operations.

## Development Enviroment Info

This is the environemnt setup used for the project by its maintainer:

    Ruby 3.0.1p64 (2021-04-05 revision 0fb782ee38) [x64-mingw32]
    Asciidoctor 2.0.12
    asciidoctor-fopub
    Asciidoc FX v1.6.8
    Dia Diagram Editor v0.97


## Project Dependencies

### Asciidoctor

- https://asciidoctor.org/

In order to convert the AsciiDoc sources to any format you'll need to install Ruby and the Asciidoctor gem.

### Asciidoctor-fopub

- https://github.com/asciidoctor/asciidoctor-fopub

The AsciiDoc to PDF toolchain also requires setting up asciidoctor-fopub on your machine; this tool is required to convert from DocBook to PDF.

For guidelines on setting up the asciidoctor-fopub toolchain, refer to documentation of the [alan-xsl-fopub] submodule:

- https://github.com/alan-if/alan-xsl-fopub/blob/master/README.md

Also available locally at:

- `_assets/alan-xsl-fopub/README.md`

### Dia Diagram Editor

- http://dia-installer.de/

Optionally, if you want to edit and build the diagram images, you'll need to install Dia on your machine too. This tool is required to build via automated scripts some images found in [`/_assets-src/images/`](./_assets-src/images/).



## Syntax Highlighting

- [Highlight website]
- [Highlight repository]

[Tristano Ajmone] has created an Alan syntax definition for Highlight, the cross platform syntax highlighter by André Simon. The Alan syntax is now part of the official Highlight distribution:

- https://gitlab.com/saalen/highlight/blob/master/langDefs/alan.lang

We're planning to integrate Hihglight into the Asciidoctor workflow in order to syntax highlight the code examples in the documentation. For more info, see [Issue #2106] at [Asciidoctor].


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

# About Alan Documentation

The complete (unported) Alan documentation can be found at:

- https://github.com/alan-if/alan/tree/master/doc/

Which is divided into three sub-foldered groups of documents:

- [`/manual/`][src_manual]:
    + _Reference Manual_ (ODT document)
    + _Author's Guide_ (ODT document)
    + _Conversion Guide_ (ODT document)
- [`/design/`][src_design]:
    + _Alan Design Documentation_ (Word document)
    + _Alan Rules_ (RTF document)
- [`/guide/`][src_guide]:
    + _Alan 3 Beginner's Guide_ (AsciiDoc) by Michael Arnaud


[src_design]: https://github.com/alan-if/alan/tree/master/doc/design
[src_guide]: https://github.com/alan-if/alan/tree/master/doc/guide
[src_manual]: https://github.com/alan-if/alan/tree/master/doc/manual

## Standard Library Documentation

Furthermore, there's the documentation for Anssi Räisänen's Alan StdLib:

- https://github.com/AnssiR66/AlanStdLib

Which consists of:

- _Alan Standard Library 2.x User's Manual_ (PDF)
- _Quick Reference for ALAN Standard Library v2.x_
- _The Very Quick Start Guide for ALAN Standard Library v2.x_

## Alan Cookbook

Last but not least, there's _The Alan Cookbook_ by Anssi Räisänen:

- [_The Alan Cookbook_][Cookbook PDF] — PDF download

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

[AsciiDoc Syntax Quick Reference]: https://asciidoctor.org/docs/asciidoc-syntax-quick-reference/

[Asciidoctor User Manual]: https://asciidoctor.org/docs/user-manual/

[Asciidoctor]: https://github.com/asciidoctor/asciidoctor/ "Visit Asciidoctor repository at GitHub"
[Issue #2106]: https://github.com/asciidoctor/asciidoctor/issues/2106 "Issue #2106 — Add extension point for integrating an alternative source highlighter"

[asciidoctor-fopub]: https://github.com/asciidoctor/asciidoctor-fopub "Visit the asciidoctor-fopub repository on GitHub"

[#3248]: https://github.com/asciidoctor/asciidoctor/issues/3248 "View feature request #3248 on Asciidoctor repository"

<!-- External Tools and Dependencies -->

[alan-xsl-fopub]: https://github.com/alan-if/alan-xsl-fopub "Visit the alan-xsl-fopub repository on GitHub"

[Sass]: https://sass-lang.com "Visit Sass website"
[Sass]: https://sass-lang.com "Visit Sass website"
[Dart Sass]: https://github.com/sass/dart-sass "Visit Dart Sass repository on GitHub"
[Ruby Sass]: https://sass-lang.com/ruby-sass "Visit Ruby Sass homepage"
[Choco Sass]: https://chocolatey.org/packages/sass "View the Chocolatey package for Dart Sass"

[highlight.js]: https://highlightjs.org/ "Visit highlight.js website"

[Highlight website]: http://www.andre-simon.de/doku/highlight/en/highlight.php "Visit Highlight website"
[Highlight repository]: https://gitlab.com/saalen/highlight "Visit Highlight Git repository at GitLab"
[Highlight's Alan syntax definition]: https://gitlab.com/saalen/highlight/blob/master/langDefs/alan.lang "View the sourcefile of the Alan syntax definition for Highlight"

[Dia]: http://dia-installer.de/ "Visit Dia's website"
[Dia Diagram Editor]: http://dia-installer.de/ "Visit Dia's website"

<!-- Project Files ----------------------------------------------------------->

[CONVENTIONS]: ./CONVENTIONS.md "Read the 'Formatting and Styling Conventions' guidelines adopted in Alan-Docs"
[CONTRIBUTING]: ./CONTRIBUTING.md "Read the guidelines for contributing to Alan-Docs"

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
