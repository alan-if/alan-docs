# Sass Sources

Source [Sass] SCSS files to build CSS stylesheets used in this project.

> __NOTE__ — The project has swtiched to [Dart Sass] now.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduction](#introduction)
- [Folder Contents](#folder-contents)
    - [Building](#building)
    - [Main Stylesheets](#main-stylesheets)
    - [SCSS Modules](#scss-modules)
- [Installing Dart Sass](#installing-dart-sass)
- [Credits and Licenses](#credits-and-licenses)
    - [Base16 Color Schemes](#base16-color-schemes)
    - [Base16 Sass](#base16-sass)

<!-- /MarkdownTOC -->

-----

# Introduction

I've now started to break up the Sass source into modular units because some document will be using [Highlight] instead of [highlight.js] and/or because they might have different style needs (e.g. the _Beginner's Guide_ needs multiple Alan themes to distinguish between code of the adventure from that of the Library and examples snippets). A modular approach will allow the creation of different stylesheets with common reusable elements.

Using Highlight instead of highlight.js has always been a goal of this project, but unfortunately Highlight integration in Asciidoctor doesn't currently support callouts nor highlighting code inside tables. So, until a custom extension is available to extend Highlight support, we'll be using Highlight only with documents that don't use callouts inside code or code blocks inside tables.

# Folder Contents

In the following tables, "Alan Docs" stands for any official ALAN documentation file (e.g. the _Alan Manual_), whereas "document" stands for third party contributed documents (e.g. the _Alan IDE Guide_ and the _Beginner's Guide_). The difference is that while documents from the former group will strictly adhere to the styling conventions of this project, documents from the latter may or may not do so (and, for example, might employ custom stylesheets instead).


## Building

To compile all the Sass sources to CSS and update the dependencies of all HTML documents:

- [`build.sh`](./build.sh)

Beside compiling the Sass sources, the script will also build the [docinfo file] required for HTML docs that use [Highlight]:

- [`docinfo.html`](./docinfo.html)

and copy it to the source folders of all the documents that need it, because Asciidoctor can't locate docinfo files via relative paths:

- `../../alanguide/docinfo.html`


## Main Stylesheets

The build scripts will output the CSS stylesheets in their destination folders of this project:

|           scss source            |                      css output                     |           used for           |
|----------------------------------|-----------------------------------------------------|------------------------------|
| [`highlight-js.scss`][hljs scss] | [`../../_assets/hjs/styles/github.min.css`][gh css] | Alan Docs using highlight.js |
| [`highlight.scss`][hl scss]      | [`highlight.css`][hl css]                           | Alan Docs using Highlight    |


## SCSS Modules

|                     module                    |              description               |                used by                 |
|-----------------------------------------------|----------------------------------------|----------------------------------------|
| [`_color-scheme.scss`][color-scheme]          | custom colors definitions              | all documents                          |
| [`_base16-eighties.scss`][b16 80s]            | Base16 Eighties color scheme           | _Beginner's Guide_: Alan library code  |
| [`_base16-google-dark.scss`][b16 Google]      | Base16 Google color scheme             | _Beginner's Guide_: Alan tutorial code |
| [`_common.scss`][common]                      | common styles definitions              | all documents                          |
| [`_hjs.scss`][hjs]                            | highlight.js specific styles           | Alan Docs using [highlight.js]         |
| [`_hl-template-alan.scss`][hl template alan]  | Highlight theme template for Alan      | Alan Docs using [Highlight]            |
| [`_hl-theme_alan-lib.scss`][hl alan lib]      | Highlight theme for Alan Library code  | _Beginner's Guide_: Alan library code  |
| [`_hl-theme_alan-tutorial.scss`][hl alan tut] | Highlight theme for Alan tutorial code | _Beginner's Guide_: "TV-Time!" code    |
| [`_mixins.scss`][mixins]                      | Custom Sass helpers                    | Alan Docs using [highlight.js]         |

The [`_hl-template-alan.scss`][hl template alan] is a reusable variables-based `@import` template to quickly define Highlight Asciidoctor themes for Alan code. It can create both a default Alan theme as well as themes targetting a specific role/class, via the `$HL-Role` variable. For the default theme, it will use the Alan color scheme defined in `_color-scheme.scss`.

# Installing Dart Sass

Since March 11 2019 this project has switched from using [Ruby Sass] to the newest [Dart Sass] because starting from March 26 2019 Ruby Sass will no longer be maintained.

Since Dart Sass behavior is slightly different from Ruby Sass, anyone working on the repository Sass sources must ensure to switch to Dart Sass to avoid creating divergent CSS stylesheets.

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

<!-- project files ----------------------------------------------------------->

[Highlight.js' stylesheets]: ../../_assets/hjs/styles/ "Go to Highlight.js' stylesheets folder in the project"

[Beginner's Guide]: ../../alanguide/ "Navigate to the 'ALAN Beginner's Guide' folder"

<!-- SCSS Main Sources -->

[hljs scss]: ./highlight-js.scss "View SCSS source"
[hl scss]: ./highlight.scss "View SCSS source"

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

<!-- 3rd Party Links -->

[Base16]: http://chriskempson.com/projects/base16/ "Learn more about the Base16 project"
[Base16 Sass]: https://github.com/tajmone/Base16-Sass "Visit the 'Base16 Sass' repository on GitHub"
[Base16 Eighties]: https://github.com/chriskempson/base16-default-schemes/blob/master/eighties.yaml "View the original upstream 'Base16 Eighties' source file"

<!-- People -->

[Chris Kempson]: https://github.com/chriskempson "View Chris Kempson's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"
[Seth Wright]: http://sethawright.com "Visit Seth Wright's website"

<!-- EOF -->
