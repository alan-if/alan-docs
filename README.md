# Alan IF Documentation Project

- https://github.com/alan-if/alan-docs

This repository is dedicated to the conversion of the Alan documentation to AsciiDoc. Help and contributions are welcome (see [`CONTRIBUTING.md`][CONTRIBUTING]).

- [_Alan Manual_][Man LPrev] —  HTML Live Preview (short URL: https://goo.gl/DNnGx8)
- [_Alan Manual_][Man PDF] —  PDF download
- [_Alan IDE Reference Guide_][IDE PDF] —  PDF download
- [_Alan 3 Beginner's Guide_][Guide LPrev] —  HTML Live Preview
- [_Alan Author's Guide_][Writing LPrev] (WIP) —  HTML Live Preview

> __SUBMODULES NOTE__ — This repository now contains Git submodules; clone with:
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
    - [Switching to Java JDK 12](#switching-to-java-jdk-12)
    - [Switching to Dart Sass](#switching-to-dart-sass)
- [About This Project](#about-this-project)
    - [License Terms](#license-terms)
    - [Project Contents](#project-contents)
        - [Git Submodules](#git-submodules)
        - [File Extensions Conventions](#file-extensions-conventions)
    - [Development Enviroment Info](#development-enviroment-info)
    - [Project Dependencies](#project-dependencies)
        - [AsciiDoctor](#asciidoctor)
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
    - [AsciiDoctor](#asciidoctor-1)
    - [Highlight](#highlight)

<!-- /MarkdownTOC -->

-----

# Latest News

Some important news for project maintainers and contributors...

## Switching to Java JDK 12

Since July 2019, this project is using __[asciidoctor-fopub]__ with Java JDK 12. At the time the project was created, there was [a problem with gradle] that prevented using Java versions above v8; the problem has been fixed since (but Tristano only recently managed to actually test it locally and start using JDK 12).

So, anyonw still using Java 12 for __[asciidoctor-fopub]__ should now switch to JDK 12, which fixes many security issues.

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

This repository was created on August 15th, 2018 by [Tristano Ajmone] on behalf of the [Alan Interactive Fiction Development team].

At the present stage, Alan documentation consists of multiple documents in various formats; the goal of this project is to port them all to AsciiDoc and create a unified project and a toolchain to handle conversion to different formats.

Other members of the Alan group are also working on porting other Alan documents to AsciiDoc, so hopefully this might become a [collaborative project][CONTRIBUTING] to join efforts and resources toward a unified goal.

Being still a young project, may aspects are still vaguely defined and open to suggestions.

## License Terms

- [`LICENSE`](./LICENSE)

The Alan System is distributed under the [Artistic License 2.0], which includes also the documentation that ships with it.


## Project Contents

- [`/_assets/`](./_assets/) (shared assets):
    + [`/hjs/`](./_assets/hjs/) — custom [highlight.js] build for Alan.
    + [`/hl/`](./_assets/hl/) — assets for the Asciidoctor Highlight toolchain.
    + [`/images/`](./_assets/images/)
    + [`/alan-xsl-fopub/`](./_assets/alan-xsl-fopub/) — submoduled [alan-xsl-fopub] repository, for XSL FOP template:
        * [`/xsl-fopub/`](./_assets/alan-xsl-fopub/xsl-fopub/) — XSL Stylesheets for PDF conversion via asciidoctor-fopub.
        * [`/fonts/`](./_assets/alan-xsl-fopub/fonts/) — required fonts for PDF conversion.
- [`/_assets-src/`](./_assets-src/) (assets' source files):
    + [`/colors/`](./_assets-src/colors/) — Color schemes and palettes used in the documents.
    + [`/images/`](./_assets-src/images/):
        * [`/alan-logo/`](./_assets-src/images/alan-logo/) — Alan logo reconstructed as vector image.
        * [`/predefined-classes/`](./_assets-src/images/predefined-classes/) — The predefined-classes diagram reconstructed using [Dia Diagram Editor].
    + [`/original-docs/`](./_assets-src/original-docs/) — copy of the original docs being ported.
    + [`/sass/`](./_assets-src/sass/) — [Sass] source files to build CSS stylesheets.
- [`/_dev/`](./_dev) — Project developers' stuff (testing, etc.).
- [`/alanguide/`](./alanguide) — _Alan 3 Beginner's Guide_ ported to AsciiDoc (WIP).
- [`/ideguide/`](./ideguide) — _Alan IDE Reference Guide_ v1.0, by Robert DeFord, 2018.
- [`/manual/`](./manual/) — _The Alan Manual_ ported to AsciiDoc (WIP).
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

    Ruby 2.6.1p33 (2019-01-30 revision 66950) [x64-mingw32]
    Asciidoctor 2.0.6
    asciidoctor-fopub
    Asciidoc FX v1.6.8
    Dia Diagram Editor v0.97.2


## Project Dependencies

### AsciiDoctor

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

Asciidoc FX is a cross platform and opensource book/document editor to build PDF, Epub, Mobi and HTML books, documents and slides.

This is a great editor for AsciiDoc and offers many useful features for tracking errors and converting to various formats; but most of all it offers an in-editor live-updated HTML5 preview of the document being edited, and also supports in-browser preview with live updates.


### Sublime Text Asciidoctor

- https://packagecontrol.io/packages/Asciidoctor

When it comes to global editing a document or project, Sublime Text offers many powerful features which make it my first-choice editor. So I tend to do all RegEx substitutions work via Sublime Text.

The Asciidoctor package adds to Sublime Text 3 AsciiDoc syntax highlighting.



-------------------------------------------------------------------------------

# About Alan Documentation

The complete (unported) Alan documentation can be found at:

- https://bitbucket.org/alanif/alan/src/master/doc/

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


[src_design]: https://bitbucket.org/alanif/alan/src/master/doc/design
[src_guide]: https://bitbucket.org/alanif/alan/src/master/doc/guide
[src_manual]: https://bitbucket.org/alanif/alan/src/master/doc/manual

## Standard Library Documentation

Furthermore, there's the documentation for Anssi Räisänen's Alan StdLib:

- https://github.com/AnssiR66/AlanStdLib

Which consists of:

- _Alan Standard Library 2.x User's Manual_ (PDF)
- _Quick Reference for ALAN Standard Library v2.x_
- _The Very Quick Start Guide for ALAN Standard Library v2.x_

## Alan Cookbook

Last but not least, there's _The Alan Cookbook_ (available on [Alan IF Yahoo group]):

- _The Alan Cookbook_ (PFD & txt) by Anssi Räisänen

[Alan IF Yahoo group]: https://groups.yahoo.com/neo/groups/alan-if/files

-------------------------------------------------------------------------------

# External Links

## Alan

- [Alan website]
- [Alan IF Yahoo group]
- [Alan sources on Bitbucket][Alan Bitbucket] — source code repository on Bitbucket.
- [Alan sources on GitHub][Alan GitHub] — source code repository on GitHub.
- [Alan IF Development team] — GitHub profile and public projects.

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

<!-- people & organizations -------------------------------------------------->

[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

[Alan IF Development team]: https://github.com/alan-if "Visit the Alan Interactive Fiction Development team organization on GitHub"
[Alan Interactive Fiction Development team]: https://github.com/alan-if "View the Alan Interactive Fiction Development team profile on GitHub"

<!-- Citations  -------------------------------------------------------------->

[receveing the green light]: https://groups.yahoo.com/neo/groups/alan-if/conversations/messages/3513

<!-- Alan Links -------------------------------------------------------------->

[Alan IF Yahoo group]: https://groups.yahoo.com/neo/groups/alan-if/info "Visit the Alan IF group at Yahoo! Groups"
[Alan website]: https://www.alanif.se/ "Visit Alan official website"
[Alan Bitbucket]: https://bitbucket.org/alanif/alan/ "Visit the Alan source repository on Bitbucket"
[Alan GitHub]: https://github.com/alan-if/alan/ "Visit the Alan source repository on GitHub"

<!-- AsciiDoctor -->

[AsciiDoc Syntax Quick Reference]: https://asciidoctor.org/docs/asciidoc-syntax-quick-reference/

[Asciidoctor User Manual]: https://asciidoctor.org/docs/user-manual/

[Asciidoctor]: https://github.com/asciidoctor/asciidoctor/ "Visit Asciidoctor repository at GitHub"
[Issue #2106]: https://github.com/asciidoctor/asciidoctor/issues/2106 "Issue #2106 — Add extension point for integrating an alternative source highlighter"

[asciidoctor-fopub]: https://github.com/asciidoctor/asciidoctor-fopub "Visit the asciidoctor-fopub repository on GitHub"

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

<!-- PDF & HTML Live Previews -->

[Man LPrev]: http://htmlpreview.github.io/?https://github.com/alan-if/alan-docs/blob/master/manual/manual.html "Preview 'The Alan Manual' via GitHub & BitBucket HTML Preview"
[Man PDF]: https://github.com/alan-if/alan-docs/raw/master/manual/manual.pdf "Download 'The Alan Manual' in PDF format"

[Guide LPrev]: http://htmlpreview.github.io/?https://github.com/alan-if/alan-docs/blob/master/alanguide/alanguide.html "Preview the 'Alan 3 Beginner's Guide' via GitHub & BitBucket HTML Preview"

[IDE PDF]: https://github.com/alan-if/alan-docs/raw/master/ideguide/Alan%20IDE%20Reference%20Guide.pdf "Download the 'Alan IDE Reference Guide' in PDF format"

[Writing LPrev]: http://htmlpreview.github.io/?https://github.com/alan-if/alan-docs/blob/master/writing/writing.html "Preview 'The Alan Author's Guide' via GitHub & BitBucket HTML Preview"

[GitHub & BitBucket HTML Preview]: http://htmlpreview.github.io

<!-- Git references -->

[Pro Git]: https://git-scm.com/book "'Pro Git' book online"
[Git Submodules]: https://git-scm.com/book/en/v2/Git-Tools-Submodules "Read the chapter on Git Submodules from the 'Pro Git' book"

[Using submodules in Git - Tutorial]: https://www.vogella.com/tutorials/GitSubmodules/article.html "Read tutorial"
[_Learn Version Control with Git_ » Submodules]: https://www.git-tower.com/learn/git/ebook/en/command-line/advanced-topics/submodules#start

[_Mastering Git submodules_]: https://medium.com/@porteneuve/mastering-git-submodules-34c65e940407 "Read article"
[The dangers we face]: https://medium.com/@porteneuve/mastering-git-submodules-34c65e940407#6b21 "Jump to section 'The dangers we face' of the 'Mastering Git submodules' article"

<!-- EOF -->
