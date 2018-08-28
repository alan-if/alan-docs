# Guidelines for Contributing to Alan-Docs

All help and contributions to this project are welcome. We ask you to take just a few minutes to read through the following guidlines.

> __WIP NOTE__ — These guidelines are still work in progress, and any suggestions and corrections are welcome!

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Styling Conventions](#styling-conventions)
- [Submitting New Contents via Branches](#submitting-new-contents-via-branches)
- [Documents Index](#documents-index)

<!-- /MarkdownTOC -->

-----

# Styling Conventions

In order to provide a pleasant reading and learning experience, we strive to apply consistent styling within a same document and (possibly) across all the Alan related documentation.

For this reason, we ask editors and contributors to read the _Formatting and Styling Conventions_ document and follow its guidelines:

- [`CONVENTIONS.md`][CONVENTIONS] — _Formatting and Styling Conventions_ guidelines.


# Submitting New Contents via Branches

If you would like to submit new contents to a document, and you're not its author, we aks you to submit them via a dedicated branch, instead of using `master` branch — ie, even if you have priviledges to publish directly in `master`, you should submit major content changes on a dedicated branch.

This approach allows the original author of the document ro review and discuss the proposed contents before merging them in `master`. Unlike minor editing changes (fixing typos, text formatting and sytles), content changes should be approved by the original author of a document before being merged into the main branch.

Since editors will receive administrative rights to publish changes directly into `master` branch (to provide them freedom of action to work while porting and editing documents), this guideline is a reminder that any major changes to a document creatred by someone else should be subject to that author's approval.

# Documents Index

The Index (not available in HTML documents) is an important tool, especially in big documents (like the Manual) for it allows the end user to quickly look up and find topics of interest. While digital documents readers usually offer search functionality, searching for common keywords would simply produce too many matches, and it would never be as practical as a well organized Index. Furthermore, some users might decide to print on paper a copy of the documentation, leaving them with the Index as the sole tool to quickly find topics and solutions to their problems.

For these reasons, editors should strive to contribute toward the creation of a well organized Index in all Alan documentation of considerable size. All we ask to editors wishing to contribute building the Index is to analyse thoroughly the current state of the document's Index, in order to understand how the original author organized and structured it, and then contribute new entries accordingly, trying to preserve the original structure.

Also, follow the [Index guidelines] provided in _[Formatting and Styling Conventions]_.




When it comes to modifications to the Index, editors can freely push them to `master` branch, without requiring supervision of the document's author.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

<!-- Project Files ----------------------------------------------------------->

[CONVENTIONS]: ./CONVENTIONS.md "Read the 'Formatting and Styling Conventions' guidelines adopted in Alan-Docs"

<!-- Guidelines Links -------------------------------------------------------->

[Formatting and Styling Conventions]: ./CONVENTIONS.md "Read the 'Formatting and Styling Conventions' guidelines adopted in Alan-Docs"

[Index guidelines]: ./CONVENTIONS.md#the-index

<!-- EOF -->
