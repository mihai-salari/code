import Foundation

let list = [0, 1, 2, 3, 4]
let number = 2

// Overloading ~=
func ~=(pattern: [Int], value: Int) -> Bool {
    if pattern.contains(value) {
        return true
    }
    
    return false
}


if case list = number {
    print("\(number) is in the list")
} else {
    print("\(number) is not in the list")
}

let isInList = (list ~= number)
print(isInList)
