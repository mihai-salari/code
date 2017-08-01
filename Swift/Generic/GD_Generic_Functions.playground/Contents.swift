import Cocoa

// Generic Declaration - Generic Functions

// A function declaration can use a generic placeholder type for any of its parameters,
// for its return type, and within its body.

func takeAndReturnSameThing<T> (_ t: T) -> T {
    return t
}

// Multiple placeholder names

func giveTwoThings<T, U>(_ n: T, _ m: U) -> (T, U) {
    return (n, m)
}