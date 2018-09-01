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

<!-- /MarkdownTOC -->

-----

# Chapters and Sections

## With Chapter/Section Number Shown

These xrefs will be shown via a link with the Chapter/Section Number.

|   Ch / Sec  |                xref                |              file              |
|-------------|------------------------------------|--------------------------------|
| 1           | `<<Introduction>>`                 | [`manual_01.asciidoc`][man 01] |
| 2           | `<<Concepts>>`                     | [`manual_02.asciidoc`][man 02] |
| 2.4         | `<<Introduction to the Language>>` |                                |
| 3           | `<<Language Reference>>`           | [`manual_03.asciidoc`][man 03] |
| 3.2 Options | `<<Options>>`                      |                                |
| 3.6         | `<<Instances>>`                    |                                |
| 3.7         | `<<Properties>>`                   |                                |
| 3.8         | `<<Additions>>`                    |                                |
| 3.18        | `<<WHERE Specifications>>`         |                                |
| 3.20        | `<<Expressions>>`                  |                                |
| 4.2         | `<<_words_identifiers_and_names>>` |                                |
| 5.1         | `<<A Turn of Events>>`             |                                |
| Appendix A  | `<<How To Use The System>>`        | [`manual_08.asciidoc`][man 08] |
| Appendix B  | `<<A Sample Interaction>>`         | [`manual_09.asciidoc`][man 09] |
| Appendix C  | `<<Run-time Messages>>`            | [`manual_10.asciidoc`][man 10] |
| C.1         | `<<Input Response Messages>>`      |                                |
| Appendix D  | `<<Language Grammar>>`             | [`manual_11.asciidoc`][man 11] |
| D.2         | `<<Keywords>>`                     |                                |
| Appendix E  | `<<Predefined Player Words>>`      | [`manual_12.asciidoc`][man 12] |

## With Chapter/Section Title Shown

These xrefs will be shown via a link with the Chapter/Section actual title.

|   Ch / Sec  |                             title xref                            |              file              |
|-------------|-------------------------------------------------------------------|--------------------------------|
| 1           | `<<Introduction,_Introduction_>>`                                 | [`manual_01.asciidoc`][man 01] |
| 2           | `<<Concepts,_Concepts_>>`                                         | [`manual_02.asciidoc`][man 02] |
| 2.4         | `<<Introduction to the Language,_Introduction to the Language_>>` |                                |
| 3           | `<<Language Reference,_Language Reference_>>`                     | [`manual_03.asciidoc`][man 03] |
| 3.2 Options | `<<Options,_Options_>>`                                           |                                |
| 3.6         | `<<Instances,_Instances_>>`                                       |                                |
| 3.7         | `<<Properties,_Properties_>>`                                     |                                |
| 3.8         | `<<Additions,_Additions_>>`                                       |                                |
| 3.18        | `<<WHERE Specifications,_WHERE Specifications_>>`                 |                                |
| 3.20        | `<<Expressions,_Expressions_>>`                                   |                                |
| 4.2         | `<<_words_identifiers_and_names,_Words, Identifiers and Names_>>` |                                |
| 5.1         | `<<A Turn of Events,_A Turn of Events_>>`                         |                                |
| Appendix A  | `<<How To Use The System,_How To Use The System_>>`               | [`manual_08.asciidoc`][man 08] |
| Appendix B  | `<<A Sample Interaction,_A Sample Interaction_>>`                 | [`manual_09.asciidoc`][man 09] |
| Appendix C  | `<<Run-time Messages,_Run-time Messages_>>`                       | [`manual_10.asciidoc`][man 10] |
| C.1         | `<<Input Response Messages,_Input Response Messages_>>`           |                                |
| Appendix D  | `<<Language Grammar,_Language Grammar_>>`                         | [`manual_11.asciidoc`][man 11] |
| D.2         | `<<Keywords,_Keywords_>>`                                         |                                |
| Appendix E  | `<<Predefined Player Words,_Predefined Player Words_>>`           | [`manual_12.asciidoc`][man 12] |


# Tables

For convenience, Tables have also been given a custom ID, which might be handier to use than the full caption reference in some circumstances.

| Ch / Sec |              Table Caption              |             Custom ID             |
|----------|-----------------------------------------|-----------------------------------|
| 3.2      | Adventure Settings via OPTION           | `table-of-options`                |
| 3.7      | Properties Inheritance                  | `table-of-properties-inheritance` |
| 3.7      | Order of Execution of ENTERED in Nested | `table-of-entered-execution`      |
| 3.9      | (_none_)                                | `table-syntax-parameters`         |
| 3.10     | Order of Execution of Verbs             | `table-of-verbs-execution`        |
| D.2      | List of Alan Language's Keywords        | `table-of-keywords`               |

<!-- 
| xx          | `<<xxxxxx>>`                       |                                |
|   | xxx | `yyy` |
 -->


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

<!-- Project Files -->

[man]: ./manual.asciidoc
[man 01]: ./manual_01.asciidoc "Source file of Chapter 1. Introduction"
[man 02]: ./manual_02.asciidoc "Source file of Chapter 2. Concepts"
[man 03]: ./manual_03.asciidoc "Source file of Chapter 3. Lexical Definitions"
[man 04]: ./manual_04.asciidoc "Source file of Chapter 4. Language Reference"
[man 05]: ./manual_05.asciidoc "Source file of Chapter 5. Running An Adventure"
[man 06]: ./manual_06.asciidoc "Source file of Chapter 6. Hints And Tips"
[man 07]: ./manual_07.asciidoc "Source file of Chapter 7. Adventure Construction"
[man 08]: ./manual_08.asciidoc "Source file of Appendix A: How To Use The System"
[man 09]: ./manual_09.asciidoc "Source file of Appendix B: A Sample Interaction"
[man 10]: ./manual_10.asciidoc "Source file of Appendix C: Run-time Messages"
[man 11]: ./manual_11.asciidoc "Source file of Appendix D: Language Grammar"
[man 12]: ./manual_12.asciidoc "Source file of Appendix E: Predefined player words"
[man 13]: ./manual_13.asciidoc "Source file of Appendix F: Compiler Messages"
[man 14]: ./manual_14.asciidoc "Source file of Appendix G: Localization"
[man 15]: ./manual_15.asciidoc "Source file of Appendix H: Portability of Games"
[man 16]: ./manual_16.asciidoc "Source file of Appendix I: Copying Conditions"
[man 17]: ./manual_17.asciidoc "Source file of Index"


<!-- eof -->