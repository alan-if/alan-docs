-- meta.i
-- 0.6.2 : removed q verb and just made 'q' a synonym for 'quit'

-- Library version 0.5.0


Synonyms q = 'quit'.

Syntax
  'quit' = 'quit'.

Verb 'quit'
  Does
    Quit.
End verb.


Syntax
  'save' = 'save'.

Verb 'save'
  Does
    Save.
    "Ok."
End verb.


Syntax
  'restore' = 'restore'.

Verb 'restore'
  Does
    Restore.
    "Done.$n"
    Look.
End verb.


Syntax
  'restart' = 'restart'.

Verb 'restart'
  Does
    Restart.
End verb.


Syntax
  'score' = 'score'.

Verb 'score'
  Does
    Score.
End verb.


Synonyms
  z = 'wait'.

Syntax
  'wait' = 'wait'.

Verb 'wait'
  Does
    "Time passes..."
End verb.


Synonyms
  g = again.

Syntax
  again = again.

Verb again
  Does
    "The 'again' command is not available, sorry. You can probably use
     the up and down arrow keys to scroll through your previous commands
     (unless you're using the MSDOS interpreter in which case you can
     press the F3 key to repeat your last command.)"
End verb.


-- Syntax
--   undo = undo.

-- Verb undo
--   Does
--     "Unfortunately you cannot 'undo' commands in this game."
-- End verb.
