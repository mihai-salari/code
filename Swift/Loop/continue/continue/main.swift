import Foundation

var sum = 0

// sum of all cells, but exclude all even rows
for row in 0..<8 {
    if row % 2 == 0 {
        continue
    }
    
    for column in 0..<8 {
        sum += row * column
        print(sum, separator: " ", terminator: " ")
    }
    
    print("")
}

print("")
