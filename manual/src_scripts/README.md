# Source Files to Generate Transcripts and Logs

In order to auto-generate the compiler output and game transcripts shown in some places of the Manual, some source files are provided in this folder.


-----

**Table of Contents**


<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3,4" -->

- [About These Scripts](#about-these-scripts)
    - [Updating The Scripts](#updating-the-scripts)
    - [File Extension Conventions](#file-extension-conventions)
- [Scripts Contents by Book Sections](#scripts-contents-by-book-sections)
    - [Appendix F: Compiler Messages](#appendix-f-compiler-messages)
        - [F.1. Format of messages](#f1-format-of-messages)

<!-- /MarkdownTOC -->

-----


# About These Scripts

The idea is to ensure that compiler output and code examples transcripts provided in the _Manual_ will always reflect the current status of the Alan compiler and interpreter.

## Updating The Scripts

Whenever a new Alan version (i.e. a new Beta version) is released, the _Alan Manual_ needs to be updated accordingly, and these scripts should be updated too because the new ALAN compiler or ARun versions might create slightly different output.

The correct version of the Alan SDK must be used to ensure that the output matches that of the Alan SDK version of the _Alan Manual_ — usually these updates are done only for new Beta releases, so just drop in this folder copies of the latest Beta SDK binaries.

The generated scripts need to be copied and pasted over the old ones, directly in the AsciiDoc sources (see Note below).

> __NOTE__ — Currently, the output of these scripts is being manually copied and pasted into the AsciiDoc sources of the _Alan Manual_, after being generated/updated via their batch/shell scripts.
>
> In the future (if the number of scripts grows) we might include them directly into the AsciiDoc sources via the `include::` directive, but this would require an intermediate step to convert the log/transcript files from ISO-8859-1 to UTF-8, because Asciidoctor doesn't yet support including ISO files (see [asciidoctor/asciidoctor#3248]).
> This needs to be done via Bash scripts for it requires the __iconv__ utility.

[asciidoctor/asciidoctor#3248]: https://github.com/asciidoctor/asciidoctor/issues/3248

## File Extension Conventions

|     ext      | in/out |                                       description                                        |
|--------------|--------|------------------------------------------------------------------------------------------|
| `.log`       | output | Compiler/ARun logs (`-help`, debug, reports, etc., except game transcripts).             |
| `.a3sol`     | input  | Commands script (aka _solution_) fed to ARun in order to produce an `.a3log` transcript. |
| `.a3log`     | output | Generated game transcript (aka _walkthrough_).                                           |
| `.bat`/`.sh` | —      | Scripts to generate the required output.                                                 |


# Scripts Contents by Book Sections

The scripts in this folder are presented in their order of appearance in the _Alan Manual_, for simplicity sake.

## Appendix F: Compiler Messages

### F.1. Format of messages

These sources and scripts are used to reproduce the exact compiler errors report shown in the _Manual_ at "_[F.1. Format of messages]_".

- [`ZILexample.alan`](./ZILexample.alan) — adventure with errors.
- [`ZILexample.bat`](./ZILexample.bat)
- [`ZILexample.log`](./ZILexample.log) — compiler errors report.

The `ZILexample.bat` script simply invokes the Alan compiler on the malformed `ZILexample.alan` adventure to capture the errors report into `ZILexample.log`:

```batch
CALL alan ZILexample 1> ZILexample.log
```

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[F.1. Format of messages]: https://htmlpreview.github.io/?https://github.com/alan-if/alan-docs/blob/master/manual/manual.html#_format_of_messages "Click for a live HTML preview of 'F.1. Format of messages'"


<!-- EOF -->
