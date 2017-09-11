import Foundation

enum Number {
    case integerValue(Int)
    case doubleValue(Double)
    case booleanValue(Bool)
}

let a = 5, b = 6
let c: Number? = .integerValue(7)
let d: Number? = .integerValue(8)

if a != b, let c = c, let d = d, case .integerValue(let cValue) = c, case .integerValue(let dValue) = d, dValue > cValue {
    print("a and b are different")
    print("d is greater than c")
    print("sum: \(a + b + cValue + dValue)")
}
