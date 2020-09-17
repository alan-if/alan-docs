-- give.i
-- Library version 0.5.0

-- 0.5.0 - added Syntax synonym "give (recip) (obj)"
-- 0.4.1 - converted to ALANv3


Syntax
  give = 'give' (obj) 'to' (recip)
    Where obj IsA object
      else "You can only give away objects."
    And recip IsA container
      else "You can't give things to that!"
  give = give (recip) (obj).

Add to every object
  Verb give
    When obj
      Check obj in hero
        else "You don't have" say the obj. "."
    Does
      If recip=hero then
        "You already have" say the obj. "!"
      else
        "You give" say the obj. "to" say the recip. "."
        Locate obj in recip.
      End if.
  End verb.
End add.
