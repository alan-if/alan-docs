-- talk.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


-- for verbs like 'ask' and 'tell' you need to individually program
-- responses to each topic (ie 'obj') for any actor who you want to
-- respond to that topic.  Remember to use the 'when' clause so that
-- actors only respond when they're being talked to (and not when
-- they're the *subject* of the conversation!)  see Section 3.7.1 -
-- 'verb alternatives' - in the Alan manual.  eg:
--
-- Actor simon
--   ....
--   Verb ask
--     When act
--       Does only
--         If topic = ball then
--           "Simon replies ""I love playing ball sports.
--            Football is my favourite."""
--         ElsIf obj = fred then
--           .....
--         Else
--           "Simon shrugs. ""Sorry, I don't know anything
--            about that."""
--         End if.
--   End verb.
--   ....
-- End Actor Simon.


Add to every thing
  Is not can_talk.
End add.

Add to every actor
  Is can_talk.
End add.


Synonyms
  yell = shout.
  scream = shout.

Syntax
  shout = shout.

Verb shout
  Does
    "You make a lot of noise..."
End verb.


Syntax
  say_word = 'say' (topic)!
    Where topic IsA thing
      else "You can't say that."

Add to every thing
  Verb say_word
    Does
      "$1? That's a nice word!"
  End verb.
End add.


Syntax
  say_to = 'say' (topic)! 'to' (act)
    Where topic IsA thing
      else "You can't say that."
    And act IsA thing
      else "You can't talk to that."

Add to every thing
  Verb say_to
    When act
      Check act Has can_talk
        else "You can't talk to that."
    Does
      Say the act. "doesn't seem interested."
  End verb.
End add.


Syntax
  ask = ask (act) about (topic)!
    Where topic IsA thing
      else "You can't ask about that."
    And act IsA thing
      else "You can't talk to that."

Add to every thing
  Verb ask
    When act
      Check act Has can_talk
        else "You can't talk to that."
      Does
        Say the act.
        "says ""I don't know anything about"
        say the topic. "!"""
  End verb.
End add.


Syntax
  talk_to = talk 'to' (act) about (topic)!
    Where topic IsA thing
      else "You can't ask about that."
    And act IsA thing
      else "You can't talk to that."
  talk_to = tell (act) about (topic)!.

Add to every thing
  Verb talk_to
    When  topic
      Check act Has can_talk
        else "You can't talk to that."
      Does
        """I don't think I need to know about"
        Say the topic. "$$,"" says"
        say the act. "."
  End verb.
End add.


Syntax
  talk_to_a = talk 'to' (act)
    Where act IsA thing
      else "You can't talk to that."

Add to every thing
  Verb talk_to_a
    Check act Has can_talk
      else "You can't talk to that."
    Does
      Say the act.
      "looks at you, seemingly wondering if you have
       anything specific to talk about."
  End verb.
End add.
