import Cocoa

// This is the continue of 'Type Constraints Further Constraints'

import Cocoa

protocol Flier {
    
}

protocol Walker {
    
}

class Dog {
    
}

class NoisyDog: Dog, Flier {
    
}

protocol Generic {
    associatedtype T: Flier, Walker
    associatedtype U: Dog, Flier
}

// In a generic function, we can use protocol composition (comma is illegal)

func flyAndWalk<T: Flier & Walker> (_ f: T) {
    print("Flying... walking... di da di")
}

// or with a where clause

func flyAndWalk2<T> (_ f: T) where T: Flier, T: Walker {
    print("Flying... walking... di da di")
}

func flyAndWalk3<T> (_ f: T) where T: Flier, T: Dog {
    print("Flying... walking... di da di")
}

// a where clause can also impose additional constraints on the associated type of a
// generic protocol that already constrains a placeholder, using an associated type chain

protocol Sleeper {
    associatedtype Other
}

protocol Fucker {
    
}

struct S1: Sleeper {
    typealias Other = String
}

struct S2: Sleeper {
    typealias Other = S1
}

struct F1: Fucker {
    
}

struct A1: Sleeper {
    typealias Other = F1
}

struct A2: Sleeper {
    typealias Other = Fucker
}

// Using colon way
func sleepTogether<T: Sleeper> (_ f: T) where T.Other: Equatable {
    print("Let's sleep")
}

sleepTogether(S1())
//sleepTogether(S2()) // Error, Other associate type resolved to something that doesn't adopt Equatable

// Using == way, the type at the end of the associated type chain must then be this exact type, not merely an adopter or subclass
func fuckTogether<T: Sleeper> (_ f: T) where T.Other == Fucker {
    print("Let's fuck")
}

//fuckTogether(A1()) // Error, resolves Other to an adopter of Fucker (i.e. F1), not good enough to satisfy the == restriction
fuckTogether(A2())

// The type on the right side of the == operator can itself be an associated type chain,
// thus the resolved types at the ends of the two chains must then be identical

struct H1: Sleeper {
    typealias Other = String
}

struct H2: Sleeper {
    typealias Other = Int
}

func mustBeSame<T: Sleeper, U: Sleeper> (_ f1: T, _ f2: U) where T.Other == U.Other {
    print("We are same type")
}

mustBeSame(H1(), H1())
