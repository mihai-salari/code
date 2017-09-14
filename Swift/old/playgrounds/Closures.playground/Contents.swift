//: Playground - noun: a place where people can play

import UIKit

let volunteerCounts = [1,3,40,32,2,53,77,13]

// Named closure
func sortAscending(_ i: Int, _ j: Int) -> Bool {
    return i < j
}

let volunteerSorted = volunteerCounts.sorted(by: sortAscending)
print(volunteerCounts)
//print(volunteerSorted)

// Using inline closure
let volunteerSortedInlineClosure = volunteerCounts.sorted(by: {
    (i: Int, j: Int) -> Bool in
    return i < j
})

//print(volunteerSortedInlineClosure)

// Taking advantage of type inference, and single expression for return
let volunteerSortedTypeInference = volunteerCounts.sorted(by: {
    i, j in
    i < j
})

//print(volunteerSortedTypeInference)

// Shorthand arguments
let volunteerSortedShorthand = volunteerCounts.sorted(by: {
    $0 < $1
})

//print(volunteerSortedShorthand)

// Trailing closure syntax
let volunteerSortedTrailing = volunteerCounts.sorted { $0 < $1 }

print(volunteerSortedTrailing)

// Sort in place
var a = [1,3,40,32,2,53,77,13]

print(a)

a.sort {
    $0 < $1
}

print(a)

var b = [1,3,40,32,2,53,77,13]
print(b)
b.sort()
print(b)

class Dog {
    var whatThisDogSays = "Woof"
    
    func bark() {
        print(self.whatThisDogSays)
    }
}

let d = Dog()
d.bark()

func doThis(_ f: (Void) -> Void) {
    f()
}

d.whatThisDogSays = "Meow"
let barkFunction = d.bark
doThis(barkFunction)

// Closure setting a captured variable
func pass100(_ f: (Int) -> ()) {
    f(100)
}

var x = 0
print(x)

func setX(_ newX: Int) {
    x = newX
}

pass100(setX)
print(x)

// Closure preserving its captured environment
func countAdder(_ f: @escaping () -> ()) -> () -> () {
    var ct = 0
    
    return {
        ct = ct + 1
        print("Count is \(ct)")
        f()
    }
}

func greet() {
    print("Hi!")
}

let countedGreet = countAdder(greet)

countedGreet()
countedGreet()
countedGreet()

var counter = 0
print("counter is \(counter)")
let incrementCounter = {
    counter += 1
    print("counter is \(counter)")
}

incrementCounter()
incrementCounter()
counter = 10
incrementCounter()
