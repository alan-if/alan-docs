# Sass Sources

Source [Sass] SCSS files to build CSS stylesheets used in this project.

> __NOTE__ — The project has swtiched to [Dart Sass] now.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduction](#introduction)
- [Folder Contents](#folder-contents)
    - [Main Stylesheets](#main-stylesheets)
    - [SCSS Modules](#scss-modules)
    - [Automation Scripts](#automation-scripts)
- [Installing Dart Sass](#installing-dart-sass)

<!-- /MarkdownTOC -->

-----

# Introduction

I've now started to break up the Sass source into modular units because some document will be using [Highlight] instead of [highlight.js] and/or because they might have different style needs (e.g. the _Beginner's Guide_ needs multiple Alan themes to distinguish between code of the adventure from that of the Library and examples snippets). A modular approach will allow the creation of different stylesheets with common reusable elements.

Using Highlight instead of highlight.js has always been a goal of this project, but unfortunately Highlight integration in Asciidoctor doesn't currently support callouts nor highlighting code inside tables. So, until a custom extension is available to extend Highlight support, we'll be using Highlight only with documents that don't use callouts inside code or code blocks inside tables.

# Folder Contents

In the following tables, "Alan Docs" stands for any official ALAN documentation file (e.g. the _Alan Manual_), whereas "document" stands for third party contributed documents (e.g. the _Alan IDE Guide_ and the _Beginner's Guide_). The difference is that while documents from the former group will strictly adhere to the styling conventions of this project, documents from the latter may or may not do so (and, for example, might employ custom stylesheets instead).

## Main Stylesheets

|             scss source             |                      css output                     |           used for           |
|-------------------------------------|-----------------------------------------------------|------------------------------|
| [`highlight-js.scss`][highlight-js] | [`../../_assets/hjs/styles/github.min.css`][gh css] | Alan Docs using highlight.js |


## SCSS Modules

|                module                |         description          |           used for           |
|--------------------------------------|------------------------------|------------------------------|
| [`_color-scheme.scss`][color-scheme] | custom colors definitions    | all documents                |
| [`_common.scss`][common]             | common styles definitions    | all documents                |
| [`_hjs.scss`][hjs]                   | highlight.js specific styles | Alan Docs using highlight.js |


## Automation Scripts

- [`BUILD_SASS.bat`](./BUILD_SASS.bat) — batch script to build all Sass sources.
- [`WATCH_SASS.bat`](./WATCH_SASS.bat) — batch script to watch and build all Sass sources.

The build scripts will output the CSS stylesheets in their destination folders of this project:

|      scss source      |                 css output                |           used for           |
|-----------------------|-------------------------------------------|------------------------------|
| `./highlight-js.scss` | `../../_assets/hjs/styles/github.min.css` | Alan Docs using highlight.js |


# Installing Dart Sass

Since March 11 2019 this project has switched from using [Ruby Sass] to the newest [Dart Sass] because starting from March 26 2019 Ruby Sass will no longer be maintained.

Since Dart Sass behavior is slightly different from Ruby Sass, anyone working on the repository Sass sources must ensure to switch to Dart Sass to avoid creating divergent CSS stylesheets.

The easiest way to install Dart Sass on Windows, and keep it always updated, is to install it via Chocolatey:

- https://chocolatey.org/packages/sass

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[Sass]: https://sass-lang.com "Visit Sass website"
[Dart Sass]: https://github.com/sass/dart-sass "Visit Dart Sass repository on GitHub"
[Ruby Sass]: https://sass-lang.com/ruby-sass "Visit Ruby Sass homepage"
[Choco Sass]: https://chocolatey.org/packages/sass "View the Chocolatey package for Dart Sass"

[Highlight]: http://www.andre-simon.de/ "Visit Highlight website"
[highlight.js]: https://highlightjs.org/ "Visit highlight.js website"

<!-- project files ----------------------------------------------------------->

[Highlight.js' stylesheets]: ../../_assets/hjs/styles/ "Go to Highlight.js' stylesheets folder in the project"

<!-- SCSS Main Sources -->

[highlight-js]: ./highlight-js.scss "View SCSS source"

<!-- SCSS Modules -->

[color-scheme]: ./_color-scheme.scss "View SCSS source"
[common]: ./_common.scss "View SCSS source"
[hjs]: ./_hjs.scss "View SCSS source"

<!-- CSS Output Stylesheets -->

[gh css]: ../../_assets/hjs/styles/github.min.css "View CSS stylesheet"

<!-- EOF -->
