# Shared Assets Folder

This folder stores assets that are (or might be) shared by multiple documents — images, stylesheets, fonts, etc. As a rule of thumb, any assets that could be reused by other documents (present or future) should be stored within this folder tree; but if a particular asset is going to be used only by a single document, then it should be placed in that document's main folder.

# Assets Tree

- [`/hjs/`](./hjs/) — custom highlight.js build for Alan.
- [`/hl/`](./hl/) — assets for the Asciidoctor Highlight toolchain.
- [`/images/`](./images)
- [`/alan-xsl-fopub/`](./alan-xsl-fopub/) — submoduled [alan-xsl-fopub] repository, for XSL FOP template:
    + [`/xsl-fopub/`](./alan-xsl-fopub/xsl-fopub/) — XSL PDF Stylesheets used by asciidoctor-fopub. 
    + [`/fonts/`](./alan-xsl-fopub/fonts/) — required fonts for PDF conversion.

# Git Submodules

Please, be aware of the presence of a Git submodule inside the [`/alan-xsl-fopub/`](./alan-xsl-fopub/) folder, and make sure you properly update it in your local clone of the repository to avoid regressions when commiting to the project.

For a tutorial on the common pitfalls of submodules, refer to Christophe Porteneuve's article [_Mastering Git submodules_] » [The dangers we face].

For detailed info on how to use Git submodules, see:

- [_Pro Git_ book » Git Submodules][Git Submodules] — by Scott Chacon and Ben Straub.
- [_Learn Version Control with Git_ » Submodules] — by Git Tower.
- [Using submodules in Git - Tutorial] — by Lars Vogel.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[alan-xsl-fopub]: https://github.com/alan-if/alan-xsl-fopub "Visit the alan-xsl-fopub repository on GitHub"

<!-- Git references -->

[Pro Git]: https://git-scm.com/book "'Pro Git' book online"
[Git Submodules]: https://git-scm.com/book/en/v2/Git-Tools-Submodules "Read the chapter on Git Submodules from the 'Pro Git' book"

[Using submodules in Git - Tutorial]: https://www.vogella.com/tutorials/GitSubmodules/article.html "Read tutorial"
[_Learn Version Control with Git_ » Submodules]: https://www.git-tower.com/learn/git/ebook/en/command-line/advanced-topics/submodules#start

[_Mastering Git submodules_]: https://medium.com/@porteneuve/mastering-git-submodules-34c65e940407 "Read article"
[The dangers we face]: https://medium.com/@porteneuve/mastering-git-submodules-34c65e940407#6b21 "Jump to section 'The dangers we face' of the 'Mastering Git submodules' article"

<!-- EOF -->
