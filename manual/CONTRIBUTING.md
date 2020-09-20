# Alan Manual Contribution Guidelines

Git guidelines and strategies for development of the Alan Manual.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduction](#introduction)
- [Stable vs Dev Versions](#stable-vs-dev-versions)
- [Merge Checklist](#merge-checklist)
    - [Rebuilding the Manual](#rebuilding-the-manual)
    - [Version and Date Checks](#version-and-date-checks)

<!-- /MarkdownTOC -->

-----

# Introduction

The _Alan Manual_ project is coordinated by [Thomas Nilefalk]  (@thoni56).

Any significant changes or addition of new contents to the _Manual_ shall be reviewed by @thoni56 before merging it into the baseline development branch (even for those who have the repository privileges to merge on their own).

Development takes place in the `dev-man` baseline branch, and all PRs concerning the _Alan Manual_ should target that branch.


# Stable vs Dev Versions

A copy of _The Alan Manual_ is always included in the official release packages from the Alan website, which currently are Beta releases.
The _Manual_ on `master` branch will always be the version for the latest official Beta release.

All updates to the _Manual_ are carried out in the `dev-man` baseline branch, because it's easier to have a single working document where to include any new features made available on ALAN Alpha releases, as well as any improvements to the Manual's contents.

In practical terms, this means that Alan users who work with the latest Beta SDK should rely on the Manual from the `master` branch, whereas those who use the latest Alpha SDK should safely rely on the Manual from the `dev-man` branch.
Whenever there are significant changes to the book contents, we rebuild both the HTML and PDF documents, to allow reviewers to check the results; therefor, end users can also access these previews for documentation reference.

As a rules thumb, all commits to `dev-man` contain polished changes, whereas incomplete work is dealt with in sub-branches (`dev-man_<feature>`).

The baseline `dev-man` branch should be kept clean, so that it can be rebased on `master` without conflicts, from time to time, in order to integrate updates to the templates, toolchain scripts, etc. — which also means that repository-wide changes (even if required for the Manual) should be committed to `master` first, and then rebase `dev-man` on `master` to integrate them.

Also, we'd like to keep the history of `dev-man` clean, so any contribution work involving multiple commits and/or revisions should be handled in sub-branches, and then be merged (or squashed) into the dev baseline with clean commits in order to keep the `dev-man` branch history tidy and linear, which in turn will aid keeping the repository history tidy too.

You should expect the `dev-man` branch to be rebased on `master` quite often, so ensure that your derivative `dev-man_*` branches are rebasable on `dev-man` when the need arises.
Keeping the commits on sub-branches concise, with good messages, and each one touching a specific feature only, should help avoid conflicts — and, in the worst case scenario, cherry picking them back from a fresh branch off `dev-man` could solve entangled conflicts, by manually replaying them when a rebase is too intricate to handle.

Sub-branches should be created anew for each editing task, and destroyed after merging (unless further work is necessary in the same line of editing, e.g. with long multi-step tasks on a same topic).
The creator of a sub-branch is free to rebase and force edit it according to need and without restrictions, in order to work freely during the editing stage and then be able to rewrite the branch history in view of its integration (via pull request, merge or squash, etc.) or following a review by @thoni56.

# Merge Checklist

Before merging contents updates to the _Alan Manual_, remember to carry out the following chores:

## Rebuilding the Manual

While working on updates to the _Manual_, especially if you're doing it on a sub-branch involving multiple commits, we recommend to rebuild the _Manual_ in both HTML and PDF formats (at every commit that involves visible contents changes) so that anyone can preview its current status, directly from your working branch.

If, for any reason, the reviewers decide to exclude the _Manual_ builds from the final merge or commit (e.g. in view of further changes to be integrated before rebuilding the docs), you can always discard them during squashing, or by editing and force pushing the commit.

## Version and Date Checks

Before merging or squashing into the baseline `dev-man` branch, always double check that the _Manual_ version number is being moved forward correctly, and that the date is correct, to avoid irregular versioning of the preview builds.

The version info is contained in the Header section of main AsciiDoc source of the _Manual_:

- [`manual/manual.asciidoc`][manual.asciidoc] ([view raw source])

Supposing today was October 1, 2020, and the current status of `manual.asciidoc` on the `dev-branch` was as follows:

```asciidoc
:doctitle:  The ALAN Adventure Language Reference Manual
:revnumber: 0.1.100-PreReleaseBeta7
:revdate:   September 18, 2020
:revremark: Beta7 Ed. work
```

you'd need to advance the `:revnumber:` attribute to `0.1.101` and update `:revdate:` to the current date:

```asciidoc
:revnumber: 0.1.101-PreReleaseBeta7
:revdate:   October 1, 2020
```

Since pull requests are usually kept on hold for various days during the reviewing stage, chances are that you'll need to update again the valude of `:revdate:` before merging.

You'll also need to check if the meanwhile the _Manual_ was updated by other contributors and, if so, you'll need to rebase your PR/commit branch to the latest `dev-man` branch, and fix again the `:revnumber:` attribute accordingly.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[development snapshots]: https://www.alanif.se/download-alan-v3/development-snapshots "Go to the development snapshots download page on Alan website"

[manual.asciidoc]: https://github.com/alan-if/alan-docs/blob/dev-man/manual/manual.asciidoc "View source file on 'dev-man' branch"
[view raw source]: https://raw.githubusercontent.com/alan-if/alan-docs/dev-man/manual/manual.asciidoc "View raw source file from 'dev-man' branch"

<!-- people -->

[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"
[Thomas Nilefalk]: https://github.com/thoni56 "View Thomas Nilefalk's GitHub profile"

<!-- EOF -->
