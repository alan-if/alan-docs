-- examine.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Add to every thing
  Is
    examinable.
    searchable.
End add.

Add to every actor
  Is not searchable.
End add.

----

Synonyms
  x, inspect, 'check' = examine.

Syntax
  examine = examine (obj) *
    Where obj IsA thing
      else "You can't examine that!"

Syntax
  examine = 'look' 'at' (obj) *.

Add to every thing
  Verb examine
    Check obj is examinable
      else "You can't examine" say the obj. "."
    Does
      "There is nothing special about" say the obj. "."
  End verb.
End add.

----

Synonyms
  inside, into = 'in'.

Syntax
  look_in = 'look' 'in' (obj)
    Where obj IsA thing
      else "You can't look inside that."
    And obj IsA container
      else "You can't look inside that."

Add to every object
  Verb look_in
    Check obj is examinable
      else "You can't look inside" say the obj. "."
    Does
      List obj.
  End verb.
End add.

----

Syntax
  search = search (obj)
    Where obj IsA thing
      else "You can't search that!"

Add to every object
  Verb search
    Check obj is searchable
      else "You can't search" say the obj. "."
    Does
      "You find nothing of interest."
  End verb.
End add.
