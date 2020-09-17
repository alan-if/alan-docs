-- wear.i
-- library version 0.4.1

-- 0.4.1 - converted to ALANv3


Add to every object
  Is not wearable.
End add.


Syntax
  wear = wear (obj)
    Where obj IsA object
      else "You can't wear that."
  wear = put (obj) 'on'.
  wear = put 'on' (obj).

Add to every object
  Verb wear
    Check obj is wearable
      else "You can't wear" say the obj. "."
    And obj not in worn
      else "You are already wearing" say the obj. "."
    And obj is takeable
      else "You can't pick" say the obj. "up."
    Does
      If obj not in hero then
        Locate obj in hero.
        "(You pick" say the obj. "up.)$n"
      End if.
      Locate obj in worn.
      "You put on" say the obj. "."
  End verb.
End add.


Syntax
  'remove' = 'remove' (obj)
    Where obj IsA object
      else "You can't remove that."
  'remove' = take (obj) off.
  'remove' = take off (obj).

Add to every object
  Verb 'remove'
    Check obj in worn
      else "You are not wearing" say the obj. "."
    Does
      Locate obj in hero.
      "You take off" say the obj. "."
  End verb.
End add.


Syntax undress = undress.

Add to every object
  Verb undress
    Does
      If Count in worn, IsA thing > 0 then
        Empty worn in hero.
        "You remove all the items you where wearing."
      else
        "You're not wearing anything you can remove."
      End if.
  End verb.
End add.
