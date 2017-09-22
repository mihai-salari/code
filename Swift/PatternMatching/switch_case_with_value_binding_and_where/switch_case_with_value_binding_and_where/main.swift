import Foundation

var number = 2

switch number {
case let x where x % 2 == 0:
    print("Even number")
default:
    print("Odd number")
}

// or better

number = 3

switch number {
case _ where number % 2 == 0:
    print("Even number")
default:
    print("Odd number")
}
