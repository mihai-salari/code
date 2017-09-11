import Foundation

// Using pattern matching operator
let matched = (1...10 ~= 8)

if matched {
    print("True")
} else {
    print("False")
}

if case 1...10 = 5 {
    print("True")
} else {
    print("False")
}
