import Foundation

// Age is either some value or none (optional)
enum Age {
    case some(value: Int)
    case none
}

let fooAge = Age.some(value: 36)

// An if statement can have multiple conditions, separated by commas.
// Conditions fall into one of three categories:
// - simple logical test e.g. a == 10 || b > c
// - optional binding e.g. let a = optionalA
// - pattern matching e.g. case .some(let value) = theValue

if case .some(let age) = fooAge, case 30...40 = age {
    print("such an old man")
} else {
    print("whatever...")
}
