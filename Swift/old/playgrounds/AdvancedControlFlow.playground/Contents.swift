//: Playground - noun: a place where people can play

import Cocoa

/*
 Grid is 8 x 8
 row start with 0, end with 7
 col start with 0, end with 7
 */

// Example 1 - Each cell holds a value of the row multiplied by the column

var row = 0
var col = 0
var val = 0

for row in 0...7 {
    for col in 0...7 {
        val = row * col
        print("\(row) x \(col) = \(val)")
    }
}

// Example 2 - Calculate the sum of all cells, exclude all even rows

var sum = 0
row = 0
col = 0

for row in 0..<8 {
    if row % 2 == 0 {
        continue
    }
    
    for col in 0..<8 {
        sum += row * col
        print("In \(row) x \(col), sum = \(sum)")
    }
}

sum = 0
row = 0
col = 0

for row in 0..<8 where row % 2 != 0 {
    for col in 0..<8 {
        sum += row * col
        print("In (where) \(row) x \(col), sum = \(sum)")
    }
}

// Example 3 - Calculate the sum of all cells, excluding those where the column is greater than or equal to the row

sum = 0
row = 0
col = 0

rowLoop: for row in 0..<8 {
    columnLoop: for col in 0..<8 {
        if row == col {
            continue rowLoop
        }
        
        sum += row * col
        print("In \(row) x \(col), sum = \(sum)")
    }
}