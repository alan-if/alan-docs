# Alan Design Documents

This folder contains some technical documents regarding Alan design and internals, taken from the [`doc/design/`][doc/design/] folder of the [ALAN repository] and converted to AsciiDoc.

The original documents can be found in the [`../_assets-src/original-docs/`][original-docs/] folder.

Most of these documents are still incomplete, but the reader might nevertheless benefit from them to better understand technical aspects about Alan and its design principles.

# Folder Contents

Documents:

- [`actors-in-containers.asciidoc`][actors.adoc] — _Actors in containers_.
- [`design.asciidoc`][design.adoc] — _Alan Design Documentation_.
- [`rules.asciidoc`][rules.adoc] — _Alan Rules_.

Scripts:

- [`build.sh`][build.sh] — HTML conversion script.
- [`publish.sh`][publish.sh] — for maintainers' use only.

# System Requirements

- [Ruby]  (recommended v3.x)
    + [Asciidoctor]
    + [Rouge] — syntax highlighter
    + [Asciidoctor Diagram]

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[ALAN repository]: https://github.com/alan-if/alan/ "Visit the Alan source repository on GitHub"
[doc/design/]: https://github.com/alan-if/alan/tree/master/doc/design/

<!-- dependencies -->

[Ruby]: https://www.ruby-lang.org "Visit Ruby website"
[Asciidoctor]: https://github.com/asciidoctor/asciidoctor "Asciidoctor (Ruby Gem) repository on GitHub"
[Rouge]: https://github.com/rouge-ruby/rouge "Rouge (Ruby Gem) repository on GitHub"
[Asciidoctor Diagram]: https://github.com/asciidoctor/asciidoctor-diagram "Asciidoctor Diagram (Ruby Gem) repository on GitHub"

<!-- project files and folders -->

[original-docs/]: ../_assets-src/original-docs/ "Navigate to original documents folder"

[actors.adoc]: ./actors-in-containers.asciidoc "View source document"
[design.adoc]: ./design.asciidoc "View source document"
[rules.adoc]: ./rules.asciidoc "View source document"

[build.sh]: ./build.sh "View source script"
[publish.sh]: ./publish.sh "View source script"

<!-- EOF -->
