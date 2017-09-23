import Foundation

// function overloading for different parameters

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

// overloading for different return type

func getValue() -> Int {
    return 8
}

func getValue() -> String {
    return "eight"
}

let intValue: Int = getValue()
let stringValue: String = getValue()

print(intValue)
print(stringValue)

/*
 
 2 x 4 = 8
 2 x 4 = 8
 2 x 4 = 8
 2 x 4 = 8
 8
 eight
 Program ended with exit code: 0
 
 */
