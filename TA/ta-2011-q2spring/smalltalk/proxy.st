"
This class shows how to use the doesNotUnderstand method.
Message passing is fundamental to Smalltalk, and
using this technique can allow you to intercept method calls at will.
This feature has been added to a number of other languages,
most notably Ruby (where it is known as #method_missing).

author: Tom Austin
"
nl := Character nl.

"
We create a Proxy class that wraps another object
and delegates all messages to it.
"
Object subclass: Proxy [
  |obj|

  Proxy class >> new [
    self shouldNotImplement.
  ]

  Proxy class >> new: o [
    |result|
    result := super new.
    result init: o.
    ^ result.
  ]

  init: o [ obj := o.  ]

  "Pass-thru proxy: delegates all unknown messages to the real object"
  Proxy >> doesNotUnderstand: msg [
    ^ (msg sendTo: obj).
  ]
]

"For a test, we will proxy the number 3"
p := Proxy new: 3.
x := p + 4.
stdout << x << nl. "Prints 7"

"Now lets change the Proxy class to log messages passed to the object"
"This can be useful for debugging"
Proxy extend [
  "Logs messages sent to the object"
  Proxy >> doesNotUnderstand: msg [
    stdout << 'Sending message ' << msg << ' to object ' << obj << Character nl.
    ^ (msg sendTo: obj).
  ]
]

str_prox := Proxy new: 'The LA Raiders live in LA'.
new_str := str_prox copyReplaceAll: 'LA' with: 'Oakland'. "Proxy logs this message"
stdout << new_str << nl.

