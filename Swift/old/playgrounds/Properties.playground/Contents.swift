//: Playground - noun: a place where people can play

import UIKit

struct Town {
    
    enum Size {
        case small
        case medium
        case large
    }
    
    var population = 6188
    
    lazy var townSize: Size = {
        switch self.population { // we must use 'self' here, else it won't compile
        case 0...10_000:
            return Size.small
        case 10_001...100_000:
            return Size.medium
        default:
            return Size.large
        }
    }()
}

// There's no class stored property, only class computed property!

class A {
    static let staticName = "foo"
    
    class var name: String {
        return "foo"
    }
}

class B: A {
    override class var name: String {
        return "bar"
    }
}

// Light bulb

struct LightBulb {
    static let maxCurrent = 40
    
    var bulbIsOn = true
    
    var current = 0 {
        willSet {
            if newValue > LightBulb.maxCurrent {
                bulbIsOn = false
            }
        }
    }
}

var light = LightBulb()
light.current = 50
print(light.current)
print(light.bulbIsOn)

// Ice-cream

struct IceCream {
    let name: String = "Ice-Cream"
    lazy var ingredients: [String] = {
        return ["i", "dunno", "what", "is", "the", "ingredients", "of", "damn", "ice-cream"]
    }()
}

var icecream = IceCream()
print(icecream.name)
print(icecream.ingredients)

// Fuel tank

struct FuelTank {
    var level: Double {
        didSet {
            if level < 0.1 {
                lowFuel = true
            } else if level == 1.0 {
                lowFuel = false
            } else {
                lowFuel = false
            }
        }
    }
    
    var lowFuel: Bool = false
}

var fuel = FuelTank(level: 1.0, lowFuel: false)
print(fuel.level)
print(fuel.lowFuel)

fuel.level = 0
print(fuel.lowFuel)

fuel.level = 1
print(fuel.lowFuel)


// Months to winter break

let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Oct", "Nov", "Dec"]

struct SimpleDate {
    var month: String
    var monthsUntilWinterBreak: Int {
        get {
            return months.index(of: "Dec")! - months.index(of: self.month)!
        }
    }
}

let thisMonth = SimpleDate(month: "Jun")
print(thisMonth.monthsUntilWinterBreak)