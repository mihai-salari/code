import Foundation

func printMultipleOf(multiplier: Int, andValue: Int) {
    print("\(multiplier) x \(andValue) = \(multiplier * andValue)")
}

func printMultipleOf(multiplier: Int, and value: Int) {
    print("\(multiplier) x \(value) = \(multiplier * value)")
}

func printMultipleOf(_ multiplier: Int, and value: Int) {
    print("\(multiplier) x \(value) = \(multiplier * value)")
}

func printMultipleOf(_ multiplier: Int, _ value: Int) {
    print("\(multiplier) x \(value) = \(multiplier * value)")
}

printMultipleOf(multiplier: 2, and: 4)
printMultipleOf(multiplier: 2, andValue: 4)
printMultipleOf(2, and: 4)
printMultipleOf(2, 4)
