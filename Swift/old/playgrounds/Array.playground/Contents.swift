//: Playground - noun: a place where people can play

import UIKit

var a: Array<String> = ["a"]
var b: [String] = ["a", "b"]

var c = ["a", "b", "c"]

c

for item in c {
    print(item)
}

var todo = ["Take out garbage", "Pay bills", "Cross off finished items"]

if todo.isEmpty {
    print("You have nothing to do")
} else {
    print("Oops, better move your ass now!")
}

if todo.contains("Pay bills") {
    print("Remember pay bills!")
}

var count = todo.count - 1

while count >= 0 {
    print(todo[count])
    count -= 1
}

for item in todo {
    print(item)
}

for item in todo.reversed() {
    print(item)
}

var index = todo.index(of: "Pay bills")
print(index)

if let i = index {
    var newIndex = i + 1
    print(todo[newIndex])
}

let allZeros = [Int](repeatElement(0, count: 10))
print(allZeros)

let allOnes = Array(repeatElement(1, count: 10))
print(allOnes)

let emptyArray: [Int] = []
emptyArray.isEmpty

func sumOfAllItems(in array: [Int]) -> Int {
    var sum = 0
    for number in array {
        sum += number
    }
    
    return sum
}

sumOfAllItems(in: [2, 2, 3, 4, 5, 8])

func sum(of numbers: Int...) -> Int {
    var total = 0
    for number in numbers {
        total += number
    }
    
    return total
}

sum(of: 1, 2, 3, 4)

// A function that removes the first occurence of a given integer from an array of integers.

func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
    var array = array
    
    for (index, element) in array.enumerated() {
        if element == item {
            array.remove(at: index)
            break
        }
    }
    
    return array
}

let arrayTest = [1, 3, 5, 6, 9, 15, 5, 1, 2]
let arrayTest2 = removingOnce(5, from: arrayTest)
print(arrayTest2)

// A function that removes all occurences of a given integer from an array of integers.

func removing(_ item: Int, from array: [Int]) -> [Int] {
    var localArray = array
    var i = 0
    
    while i < localArray.count {
        if localArray[i] == item {
            localArray.remove(at: i)
        }
        
        i += 1
    }
    
    return localArray
}

let arrayTest3 = removing(5, from: arrayTest)
print(arrayTest3)

// Reversed an array

func reversed(_ array: [Int]) -> [Int] {
    var x = array.count - 1 // get last index
    var newArray = Array(repeating: 0, count: array.count)
    
    for item in array {
        newArray[x] = item
        
        if x == 0 {
            break
        } else {
            x -= 1
        }
    }
    
    return newArray
}

print(reversed(arrayTest3))

// A function that shuffles the elements of an array in random order.

func randomFromZero(to number: Int) -> Int {
    return Int(arc4random_uniform(UInt32(number)))
}

func randomized(_ array: [Int]) -> [Int] {
    var originalArray = array
    var newArray: [Int] = []
    
    var randomIndex = randomFromZero(to: array.count)
    newArray.append(array[randomIndex])
    originalArray.remove(at: randomIndex)
    
    if !originalArray.isEmpty {
        newArray += randomized(originalArray)
    }
    
    return newArray
}

print(arrayTest3)
print(randomized(arrayTest3))

// Calculates the minimum and maximum value in an array of integers.

func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
    if !numbers.isEmpty {
        var min = numbers[0]
        var max = numbers[0]
        
        for number in numbers {
            print("\(#function): number is \(number), min is \(min), max is \(max)")
            
            if number > max {
                max = number
            } else if number < min {
                min = number
            }
            
            print("\(#function): min is \(min), max is \(max)")
        }
        
        return (min, max)
    } else {
        return nil
    }
}

let emptyArray2: [Int] = []
print(minMax(of: arrayTest3))