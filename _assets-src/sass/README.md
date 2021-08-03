# Sass Sources

Source [Sass] SCSS files to build CSS stylesheets used in this project.

> __NOTE__ — The project has swtiched to [Dart Sass] now.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [About](#about)
    - [Multiple Highlighters Support](#multiple-highlighters-support)
    - [Colour Schemes](#colour-schemes)
- [Building](#building)
    - [Build Targets](#build-targets)
- [Installing Dart Sass](#installing-dart-sass)
- [Credits and Licenses](#credits-and-licenses)
    - [Base16 Color Schemes](#base16-color-schemes)
    - [Base16 Sass](#base16-sass)

<!-- /MarkdownTOC -->

-----

# About

These [Sass] SCSS source are used to create the custom CSS which is then injected into the [docinfo file] required for each highlighter, with the exception of highlight.js, which uses the bare CSS file.

## Multiple Highlighters Support

Because some documents rely on different syntax highlighters, this folder builds different CSS stylesheets and [docinfo files], each targetting a specific highlighter.

The Sass sources are broken into modular units so that highlighter specific modules are kept separate from shared modules, but always ensuring that common modules are reusable with all lighters stylesheets.

## Colour Schemes

The custom CSS generated is mostly used to customize the different colour themes for ALAN source code (more than one theme available for ALAN), as well as other languages and mockup blocks styles (e.g. CMD, game transcript, BNF, etc.)

For more info on the colour schemes used here, and their palette swatches, see:

- [`../colors/`](../colors/)

# Building

To compile all the Sass sources to CSS and update the dependencies of all HTML documents:

- [`build.sh`](./build.sh)

Beside compiling the Sass sources to CSS, the script will also build the [docinfo files] required for HTML docs that use [Highlight] or [Rouge]; all target files are built in the assets folder of their highlighter.

## Build Targets

The `build.sh` script will generate a different target file for each highlighter, as indicated below.

|  highlighter   |           scss source            |                     output file                     |
|----------------|----------------------------------|-----------------------------------------------------|
| [Highlight]    | [`highlight.scss`][hl scss]      | [`../../_assets/hl/adoc/docinfo.html`][hl docinfo]  |
| [highlight.js] | [`highlight-js.scss`][hljs scss] | [`../../_assets/hjs/styles/github.min.css`][gh css] |
| [Rouge]        | [`rouge.scss`][rouge scss]       | [`../../_assets/rouge/docinfo.html`][rouge docinfo] |



# Installing Dart Sass

Since March 11 2019 this project has switched from using [Ruby Sass] to the newest [Dart Sass] because starting from March 26 2019 Ruby Sass will no longer be maintained.

Since Dart Sass behaviour is slightly different from Ruby Sass, anyone working on the repository Sass sources must ensure to switch to Dart Sass to avoid creating divergent CSS stylesheets.

The easiest way to install Dart Sass on Windows, and keep it always updated, is to install it via Chocolatey:

- https://chocolatey.org/packages/sass

# Credits and Licenses

Due credits to third party assets used in this directory of the project.

## Base16 Color Schemes

The Sass/CSS themes use the following Base16 color schemes:

- _Base16 Eighties_ — by [Chris Kempson].
- _Base16 Google Dark_ — by [Seth Wright].

The *Base16* project was created by Chris Kempson:

- http://chriskempson.com/projects/base16/

## Base16 Sass

The following Base16 SCSS files:

- [`_base16-eighties.scss`][b16 80s]
- [`_base16-google-dark.scss`][b16 Google]

were taken from the *Base16 Sass* project by Tristano Ajmone:

- https://github.com/tajmone/Base16-Sass

released under MIT License.


```
MIT License

Copyright (c) 2019 Tristano Ajmone <tajmone@gmail.com>
https://github.com/tajmone/Base16-Sass

Copyright (c) 2012 Chris Kempson (http://chriskempson.com)
https://github.com/chriskempson/base16-builder

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Sass]: https://sass-lang.com "Visit Sass website"
[Dart Sass]: https://github.com/sass/dart-sass "Visit Dart Sass repository on GitHub"
[Ruby Sass]: https://sass-lang.com/ruby-sass "Visit Ruby Sass homepage"
[Choco Sass]: https://chocolatey.org/packages/sass "View the Chocolatey package for Dart Sass"

[Highlight]: http://www.andre-simon.de/ "Visit Highlight website"
[highlight.js]: https://highlightjs.org/ "Visit highlight.js website"

[docinfo file]: https://docs.asciidoctor.org/asciidoctor/latest/docinfo/ "Asciidoctor Manual » Docinfo Files"
[docinfo files]: https://docs.asciidoctor.org/asciidoctor/latest/docinfo/ "Asciidoctor Manual » Docinfo Files"

[Rouge]: http://rouge.jneen.net/ "Visit Rouge website"

<!-- project files ----------------------------------------------------------->

[Highlight.js' stylesheets]: ../../_assets/hjs/styles/ "Go to Highlight.js' stylesheets folder in the project"

[Beginner's Guide]: ../../alanguide/ "Navigate to the 'ALAN Beginner's Guide' folder"

<!-- SCSS Main Sources -->

[hljs scss]: ./highlight-js.scss "View SCSS source"
[hl scss]: ./highlight.scss "View SCSS source"
[rouge scss]: ./rouge.scss "View SCSS source"

<!-- SCSS Modules -->

[b16 80s]: ./_base16-eighties.scss  "View SCSS source"
[b16 Google]: ./_base16-google-dark.scss  "View SCSS source"
[color-scheme]: ./_color-scheme.scss "View SCSS source"
[common]: ./_common.scss "View SCSS source"
[mixins]: ./_mixins.scss "View SCSS source"
[hjs]: ./_hjs.scss "View SCSS source"
[hl alan lib]: ./_hl-theme_alan-lib.scss "View SCSS source"
[hl alan tut]: ./_hl-theme_alan-tutorial.scss "View SCSS source"
[hl template alan]: ./_hl-template-alan.scss "View SCSS source"

<!-- CSS Output Stylesheets -->

[gh css]: ../../_assets/hjs/styles/github.min.css "View CSS stylesheet"
[hl css]: ./highlight.css "View CSS stylesheet"

<!-- target docinfo files -->

[hl docinfo]: ../../_assets/hl/adoc/docinfo.html
[rouge docinfo]: ../../_assets/rouge/docinfo.html

<!-- 3rd Party Links -->

[Base16]: http://chriskempson.com/projects/base16/ "Learn more about the Base16 project"
[Base16 Sass]: https://github.com/tajmone/Base16-Sass "Visit the 'Base16 Sass' repository on GitHub"
[Base16 Eighties]: https://github.com/chriskempson/base16-default-schemes/blob/master/eighties.yaml "View the original upstream 'Base16 Eighties' source file"

<!-- People -->

[Chris Kempson]: https://github.com/chriskempson "View Chris Kempson's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"
[Seth Wright]: http://sethawright.com "Visit Seth Wright's website"

<!-- EOF -->
