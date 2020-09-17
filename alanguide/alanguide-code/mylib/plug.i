-- plug.i -- *** ADDED FILE! ***
Synonyms
  insert = plug.
Syntax
  plug_in = plug (obj1) 'in' (obj2)
    Where obj1 IsA OBJECT
      else "You can't plug that anywhere."
    And obj2 IsA container
      else "You can't plug anything in that."
Add to every object
  Is
    Not pluggable.
    Not plugged_in.
  Verb plug_in
    When obj1
      Check obj1 here
        Else "You don't see" say the obj1. "here."
      And obj1 is pluggable
        else "That isn't something that can be plugged in."
      And obj1 is not plugged_in
        else "That is already plugged in."
      And obj1 <> obj2
        else "You can't plug something into itself!"
      And obj2 <> hero
        else "You can't plug" say obj1. "into yourself!"
      Does
        Locate obj1 in obj2.
        make obj1 plugged_in.
        "Done."
  End Verb.
End Add.
