-- brief.i
-- Library version 0.5.0


--
-- Use "Visits 0." or "Visits 1000." in the START section if you want
-- the game to start in verbose or brief mode.
--

Syntax
  verbose = verbose.

Verb verbose
  Does
    Visits 0.
    "Verbose mode is now on."
End verb.


Syntax
  brief = brief.

Verb brief
  Does
    Visits 1000.
    "Brief mode is now on. Location descriptions will only be shown
     the first time you visit."
End verb.
