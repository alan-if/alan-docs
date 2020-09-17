-- hero.i
-- Library version 0.6.1dev


Synonyms
  me, myself, self = hero.

The hero IsA actor
  Container
    Limits
      Count 10 then
        "You can't carry anything more. You have to drop something first."
      weight 50 then
        "You can't carry anything more. You have to drop something first."
    Header
      "You are carrying"
    else
      "You are empty-handed."
End the.
