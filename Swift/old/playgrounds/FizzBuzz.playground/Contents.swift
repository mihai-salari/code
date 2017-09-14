//: Playground - noun: a place where people can play

import UIKit

for number in 0...100 {
    if number % 3 == 0 && number % 5 == 0 {
        print("\(number): FIZZ BUZZ")
    } else if number % 3 == 0 {
        print("\(number): FIZZ")
    } else if number % 5 == 0 {
        print("\(number): BUZZ")
    } else {
        print("\(number)")
    }
}

for number in 0...100 {
    let testNumber = (number % 3, number % 5)
    
    switch testNumber {
    case (0, 0):
        print("\(number): FIZZ BUZZ")
    case (0, _):
        print("\(number): FIZZ")
    case (_, 0):
        print("\(number): BUZZ")
    default:
        print(number)
    }
}