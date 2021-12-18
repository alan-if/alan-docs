# Manual Cross References

This is a quick look-up table for cross-references in the Manual.
It provides the text to be pasted for AsciiDoc substitutions in double angled brackets.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Parts, Chapters and Sections](#parts-chapters-and-sections)
    - [X-Refs with Signifier and Number Shown](#x-refs-with-signifier-and-number-shown)
    - [X-Refs with Title Shown](#x-refs-with-title-shown)
- [Tables](#tables)
- [Figures](#figures)

<!-- /MarkdownTOC -->

-----

# Parts, Chapters and Sections

## X-Refs with Signifier and Number Shown

These xrefs will be shown via a link with the section's signifier and number.

|  ref   |                xref                |            file            |
|--------|------------------------------------|----------------------------|
| Pt. 1  | `<<Introduction>>`                 | [`manual_00.adoc`][man 00] |
| Pt. 2  | `<<Concepts>>`                     | [`manual_01.adoc`][man 01] |
| Ch. 4  | `<<Introduction to the Language>>` |                            |
| Pt. 3  | `<<Language Reference>>`           | [`manual_02.adoc`][man 02] |
| Ch. 8  | `<<Options>>`                      |                            |
| Ch. 12 | `<<Instances>>`                    |                            |
| Ch. 13 | `<<Properties>>`                   |                            |
| Ch. 14 | `<<Additions>>`                    |                            |
| Ch. 24 | `<<WHERE Specifications>>`         |                            |
| Ch. 26 | `<<Expressions>>`                  |                            |
| Ch. 29 | `<<words_identifiers_and_names>>`  |                            |
| Ch. 33 | `<<A Turn of Events>>`             |                            |
| App. A | `<<How To Use The System>>`        | [`manual_a.adoc`][man A]   |
| App. B | `<<A Sample Interaction>>`         | [`manual_b.adoc`][man B]   |
| App. C | `<<Run-time Messages>>`            | [`manual_c.adoc`][man C]   |
| C.1    | `<<Input Response Messages>>`      |                            |
| App. D | `<<Language Grammar>>`             | [`manual_d.adoc`][man D]   |
| D.2    | `<<Keywords>>`                     |                            |
| App. E | `<<Predefined Player Words>>`      | [`manual_e.adoc`][man E]   |


## X-Refs with Title Shown

These xrefs will be shown via a link with the section's actual title.

|  ref   |                             title xref                            |            file            |
|--------|-------------------------------------------------------------------|----------------------------|
| Pt. 1  | `<<Introduction,_Introduction_>>`                                 | [`manual_00.adoc`][man 00] |
| Pt. 2  | `<<Concepts,_Concepts_>>`                                         | [`manual_01.adoc`][man 01] |
| Ch. 4  | `<<Introduction to the Language,_Introduction to the Language_>>` |                            |
| Pt. 3  | `<<Language Reference,_Language Reference_>>`                     | [`manual_02.adoc`][man 02] |
| Ch. 8  | `<<Options,_Options_>>`                                           |                            |
| Ch. 12 | `<<Instances,_Instances_>>`                                       |                            |
| Ch. 13 | `<<Properties,_Properties_>>`                                     |                            |
| Ch. 14 | `<<Additions,_Additions_>>`                                       |                            |
| Ch. 24 | `<<WHERE Specifications,_WHERE Specifications_>>`                 |                            |
| Ch. 26 | `<<Expressions,_Expressions_>>`                                   |                            |
| Ch. 29 | `<<words_identifiers_and_names,_Words, Identifiers and Names_>>`  |                            |
| Ch. 33 | `<<A Turn of Events,_A Turn of Events_>>`                         |                            |
| App. A | `<<How To Use The System,_How To Use The System_>>`               | [`manual_a.adoc`][man A]   |
| App. B | `<<A Sample Interaction,_A Sample Interaction_>>`                 | [`manual_b.adoc`][man B]   |
| App. C | `<<Run-time Messages,_Run-time Messages_>>`                       | [`manual_c.adoc`][man C]   |
| C.1    | `<<Input Response Messages,_Input Response Messages_>>`           |                            |
| App. D | `<<Language Grammar,_Language Grammar_>>`                         | [`manual_d.adoc`][man D]   |
| D.2    | `<<Keywords,_Keywords_>>`                                         |                            |
| App. E | `<<Predefined Player Words,_Predefined Player Words_>>`           | [`manual_e.adoc`][man E]   |


# Tables

For convenience, Tables have also been given a custom ID, which might be handier to use than the full caption reference in some circumstances.

|  ref   |                   Table Caption                    |             Custom ID             |
|--------|----------------------------------------------------|-----------------------------------|
| Ch. 8  | [Adventure Settings via OPTION][Table 1]           | `table-of-options`                |
| Ch. 13 | [Properties Inheritance][Table 2]                  | `table-of-properties-inheritance` |
| Ch. 13 | [Order of Execution of ENTERED in Nested][Table 3] | `table-of-entered-execution`      |
| Ch. 15 | [(_none_)][Table X]                                | `table-syntax-parameters`         |
| Ch. 16 | [Order of Execution of Verbs][Table 4]             | `table-of-verbs-execution`        |
| App. D | [List of Alan Language's Keywords][Table 5]        | `table-of-keywords`               |

# Figures

| ref  |                              Figure Caption                              |        Custom ID         |
|------|--------------------------------------------------------------------------|--------------------------|
| §3.1 | [The principles for and relations between a game description ...][Fig 1] | `fig-game-compiler-terp` |
| §4.5 | [Relationships between the predefined classes.][Fig 2]                   | `fig-predefined-classes` |

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- Project Files -->

[man]: ./manual.asciidoc
[man 00]: ./manual_00.adoc "Source file of book Introduction"
[man 01]: ./manual_01.adoc "Source file of Part 1. Concepts"
[man 02]: ./manual_02.adoc "Source file of Part 2. Lexical Definitions"
[man 03]: ./manual_03.adoc "Source file of Part 3. Language Reference"
[man 04]: ./manual_04.adoc "Source file of Part 4. Running An Adventure"
[man 05]: ./manual_05.adoc "Source file of Part 5. Hints And Tips"
[man 06]: ./manual_06.adoc "Source file of Part 6. Adventure Construction"
[man A]:  ./manual_a.adoc "Source file of Appendix A: How To Use The System"
[man B]:  ./manual_b.adoc "Source file of Appendix B: A Sample Interaction"
[man C]:  ./manual_c.adoc "Source file of Appendix C: Run-time Messages"
[man D]:  ./manual_d.adoc "Source file of Appendix D: Language Grammar"
[man E]:  ./manual_e.adoc "Source file of Appendix E: Predefined player words"
[man F]:  ./manual_f.adoc "Source file of Appendix F: Compiler Messages"
[man G]:  ./manual_g.adoc "Source file of Appendix G: Localization"
[man H]:  ./manual_h.adoc "Source file of Appendix H: Portability of Games"
[man I]:  ./manual_i.adoc "Source file of Appendix I: Copying Conditions"
[man Z]:  ./manual_z.adoc "Source file of Index"

<!-- HTML Online Preview Links ( Beta Man ) -->

<!-- Tables -->

[Table 1]: https://alan-if.github.io/alan-docs/manual-beta/manual.html#table-of-options
[Table 2]: https://alan-if.github.io/alan-docs/manual-beta/manual.html#table-of-properties-inheritance
[Table 3]: https://alan-if.github.io/alan-docs/manual-beta/manual.html#table-of-entered-execution
[Table X]: https://alan-if.github.io/alan-docs/manual-beta/manual.html#table-syntax-parameters
[Table 4]: https://alan-if.github.io/alan-docs/manual-beta/manual.html#table-of-verbs-execution
[Table 5]: https://alan-if.github.io/alan-docs/manual-beta/manual.html#table-of-keywords

<!-- Figures -->

[Fig 1]: https://alan-if.github.io/alan-docs/manual-beta/manual.html#fig-game-compiler-terp
[Fig 2]: https://alan-if.github.io/alan-docs/manual-beta/manual.html#fig-predefined-classes

<!-- eof -->
