import Foundation

// To find the (row, column) of a given position on a 8 x 8 grid, 
// row start from 0 - 7, column start from 0 - 7

/*
 0  1   2   3   4   5   6   7
 8  9   10  11  12  13  14  15
 16 17  18  19  20  21  22  23
 24 25  26  27  28  29  30  31
 32 33  34  35  36  37  38  39
 40 41  42  43  44  45  46  47
 48 49  50  51  52  53  54  55
 56 57  58  59  60  61  62  63
 */

func getRowAndColumnForPosition(at v: Int) -> (row: Int, column: Int) {
    // row from 0 to 7
    let row = v / 8

    // column from 0 to 7
    let column = v % 8
    
    return (row, column)
}

print(getRowAndColumnForPosition(at: 10))