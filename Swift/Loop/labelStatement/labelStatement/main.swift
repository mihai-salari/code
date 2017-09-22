import Foundation

// Calculate the sum of all cells, excluding those where the column is greater
// than or equal to the row

var sum = 0

rowLoop: for row in 0..<8 {
    columnLoop: for column in 0..<8 {
        if row == column {
            print(" ")
            continue rowLoop
        }
        
        sum += row * column
        print(sum, separator: " ", terminator: " ")
    }
    
}

print(" ")
