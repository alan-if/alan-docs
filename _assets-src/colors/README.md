# Alan Docs Color Schemes

Assets for working with the color schemes used in the documents.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
- [About ColorImpact 4](#about-colorimpact-4)
- [Schemes Preview](#schemes-preview)
    - [Alan Syntax](#alan-syntax)
    - [BNF Syntax](#bnf-syntax)
    - [IF Game Transcript](#if-game-transcript)
    - [Shell/CMD](#shellcmd)

<!-- /MarkdownTOC -->

-----

# Folder Contents

[ColorImpact 4] palette collection:

- [`Alan-Docs-Color-Schemes.cifc`][Alan-Docs-Color-Schemes.cifc]

Exported swatches:

- [`alan.gif`][swatches alan]
- [`bnf.gif`][swatches bnf]
- [`game-transcript.gif`][swatches game]
- [`shell.gif`][swatches shell]

Exported color specs sheet:

- [`alan.txt`][specs alan]
- [`bnf.txt`][specs bnf]
- [`game-transcript.txt`][specs game]
- [`shell.txt`][specs shell]

# About ColorImpact 4

[ColorImpact 4] is a commercial tool for designing and managing color schemes with advanced color harmonies algorithms. I've been using this tool for years, so I'm including in the project the Alan Docs palette collection file I use when working on the schemes.

Unfortunately, `.cifc` palette collections are in a proprietary binary format and you can't do much with them without ColorImpact. So I've also included the color schemes as exported swatches in image format.

# Schemes Preview

## Alan Syntax

Scheme for syntax highlighting Alan source code.

- [`alan.txt`][specs alan]

![Alan swatches][swatches alan]

Adapted from Vasily Polovnyov's "[github.com style]" for [highlight.js].

Here's a screenshot:

![IF Alan][screenshot alan]


## BNF Syntax

BNF rules are styles as `bnf` source blocks.

- [`bnf.txt`][specs bnf]

![BNF swatches][swatches bnf]

Here's a screenshot:

![IF BNF][screenshot bnf]


## IF Game Transcript

Game transcript use an `example` block with `role="gametranscript"`.

- [`game-transcript.txt`][specs game]

![IF game transcript swatches][swatches game]

Here's a screenshot:

![IF game transcript][screenshot game]


## Shell/CMD

For shell usage examples we use a `literal` block with `role="shell"`.

- [`shell.txt`][specs shell]

![shell/CMD swatches][swatches shell]

The color scheme employed is based on the [new default console scheme of Windows 10]. Here's a screenshot:

![shell/CMD][screenshot shell]


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[new default console scheme of Windows 10]: https://blogs.msdn.microsoft.com/commandline/2017/08/02/updating-the-windows-console-colors/ "Read more on MSDN..."

[github.com style]: https://github.com/highlightjs/highlight.js/blob/master/src/styles/github.css "View upstream source"

<!-- 3rd party tools -->

[ColorImpact 4]: http://www.tigercolor.com/ColorImpact.htm "Visit ColorImpact 4 website"
[highlight.js]: https://highlightjs.org/ "Visit highlight.js website"


<!-- files ------------------------------------------------------------------->

[Alan-Docs-Color-Schemes.cifc]: ./Alan-Docs-Color-Schemes.cifc "ColorImpact 4 palette collection"

<!-- color specs -->

[specs alan]: ./alan.txt "Alan syntax color scheme text specs sheet"
[specs bnf]: ./bnf.txt "BNF syntax color scheme text specs sheet"
[specs game]: ./game-transcript.txt "game transcripts color scheme text specs sheet"
[specs shell]: ./shell.txt "shell (CMD) color scheme text specs sheet"

<!-- swatches -->

[swatches alan]: ./alan.gif "Alan syntax color scheme swatches"
[swatches bnf]: ./bnf.gif "BNF syntax color scheme swatches"
[swatches game]: ./game-transcript.gif "game transcripts color scheme swatches"
[swatches shell]: ./shell.gif "shell (CMD) color scheme swatches"

<!-- screenshots -->

[screenshot alan]: ./_screenshot_alan.png "Screenshot of Alan code"
[screenshot bnf]: ./_screenshot_bnf.png "Screenshot of a BNF block"
[screenshot shell]: ./_screenshot_shell.png "Screenshot of a shell block"
[screenshot game]: ./_screenshot_game-transcript.png "Screenshot of a game transcript"


<!-- EOF -->