//: Playground - noun: a place where people can play

import Cocoa

// To find the (row, column) of a given position on a chessboard

/*
 0 1 2 3 4 5 6 7
 8 9 10 11 12 13 14 15
 16 17 18 19 20 21 22 23
 24 25 26 27 28 29 30 31
 32 33 34 35 36 37 38 39
 40 41 42 43 44 45 46 47
 48 49 50 51 52 53 54 55
 56 57 58 59 60 61 62 63
 */

let position = 3 // 0 - 63

// row from 0 to 7, add 1 because row start with 0
let row = (position / 8) + 1

// column from 0 to 7, add 1 because column start with 0
let column = (position % 8) + 1

// To find the (row, column) of a given position on a chessboard

/*
 0 1 2 3 4 5 6 7
 8 9 10 11 12 13 14 15
 16 17 18 19 20 21 22 23
 24 25 26 27 28 29 30 31
 32 33 34 35 36 37 38 39
 40 41 42 43 44 45 46 47
 48 49 50 51 52 53 54 55
 56 57 58 59 60 61 62 63
 */

func getRowAndColumnForPosition(value: Int) -> (row: Int, column: Int) {
    let position = value
    
    // row from 0 to 7, add 1 because row start with 0
    let row = (position / 8) + 1

    // column from 0 to 7, add 1 because column start with 0
    let column = (position % 8) + 1
    
    return (row, column)
}

print(getRowAndColumnForPosition(value: 3))