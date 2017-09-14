//: Playground - noun: a place where people can play

import UIKit

var name: String?
print(name)

name = "hello"

if name != nil {
    print(name)
    print(name!)
} else {
    print("name is nil")
}

// Optional binding

name = nil

if let name = name {
    print(name)
} else {
    print("name is nil")
}

name = "bar"

if var name = name {
    name = "foo"
    print(name)
} else {
    print("name is nil")
}

// Multiple lets

var age: String?
age = "37"

if let age = age, let intAge = Int(age), intAge <= 30 {
    print("Age is \(age)")
    print("Next year you are \(intAge + 1)")
} else {
    print("Age is satisfied")
}

// Optional chaining

var upcaseName = name?.uppercased()

if upcaseName != nil {
    print(upcaseName!)
}

// nil coalescing operator

name = nil

let description = name ?? "Error, name is nil"

print(description)

// ......

let sizeInMm = [
"iPhone 7": 138.1,
"iPhone 7 Plus": 158.1,
"iPad Air 2": 240.0,
"iPad Pro": 305.7
]

print(type(of: sizeInMm))

let size7 = sizeInMm["iPhone 7"]
print(type(of: size7))

let size8 = sizeInMm["iPhone 8"]
print(type(of: size8))

// Optional is actually enum...
var optionalString: String? = nil

optionalString = "hello"

switch optionalString {
case .none:
    print("I am nil")
case .some(let value):
    print("Some \"\(value)\"")
}

// Divide and conquer

func divideIfWhole(_ value: Int, by divisor: Int) -> Int? {
    var number = value
    var quotient = 0
    var count = 0
    
    while number % divisor == 0 {
        quotient = number / divisor
        number = quotient
        count += 1
    }
    
    if count != 0 {
        return count
    } else {
        return nil
    }
}

print(divideIfWhole(18, by: 3))
print(divideIfWhole(18, by: 4))
print(divideIfWhole(18, by: 9))
print(divideIfWhole(10, by: 2))

func testDivideIfWhole(a: Int, b: Int) {
    guard let z = divideIfWhole(a, by: b) else {
        print("Not divisible :[")
        return
    }
    
    print("Yep, it divides \(z) times")
}

testDivideIfWhole(a: 18, b: 3)

// Nested optionals

let number: Int??? = 13

print(number)
print(number!)
print(number!!!)

if let number = number {
    if let number = number {
        if let number = number {
            print(number)
        }
    }
}

func printNumber(_ number: Int???) {
    guard let number = number else {
        print("Error")
        return
    }
    
    print(number)
}

printNumber(number)
