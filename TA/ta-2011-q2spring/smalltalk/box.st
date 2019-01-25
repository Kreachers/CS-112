"
Problem: Write a Box class with the following methods:
  put: item --- Puts the item into the Box.
  get       --- Returns the item in the Box.
  putLesserOf:and: --- Compares arguments and puts the lesser value into the box.
"
Object subclass: Box [
  |item|

  Box class >> new [
    |result|
    result := super new.
    ^ result.
  ]

  put: it [
    ^ item := it.
  ]

  get [
    ^ item.
  ]

  putLesserOf: a and: b [
    a < b
      ifTrue:  [ item := a]
      ifFalse: [ item := b].
  ]
]

nl := Character nl.

b := Box new.
b put: 3.
stdout << b get << nl.
b put: 7.
stdout << b get << nl.

b putLesserOf: 4 and: 9.
stdout << b get << nl.

