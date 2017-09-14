//: Playground - noun: a place where people can play

import UIKit

enum TextAlignment: Int {
    case left
    case right
    case center
    case justify
}

print(TextAlignment.left.rawValue)

enum Rank: Int {
    case top = 100
    case good = 80
    case normal = 60
    case bad = 40
    case verybad = 20
    case ohshit = 0
}

let myRank = Rank.ohshit
print(myRank.rawValue)

enum Lightbulb {
    case on
    case off
    
    mutating func toggle() -> Void {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
    
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
        case .off:
            return ambient
        }
    }
}

var bulb = Lightbulb.on
bulb.toggle()
let ambientTemperature = 77.0
var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print(bulbTemperature)

enum ProgrammingLanguage: String {
    case swift
    case objectiveC = "objective-c"
    case c
    case cpp = "c++"
    case java
    case ruby
    case python
    case perl
}

print(ProgrammingLanguage.swift.rawValue)

// Associated values

enum ShapeDimensions {
    case point
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    case rightTriangle(a: Double, b: Double, c: Double)
    
    func perimeter() -> Double {
        switch self {
            
        case .point:
            return 0
            
        case let .square(side: s):
            return 4 * s
            
        case let .rectangle(width: w, height: h):
            return (2 * w) + (2 * h)
            
        case let .rightTriangle(a: a, b: b, c: c):
            return a + b + c
        }
    }
    
    func area() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side: s):
            return s * s
        case let .rectangle(width: w, height: h):
            return w * h
        case let .rightTriangle(a: a, b: b, c: c):
            return (a * b) / 2
        }
    }
}

var point = ShapeDimensions.point
print(point.area())
print(point.perimeter())

var square = ShapeDimensions.square(side: 10.0)
print(square.area())
print(square.perimeter())

var rectangle = ShapeDimensions.rectangle(width: 20.0, height: 5.0)

print(square)
print(rectangle)

var rightTriangle = ShapeDimensions.rightTriangle(a: 3, b: 4, c: 5)

print(rightTriangle)
print(rightTriangle.area())
print(rightTriangle.perimeter())

//: ****************************************************

enum ScreenType {
    case none
    case retina (screenHeight: Double, screenWidth: Double)
}

struct IOSDevice {
    var name: String
    var screenType: ScreenType
}

let iPhone7 = IOSDevice(name: "iPhone 7", screenType: ScreenType.retina(screenHeight: 138.1, screenWidth: 67.0))
let appleTV4thGen = IOSDevice(name: "Apple TV (4th Gen)", screenType: ScreenType.none)

print(iPhone7)
print(appleTV4thGen)

extension IOSDevice: CustomStringConvertible {
    var description: String {
        var screenDescription: String
        
        switch screenType {
        case .none:
            screenDescription = "No screen"
        case .retina (let screenHeight, let screenWidth):
            screenDescription = "Retina screen " + "\(screenHeight) x \(screenWidth)"
        }
        
        return "\(name): \(screenDescription)"
    }
}

//: ****************************************************

enum ModelType: String {
    case audi
    case volvo
    case peugeot
    case mazda
    
    static var cases: [ModelType] = [.audi, .volvo, .peugeot, .mazda]
    
    init?(_ ix: Int) {
        //self = ModelType.cases[ix]
        
        // Below won't work, index out of range error
        /*if let model = ModelType.cases[ix] {
            self = model
        } else {
            return nil
        }*/
        
        if !(0 ... 3).contains(ix) {
            return nil
        }
        
        self = ModelType.cases[ix]
    }
    
    init?(_ rawValue: String) {
        self.init(rawValue: rawValue)
    }
}

let myCarType = ModelType(rawValue: "peugeot")

if myCarType == ModelType.peugeot {
    print("You drive a Peugeoot")
}

let mySecondCarType = ModelType(10)

if let car = mySecondCarType {
    print("You drive a \(car)")
} else {
    print("You don't have a car")
}

let myThirdCarType = ModelType("mazda")
