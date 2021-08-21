# Asciidoctor Highlight Toolchain

Some resources required to use Highlight with the Asciidoctor HTML backend.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
    - [About the ALAN Syntax](#about-the-alan-syntax)
- [Usage Instructions](#usage-instructions)
- [System Requirements](#system-requirements)
- [Credits](#credits)
    - [Highlight ALAN Syntax](#highlight-alan-syntax)
    - [Highlight Extension](#highlight-extension)
    - [Haml Templates](#haml-templates)

<!-- /MarkdownTOC -->

-----


# Folder Contents

- [`/adoc/`][adoc/] — Asciidoctor assets:
    + [`/highlight-treeprocessor_mod.rb`][rb] — extension for Highlight integration.
- [`/haml/`][haml/] — customized Haml HTML5 templates.
- [`/langDefs/`][langDefs/] — custom Highlight language definitions:
    + [`alan.lang`][alan.lang]

There are no build scripts in this folder, as the documents requiring these assets will have their own scripts to import them; but since the assets are commonly shared by all documents using Highlight, we'll keep a single copy of the assets here.

## About the ALAN Syntax

- [`langDefs/alan.lang`][alan.lang]

The `alan.lang` syntax used here might differ from the one found in the official Highlight package:

- https://gitlab.com/saalen/highlight/blob/master/langDefs/alan.lang

It might either be more up-to-date, because added here before its submission to the official package, or it could contain custom tweaks required for this project.

# Usage Instructions

When invoking Highlight in this repository, you need to take care of the following details to ensure proper integration with the Asciidoctor toolchain and our templates:

1. __The `highlightDir` environment variable__ must be defined as the absolute path to this folder, in order to ensure that Highlight will always use our custom syntax definitions over the ones that are bundled with it.
2. __Asciidoctor options__ — Asciidoctor (Ruby) needs to be invoked with the following options:
    + `--template-dir <abs path to here>/haml`
    + `--require <abs path to here>/adoc/highlight-treeprocessor_mod.rb`
    + `-a source-highlighter=highlight`
    + `-a docinfodir=<abs path to here>/adoc/`
    + `-a docinfo=shared-head`

Here's a sample Shell script (also works with Bash for Windows), for a document inside a subfolder in the repository root:

```bash
# Define var with absolute paths to this folder:
highlightDir=$(cd ../_assets/hl/; pwd)

# To ensure Highlight will use our syntax definitions:
export HIGHLIGHT_DATADIR="$highlightDir"

asciidoctor \
    --safe-mode unsafe \
    --template-dir $highlightDir/haml \
    --require $highlightDir/adoc/highlight-treeprocessor_mod.rb \
    -a source-highlighter=highlight \
    -a docinfodir=$highlightDir/adoc/ \
    -a docinfo=shared-head \
    somedoc.asciidoc
```

# System Requirements

To build the document from AsciiDoc to HTML you'll need to install the following tools:

- [Highlight]
- [Ruby] + [Asciidoctor]


# Credits

## Highlight ALAN Syntax

The [`langDefs/alan.lang`][alan.lang] syntax definition for ALAN was created by [Tristano Ajmone] for the Highlight project and released into the public domain via the [Unlicense].

Highlight is released under the [GNU GPL v3.0] license.


## Highlight Extension

The [`highlight-treeprocessor_mod.rb`][rb] file was adapted by [Tristano Ajmone] from the original file [`highlight-treeprocessor.rb`][rb upstream] taken from the [Asciidoctor Extensions Lab] (commit 18bdf62), Copyright (C) 2014-2016
The Asciidoctor Project, released under MIT License:

    The MIT License

    Copyright (C) 2018 Tristano Ajmone.
    Copyright (C) 2014-2016 The Asciidoctor Project

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.

## Haml Templates

The files inside the [`/haml/`][haml/] folder were adapted by [Tristano Ajmone] from the original [Haml HTML5 templates] taken from the
[Asciidoctor Backends] project, Copyright (C) 2012-2016 Dan Allen and the Asciidoctor Project, released under MIT License:

    The MIT License

    Copyright (C) 2018 Tristano Ajmone.
    Copyright (C) 2012-2016 Dan Allen and the Asciidoctor Project

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[GNU GPL v3.0]: https://gitlab.com/saalen/highlight/-/blob/master/COPYING "Full text of GNU General Public License v3.0 at Highlight repository"
[Unlicense]: https://unlicense.org "Visit Unlicense.org"

<!-- proj files and folders -->

[adoc/]: ./adoc/ "Asciidoctor assets for Highlight folder"
[haml/]: ./haml/ "Haml templates folder"
[langDefs/]: ./langDefs/ "Custom Highlight language definitions folder"

[alan.lang]: ./langDefs/alan.lang "ALAN language definition for Highlight"
[rb]: ./adoc/highlight-treeprocessor_mod.rb "Highlight tree processor for Asciidoctor"


<!-- dependencies -->

[Chocolatey GUI]: https://chocolatey.org/packages/ChocolateyGUI
[Chocolatey]: https://chocolatey.org

[Ruby]: https://www.ruby-lang.org
[RubyInstaller]: https://rubyinstaller.org/downloads/
[Choco Ruby]: https://chocolatey.org/packages/ruby

[Asciidoctor]: https://github.com/asciidoctor/asciidoctor#installation
[Highlight]: http://www.andre-simon.de/zip/download.php


<!-- third party -->

[rb upstream]: https://github.com/asciidoctor/asciidoctor-extensions-lab/blob/18bdf62/lib/highlight-treeprocessor.rb
[Asciidoctor Extensions Lab]: https://github.com/asciidoctor/asciidoctor-extensions-lab/ "Visit the Asciidoctor Extensions Lab project"

[Asciidoctor Backends]: https://github.com/asciidoctor/asciidoctor-backends "Visit the Asciidoctor Backends project"
[Haml HTML5 templates]: https://github.com/asciidoctor/asciidoctor-backends/tree/master/haml/html5

<!-- people -->

[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
