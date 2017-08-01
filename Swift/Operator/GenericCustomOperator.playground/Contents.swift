import Cocoa

infix operator **
infix operator **=

// Notice the Integer type constraint on the generic parameter T, *=
// is available only on all types that conform to the Integer protocol.
func **<T: Integer>(lhs: T, rhs: Int) -> T {
    var result = lhs
    
    for _ in 2...rhs {
        result *= lhs
    }
    
    return result
}

func **=<T: Integer>(lhs: inout T, rhs: Int) {
    lhs = lhs ** rhs
}

print(2 ** 10)

let number = 9
var result = 9
result **= 9
print(result)

let base64: Int64 = 1024
let exponent = 3
let result64 = base64 ** exponent // exponent is Int, so Swift cast it to Int64 automatically?
print(result64)