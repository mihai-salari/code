//: Playground - noun: a place where people can play

import Cocoa

typealias Velocity = Double

extension Velocity {
    var kph: Velocity { return self * 1.60934 }
    var mph: Velocity { return self }
}

protocol Vehicle {
    var topSpeed: Velocity { get }
    var numberOfDoors: Int { get }
    var hasFlatbed: Bool { get }
}

struct Car {
    let make: String
    let model: String
    let year: Int
    let color: String
    let nickname: String
    let numberOfDoors: Int
    
    // A mutated stored property with a property observer
    var gasLevel: Double {
        willSet {
            precondition(newValue <= 1.0 && newValue >= 0.0, "New value must be between 0 and 1")
        }
    }
}

extension Car: Vehicle {
    var topSpeed: Velocity { return 180 }
    //var numberOfDoors: Int { return self.numberOfDoors }
    var hasFlatbed: Bool { return false }
}

// Add the initializer to an extension, so that we can keep the free memberwise initializer
extension Car {
    init(make: String, model: String, year: Int) {
        self.init(make: make, model: model, year: year, color: "White", nickname: "N/A", numberOfDoors: 4, gasLevel: 1.0)
    }
}

var car = Car(make: "Ford", model: "Fusion", year: 2013)

// Add nested type
extension Car {
    enum Kind {
        case coupe
        case sedan
    }
    
    var kind: Kind {
        if numberOfDoors == 2 {
            return Kind.coupe
        } else {
            return Kind.sedan
        }
    }
}

print(car.kind)

// Add function
extension Car {
    mutating func emptyGas(by amount: Double) {
        precondition(amount <= 1 && amount > 0, "Amount to remove must be between 0 and 1")
        
        if gasLevel <= amount {
            print("gasLevel is less than amount to remove")
        } else {
            gasLevel -= amount
        }
    }
    
    mutating func fillGas() {
        gasLevel = 1.0
    }
}

car.gasLevel
car.emptyGas(by: 0.5)
car.emptyGas(by: 0.5)
car.emptyGas(by: 0.5)
car.gasLevel
car.fillGas()
car.gasLevel

let ferrari = Car(make: "Ferrari", model: "F50", year: 1980, color: "Red", nickname: "Spit Speed", numberOfDoors: 2, gasLevel: 1.0)
print(ferrari.kind)

// timesFive for Int
extension Int {
    var timesFive: Int {
        return self * 5
    }
}

print(1444.timesFive)