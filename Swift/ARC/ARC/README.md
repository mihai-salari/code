Swift provides two way to resolve strong reference cycles when you work with
properties of class type: weak references and unowned references.

Use a _weak reference_ when the other instance has a shorter lifetime - that is, 
when the other instance can be deallocated first.

In contrast, use an _unowned reference_ when the other instance has the same lifetime
or a longer lifetime.
