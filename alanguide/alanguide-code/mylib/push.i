-- push.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


ADD TO EVERY THING
  -- IS pushable.
  IS MOVEABLE. -- *** CHANGED ***
END ADD TO THING.

SYNONYMS
  press, click = push. -- *** ADDED ***

SYNTAX
  push = push (obj)
    WHERE obj ISA THING
      ELSE "You can't push that."
Add To Every object
  Verb push
    -- Check obj Is pushable
    Check obj Is MOVEABLE -- *** CHANGED ***
      Else "You can't push that."
    Does
      "You push" Say The obj. "."
  End Verb.
End Add To.


Syntax
  push_with = push (obj1) 'with' (obj2)
    Where obj1 Isa thing
      Else "You can't push that."
    And obj2 Isa object
      Else "You can use only objects to push things with."

Add To Every object
  Verb push_with
    When obj1
      -- Check obj1 IS pushable
      Check obj1 IS MOVEABLE -- *** CHANGED ***
        Else "You can't push that."
      Does
        "Using" Say The obj2. "you push" Say The obj1. "."
  End Verb.
End Add To.

-- *** ADDED: ***
SYNTAX
  push_north = push (obj) north
    WHERE obj Isa thing
      Else "You can't push that."
  push_south = push (obj) south
    WHERE obj Isa thing
      Else "You can't push that."
  push_east = push (obj) east
    WHERE obj Isa thing
      Else "You can't push that."
  push_west = push (obj) west
    WHERE obj Isa thing
      Else "You can't push that."

ADD TO EVERY THING
  VERB push_north, push_south, push_east, push_west
    CHECK obj IS MOVEABLE
      ELSE "You can't push that."
    DOES
      "You push it in that direction."
  END VERB.
END ADD TO.