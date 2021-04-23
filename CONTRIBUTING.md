# Guidelines for Contributing to Alan-Docs

All help and contributions to this project are welcome.
We ask you to take just a few minutes to read through the following guidlines.

> __WIP NOTE__ — These guidelines are still work in progress, and any suggestions and corrections are welcome!

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Editor and Git Setup](#editor-and-git-setup)
    - [Code Styles Convention](#code-styles-convention)
        - [EditorConfig Validation via Travis CI](#editorconfig-validation-via-travis-ci)
        - [Validating Commits via EClint](#validating-commits-via-eclint)
- [About the Different Documents](#about-the-different-documents)
- [Styling Conventions](#styling-conventions)
- [Documents Features](#documents-features)
    - [Document Index](#document-index)
    - [Glossaries](#glossaries)

<!-- /MarkdownTOC -->

-----

# Editor and Git Setup

Some technical aspects of the repository, and how to configure Git and your editor to the needs of our workflow...

## Code Styles Convention

This repository adopts [EditorConfig] to enforce consistent code styles in the repository contents and across different editors and IDEs:

- [`.editorconfig`][.editorconfig]

If you're using an [editor or IDE that natively supports EditorConfig], code styling should be handled auto-magically in the background.
If not, check if there's an [EditorConfig plug-in/package] for your editor/IDE that you can install.

### EditorConfig Validation via Travis CI

Each PR and commit is tested on GitHub for code styles consistency via Travis CI, using the [EClint] validator for [EditorConfig].

Travis CI validation is performed by the [`validate.sh`][validate.sh] script found in the repository root; you can run the script locally to check the integrity status of your repository folder (the script will check all files, including unstaged and ignored ones).

### Validating Commits via EClint

You're strongly advised to install [EClint] ([Node.js]) and our pre-commit [Git hook] to validate your changes for code consistency at commit time:

- [`git-hook-install.sh`][git-hook-install.sh] — installs the pre-commit hook.
- [`git-hook-remove.sh`][git-hook-remove.sh] — removes the pre-commit hook.

Once installed the pre-commit hook, every time you carry out a commit operation the staged files will be first checked via [EClint] to ensure that they meet the code styles settings in [`.editorconfig`][.editorconfig], and if they don't the commit will fail with an error listing the files that didn't pass the validation test.

> **NOTE** — You can always bypass the pre-commit hook via the `--no-verify` option, e.g.:
>
> ```
> git commit --no-verify
> ```

The advantage of using this hook instead of the [`validate.sh`][validate.sh] script is that the hook will test only the staged files involved in the actual commit, whereas the script will test _every_ file in the repository folder, including ignored and unstaged files, which is more time consuming and not focused on the specific commit changes.

The [`git-hook-install.sh`][git-hook-install.sh] script will create the following files inside the repository:

- `.git/hooks/pre-commit-validate.sh` — the commit validation script.
- `.git/hooks/pre-commit` — the pre-commit hook that launches the validation script.

You can uninstall the Git hook at any time, by executing:

- [`git-hook-remove.sh`][git-hook-remove.sh]

The hook installer and uninstaller scripts are designed to coexist with other pre-commit hooks you might have added to the repository, without disrupting them.

# About the Different Documents

Be aware that __alan-docs__ is an umbrella project gathering various documents and books by different authors.
Some documents are production ready, others are still in the making.

This document provides general guidelines, with stronger emphasis on the official Alan documentation (which is subjected to stricter standards), but each and every document might provide additional guidelines in the `README.md` and `CONTRIBUTING.md` files inside its folder — don't forget to read them!

# Styling Conventions

In order to provide a pleasant reading and learning experience, we strive to apply consistent styling within a same document and (possibly) across all the Alan related documentation.

For this reason, we ask editors and contributors to read the _Formatting and Styling Conventions_ document and follow its guidelines:

- [`CONVENTIONS.md`][CONVENTIONS] — _Formatting and Styling Conventions_ guidelines.

Individual authors are free to adopt extra (or different) styling conventions, which they shall mention in the README file for their document.

So, if you've written (or are planning to write) your own article, tutorial or book on Alan, and would like to include it into this repository, you're not bound to adopt our styling conventions, but we'd appreciate it if you did.
Bear in mind that by adhering to the standard conventions of the project you'll be simplifying future maintenance work — i.e. by reducing the number of templates, stylesheets, and other commonly shared assets that need to be updated in the course of time.


# Documents Features

Here are some guidelines on various features that are desirable in any Alan related document.
These are useful if you're planning to add a new document to the project, or are planning to port and old document from its native format to AsciiDoc, using the assets of this project.

## Document Index

The Index (not available in HTML documents) is an important tool, especially in big documents (like the Manual) for it allows the end user to quickly look up and find topics of interest.
While digital documents readers usually offer search functionality, searching for common keywords would simply produce too many matches, and it would never be as practical as a well organized Index.
Furthermore, some users might decide to print on paper a copy of the documentation, leaving them with the Index as the sole tool to quickly find topics and solutions to their problems.

For these reasons, editors should strive to contribute toward the creation of a well organized Index in all Alan documentation of considerable size.
All we ask to editors wishing to contribute building the Index is to analyse thoroughly the current state of the document's Index, in order to understand how the original author organized and structured it, and then contribute new entries accordingly, trying to preserve the original structure.

Also, follow the [Index guidelines] provided in _[Formatting and Styling Conventions]_.

When it comes to modifications to the Index, editors can freely push them to `master` branch, without requiring supervision of the document's author.

## Glossaries

Asciidoctor allows adding a Glossary to any document, and it's available in both HTML and PDF documents.

Whenever possible, consider adding a glossary to your document, for it can provide a better studying experience to the reader.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Git hook]: https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks "Learn more about Git hooks"

<!-- tools and services -->

[EClint]: https://www.npmjs.com/package/eclint "EClint page at NPM"
[EditorConfig]: https://editorconfig.org "Learn more about EditorConfig on its official website"
[Node.js]: https://nodejs.org "Visit Node.js website"

[editor or IDE that natively supports EditorConfig]: https://editorconfig.org/#pre-installed "Check if your editor/IDE supports EditorConfig"
[EditorConfig plug-in/package]: https://editorconfig.org/#download "List of EditorConfig plug-ins for various editors and IDEs"

<!-- Project Files ----------------------------------------------------------->

[CONVENTIONS]: ./CONVENTIONS.md "Read the 'Formatting and Styling Conventions' guidelines adopted in Alan-Docs"

[.editorconfig]: ./.editorconfig "View EditorConfig settings"
[git-hook-install.sh]: ./git-hook-install.sh "View Git hook installer script"
[git-hook-remove.sh]: ./git-hook-remove.sh "View Git hook uninstaller script"
[validate.sh]: ./validate.sh "View source script for code style validation"

<!-- Guidelines Links -------------------------------------------------------->

[Formatting and Styling Conventions]: ./CONVENTIONS.md "Read the 'Formatting and Styling Conventions' guidelines adopted in Alan-Docs"

[Index guidelines]: ./CONVENTIONS.md#the-index

<!-- EOF -->
