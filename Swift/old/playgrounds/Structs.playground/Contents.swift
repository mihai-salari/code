//: Playground - noun: a place where people can play

import UIKit

struct IOSDevice {
    var name: String
    var screenHeight: Double
    var screenWidth: Double
}

let iphone7 = IOSDevice(name: "iPhone 7", screenHeight: 138.1, screenWidth: 67.0)

print(iphone7)

extension IOSDevice {
    var screenArea: Double {
        get {
            return self.screenHeight * self.screenWidth
        }
    }
}

print(iphone7.screenArea)

extension IOSDevice: CustomStringConvertible {
    var description: String {
        return "\(name)..."
    }
}

print(iphone7)

//: ***************************************

struct Digit1 {
    let number: Int
}

let d1 = Digit1(number: 42) // Memberwise initializer

struct Digit2 {
    var number = 42
}

let d2a = Digit2() // Implicit init() available because of default value assigned
let d2b = Digit2(number: 9) // Memberwise initializer

//d2a.number = 8 // Not doable due to let constant

//

struct Tshirt {
    let size: String
    let color: String
    let material: String
    
    func sizePriceFor(size: String) -> Int {
        switch size {
        case "s", "S":
            return 5
        case "m", "M":
            return 7
        case "l", "L":
            return 9
        case "xl", "XL":
            return 13
        default:
            return 10
        }
    }
    
    func colorPriceFor(color: String) -> Int {
        switch color {
        case "white", "White":
            return 3
        default:
            return 5
        }
    }
    
    func materialPriceFor(material: String) -> Int {
        switch material {
        case "cotton":
            return 2
        default:
            return 3
        }
    }
    
    func calculateCost() -> Int {
        var sum = 0
        
        sum = sum + sizePriceFor(size: size)
        sum = sum + colorPriceFor(color: color)
        sum = sum + materialPriceFor(material: material)
        
        return sum
    }
}

let myTshirt = Tshirt(size: "s", color: "white", material: "cotton")
print("My T-shirt costs RM\(myTshirt.calculateCost())")

// Circle

struct Circle {
    var radius = 0.0
    
    var area: Double {
        mutating get {
            return Double.pi * radius * radius
        }
        
        mutating set {
            radius = sqrt(newValue/Double.pi)
        }
    }
    
    init(radius: Double) {
        self.radius = radius
    }
    
    mutating func grow(byFactor: Double) {
        area = area * byFactor
    }
}

var circle = Circle(radius: 2.0)
print(circle.area)
circle.grow(byFactor: 40.5)
print(circle.area)
