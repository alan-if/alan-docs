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
    - [Some Background on the Libraries](#some-background-on-the-libraries)
    - [Library Details and Tweaks](#library-details-and-tweaks)
        - [Fixes](#fixes)
        - [Reverts from 0.6.1](#reverts-from-061)

<!-- /MarkdownTOC -->

-----


# Folder Contents

- [`/lib/`][lib] — Library v0.6.2 original sources.
- [`/mylib/`][mylib] — Library v0.6.2 modified as indicated tutorial.
- [`COMPILE.bat`][COMPILE] — script to compile the adventure.
- [`plasma.jpg`][plasma] — required adventure asset.
- [`tvtime.alan`][tvtime.alan] — the final _TV TIME!_ adventure.

The `lib/` folder contains a copy of the original ALAN Library v0.6.2; the reader will need it to carry out the tutorial steps, which require editing the original library sources and adapt them to the needs of the _TV TIME!_ adventure.

The `mylib/` folder contains a modified copy of ALAN Library v0.6.2, with all the changes indicated by the tutorial already applied. This folder is needed in order to compile the `tvtime.alan` adventure.

While studuying the tutorial, the reader will need to create his/her own copy of the `lib/` folder, and apply to it the changes indicated in the various steps of the tutorial. Because the tutorial takes a gradual approach, where the _TV TIME!_ adventure grows progressively, you won't be able to use the files from the `mylib/` folder straight away, for each intermediate version of the tutorial code needs a specific set of tweaks to the library code. The reader will have to manually implement these as he goes along the tutorial.


# Alan Library v0.6.2

The original _Beginner's Guide_ uses ALAN Library v0.6.1 throughout the tutorial examples, which was an old version of the ALAN Library ported from ALAN 2, and now superseeded by the newer [ALAN Standard Library 2] by [Anssi Räisänen]. 

In order to preserve usability of the code examples, I've included here a full copy of the ALAN Library v0.6.2, which was its latest version before the shift to Library v1, and made a few tweaks to make it closer to the original v0.6.1 used in the tutorial but keep the ALAN compatibility chages of v0.6.2 (more details below).

The ALAN Library was originally included in the [ALAN repository], inside the [`lib/`][last lib] subfolder, but when Anssi's StdLib became an independent project they were removed from the repository.

## Library Contents

### The `lib` Folder

This [`lib/`][lib] folder contains a copy of the old Alan Library v0.6.2, taken from the Alan repository. Some unnecessary files were left out on purpose (automation scripts, test files, TODO, etc.).


- [`lib/std.i`](./lib/std.i) — main Library module, imports all other modules:
    + `*.i` — library submodules.
- [`lib/ChangeLog`](./lib/ChangeLog) — ChangeLog from v0.1 up to v0.6.2 (2001–2007).
- [`lib/index.txt`](./lib/index.txt) — References to the library modules structure and organization.
- [`lib/notes.txt`](./lib/notes.txt) — Some guidelines for using `std.i`.
- [`lib/ReadMe`](./lib/ReadMe) — Original Library README file.

More info on their origin and tweaks can be found further on.

### The `mylib` Folder

The [`mylib/`][mylib] folder is a copy of [`lib/`][lib] but with all the changes from the tutorial.

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


## Some Background on the Libraries

Having joined the ALAN community when Anssi's StdLib 2.1 was already the new established library (i.e. Tristano speaking here), I haven't had any actual experience with previous versions of the ALAN Library.

From what I've gathered, the evolution of the ALAN standard libraries is roughly as follows.

- The original __ALAN Library__, up to v0.4.0 (2001–2002), was designed for ALAN 2.
- __ALAN Library v0.4.1__ was ported to work with ALAN 3, and was updated up to v0.6.2 (2002–2007).
- __[ALAN Library 1]__ (2010–2011) was a new library design (redesign?) by [Anssi Räisänen], where the library code was organized into four main sumodules.
- The __[ALAN Standard Library 2]__ (2016–) was designed by [Anssi Räisänen], this being a new library altogether, targeting specifically ALAN 3 new features and introducing extensive features in formally organized library structure. This is the current ALAN Library in use today, v2.1 being the latest release. 

The original ALAN Library, up to v0.6.2 was the result of the collaborative joint effort of Göran Forslund, Stephen Griffiths and Thomas Nilsson (now Thomas Nilefalk). The [ALAN Library 1] was designed by [Anssi Räisänen]. The new [ALAN Standard Library 2]  (aka StdLib) is the work of [Anssi Räisänen].

All three libraries are distributed under the Artistic License 2.0.


## Library Details and Tweaks

The library files of v0.6.2 used here were taken from commit [`c44766fa`][c44766fa]  (2017/04/17) of the ALAN repository — the next commit ([`18c72f83`][18c72f83]) removed the whole library, so I'm assuming that these were the latest files available for ALAN Library v0.x.

I've also used for comparison the files from Library v0.6.1, taken from commit [`e002f20c`][e002f20c], to preserve a few elements that were changed in v0.6.2 and to keep the library closer to the code used for the original tutorial.

The [ChangeLog](./lib/ChangeLog) for v0.6.2 mentions the following changes:

```
0.6.2 : November 2007 (SG)

invent.i : changed 'the Worn' from a 'thing' to an 'entity' (to make compatible with recent versions of Alan3)

meta.i : remove q verb and made q synonym of 'quit' (no longer need a warning 
about quit being not undoable because it is undoable in recent Alan3 versions)
```


Ultimately, this is Library v0.6.2 with the following fixes and tweaks applied (you may consider it either as "v0.6.1 improved", or as an hybrid between v0.6.1 and v0.6.2).

### Fixes

The indentantion of all library sources was fixed, and all tabs converted to spaces (2 spaces per tab). Lines were joined or split in a few places, to make the code more readable.

- `lib/invent.i`

I've changed `THE worn ISA thing IN hero` into `THE worn ISA entity`, as it should have been in the first place. In fact, the header comments state:

```alan
-- invent.i
-- 0.6.2 : changed 'the Worn' from a 'thing' to an 'entity'
```

so it looks like the `ISA thing IN hero` might have been actually an error. In any case, that line it was preventing compilation, so it had to be changed.

### Reverts from 0.6.1

I've also preserved some default attributes and CHECKS from v0.6.1 that were removed in v0.6.2. My assumption was that the _TV TIME!_ example might rely on them.

- `lib/open.i`

Restored the `And obj1 Is openable` CHECK:

```alan
Add To Every object
  Verb close_with
    When obj1
      Check obj2 In hero
        Else "You don't have" Say The obj2. "."
      And obj1 Is openable
        Else "You can't close" Say The obj1. "."
      Does -- To be overridden by "Does Only" Where appropriate...
        "You can't close" Say The obj1. "with" Say The obj2. "."
  End Verb.
End Add To.
```

which in v0.6.2 was removed:

```alan
Add To Every object
  Verb close_with
    When obj1
      Check obj2 In hero
        Else "You don't have" Say The obj2. "."
      Does -- To be overridden by "Does Only" Where appropriate...
        "You can't close" Say The obj1. "with" Say The obj2. "."
  End Verb.
End Add To.
```

- `lib/people.i` 

Restored some default for the `person` class definition:

- `Is Not named.`
- Customized `Description` based on `named` attribute.

I've kept the code from v0.6.1:

```alan
Every person Isa actor
  Is Not named.       -- If it has a proper name
  Description
    If This Is Not named Then
      "There is" Say An This. "here."
    Else
      Say This. "is here."
    End If.
End Every person.
```

which in v0.6.2 had become:

```alan
Every person Isa actor
End Every person.
```

These are really small tweaks intended to keep the library files as close as possible to those used in the original tutorial, but at the same time preserve the benefits of v0.6.2 — which basically boil down to the `worn` becoming an `entity` and the improved `quit` verb that leveraged newly added support for UNDO functionality in ALAN.

Also, it's not clear why the above CHECKs and defaults were removed (no other changes are present in v0.6.2 beside those mentione here), but my hypothesis is that there were many "tweaked" versions of these libraries circulating at the same time, and that the updates to v0.6.2 were made over a slightly different version of 0.6.1.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[ALAN Library 1]: https://www.alanif.se/download-alan-v3/download-library/library-v1-00 "Go to the download page of ALAN Library v1.0 on ALAN website"

[ALAN Standard Library 2]: https://github.com/AnssiR66/AlanStdLib "Visit the official repository of the ALAN Standard Library 2"

[ALAN repository]: https://bitbucket.org/alanif/alan "Visit the official ALAN repository on Bitbucket"


<!-- Tutorial code assets ---------------------------------------------------->

[lib]: ./lib/ "Navigate to folder"
[mylib]: ./mylib/ "Navigate to folder"
[tvtime.alan]: ./tvtime.alan "View source file"
[COMPILE]: ./COMPILE.bat "View source file"
[plasma]: ./plasma.jpg "View image"


<!-- people ------------------------------------------------------------------>

[Anssi Räisänen]: https://github.com/AnssiR66 "View Anssi Räisänen's GitHub profile"

<!-- Alan upstream repository ------------------------------------------------>

<!-- Lib v0.6.1 -->

[e002f20c]: https://github.com/tajmone/alan/commit/e002f20c275e8429315580b8501d137750bd22de "View commit e002f20c of Alan repository on Bitbucket"

<!-- Lib v0.6.2 -->

[c44766fa]: https://github.com/tajmone/alan/commit/c44766faea7539806a01fa6e8bee2c84fa0b2c36 "View commit c44766fa of Alan repository on Bitbucket"

<!-- Lib removed from Alan repo -->

[18c72f83]: https://github.com/tajmone/alan/commit/18c72f8378ca59651a92b580265fd814a0965ab6 "View commit 18c72f83 of Alan repository on Bitbucket"

[last lib]: https://github.com/tajmone/alan/tree/c44766faea7539806a01fa6e8bee2c84fa0b2c36/lib
[last std]: https://github.com/tajmone/alan/blob/c44766faea7539806a01fa6e8bee2c84fa0b2c36/lib/std.i


<!-- EOF -->