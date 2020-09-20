# Guidelines for Contributing to Alan-Docs

All help and contributions to this project are welcome.
We ask you to take just a few minutes to read through the following guidlines.

> __WIP NOTE__ — These guidelines are still work in progress, and any suggestions and corrections are welcome!

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [About the Different Documents](#about-the-different-documents)
- [Styling Conventions](#styling-conventions)
- [Submitting Changes and New Contents via Branches](#submitting-changes-and-new-contents-via-branches)
    - [Branch Naming Conventions](#branch-naming-conventions)
        - [Baseline Dev Branches](#baseline-dev-branches)
        - [Dev Sub-Branches](#dev-sub-branches)
- [Documents Features](#documents-features)
    - [Document Index](#document-index)
    - [Glossaries](#glossaries)

<!-- /MarkdownTOC -->

-----

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


# Submitting Changes and New Contents via Branches

If you would like to submit new contents to a document, and you're not its original author, we ask you to submit them via a dedicated development branch, instead of `master` branch — i.e. even if you are a collaborator and have privileges to push directly to `master`, you should submit changes on a dedicated branch.

Working on branches prevents conflicting changes on the main branch, due to different authors working on a same file, and simplifies resolving such conflicts before merging into `master` branch.

Furthermore, this approach allows original authors to review and discuss proposed changes to their documents before merging them in `master`.
Unlike minor editing changes (fixing typos, text formatting and styles), __content changes should be approved by the original author of a document__ before being merged into the main branch.

Since editors will receive administrative rights to publish changes directly into `master` branch (to provide them freedom of action to work while porting and editing documents), this guideline is a reminder that any major changes to a document created by someone else should be subject to its author's approval.

## Branch Naming Conventions

The `master` branch is intended to host the latest version of every document, while the development branches are intended for work-in-progress changes until ready to be merged into `master`.

Since this project host various documents of different nature (from short articles and tutorials, up to full fledged books), some documents might adopt more complex collaborative strategies than others — especially so for collaboratively written books (like the _Alan Manual_), which involve many contributors, are big in size, and cover many topics.

Nevertheless, the following guidelines holds true for any document, regardless of its size and number of active participant.

### Baseline Dev Branches

The baseline development branch of every document is named with a shorthand version of the document name, preceded by the `dev-` suffix (e.g._Alan Manual_ &rarr; `man` &rarr; `dev-man`).
The idea is to keep the baseline name of development branches short, because it will be prefixed to all their sub-branches (e.g. `dev-man_glossary`).

This baseline dev-branch is where all contributions are submitted, as single commits, which will ultimately be merged into `master` when ready.

Here is the list of the various documentation projects, their folders names, and their baseline dev-branches naming convention:

|          document          |      folder     | base dev-branch |
|----------------------------|-----------------|-----------------|
| misc. Alan design docs     | `/alan-design/` | `dev-design`    |
| _Alan 3 Beginner's Guide_  | `/alanguide/`   | `dev-guide`     |
| _Alan IDE Reference Guide_ | `/ideguide/`    | `dev-ide`       |
| _Alan Manual_              | `/manual/`      | `dev-man`       |
| _Alan Author's Guide_      | `/writing/`     | `dev-auth`      |

Just to be clear, this doesn't mean that at all times all these dev-branches will be found on the repository.
Only actively developed branches will be kept on the repository — e.g. `dev-man`, since the _Alan Manual_ is constantly being updated.
Some documents, on the other hand, are rarely updated or revised, so their development branches will be most likely destroyed after merging into `master`, to be recreated whenever new work is due for that specific document.

It would be pointless to keep inactive dev-branches on the repo, because they would require constant rebasing on `master` to ensure they remain in synch with the repository development — it's far more practical to create them as the need arises, and dispose of them after merging.

Therefore, when you're about to contribute to a specific document, and you can't find the required dev-branch on the repository, just create it yourself by branching off from `master`, using the naming conventions shown in the above table.

### Dev Sub-Branches

When working on long text edits, which might involve multiple commits, it's advisable to work on development sub-branches — i.e. create a new branch from the dev baseline, and work therein.

For example, to work on the _Alan Manual_ Glossary, the `dev-man_glossary` branch could be created.
Since the Glossary can contain dozens of entries, working on a dedicate sub-branch makes sense for it allows to focus on a specific new Glossary entry per commit, and keep working for days (or weeks) and still be able to rebase on `dev-man` whenever someone else pushes new contents.

Once the editing work is ready, you should open a pull request to merge it into the baseline dev-branch, asking for the document's author to review it.
This will give a chance to the original author to discuss with you the contents changes and additions, and ask you to fix some things before merging.

When the review phase is over, the original author shall merge your edits into the dev baseline, usually squashing your contribution into a single commit (or a small number of commits) to keep the repository history clean.
If you have collaborator privileges, the PR reviewer might just give you the green light to merge, leaving it to you to deal with all the branch cleanup and merge operations.

Once your changes are in the baseline dev-branch, they'll be made available on `master` branch when the author (or a project maintainer) is ready to merge (i.e. when all other work-in-progress is production ready).

As the above illustrates, the collaboration effort is based on a cycle of changes coming from different people, which are supervised by the original author of a document (or its current maintainer) in order to provide smooth transitions between work-in-progress in dev-branches and the public document made available on `master` branch.

This holds true for all documents, regardless of whether they are still in Alpha or Beta, or they have reached their stable release — the whole idea is to work in an orderly manner that allows new contents and changes to flow-in without disrupting the project; and to always consult original authors before altering the contents of their works.


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

<!-- Project Files ----------------------------------------------------------->

[CONVENTIONS]: ./CONVENTIONS.md "Read the 'Formatting and Styling Conventions' guidelines adopted in Alan-Docs"

<!-- Guidelines Links -------------------------------------------------------->

[Formatting and Styling Conventions]: ./CONVENTIONS.md "Read the 'Formatting and Styling Conventions' guidelines adopted in Alan-Docs"

[Index guidelines]: ./CONVENTIONS.md#the-index

<!-- EOF -->
