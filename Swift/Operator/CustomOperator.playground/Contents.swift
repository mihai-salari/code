import Cocoa

infix operator **
infix operator **=

func **(lhs: Int, rhs: Int) -> Int {
    guard rhs >= 0 else {
        fatalError("rhs less than 0")
    }
    
    if rhs == 1 {
        return lhs
    }
    
    if rhs == 0 {
        return 1
    }
    
    var result = lhs
    for _ in 2...rhs {
        result *= lhs
    }
    
    return result
}

func **=(lhs: inout Int, rhs: Int) {
    lhs = lhs ** rhs
}

let base = 2
let exponent = 3
let result = base ** exponent
print(result)

var number = 2
number **= exponent
print(number)

print(3**1)
print(3**0)
//print(3 ** -1)

// Overload ** for String
func **(lhs: String, rhs: Int) -> String {
    var result: String = ""
    for _ in 1...rhs {
        result += lhs
    }
    
    return result
}

func **=(lhs: inout String, rhs: Int) {
    lhs = lhs ** rhs
}

print("abc"**10)

var greeting="hello"
greeting **= exponent

print(greeting)