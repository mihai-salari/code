#### Notes ####

__Automatic variables or local variables__

- Variables you declare in a function or subroutine.
- Created on the stack, only valid from the point where they are declared to the end of the function.
- Are not initialized by the system. Until you assign them a value, they contain whatever random junk was left in that memory location from the last time it was used. -> therefore always initialize it with some value.
- Are associated with a single call of a function. If you have recursive code where a function calls itself, each call of the function has its own stack frame and its own copy of the automatic variables. Changing the value of the variable in one call will not change its value in any of the other calls on the stack.
- Taking the address of an automatic variable with the ```&``` operator and assigning the address to a pointer variable held outside of the function is a very bad idea.

__Function parameters__ are essentially automatic variables that have been initialized with the values supplied when the function was called.

__External variables__

- - -

### Articles ###

[Go To statement considered harmful: a retrospective](http://david.tribble.com/text/goto.html) - _David R. Tribble_