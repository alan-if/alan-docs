-- put.i
-- Library version 0.5.2

-- 0.4.1 - converted to ALANv3


Synonyms
  place = put.

Syntax
  put = put (obj) *
    Where obj IsA object
      else "You can't put that anywhere."

Add to every object
  Verb put
    Check obj in hero
      else "You haven't got that."
    Does
      Locate obj here.
      "Dropped."
  End verb.
End add.


Syntax
  put_in = put (obj1) 'in' (obj2)
    Where obj1 IsA object
      else "You can't put that anywhere."
    And obj2 IsA container
      else "You can't put anything in that."

Add to every object
  Verb put_in
    When obj1
      Check obj1 in hero
        else
          "You haven't got" say the obj1. "."
      And obj1 <> obj2
        else "You can't put something into itself!"
      And obj2 <> hero
        else "You can't put" say obj1. "into yourself!"
      Does
        Locate obj1 in obj2.
        "Done."
    End verb.
End add.


Syntax
  put_near = put (obj1) 'near' (obj2)
    Where obj1 IsA object
      else "You can't put that anywhere."
    And obj2 IsA thing
      else "You can't put anything near that."

  put_behind = put (obj1) behind (obj2)
    Where obj1 IsA object
      else "You can't put that anywhere."
    And obj2 IsA thing
      else "You can't put anything behind that."

  put_on = put (obj1) 'on' (obj2)
    Where obj1 IsA object
      else "You can't put that anywhere."
    And obj2 IsA thing
      else "You can't put anything on that."

  put_under = put (obj1) under (obj2)
    Where obj1 IsA object
      else "You can't put that anywhere."
    And obj2 IsA thing
      else "You can't put anything under that."

Add to every object
  Verb put_near, put_behind, put_on, put_under
    When obj1
      Check obj1 in hero
        else "You haven't got" say the obj1. "."
      And obj2 not in hero
        else
          "You are carrying" say the obj2.
          ". If you want to take" say the obj1. "just say so."
      Does
        "Naaah. I'd rather just put" say the obj1. "down here."
        Locate obj1 at obj2.
  End verb.
End add.
