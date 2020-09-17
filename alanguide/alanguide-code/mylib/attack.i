-- attack.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Add to every thing
  Is not shootable.
End add.

Add to every object
  Is
    Not weapon.
    Not shootable.
End add.


Synonyms
  kill, fight, hit = attack.
  fire = shoot.


Syntax
  attack = attack (act)
    Where act IsA thing
      else "You can't attack that."

Add to every thing
  Verb attack
    Does
      "Violence is not the answer."
  End verb.
End add.


Syntax
  attack_with = attack (act) 'with' (obj)
    Where act IsA thing
      else "You can't attack that."
    And obj IsA object
      else "You can't attack anything with that!"

Add to every thing
  Verb attack_with
    When obj
      Check obj in hero
        else "You don't have that object to attack with."
      And obj is weapon
        else "No point attacking anything with that!"
      Does
        "Violence is not the answer."
  End verb.
End add.


Syntax
  shoot = shoot (obj)
    Where obj IsA thing
      else "You can't shoot at that."
  shoot = shoot 'at' (obj).


Add to every thing
  Verb shoot
    Does
      If obj is shootable then
        "You need to specify what to shoot at."
      else
        "You need to specify what you want to shoot"
        say the obj. "with."
      End if.
  End verb.
End add.


Syntax
  shoot_at = shoot (obj) 'at' (act)
    Where obj IsA object
      else "You can't shoot that."
    And act IsA thing
      else "You can't shoot at that."

  shoot_with = shoot (act) 'with' (obj)
    Where obj IsA object
      else "You can't shoot that."
    And act IsA thing
      else "You can't shoot at that."

Add to every thing
  Verb shoot_at
    When obj
      Check obj in hero
        else "You don't have that."
      And obj is shootable
        else "You can't shoot anything with that."
      Does
        "Violence is not the answer."
  End verb.

  Verb shoot_with
    When obj
      Check obj in hero
        else "You don't have that."
      And obj is shootable
        else "You can't shoot anything with that."
      Does
        "Violence is not the answer."
  End verb.
End add.
