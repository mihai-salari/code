//: Playground - noun: a place where people can play

import Cocoa

var number = 10

switch number {
case 10:
    print("Fuck ten")
default:
    break
}

let hourOfDay = 12
var timeOfDay: String

switch hourOfDay {
case 0, 1, 2, 3, 4, 5:
    timeOfDay = "Early morning"
case 6, 7, 8, 9, 10, 11:
    timeOfDay = "Morning"
case 12, 13, 14, 15, 16:
    timeOfDay = "Afternoon"
case 17, 18, 19:
    timeOfDay = "Evening"
case 20, 21, 22, 23:
    timeOfDay = "Late evening"
default:
    timeOfDay = "Invalid hour!"
}

switch hourOfDay {
case 0...5:
    timeOfDay = "Early morning"
case 6...11:
    timeOfDay = "Morning"
case 12...16:
    timeOfDay = "Afternoon"
case 17...19:
    timeOfDay = "Evening"
case 20...23:
    timeOfDay = "Late evening"
default:
    timeOfDay = "Invalid hour!"
}

// Pattern matching
switch number {
case let x where x % 2 == 0:
    print("Even")
default:
    print("Odd")
}

switch number {
case let _ where number % 2 == 0:
    print("Even")
default:
    print("Odd")
}

// Tuple matching
var coordinates = (x: 3, y: 2, z: 5)

switch coordinates {
case (0, 0, 0):
    print("Origin")
case (_, 0, 0):
    print("On the x-axis")
case (0, _, 0):
    print("On the y-axis")
case (0, 0, _):
    print("On the z-axis")
default:
    print("Somewhere in the space")
}

coordinates = (9, -1, 9)

switch coordinates {
case (0, 0, 0):
    print("Origin")
case (let x, 0, 0):
    print("On the x-axis: \(x)")
case (0, let y, 0):
    print("On the y-axis: \(y)")
case (0, 0, let z):
    print("On the z-axis: \(z)")
case let (x, y, z):
    print("\(x), \(y), \(z)")
}

coordinates = (4, 2, 0)

switch coordinates {
case let (x, y, _) where x == y:
    print("Along the x = y line")
case let (x, y, _) where x == y * y:
    print("Along the x = y^2 line")
default:
    break
}

let age = 37

switch age {
case 0...2:
    print("Infant")
case 3...12:
    print("Child")
case 13...19:
    print("Teenager")
case 20...39:
    print("Adult")
case 40...60:
    print("Middle aged")
default:
    print("Elderly")
}

let aTuple = ("Foo Bar", -1)

switch aTuple {
case let (name, age) where age > 60:
    print("\(name) is an elderly")
case let (name, age) where age >= 40:
    print("\(name) is in middle aged")
case let (name, age) where age >= 20:
    print("\(name) is an adult")
case let (name, age) where age >= 13:
    print("\(name) is a teenager")
case let (name, age) where age >= 3:
    print("\(name) is a child")
case let (name, age) where age >= 0:
    print("\(name) is a baby")
default:
    print("Invalid age")
}

number = 10

while number >= 0 {
    print(number)
    number -= 1
}

var digit = 0.1

while digit <= 1.0 {
    print(digit)
    digit += 0.1
}