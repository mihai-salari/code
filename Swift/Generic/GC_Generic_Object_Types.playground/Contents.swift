import Cocoa

// Generic Declaration - Generic Functions

// An object type declaration can use a generic placeholder type anywhere
// within its curly braces.

struct TwoSameThings<T> {
    var firstThing: T
    var secondThing: T
    
    init(with firstThing: T, and secondThing: T) {
        self.firstThing = firstThing
        self.secondThing = secondThing
    }
}