import Cocoa

precedencegroup ExponentiationPrecedence {
    associativity: right
    higherThan: MultiplicationPrecedence
}

infix operator **: ExponentiationPrecedence
infix operator **=

func **<T: BinaryInteger>(lhs: T, rhs: Int) -> T {
    var result = lhs
    
    for _ in 2...rhs {
        result *= lhs
    }
    
    return result
}

func **=<T: BinaryInteger>(lhs: inout T, rhs: Int) {
    lhs = lhs ** rhs
}

print(2 * 3 ** 3)
print(6 ** 3)
