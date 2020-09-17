-- cut.i -- *** ADDED FILE! ***
Add to every object
  Is not cutter.
End add.

Synonyms
  slash, slice, hack, saw = cut.
Syntax
  cut = cut (obj)
    Where obj IsA thing -- so can cut Actors too
      else "You can't cut that."
  cut = cut (obj) 'open'. -- see "wear.i"
  cut = cut 'open' (obj).

Add to every thing
  Verb cut
    Does
      "Please say what you want to cut it with."
  End verb.
End add.

Syntax
  cut_with = cut (obj1) 'with' (obj2)
    Where obj1 IsA thing
      else "You can't cut that."
    And obj2 IsA object
      else "You can't cut anything with that."
  cut_with = cut (obj1) 'open' 'with' (obj2).
  cut_with = cut 'open' (obj1) 'with' (obj2).

Add to every object
  Verb cut_with
    When obj1
      Check obj2 here
        else "You don't see" say the obj2. "here."
      And obj2 is cutter
        else "You can't cut anything with that."
      And obj1 <> obj2
        else "You can't cut something with itself."
      Does
        "You cut" say the obj1. "with" say the obj2. "."
  End verb.
End add.
