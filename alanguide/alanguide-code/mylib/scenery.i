-- scenery.i
-- Library version 0.5.0


Every scenery IsA object
  Description -- *** ADDED. It should be in the default! ***
  -- *** REMOVED: ***
  -- Is
  --   Not searchable.
  --   Not takeable.
  --   Not pushable.
  --   Not touchable.

  -- Verb examine, take
  Verb examine -- *** REMOVED take ***
    -- Does only
    Does -- *** REMOVED only, to allow "examine" in instances ***
      "That's only scenery."
  End Verb.

  -- *** ADDED VERBS: ***
  Verb search
    Check -- Prevent any default DOES responses!
      "There is nothing to find by searching that."
  End verb.

  Verb take, pick_up1, pick_up2
    Check
      "There is no need to take that. You won't need it."
  End verb.

  Verb push
    Check
      "There is no need to push that."
  End verb.

  Verb touch
    Check
      "There's no need to touch or to feel that."
  End verb.
End every scenery.
