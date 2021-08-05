# Manual Cross References

This is a quick look-up table for cross-references in the Manual.
It provides the text to be pasted for AsciiDoc substitutions in double angled brackets.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Chapters and Sections](#chapters-and-sections)
    - [With Chapter/Section Number Shown](#with-chaptersection-number-shown)
    - [With Chapter/Section Title Shown](#with-chaptersection-title-shown)
- [Tables](#tables)
- [Figures](#figures)

<!-- /MarkdownTOC -->

-----

# Chapters and Sections

## With Chapter/Section Number Shown

These xrefs will be shown via a link with the Chapter/Section Number.

|   Ch / Sec  |                xref                |            file            |
|-------------|------------------------------------|----------------------------|
| 1           | `<<Introduction>>`                 | [`manual_01.adoc`][man 01] |
| 2           | `<<Concepts>>`                     | [`manual_02.adoc`][man 02] |
| 2.4         | `<<Introduction to the Language>>` |                            |
| 3           | `<<Language Reference>>`           | [`manual_03.adoc`][man 03] |
| 3.2 Options | `<<Options>>`                      |                            |
| 3.6         | `<<Instances>>`                    |                            |
| 3.7         | `<<Properties>>`                   |                            |
| 3.8         | `<<Additions>>`                    |                            |
| 3.18        | `<<WHERE Specifications>>`         |                            |
| 3.20        | `<<Expressions>>`                  |                            |
| 4.2         | `<<_words_identifiers_and_names>>` |                            |
| 5.1         | `<<A Turn of Events>>`             |                            |
| Appendix A  | `<<How To Use The System>>`        | [`manual_a.adoc`][man A]   |
| Appendix B  | `<<A Sample Interaction>>`         | [`manual_b.adoc`][man B]   |
| Appendix C  | `<<Run-time Messages>>`            | [`manual_c.adoc`][man C]   |
| C.1         | `<<Input Response Messages>>`      |                            |
| Appendix D  | `<<Language Grammar>>`             | [`manual_d.adoc`][man D]   |
| D.2         | `<<Keywords>>`                     |                            |
| Appendix E  | `<<Predefined Player Words>>`      | [`manual_e.adoc`][man E]   |

## With Chapter/Section Title Shown

These xrefs will be shown via a link with the Chapter/Section actual title.

|   Ch / Sec  |                             title xref                            |            file            |
|-------------|-------------------------------------------------------------------|----------------------------|
| 1           | `<<Introduction,_Introduction_>>`                                 | [`manual_01.adoc`][man 01] |
| 2           | `<<Concepts,_Concepts_>>`                                         | [`manual_02.adoc`][man 02] |
| 2.4         | `<<Introduction to the Language,_Introduction to the Language_>>` |                            |
| 3           | `<<Language Reference,_Language Reference_>>`                     | [`manual_03.adoc`][man 03] |
| 3.2 Options | `<<Options,_Options_>>`                                           |                            |
| 3.6         | `<<Instances,_Instances_>>`                                       |                            |
| 3.7         | `<<Properties,_Properties_>>`                                     |                            |
| 3.8         | `<<Additions,_Additions_>>`                                       |                            |
| 3.18        | `<<WHERE Specifications,_WHERE Specifications_>>`                 |                            |
| 3.20        | `<<Expressions,_Expressions_>>`                                   |                            |
| 4.2         | `<<_words_identifiers_and_names,_Words, Identifiers and Names_>>` |                            |
| 5.1         | `<<A Turn of Events,_A Turn of Events_>>`                         |                            |
| Appendix A  | `<<How To Use The System,_How To Use The System_>>`               | [`manual_a.adoc`][man A]   |
| Appendix B  | `<<A Sample Interaction,_A Sample Interaction_>>`                 | [`manual_b.adoc`][man B]   |
| Appendix C  | `<<Run-time Messages,_Run-time Messages_>>`                       | [`manual_c.adoc`][man C]   |
| C.1         | `<<Input Response Messages,_Input Response Messages_>>`           |                            |
| Appendix D  | `<<Language Grammar,_Language Grammar_>>`                         | [`manual_d.adoc`][man D]   |
| D.2         | `<<Keywords,_Keywords_>>`                                         |                            |
| Appendix E  | `<<Predefined Player Words,_Predefined Player Words_>>`           | [`manual_e.adoc`][man E]   |


# Tables

For convenience, Tables have also been given a custom ID, which might be handier to use than the full caption reference in some circumstances.

| Ch / Sec |                   Table Caption                    |             Custom ID             |
|----------|----------------------------------------------------|-----------------------------------|
| 3.2      | [Adventure Settings via OPTION][Table 1]           | `table-of-options`                |
| 3.7      | [Properties Inheritance][Table 2]                  | `table-of-properties-inheritance` |
| 3.7      | [Order of Execution of ENTERED in Nested][Table 3] | `table-of-entered-execution`      |
| 3.9      | [(_none_)][Table X]                                | `table-syntax-parameters`         |
| 3.10     | [Order of Execution of Verbs][Table 4]             | `table-of-verbs-execution`        |
| D.2      | [List of Alan Language's Keywords][Table 5]        | `table-of-keywords`               |

# Figures

| Ch / Sec |                              Figure Caption                              |        Custom ID         |
|----------|--------------------------------------------------------------------------|--------------------------|
|      2.3 | [The principles for and relations between a game description ...][Fig 1] | `fig-game-compiler-terp` |
|      2.4 | [Relationships between the predefined classes.][Fig 2]                   | `fig-predefined-classes` |

<!--
| xx          | `<<xxxxxx>>`                       |                                |
|   | xxx | `yyy` |
 -->


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- Project Files -->

[man]: ./manual.asciidoc
[man 01]: ./manual_01.adoc "Source file of Chapter 1. Introduction"
[man 02]: ./manual_02.adoc "Source file of Chapter 2. Concepts"
[man 03]: ./manual_03.adoc "Source file of Chapter 3. Lexical Definitions"
[man 04]: ./manual_04.adoc "Source file of Chapter 4. Language Reference"
[man 05]: ./manual_05.adoc "Source file of Chapter 5. Running An Adventure"
[man 06]: ./manual_06.adoc "Source file of Chapter 6. Hints And Tips"
[man 07]: ./manual_07.adoc "Source file of Chapter 7. Adventure Construction"
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

<!-- HTML Live Preview Links -->

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
