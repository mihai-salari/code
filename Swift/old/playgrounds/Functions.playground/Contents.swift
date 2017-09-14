//: Playground - noun: a place where people can play

import UIKit

func printMultipleOf(_ multiplier: Int, and value: Int) {
    print("\(multiplier) * \(value) = \(multiplier * value)")
}

printMultipleOf(4, and: 2)

func sum(_ x: Int, _ y: Int) -> Int {
    let result = x + y
    return result
}

print(sum(1, 2))

func echoString(_ s: String, times: Int) -> String {
    var result = ""
    
    for _ in 1...times {
        result += s
    }
    
    return result
}

print(echoString("Hello", times: 10))

// Naming function parameter
func printPersonalGreeting(to name: String) {
    print("Hello, \(name)")
}

printPersonalGreeting(to: "Matt")

// Variadic params function
func sayStrings(_ arrayOfStrings: String ...) {
    for s in arrayOfStrings {
        print(s)
    }
}

sayStrings("hello", "how", "are", "you")

print("hello", "world", "I", "love", "you", separator: "$")

// Inout parameter
var error = "The request failed: "

func appendErrorCode(_ code: Int, toErrorString errorString: inout String) {
    if code == 400 {
        errorString += " bad request"
    }
}

appendErrorCode(400, toErrorString: &error)

print(error)

// Multiple returns
func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    
    return (evens, odds)
}

let someNumbers = [1, 9, 3, 2, 8, 13, 19, 22, 28, 38, 44, 51, 9, 12]
let sortedNumbers = sortedEvenOddNumbers(someNumbers)
print(sortedNumbers)
print(sortedNumbers.evens)
print(sortedNumbers.odds)

// Using guard
func greetByMiddleName(fromFullName name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle else {
        print("Hey there!")
        return
    }
    
    print("Hey, \(middleName)")
}

greetByMiddleName(fromFullName: ("Ah", nil, "Fat"))

func siftBeans(fromGroceryList list: [String]) -> (beans: [String], otherGroceries: [String]) {
    var beans = [String]()
    var otherGroceries = [String]()
    
    for item in list {
        if item.hasSuffix("beans") {
            beans.append(item)
        } else {
            otherGroceries.append(item)
        }
    }
    
    return (beans, otherGroceries)
}

let result = siftBeans(fromGroceryList: ["green beans", "milk", "black beans", "pinto beans", "apples"])
result.beans
result.otherGroceries

// Inout parameter
func removeCharacter(_ c: Character, from s: inout String) -> Int {
    var count = 0
    
    while let ix = s.characters.index(of: c) {
        s.remove(at: ix)
        count += 1
    }
    
    return count
}

var s1 = "hello world"
let s2 = removeCharacter("o", from: &s1)
print(s1, s2)

// Recursion
func countDownFrom(_ number: Int) {
    print(number)
    
    if number > 0 {
        countDownFrom(number-1)
    }
}

print(countDownFrom(10))
