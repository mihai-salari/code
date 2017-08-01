import UIKit

// When you extend a protocol, you can add methods and properties to the protocol.
// But these methods and properties are not mere requirements, to be fulfilled by the adopter of the protocol; they are
// actual methods and properties, to be inherited by the adopter of the protocol.

protocol Flier {
    
}

extension Flier {
    func fly() {
        print("I believe I can fly...")
    }
}

struct Bird: Flier {
}

let bird = Bird()
bird.fly()

struct Insect: Flier {
    // This is not override, but own alternative implementation and it is not polymorphic, example below
    func fly() {
        print("I can fly, I can fly...")
    }
}

let insect = Insect()
insect.fly()

let f: Flier = Insect()
f.fly() // print fly in Flier, not in Insect!

// To get the polymorphic inheritance, we can declare the fly as a requirement in the original protocol, e.g.

protocol Flier2 {
    func fly()
}

extension Flier2 {
    func fly() {
        print("I extend extend extend")
    }
}

struct Insect2: Flier2 {
    func fly() {
        print("I can fly, I can fly...")
    }
}

let i: Flier2 = Insect2()
i.fly() // now it print the fly in Insect2
