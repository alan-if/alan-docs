-- plug.i -- *** ADDED FILE! ***
SYNONYMS
  insert = plug.
SYNTAX
  plug_in = plug (obj1) 'in' (obj2)
    WHERE obj1 ISA OBJECT
      ELSE "You can't plug that anywhere."
    AND obj2 ISA CONTAINER
      ELSE "You can't plug anything in that."
Add To Every object
  IS NOT PLUGGABLE.
  NOT PLUGGED_IN.
  Verb plug_in
    When obj1
      Check obj1 Here
        Else "You don't see" Say The obj1. "here."
      AND obj1 IS PLUGGABLE
        ELSE "That isn't something that can be plugged in."
      AND obj1 IS NOT PLUGGED_IN
        ELSE "That is already plugged in."
      And obj1 <> obj2
        Else "You can't plug something into itself!"
      And obj2 <> hero
        Else "You can't plug" Say obj1. "into yourself!"
      Does
        Locate obj1 In obj2.
        MAKE obj1 PLUGGED_IN.
        "Done."
  End Verb.
End Add To.
