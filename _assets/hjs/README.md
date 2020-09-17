# Highlight.js

    highlight.js v9.12.0 | BSD3 License

Custom [highlight.js] build for Alan syntax highlighting.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Directory Contents](#directory-contents)
- [Included Syntaxes](#included-syntaxes)
- [License](#license)

<!-- /MarkdownTOC -->

-----

# Directory Contents

- [`/styles/`][styles]:
    + [`github.min.css`](./styles/github.min.css) — custom HLJS themes for Alan docs ([built via Sass]).
- [`highlight.min.js`][highlight.min.js] — custom hjs build.
- [`LICENSE`][LICENSE] — highlight.js license (BSD3).

# Included Syntaxes

The custom hjs build in this folder includes the following syntaxes:

- [Alan][hjs Alan], by Tristano Ajmone.

In the future, more syntaxes might be included if needed in any of the Alan documents, including project's documentation (probable candidates: BNF and AsciiDoc).

# License

- [`LICENSE`][LICENSE]

[Highlight.js] is Copyright (C) 2006, Ivan Sagalaev, and is released under the BSD3 license:

    Copyright (c) 2006, Ivan Sagalaev
    All rights reserved.
    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:

        * Redistributions of source code must retain the above copyright
          notice, this list of conditions and the following disclaimer.
        * Redistributions in binary form must reproduce the above copyright
          notice, this list of conditions and the following disclaimer in the
          documentation and/or other materials provided with the distribution.
        * Neither the name of highlight.js nor the names of its contributors
          may be used to endorse or promote products derived from this software
          without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND ANY
    EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
    WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
    DISCLAIMED. IN NO EVENT SHALL THE REGENTS AND CONTRIBUTORS BE LIABLE FOR ANY
    DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
    (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
    LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
    ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
    (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
    SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[highlight.js]: https://highlightjs.org/ "Visit highlight.js website"

<!-- syntaxes -->

[hjs Alan]: https://github.com/tajmone/highlight.js/blob/Alan/src/languages/alan.js

<!-- Project Files -->

[styles]: ./styles
[highlight.min.js]: ./highlight.min.js
[LICENSE]: ./LICENSE

[built via Sass]: ../../_assets-src/sass/

<!-- EOF -->
