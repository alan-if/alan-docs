-- push.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Add to every thing
  Is pushable.
End add.


Syntax
  push = push (obj)
    Where obj IsA thing
      else "You can't push that."

Add to every object
  Verb push
    Check obj is pushable
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
      Check obj1 is pushable
        else "You can't push that."
      Does
        "Using" say the obj2. "you push" say the obj1. "."
  End verb.
End add.
