# Sass Sources

Source [Sass] SCSS files to build CSS stylesheets used in this project.

# Folder Contents

- [`BUILD_SASS.bat`](./BUILD_SASS.bat) — batch script to build all Sass sources.
- [`WATCH_SASS.bat`](./WATCH_SASS.bat) — batch script to watch and build all Sass sources.
- [`highlight-js.scss`](./highlight-js.scss) — source file for [Highlight.js' stylesheets].

The build scripts will output the CSS stylesheets in their destination folders of this project:

|      scss source      |                 css output                |       use        |
|-----------------------|-------------------------------------------|------------------|
| `./highlight-js.scss` | `../../_assets/hjs/styles/github.min.css` | Alan Docs styles |

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[Sass]: https://sass-lang.com "Visit Sass website"

<!-- project files -->

[Highlight.js' stylesheets]: ../../_assets/hjs/styles/ "Go to Highlight.js' stylesheets folder in the project"

<!-- EOF -->
