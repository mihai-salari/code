//: Playground - noun: a place where people can play

import Cocoa

// reduce

let names = ["foo", "doraemon", "bar", "example"]

let namesAll = names.reduce("") {
    $0 + $1
}

print(namesAll)

// filter

let namesWithMoreThanFour = names.filter {
    return $0.characters.count > 4
}

print(namesWithMoreThanFour)

let namesAndAges = [
    "bibi": 8,
    "foo": 18,
    "bar": 21,
    "vendy": 30,
    "julia": 37,
    "wendy": 36,
    "carmen": 38,
]

let peopleUnder18 = namesAndAges.filter {
    return $0.value < 18
}

print(peopleUnder18)

let peopleAbove18 = namesAndAges.filter {
    return $0.value >= 18
}

print(peopleAbove18)

// map

let peopleAbove18Name = peopleAbove18.map {
    return $0.key
}

print(peopleAbove18Name)

// repeat closure 10 times

func repeatTask(times: Int, task: () -> Void) {
    for _ in 0 ..< times {
        task()
    }
}

repeatTask(times: 10) {
    print("Hello World!")
}

// closure sums

func mathSum(length: Int, series: (Int) -> Int) -> Int {
    var sum = 0
    
    for i in 0 ..< length {
        sum = sum + series(i)
    }
    
    return sum
}

var squareNumbers: [Int] = []

for n in 1...30 {
    squareNumbers.append(n * n)
}

print(squareNumbers)

let squareNumbersTotal = mathSum(length: 10) { return squareNumbers[$0] }

print(squareNumbersTotal)

func getFibonacciFor(_ number: Int) -> Int {
    var sum = 0
    
    if number == 0 {
        return 0
    } else if number == 1 || number == 2 {
        return 1
    } else {
        sum = getFibonacciFor(number - 1) + getFibonacciFor(number - 2)
        return sum
    }
}

var fibo10: [Int] = []

for i in 1...10 {
    fibo10.append(getFibonacciFor(i))
}

print(fibo10)

let fibo10Total = mathSum(length: 10) { return fibo10[$0] }

print(fibo10Total)

// Functional ratings

let appRatings = [
    "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
    "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
    "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
]

var averageRatings: [String: Int] = [:]

var avgRatings: [Int] = []

for item in appRatings {
    var sum = 0
    var avg = 0
    
    sum = item.value.reduce(0) {
        $0 + $1
    }
    
    avg = sum / appRatings.count
    
    avgRatings.append(avg)
}

print(avgRatings)

appRatings.forEach({
    item in
    var sum = 0
    var avg = 0
    
    sum = item.value.reduce(0) {
        $0 + $1
    }
    
    avg = sum / appRatings.count
    
    averageRatings[item.key] = avg
    
    print(averageRatings)
})

print(averageRatings.filter { $0.value >= 3 }.map { $0.key })