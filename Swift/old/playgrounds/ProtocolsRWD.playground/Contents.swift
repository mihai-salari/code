//: Playground - noun: a place where people can play

import Cocoa

enum Direction {
    case left
    case right
}

protocol Vehicle {
    func accelerate()
    func stop()
}

protocol VehicleProperties {
    var weight: Int { get }
    var name: String { get set }
}

protocol DirectionalVehicle: Vehicle {
    func turn(direction: Direction)
    func description() -> String
}

class Unicycle: Vehicle {
    var peddling = false
    
    func accelerate() {
        peddling = true
    }
    
    func stop() {
        peddling = false
    }
}

// Initializers in protocol
protocol Account {
    var value: Double { get set }
    init(initialAmount: Double)
    init?(transferAmount: Account)
}

class BitcoinAccount: Account {
    var value: Double
    
    required init(initialAmount: Double) {
        value = initialAmount
    }
    
    required init?(transferAmount: Account) {
        guard transferAmount.value > 0.0 else {
            return nil
        }
        
        value = transferAmount.value
    }
}

var accountType: Account.Type = BitcoinAccount.self
let account = accountType.init(initialAmount: 30.0)
let transferAccount = accountType.init(transferAmount: account)!

protocol Area {
    var area: Double { get }
}

struct Square: Area {
    var b: Double
    var h: Double
    var area: Double {
        return b * h
    }
}

struct Triangle: Area {
    var b: Double
    var h: Double
    var area: Double {
        return (b * h) / 2
    }
}

struct Circle: Area {
    var r: Double
    var area: Double {
        return Double.pi * r * r
    }
}

let square = Square(b: 2, h: 4)
let triangle = Triangle(b: 2, h: 4)
let circle = Circle(r: 2)

var shapes: [Area] = [square, triangle, circle] // Protocols are type

print(shapes)

let area = shapes.map {
    $0.area
}

print(area)

// Associated type
protocol WeightCalculatable {
    associatedtype WeightType
    
    func calculateWeight() -> WeightType
}

class HeavyThing: WeightCalculatable {
    typealias WeightType = Int
    
    func calculateWeight() -> Int {
        return 100
    }
}

class LightThing: WeightCalculatable {
    typealias WeightType = Double
    
    func calculateWeight() -> Double {
        return 0.0025
    }
}

// Extension to existing type
protocol Reflective {
    var typeName: String { get }
}

extension String: Reflective {
    var typeName: String {
        return "I am a String"
    }
}

let title = "Swift Apprentice"
title.typeName

// Reference or value semantic
protocol Named {
    var name: String { get set }
}

class ClassyName: Named {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

struct StructyName: Named {
    var name: String
}

var named: Named = ClassyName(name: "Hello")
var copyNamed = named

print(named.name)
print(copyNamed.name)

named.name = "World"

print(named.name)
print(copyNamed.name)

named = StructyName(name: "Foo")
copyNamed = named

print(named.name)
print(copyNamed.name)

named.name = "Bar"

print(named.name)
print(copyNamed.name)

// Equatable
struct Record {
    var wins: Int
    var losses: Int
}

extension Record: Equatable {
    static func ==(lhs: Record, rhs: Record) -> Bool {
        return lhs.wins == rhs.wins && lhs.losses == rhs.losses
    }
}

let record1 = Record(wins: 1, losses: 1)
let record2 = Record(wins: 2, losses: 2)
let record3 = Record(wins: 1, losses: 1)

record1 == record2
record1 == record3

// Comparable
extension Record: Comparable {
    static func <(lhs: Record, rhs: Record) -> Bool {
        if lhs.wins == rhs.wins {
            return lhs.losses > rhs.losses
        }
        
        return lhs.wins < rhs.wins
    }
}

record1 > record2
record1 < record2

// Hashable
class Student {
    let email: String
    var firstName: String
    var lastName: String
    
    init(email: String, firstName: String, lastName: String) {
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
    }
}

extension Student: Equatable {
    static func ==(lhs: Student, rhs: Student) -> Bool {
        return lhs.email == rhs.email
    }
}

extension Student: Hashable {
    var hashValue: Int {
        return email.hashValue
    }
}

let john = Student(email: "john@example.com", firstName: "John", lastName: "Apple")
let lockerMap = [john: "14B"] // To use as a key in Dictionary, it must conforms to Hashable

// CustomStringConvertible
extension Student: CustomStringConvertible {
    var description: String {
        return "\(firstName) \(lastName)"
    }
}

print(john)