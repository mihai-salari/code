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