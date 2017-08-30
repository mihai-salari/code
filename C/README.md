#### Notes ####

__Automatic variables or local variables__ (variables you declare in a function or subroutine) are not initialized by the system. Until you assign them a value, they contain whatever random junk was left in that memory location from the last time it was used. -> therefore always initialize it with some value.

__Function parameters__ are essentially automatic variables that have been initialized with the values supplied when the function was called.

- - -

### Articles ###

[Go To statement considered harmful: a retrospective](http://david.tribble.com/text/goto.html) - _David R. Tribble_