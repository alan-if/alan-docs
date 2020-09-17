-- take.i
-- Library version 0.5.0

-- 0.6.0 - removed guard for taking things from animate containers since
--         Alan v3.0.29 supports Extract clause on containers
-- 0.5.0 - cleaned up formatting, made use of "." not making a leading space
-- 0.4.1 - converted to ALANv3


Add to every thing
  Is inanimate.
End add.

Add to every object
  Is takeable.
End add.

Add to every actor
  Is not inanimate.
End add.


Synonyms
  get, carry, obtain, grab, steal, confiscate, hold = take.


Syntax
  take = take (obj) *
    Where obj IsA object
      else "You can't take that with you!"


Syntax
  pick_up1 = pick up (obj)*
    Where obj IsA object
      else "You can't take that with you!"

  pick_up2 = pick (obj)* up
    Where obj IsA object
      else "You can't take that with you!"

Add to every object
  Verb take, pick_up1, pick_up2
    Check obj is takeable
      else "You can't take that!"
    And obj not in worn
      else "You've already got that - you're wearing that."
    And obj not in hero
      else "You've already got that."
    And weight Of obj <=50
      else "That is too heavy to lift."
    Does
      Locate obj in hero.
      "Taken."
  End verb.
End add.


Synonyms
  discard = drop.

Syntax
  drop = drop (obj)*.

Syntax
  put_down1 = put (obj) * down.

Syntax
  put_down2 = put down (obj)*.

Add to every object
  Verb drop, put_down1, put_down2
    Check obj in hero
      else "You aren't carrying that."
    Does
      Locate obj here.
      "Dropped."
  End verb.
End add.


Syntax
  take_from = 'take' (obj) 'from' (holder)
    Where obj IsA object
      else "You can only take objects."
    And holder IsA thing
      else "You can't take things from that!"
    And holder IsA container
      else "You can't take things from that!"

Add to every object
  Verb take_from
    When obj
      Check obj not in hero
        else "You already have" say the obj. "."
      And obj in holder
        else Say the obj. "is not there."
      Does
        If holder=hero then
          "You don't need to take things from yourself!"
        else
          Locate obj in hero.
          "You take" say the obj. "."
        End if.
  End verb.
End add.
