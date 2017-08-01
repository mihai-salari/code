import Cocoa

// When a generic placeholder is constrained to a generic protocol with an
// associated type, you can refer to that type using a dot-notation chain: the
// placeholder name, a dot, and the associated type name.

protocol SuperFighter {
}
protocol Fighter: SuperFighter {
    associatedtype Enemy: SuperFighter // Type constraint on a Protocol
}

// resolve the associated type manually for both structs
struct Soldier: Fighter {
    typealias Enemy = Archer
}

struct Archer: Fighter {
    typealias Enemy = Soldier
}

// create a generic struct
struct Camp<T: Fighter> {
    var spy: T.Enemy? // Use associated type chain
}

var c = Camp<Soldier>()
c.spy = Archer()

var a = Camp<Archer>()
a.spy = Soldier()