# Integrity Tests

Some scripts and test adventures to check the integrity of the Alan sources and modules used by the _ALAN Beginner's Guide_. Intended for project maintainers who need to edit the Alan sources.

To execute tests, run:

- [`RunTests.bat`](./RunTests.bat)

Since both the tutorial and the required Library are over 12 years old, it's a good idea to run these tests whenever Alan is updated, just in case some changes in the language might break backward compatibility.

# Library Test

- [`lib-test.alan`](./lib-test.alan)

A barebone adventure to check the integrity of the Library in:

- [`../alanguide-code/lib/`](../alanguide-code/lib/)

Useful to verify the integrity of the Library after:

- Editing the Library sources.
- Alan updates which might change the language.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>



<!-- EOF -->