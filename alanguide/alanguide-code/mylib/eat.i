-- eat.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Add to every object
Is
  Not edible.
  Not drinkable.
End add.

Syntax
  eat = eat (obj)
    Where obj IsA object
      else "You can't eat" say an obj. "!"

  drink = drink (obj)
    Where obj IsA object
      else "You can't drink" say an obj. "!"

Add to every object
  Verb eat
    Check obj is edible
      else "You can't eat that!"
    Does
      Locate obj at nowhere.
      "You eat" say the obj. "."
  End verb.

  Verb drink
    Check obj is drinkable
      else "That is not drinkable."
    Does
      Locate obj at nowhere.
      "You drink" say the obj. "."
  End verb.
End add.
