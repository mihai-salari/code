import Foundation

enum PetFood: String {
    case kibble
    case canned
}

let morning = PetFood.init(rawValue: "kibble")
let evening = PetFood.init(rawValue: "fishy")

// Note that optionals are returned, default failable initializer from enum
print("morning = \(morning)")
print("evening = \(evening)")
