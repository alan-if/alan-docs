-- push.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Add to every thing
  -- Is pushable.
  Is moveable. -- *** CHANGED ***
End add.

Synonyms
  press, click = push. -- *** ADDED ***

Syntax
  push = push (obj)
    Where obj IsA thing
      else "You can't push that."

Add to every object
  Verb push
    -- Check obj is pushable
    Check obj is moveable -- *** CHANGED ***
      else "You can't push that."
    Does
      "You push" say the obj. "."
  End verb.
End add.


Syntax
  push_with = push (obj1) 'with' (obj2)
    Where obj1 IsA thing
      else "You can't push that."
    And obj2 IsA object
      else "You can use only objects to push things with."

Add to every object
  Verb push_with
    When obj1
      -- Check obj1 is pushable
      Check obj1 is moveable -- *** CHANGED ***
        else "You can't push that."
      Does
        "Using" say the obj2. "you push" say the obj1. "."
  End verb.
End add.

-- *** ADDED: ***
Syntax
  push_north = push (obj) north
    Where obj IsA thing
      else "You can't push that."
  push_south = push (obj) south
    Where obj IsA thing
      else "You can't push that."
  push_east = push (obj) east
    Where obj IsA thing
      else "You can't push that."
  push_west = push (obj) west
    Where obj IsA thing
      else "You can't push that."

Add to every thing
  Verb push_north, push_south, push_east, push_west
    Check obj is moveable
      else "You can't push that."
    Does
      "You push it in that direction."
  End verb.
End add.