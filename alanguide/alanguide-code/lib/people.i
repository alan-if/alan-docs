-- person.i
-- Library version 0.6.0


-- Classes for people

Every person IsA actor
  Is not named. -- If it has a proper name
  Description
    If this is not named then
      "There is" say an this. "here."
    else
      Say this. "is here."
    End if.
End every.

Every male IsA person
  Pronoun him.
End every.

Every female IsA person
  Pronoun her.
End every.
