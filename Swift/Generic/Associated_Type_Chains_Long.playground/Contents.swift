import Cocoa

protocol Wieldable {}
struct Sword: Wieldable {}
struct Bow: Wieldable {}

protocol SuperFighter {
    associatedtype Weapon: Wieldable
}
protocol Fighter: SuperFighter {
    associatedtype Enemy: SuperFighter // Type constraint on a Protocol
    
    func steal(weapon: Self.Enemy.Weapon, from: Self.Enemy)
}

// resolve the associated type manually for both structs
struct Soldier: Fighter {
    typealias Enemy = Archer
    typealias Weapon = Sword
    
    func steal(weapon: Bow, from: Archer) {
        print("Got it")
    }
}

struct Archer: Fighter {
    typealias Enemy = Soldier
    typealias Weapon = Bow
    
    func steal(weapon: Sword, from: Soldier) {
        print("Got it")
    }
}

// create a generic struct
struct Camp<T: Fighter> {
    var spy: T.Enemy? // Use associated type chain
}

var c = Camp<Soldier>()
c.spy = Archer()

var a = Camp<Archer>()
a.spy = Soldier()