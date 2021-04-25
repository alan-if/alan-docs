# Dia Source Projects

![dia version info][dia badge]

Source files to generate the SVG diagram images using [Dia].

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
- [System Requirements](#system-requirements)
    - [Dia Diagram Editor](#dia-diagram-editor)
    - [SVGO](#svgo)
    - [Fonts](#fonts)

<!-- /MarkdownTOC -->

-----


# Folder Contents

- [`build.sh`][build.sh] — Creates SVG images into [`../../../_assets/images/`][_assets/images/].

The diagrams:

|        Dia Source        |                  SVG Preview Link                  |
|--------------------------|----------------------------------------------------|
| `predefined-classes.dia` | [`predefined-classes.svg`][predefined-classes.svg] |



# System Requirements

## Dia Diagram Editor

In order to edit the diagram's source projects, or to run the conversion script, you'll need to install [Dia Diagram Editor], a free and open source cross platform tool for editing diagrams.

To build the SVG files, you'll need __Dia v0.97__.
For more info and instructions, refer to our Wiki:

- https://github.com/alan-if/alan-docs/wiki/Dia-Diagrams

## SVGO

- https://www.npmjs.com/package/svgo

To build the diagrams via [`build.sh`][build.sh], you'll also need to install [SVGO], a command line SVG optimizer.

In order to install SVGO you'll need to install [Node.js] on your system.

Windows users can install [Node.js] via the [Node JS Chocolatey package] using the [Chocolatey GUI], which simplifies keeping Node always up to date.

## Fonts

In order to build the diagrams, you'll also need to install the following fonts on your machine:

- _[Open Sans]_ — by Steve Matteson, [Apache License 2.0].

Ensure you download the fonts in TTF, and that you install their basic styles (Regular, Bold, Italic, Bold+Italic).

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Apache License 2.0]: https://www.apache.org/licenses/LICENSE-2.0 "View the Apache License version 2.0"

<!-- Dia -->

[Dia]: http://dia-installer.de/ "Visit Dia's website"
[Dia Diagram Editor]: http://dia-installer.de/ "Visit Dia's website"
[dia badge]: https://img.shields.io/badge/Dia-0.97-brightgreen

<!-- SVGO -->

[SVGO]: https://www.npmjs.com/package/svgo "SVGO homepage at NPM"
[Node.js]: https://nodejs.org/ "Visit Node.js website"
[Node JS Chocolatey package]: https://community.chocolatey.org/packages/nodejs "Node.js package at Chocolatey"

[Chocolatey GUI]: https://community.chocolatey.org/packages/ChocolateyGUI "Chocolatey GUI package at Chocolatey"
[Chocolatey]: https://chocolatey.org "Visit Chocolatey website"

<!-- Fonts -->

[Open Sans]: https://fonts.google.com/specimen/Open+Sans

<!-- project files -->

[_assets/images/]: ../../../_assets/images/ "Navigate to images folder"

[build.sh]: ./build.sh "View source script"

[predefined-classes.svg]: ../../../_assets/images/predefined-classes.svg "Click to preview image"

<!-- EOF -->
