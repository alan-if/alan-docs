-- open.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3
-- 0.5.0 - Changed attributes around:
--    'open' indicates state
--    'openable' indicates if it is possible to open
--    'closeable' indicates if it is possible to close


Syntax
  open = open (obj)
    Where obj IsA object
      else "You can't open that."

Add to every object
  Is
    Not openable.
    Not open.

  Verb open
    Check obj is openable
      else "You can't open that!"
    And obj is not open
      else "It's already open."
    Does
      Make obj open.
      Say the obj. "is now open."
  End verb.

End add.


Syntax
  open_with = open (obj1) 'with' (obj2)
    Where obj1 IsA object
      else "You can't open that."
    And obj2 IsA object
      else "You can't open anything with that."

Add to every object
  Verb open_with
    When obj1
      Check obj2 in hero
        else "You don't have" say the obj2. "."
      Does
        "You can't open" say the obj1. "with" say the obj2. "."
  End verb.
End add.


Synonyms
  shut = close.

Syntax
  close = close (obj)
    Where obj IsA object
      else "You can only close objects."

Add to every object
  Is not closeable.

  Verb close
    Check obj is closeable
      else "You can't close that."
    And obj is open
      else "It is not open."
     Does
       Make obj not open.
       Say the obj. "is now closed."
    End verb.

End add.


Syntax
  close_with = close (obj1) 'with' (obj2)
    Where obj1 IsA object
      else "You can't close that."
    And obj2 IsA object
      else "You can't close anything with that."

Add to every object
  Verb close_with
    When obj1
      Check obj2 in hero
        else "You don't have" say the obj2. "."
      And obj1 Is openable
        else "You can't close" say the obj1. "."
      Does -- To be overridden by DOES ONLY where appropriate...
        "You can't close" say the obj1. "with" say the obj2. "."
  End verb.
End add.
