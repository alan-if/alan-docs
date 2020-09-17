-- read.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Add to every object
  Is not readable.
End add.


Syntax
  read = read (obj)
    Where obj IsA object
      else "You can't read that."

Add to every object
  Verb read
    Check obj is readable
      else "There is nothing written on" say the obj. "."
    Does
      "You read" say the obj. "."
  End verb.
End add.
