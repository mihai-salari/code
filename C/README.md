### Notes ###

#### Pointers ####

__Pointer__ is a variable that stores the address of a memory location. A _pointer variable_ contains the address in memory of another variable, object, or function. A pointer is normally declared to be of a specific type depending on what it points to. The object may be any C data type such as _integer_, _character_, _string_, or _structure_. However, nothing inherent in a pointer indicates what type of data the pointer is referencing. A pointer only contains an address.

- - -


#### Variables ####

__Automatic variables or local variables__

- Variables you declare in a function or subroutine.
- Created on the stack, only valid from the point where they are declared to the end of the function.
- Are not initialized by the system. Until you assign them a value, they contain whatever random junk was left in that memory location from the last time it was used. -> therefore always initialize it with some value.
- Are associated with a single call of a function. If you have recursive code where a function calls itself, each call of the function has its own stack frame and its own copy of the automatic variables. Changing the value of the variable in one call will not change its value in any of the other calls on the stack.
- Taking the address of an automatic variable with the ```&``` operator and assigning the address to a pointer variable held outside of the function is a very bad idea - the pointer variable points to junk as soon as the function exits.
- __Function parameters__ are essentially automatic variables that have been initialized with the values supplied when the function was called.

__External variables__

- Variables that are declared in a source file outside the scope of ```main``` or any subroutine.
- Although it is not always a good design choice, external variables are sometimes used as _global variables_ to share information between different functions and different source files.
- The compiler assigns external variables memory locations in the data segment of the virtual address space.
- External variables persist for the lifetime of the program - they never go out of scope or disappear, and their value changes only when you assign a new value to them.
- The compiler initializes external variables to zero if you do not provide an explicit initialization.
- Are visible beyond the scope of a single function. In fact, external variables are global symbols.

__extern__ keyword is used when you want to reference an external variable that is declared in a different file. A declaration beginning with ```extern``` makes the name and type of the variable known to the compiler, but does not cause the compiler to reserve any storage for that variable.

__function static variable__

- The compiler creates storage for a function static variable in the data segment.
- It is initialized to zero unless you provide an explicit initialization.
- The value of a function static variable persists between calls to the function.
- References to a function static variable in multiple calls to the function (even if the function recursively calls itself) refer to the same memory location.
- Only visible within the scope of the function that declared it (compare to an external variable).

When __static__ keyword is used with an external variable, it limits the visibility of the variable to the file in which it is declared and hides it from other source files.

The __volatile__ keyword declares that a variable's contents may be changed by something other than the program's main thread. The compiler will then avoid optimizations that it would otherwise make.

- - -

### Articles ###

[Go To statement considered harmful: a retrospective](http://david.tribble.com/text/goto.html) - _David R. Tribble_

#### Books ####

- [C: A Reference Manual](http://careferencemanual.com)