//: Playground - noun: a place where people can play

import Cocoa

var counter = 0

while counter < 10 {
    print("counter is \(counter)")
    counter += 1
}

counter = 0
var roll = 0

repeat {
    roll = Int(arc4random_uniform(6))
    counter += 1
} while roll != 0

print("After \(counter) rolls, roll is \(roll)")

let month = "June"
let year = 2017
var leapYear = false
var days = 0

// Check whether it is a leap year
if (year % 4 == 0 && year % 100 != 0) || (year % 4 == 0 && year % 400 == 0) {
    leapYear = true
}

if month == "January" || month == "March" || month == "May" || month == "July" || month == "August" || month == "October" || month == "December" {
    days = 31
} else if month == "February" {
    if leapYear {
        days = 29
    } else {
        days = 28
    }
} else {
    days = 30
}

print(days)

let n: Double = 38
let base = log2(n)

// Cast to Int first to remove the fraction part, then only cast it back to Double for comparison
if base == Double(Int(base)) {
    print("It is power of 2")
} else {
    print("It is not power of 2")
}

var count: Double = 0

while count < 10 {
    
    print(Int(pow(2, count)))
    
    count += 1
}

// Fibonacci

let f = 10 // nth-fibonacci
var i = 1 // counter
var v = 0
var x = 1
var y = 1

print(x)
print(y)

while i <= f {
    v = x + y
    x = y
    y = v
    print(v)
    
    i += 1
}

// Factorial

let factorial = 10
var f1 = 1
var factorialAnswer = 1

while f1 <= factorial {
    factorialAnswer = factorialAnswer * f1
    f1 += 1
}

print(factorialAnswer)

// Odds of two dice

let numberToRoll = 9
var numberOfDice1 = 1
var numberOfDice2 = 1

while numberOfDice1 <= 6 {
    while numberOfDice2 <= 6 {
        if numberOfDice1 + numberOfDice2 == numberToRoll {
            print("Dice 1: \(numberOfDice1) Dice 2: \(numberOfDice2)")
        }
        
        numberOfDice2 += 1
    }
    
    numberOfDice2 = 1    
    numberOfDice1 += 1
}

func getRowAndColumnForPosition(value: Int) -> (row: Int, column: Int) {
    let position = value
    
    // row from 0 to 7
    let row = (position / 8)
    
    // column from 0 to 7
    let column = (position % 8)
    
    return (row, column)
}

func returnNextPositionOnChessboardFor(row: Int, column: Int) -> (row: Int, column: Int) {
    var positionValue = (row * 8) + column
    
    print("\(#function): positionValue is \(positionValue)")
    
    // Make sure the value is within 0 - 63
    let nextPositionValue = positionValue + 1 <= 63 ? positionValue + 1 : 0
    
    print("\(#function): nextPositionValue is \(nextPositionValue)")
    
    let (row, column) = getRowAndColumnForPosition(value: nextPositionValue)
    
    return (row, column)
}

getRowAndColumnForPosition(value: 7)
returnNextPositionOnChessboardFor(row: 0, column: 7)

func returnSolutionOfQuadraticEquationWith(a: Double, b: Double, c: Double) -> (Double, Double) {
    let x1 = (-b - sqrt((pow(b, 2) - (4 * a * c)))) / (2 * a)
    let x2 = (-b + sqrt((pow(b, 2) - (4 * a * c)))) / (2 * a)
    
    return (x1, x2)
}

returnSolutionOfQuadraticEquationWith(a: 1, b: 3, c: -4)
returnSolutionOfQuadraticEquationWith(a: 2, b: -4, c: -3)
