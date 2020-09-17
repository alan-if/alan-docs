-- lock.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Add to every object
  Is
    Not lockable.
    locked.
End add.


Syntax
  lock = lock (obj)
    Where obj IsA object
      else "You can't lock that."

Add to every object
  Verb lock
    Check obj is lockable
      else "You can't lock that!"
    And obj is not locked
      else "It's already locked."
    Does
      Make obj locked. Say the obj. "is now locked."
  End verb.
End add.


Syntax
  lock_with = lock (obj) 'with' (key)
    Where obj IsA object
      else "You can't lock that."
    And key IsA object
      else "You can't lock anything with that."

Add to every Object
  Verb lock_with
    When obj
      Check obj is lockable
        else "You can't lock that!"
      And obj is not locked
        else "It's already locked."
      And key in hero
        else "You don't have" say the key. "."
      Does
        Make obj locked.
        Say the obj. "is now locked."
  End verb.
End add.


Syntax
  unlock = unlock (obj)
    Where obj IsA object
      else "You can't lock that."

Add to every object
  Verb unlock
    Check obj is lockable
      else "You can't unlock that!"
    And obj is locked
      else "It's already unlocked."
    Does
      Make obj not locked.
      Say the obj. "is now unlocked."
  End verb.
End add.


Syntax
  unlock_with = unlock (obj) 'with' (key)
    Where obj IsA object
      else "You can't lock that."
    And key IsA object
      else "You can't lock anything with that."

Add to every object
  Verb unlock_with
    When obj
      Check obj is lockable
        else "You can't unlock that!"
      And obj is locked
        else "It's already unlocked."
      And key in hero
        else "You don't have" say the key. "."
      Does
        Make obj not locked.
        Say the obj. "is now unlocked."
  End verb.
End add.
