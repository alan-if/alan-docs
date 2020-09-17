-- jump.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Syntax
  jump_on = jump 'on' (obj)
    Where obj IsA thing
      else "You can't jump on that!"

Add to every thing
  Verb jump_on
    Does
      "You jump on" say the obj. "."
  End verb.
End add.


Syntax
  jump = jump.

Verb jump
  Does
    "You jump up and down."
End verb.
