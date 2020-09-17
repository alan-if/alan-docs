-- std.i
-- Library version 0.6.2

-- All verb definitions have a small, simple default body. To make
-- them do other things use DOES ONLY in your specialised verb body.

-- player character, etc.
Import 'hero.i'.
Import 'global.i'.

-- People, male/female etc.
Import 'people.i'.

-- Standard verbs
Import 'look.i'.
Import 'take.i'.    -- + pick up, drop, put down.
Import 'open.i'.    -- + close.
Import 'lock.i'.    -- + unlock.
Import 'eat.i'.     -- + drink.
Import 'throw.i'.
Import 'push.i'.
Import 'touch.i'.
Import 'examine.i'. -- + look at, search
Import 'read.i'.
Import 'put.i'.     -- + put near,behind,on,under
Import 'give.i'.
Import 'talk.i'.    -- + ask, tell, say, shout,
Import 'attack.i'.  -- + shoot
Import 'kiss.i'.
Import 'turn.i'.    -- + switch
Import 'listen.i'.
Import 'smell.i'.
Import 'knock.i'.
Import 'jump.i'.
Import 'wear.i'.    -- + remove, undress, put on

Import 'help.i'.    -- + notes, hint


-- Scenery
Import 'scenery.i'.

-- Inventory verb and inventory limits (including clothing items)
Import 'invent.i'.


-- The limbo location and directions
-- Defines directions as full words, and short directions as synonyms to these.
-- So remember to use the full words in your exits or you will have E 333's
-- (e.g. 'e' defined both as a synonym and another word class)
Import 'nowhere.i'.


-- Verbose and brief mode
Import 'brief.i'.


-- Score, save, restore etc.
Import 'meta.i'.
