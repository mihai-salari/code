Swift provides two way to resolve strong reference cycles when you work with
properties of class type: __weak references__ and __unowned references__.

Use a _weak reference_ when the other instance has a shorter lifetime - that is, 
when the other instance can be deallocated first.

In contrast, use an _unowned reference_ when the other instance has the same lifetime
or a longer lifetime.

#### Weak Reference ####

A weak reference is a reference that does not keep a strong hold on to the instance 
it refers to, and so does not stop ARC from disposing of the referenced instance.

ARC automatically sets a weak reference to `nil` when the instance that it refers
to is deallocated. And, because weak references need to allow their value to be
changed to `nil` at runtime, they are always declared as variables, rather than
constants, of an optional type.

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

#### Strong Reference Cycles for Closures ####

A SRC can also occur if you assign a closure to a property of a class instance, and
the body of that closure captures the instance.

__Capture List__

Define a capture in a closure as an unowned reference when the closure and the instance
it captures will always refer to each other, and will always be deallocated at the
same time.

Conversely, define a capture as a weak reference when the captured reference may
become `nil` at some point in the future. Weak references are always of an optional
type, and automatically become `nil` when the instance they reference is deallocated.
This enables you to check for their existence within the closure's body.

> NOTE
>
> If the captured reference will never become nil, it should always be captured
> as an unowned reference, rather than a weak reference.
