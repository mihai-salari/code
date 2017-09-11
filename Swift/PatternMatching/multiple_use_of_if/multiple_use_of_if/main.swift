import Foundation

enum Number {
    case integerValue(Int)
    case doubleValue(Double)
    case booleanValue(Bool)
}

let a = 5, b = 6
let c: Number? = .integerValue(7)
let d: Number? = .integerValue(8)

// An if statement can have multiple conditions, separated by commas.
// Conditions fall into one of three categories:
// - simple logical test e.g. a == 10 || b > c
// - optional binding e.g. let a = optionalA
// - pattern matching e.g. case .some(let value) = theValue

if a != b, let c = c, let d = d, case .integerValue(let cValue) = c, case .integerValue(let dValue) = d, dValue > cValue {
    print("a and b are different")
    print("d is greater than c")
    print("sum: \(a + b + cValue + dValue)")
}
