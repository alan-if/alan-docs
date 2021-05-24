# _Beginner's Guide_ Source Files

The source files for the _TV TIME!_ adventure and its dependencies.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
- [Alan Library v0.6.2](#alan-library-v062)
    - [Library Contents](#library-contents)
        - [The `lib` Folder](#the-lib-folder)
        - [The `mylib` Folder](#the-mylib-folder)

<!-- /MarkdownTOC -->

-----


# Folder Contents

- [`/lib/`][lib/] — Library v0.6.2 original sources.
- [`/mylib/`][mylib/] — Library v0.6.2 modified as indicated tutorial.
- [`build.sh`][build.sh] — script to compile and test the adventure.
- [`plasma.png`][plasma] — required adventure asset.
- [`tvtime.alan`][tvtime.alan] — the final _TV TIME!_ adventure.

The [`lib/`][lib/] folder contains a copy of the original ALAN Library v0.6.2; the reader will need it to carry out the tutorial steps, which require editing the original library sources and adapt them to the needs of the _TV TIME!_ adventure.

The [`mylib/`][mylib/] folder contains a modified copy of ALAN Library v0.6.2, with all the changes indicated by the tutorial already applied.
This folder is needed in order to compile the `tvtime.alan` adventure.

While studying the tutorial, the reader will need to create his/her own copy of the `lib/` folder, and apply to it the changes indicated in the various steps of the tutorial.
Because the tutorial takes a gradual approach, where the _TV TIME!_ adventure grows progressively, you won't be able to use the files from the `mylib/` folder straight away, for each intermediate version of the tutorial code needs a specific set of tweaks to the library code.
The reader will have to manually implement these as he goes along the tutorial.


# Alan Library v0.6.2

The original _Beginner's Guide_ uses ALAN Library v0.6.1 throughout the tutorial examples, which was an old version of the ALAN Library ported from ALAN 2, and now superseded by the newer [ALAN Standard Library 2] by [Anssi Räisänen].

In order to preserve usability of the code examples, I've included here a full copy of the ALAN Library v0.6.2, which was its latest version before the shift to Library v1, and made a few tweaks to make it closer to the original v0.6.1 used in the tutorial but keep the ALAN compatibility changes of v0.6.2.

For detailed info about the ALAN Library v0.6.2 used here, its history and my changes to it, visit the [Alan Goodies] repository, which now hosts the official archive copy of the library:

- https://github.com/alan-if/alan-goodies/tree/master/libs/ALAN-Library_0.6/

For more information on the history of the various ALAN libraries, see the ALAN Wiki:

- https://github.com/alan-if/alan/wiki/Alan-Libraries


## Library Contents

### The `lib` Folder

This [`lib/`][lib/] folder contains a copy of the old Alan Library v0.6.2, recovered from the Alan repository.
Some unnecessary files were left out on purpose (automation scripts, test files, TODO, etc.).


- [`lib/std.i`](./lib/std.i) — main Library module, imports all other modules:
    + `*.i` — library submodules.
- [`lib/ChangeLog`](./lib/ChangeLog) — ChangeLog from v0.1 up to v0.6.2 (2001–2007).
- [`lib/index.txt`](./lib/index.txt) — References to the library modules structure and organization.
- [`lib/notes.txt`](./lib/notes.txt) — Some guidelines for using `std.i`.
- [`lib/ReadMe`](./lib/ReadMe) — Original Library README file.


### The `mylib` Folder

The [`mylib/`][mylib/] folder is a copy of [`lib/`][lib/] but with all the changes from the tutorial.

The following library files were changed:

- [`mylib/examine.i`](./mylib/examine.i)
- [`mylib/nowhere.i`](./mylib/nowhere.i)
- [`mylib/open.i`](./mylib/open.i)
- [`mylib/push.i`](./mylib/push.i)
- [`mylib/push.i`](./mylib/push.i)
- [`mylib/put.i`](./mylib/put.i)
- [`mylib/scenery.i`](./mylib/scenery.i)
- [`mylib/std.i`](./mylib/std.i)

And the following files were added:

- [`mylib/cut.i`](./mylib/cut.i)
- [`mylib/plug.i`](./mylib/plug.i)

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[ALAN Standard Library 2]: https://github.com/AnssiR66/AlanStdLib "Visit the official repository of the ALAN Standard Library 2"
[Alan Goodies]: https://github.com/alan-if/alan-goodies "Visit the ALan Goodies repository on GitHub"

<!-- Tutorial code assets -->

[lib/]: ./lib/ "Navigate to folder"
[mylib/]: ./mylib/ "Navigate to folder"
[build.sh]: ./build.sh "View source file"
[plasma]: ./plasma.png "View image"
[tvtime.alan]: ./tvtime.alan "View source file"

<!-- people -->

[Anssi Räisänen]: https://github.com/AnssiR66 "View Anssi Räisänen's GitHub profile"

<!-- EOF -->
