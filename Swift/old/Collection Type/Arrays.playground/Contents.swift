import UIKit

// Empty array

var arr1 = [Int]()
var arr2: [Int] = []

// If the array element types consist of a class and its subclasses, Swift will infer
// the common superclass as the array's type.

class A {
    
}

class B: A {
    
}

var arr3 = [A(), B()]

// However, in some cases you will need to declare an array reference's type explicitly even while
// assigning a literal to that array.

protocol Flier {
    
}

class Bird: Flier {
    
}

class Insect: Flier {
    
}

var arr4: [Any] = [1, "Foo"] // mixed elements
var arr5: [Flier] = [Bird(), Insect()] // protocol adopters

// Using array initializer with sequence type

Array(1...10)
Array("Foo Bar".characters)

let dict = [
    "black": "000000",
    "white": "FFFFFF",
]

Array(dict) // tuples of key-value pairs

// Using repeating count to initialize an array

var arr6: [String?] = Array(repeatElement(nil, count: 10))
arr6[8] = "Foo Bar"
arr6

// Casting and type testing

var arr7: [Int?] = [1, 2, 3]
print(arr7)

class Dog {
    
}

class NoisyDog: Dog {
    
}

let dog1: Dog = NoisyDog()
let dog2: Dog = NoisyDog()
let dog3: Dog = Dog()

var arr8 = [dog1, dog2]
var arr9 = arr8 as! [NoisyDog]

print(arr9)

var arr10 = arr8 as? [NoisyDog]

print(arr10) // note optional here because of as?

var arr11 = [dog2, dog3]
var arr12 = arr11 as? [NoisyDog]
print(arr12)

if arr9 is [NoisyDog] {
    print("You are noisy dog!")
} else {
    print("You are quiet dog...")
}

// Array slice

var arr13 = ["Foo", "Bar", "Poo"]
let arr13slice = arr13[1...2]
print(arr13slice[1]) // Bar, which point to the same index in arr13!

// Assigning to array slice

var arr14: [Any] = [1, 2, 3, 4, 5]

arr14[1..<2] = ["A", "B"]
print(arr14)

arr14[3..<3] = ["C"]
print(arr14)

let arr15: [Any] = [1.234, 2.345, 3.456]
arr14[1..<1] = ArraySlice(arr15) // Note the use of ArraySlice here
print(arr14)

// Array methods

var arr16 = [[1,2], [3,4], [5,6,7], [8,9,10]]
let join16 = arr16.joined(separator: [1, 2])
print(join16) // This is a JoinSequence
print(Array(join16)) // Now it is an Array

// 

var arr17 = ["Manny", "Moe", "Jack"]
let arr17b = NSMutableArray(array: arr17)
arr17b.remove("Jack")
arr17 = arr17b as NSArray as! [String]
print(arr17)