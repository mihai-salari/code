Swift provides two way to resolve strong reference cycles when you work with
properties of class type: __weak references__ and __unowned references__.

Use a _weak reference_ when the other instance has a shorter lifetime - that is, 
when the other instance can be deallocated first.

In contrast, use an _unowned reference_ when the other instance has the same lifetime
or a longer lifetime.

#### Unowned Reference ####

An unowned reference is expected to always have a value. As a result, ARC never
sets an unowned reference's value to nil, which means that unowned references
are defined using nonoptional types.

> IMPORTANT
>
> Use an unowned reference only when you are sure that the reference always refers
> to an instance that has not been deallocated.
>
> If you try to access the value of an unowned reference after that instance has
> been deallocated, you'll get a runtime error.

`unowned(unsafe)` - runtime safety checks disable, and you take on the responsibility
for checking that code for safety. If you try to access an unsafe unowned reference
after the instance that it refers to is deallocated, your program will try to
access the memory location where the instance used to be, which is an unsafe operation.

Read more [here](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID48).
