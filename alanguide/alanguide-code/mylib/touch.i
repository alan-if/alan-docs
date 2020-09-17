-- touch.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Add to every thing
  Is touchable.
End add.


Syntax
  touch = touch (obj)
    Where obj IsA thing
      else "You can't touch that."

  touch_with = touch (obj1) 'with' (obj2)
    Where obj1 IsA thing
      else "You can't touch that."
    And obj2 IsA object
      else "You can only use objects to touch with."

Add to every object
  Verb touch
    Check obj is touchable
      else "You can't touch that."
    Does
      "You touch" say the obj. "."
  End verb.

  Verb touch_with
    When obj1
      Check obj1 Is touchable
        else "You can't touch that."
      And obj1 <> obj2
        else "It doesn't make sense to touch something with itself."
      Does
        "You touch" say the obj1. "with" say the obj2. "."
  End verb.
End add.
