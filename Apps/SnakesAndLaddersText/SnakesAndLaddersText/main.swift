import Foundation

let finalSquare = 25
var board = [Int](repeatElement(0, count: finalSquare + 1))
var squareArray: [Int] = [1...25].flatMap({ $0 }).reversed()
var action = "move"
var square = 0
var diceRoll = 0

// Set snakes and ladders
board[03] = +08
board[06] = +11
board[09] = +09
board[10] = +02
board[14] = -10
board[19] = -11
board[22] = -02
board[24] = -08

/* 
 To calculate the "real" number on board, remember the board numbering:
 
 21 22 23 24 25
 20 19 18 17 16
 11 12 13 14 15
 10 09 08 07 06
 01 02 03 04 05
 
 and the array numbering:
 
 01 02 03 04 05
 06 07 08 09 10
 11 12 13 14 15
 16 17 18 19 20
 21 22 23 24 25
*/
func getNumberOnBoard(for square: Int) -> Int {
    var boardNumber = 0
    
    switch square {
    case let i where i == 0:
        boardNumber = 0
    case let i where i <= 5:
        boardNumber = 20 + i
    case let i where i <= 10:
        boardNumber = 26 - i
    case let i where i <= 15:
        boardNumber = i
    case let i where i <= 20:
        boardNumber = 26 - i
    case let i where i <= 25:
        boardNumber = i - 20
    default: // Game end, set the index to 5 which is the 25 in the game board
        boardNumber = 5
    }
    
    return boardNumber // The index of the array to match with the game board
}

func drawBoard(at square: Int) {
    for i in 1...25 {
        if i == square {
            print("[🚶]", separator: " ", terminator: "")
        } else {
            print("[_]", separator: " ", terminator: "")
        }
        
        if i % 5 == 0 {
            print("\n")
        }
    }
    
    print("\n")
}

gameLoop: while square != finalSquare {
    // roll the dice
    diceRoll = Int(arc4random_uniform(UInt32(6))) + 1
    print("Log: you roll \(diceRoll)")
    
    switch square + diceRoll {
    case finalSquare:
        // diceRoll will move us to final square, so the game is over
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        // diceRoll will move us beyond the final square, so roll again
        print("Log: roll again!")
        continue gameLoop
    default:
        // this is a valid move, so find out its effect
        square += diceRoll
        
        if board[square] < 0 {
            action = "fall"
            print("Log: oops, encountered with a snake")
        } else if board[square] > 0 {
            action = "move"
            print("Log: wow, climb up the ladder")
        } else {
            action = "move"
            print("Log: no news is good news")
        }
        
        square += board[square]
        
        print("Log: \(action) to \(square)")
        
        drawBoard(at: getNumberOnBoard(for: square))
    }
}

//repeat {
//    // move up or down for a snake or ladder
//    
//    if board[square] < 0 {
//        action = "fall"
//        print("Log: oops, encountered with a snake")
//    } else if board[square] > 0 {
//        action = "move"
//        print("Log: wow, climb up the ladder")
//    }
//
//    square += board[square]
//    print("Log: \(action) to \(square)")
//    
//    drawBoard(at: getNumberOnBoard(for: square))
//    
//    // roll the dice
//    
//    diceRoll = Int(arc4random_uniform(UInt32(6))) + 1
//    print("Log: you roll \(diceRoll)")
//    
//    // move by the rolled amount
//    
//    square += diceRoll
//    print("Log: move to \(square)")
//} while square < finalSquare

print("Game over!")

/*
 Log: you roll 3
 Log: wow, climb up the ladder
 Log: move to 11
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 [🚶][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 
 
 Log: you roll 2
 Log: no news is good news
 Log: move to 13
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][🚶][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 
 
 Log: you roll 4
 Log: no news is good news
 Log: move to 17
 [_][_][_][_][_]
 
 [_][_][_][🚶][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 
 
 Log: you roll 4
 Log: no news is good news
 Log: move to 21
 [🚶][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 
 
 Log: you roll 3
 Log: oops, encountered with a snake
 Log: fall to 16
 [_][_][_][_][_]
 
 [_][_][_][_][🚶]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 
 
 Log: you roll 3
 Log: oops, encountered with a snake
 Log: fall to 8
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][🚶][_][_]
 
 [_][_][_][_][_]
 
 
 
 Log: you roll 5
 Log: no news is good news
 Log: move to 13
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][🚶][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 
 
 Log: you roll 4
 Log: no news is good news
 Log: move to 17
 [_][_][_][_][_]
 
 [_][_][_][🚶][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 
 
 Log: you roll 4
 Log: no news is good news
 Log: move to 21
 [🚶][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 
 
 Log: you roll 5
 Log: roll again!
 Log: you roll 3
 Log: oops, encountered with a snake
 Log: fall to 16
 [_][_][_][_][_]
 
 [_][_][_][_][🚶]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 
 
 Log: you roll 2
 Log: no news is good news
 Log: move to 18
 [_][_][_][_][_]
 
 [_][_][🚶][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 
 
 Log: you roll 1
 Log: oops, encountered with a snake
 Log: fall to 8
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][🚶][_][_]
 
 [_][_][_][_][_]
 
 
 
 Log: you roll 2
 Log: wow, climb up the ladder
 Log: move to 12
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][🚶][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 
 
 Log: you roll 6
 Log: no news is good news
 Log: move to 18
 [_][_][_][_][_]
 
 [_][_][🚶][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 
 
 Log: you roll 4
 Log: oops, encountered with a snake
 Log: fall to 20
 [_][_][_][_][_]
 
 [🚶][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 [_][_][_][_][_]
 
 
 
 Log: you roll 5
 Game over!
 Program ended with exit code: 0
 */
