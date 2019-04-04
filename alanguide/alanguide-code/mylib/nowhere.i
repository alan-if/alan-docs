-- nowhere.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3

Synonyms
  n  = north.
  s  = south.
  e  = east.
  w  = west.
  -- ne = northeast. -- *** COMMENTED OUT ***
  -- se = southeast.
  -- nw = northwest.
  -- sw = southwest.
  u  = up.
  d  = down.

-- Useful for placing disappearing things
-- Also defines the default directions

The nowhere IsA location.
  Exit north to nowhere.
  Exit south to nowhere.
  Exit west to nowhere.
  Exit east to nowhere.
  -- Exit northeast to nowhere. -- *** COMMENTED OUT ***
  -- Exit southeast to nowhere.
  -- Exit northwest to nowhere.
  -- Exit southwest to nowhere.
  Exit up to nowhere.
  Exit down to nowhere.
End the.

-- *** ADDED: ***

Synonyms
  ne,northeast,se,southeast,nw,northwest,sw,southwest = nodirection.

Syntax
  nodirection = nodirection.

Verb nodirection
  Does
    "The only directions you'll need in this game are
     north, south, east, west, up, down, in, and out. "
End verb.