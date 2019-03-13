-- scenery.i
-- Library version 0.5.0


Every scenery Isa object
  DESCRIPTION -- *** ADDED. It should be in the default! ***
  -- *** REMOVED: ***
  -- Is
    -- Not searchable.
    -- Not takeable.
    -- Not pushable.
    -- Not touchable.

  -- Verb examine, take
  Verb examine -- *** REMOVED take ***
    -- Does Only
    Does -- *** REMOVED Only, to allow "examine" in Instances ***
      "That's only scenery."
  End Verb.

  -- *** ADDED VERBS: ***
  VERB search
    CHECK -- Prevent any default DOES responses!
      "There is nothing to find by searching that."
  END VERB.

  VERB take, pick_up1, pick_up2
    CHECK
      "There is no need to take that. You won't need it."
  END VERB.

  VERB push
    CHECK
      "There is no need to push that."
  END VERB.

  VERB touch
    CHECK
      "There's no need to touch or to feel that."
  END VERB.

End Every scenery.