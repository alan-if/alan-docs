-- turn.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Add to every object
  Is
    Not 'on'.
    Not switchable.
End add.


Syntax
  turn_on1 = turn 'on' (obj)
    Where obj IsA object
      else "You can't turn that on."

  turn_on2 = turn (obj) 'on'
    Where obj IsA object
      else "You can't turn that on."

  switch_on1 = switch 'on' (obj)
    Where obj IsA object
      else "You can't switch that on."

  switch_on2 = switch (obj) 'on'
    Where obj IsA object
      else "You can't switch that on."


Add to every object
  Verb turn_on1, turn_on2, switch_on1, switch_on2
    Check obj is switchable
      else "You can't turn that on."
    And obj is not 'on'
      else "It's already on."
    Does
      Make obj 'on'.
      "You turn on" say the obj. "."
  End verb.
End add.


Syntax
  turn_off1 = turn off (obj)
    Where obj IsA object
      else "You can't turn that off."

  turn_off2 = turn (obj) off
    Where obj IsA object
      else "You can't turn that off."

  switch_off1 = switch off (obj)
    Where obj IsA object
      else "You can't switch that off."

  switch_off2 = switch (obj) off
    Where obj IsA object
      else "You can't switch that off."


Add to every object
  Verb turn_off1, turn_off2, switch_off1, switch_off2
    Check obj is switchable
      else "You can't turn that off."
    And obj is 'on'
      else "It's already off."
    Does
      Make obj not 'on'.
      "You turn off" say the obj. "."
  End verb.
End add.
