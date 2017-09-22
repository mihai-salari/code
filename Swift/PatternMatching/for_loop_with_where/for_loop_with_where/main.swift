import Foundation

// Use of where clause in for loop

let count = 100
var sum = 0

for i in 1...count where i % 2 != 0 {
    sum += i
    print("\(sum)", terminator: " ")
}

print("")
