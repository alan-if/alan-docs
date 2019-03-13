-- cut.i -- *** ADDED FILE! ***
ADD TO EVERY OBJECT
  IS NOT CUTTER.
END ADD.

SYNONYMS
  slash, slice, hack, saw = cut.
SYNTAX
  cut = cut (obj)
    WHERE obj Isa THING -- so can cut Actors too
      ELSE "You can't cut that."
  cut = cut (obj) 'open'. -- see "wear.i"
  cut = cut 'open' (obj).

ADD TO EVERY THING
  VERB cut
    DOES
      "Please say what you want to cut it with."
  END VERB.
END ADD TO.

SYNTAX
  cut_with = cut (obj1) 'with' (obj2)
    WHERE obj1 Isa THING
      ELSE "You can't cut that."
    AND obj2 Isa OBJECT
      ELSE "You can't cut anything with that."
  cut_with = cut (obj1) 'open' 'with' (obj2).
  cut_with = cut 'open' (obj1) 'with' (obj2).

ADD TO EVERY OBJECT
  VERB cut_with
    WHEN obj1
      CHECK obj2 Here
        ELSE "You don't see" Say The obj2. "here."
      AND obj2 IS CUTTER
        ELSE "You can't cut anything with that."
      AND obj1 <> obj2
        ELSE "You can't cut something with itself."
      DOES
        "You cut" Say The obj1. "with" Say The obj2. "."
  END VERB.
END ADD TO.