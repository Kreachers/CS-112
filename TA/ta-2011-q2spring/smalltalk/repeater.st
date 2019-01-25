"
Problem: Create a Repeater class that takes an integer n as the parameter to its constructor.
It should have a go method that takes a block as its parameter and executes the block n times.
A variable is available in the block that tells which pass is being executed.
"
nl := Character nl.

Object subclass: Repeater [
  |times|

  Repeater class >> new [
    self shouldNotImplement.
  ]

  Repeater class >> new: n [
    |result|
    result := super new.
    result init: n.
    ^ result.
  ]

  init: n [ times := n.  ]

  go: block [
    (1 to: times) do: [:time |
      block value: time.
    ]
  ]

]

r := Repeater new: 3.
r go: [:i |
  stdout << 'Pass ' << i << nl.
]

