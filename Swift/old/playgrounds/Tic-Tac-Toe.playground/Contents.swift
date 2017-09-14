//: Playground - noun: a place where people can play

import Cocoa

typealias BoardPiece = String

let X: BoardPiece = "X"
let O: BoardPiece = "O"

struct Game: CustomStringConvertible {
    var grids = Array(repeating: " ", count: 9)
    
    var description: String {
        var cells: String = ""
        
        for (index, cell) in grids.enumerated() {
            if index < 3 {
                if index == 2 {
                    cells = cells + "\(cell)\n"
                } else {
                    cells = cells + "\(cell) "
                }
            } else if index < 6 {
                if index == 5 {
                    cells = cells + "\(cell)\n"
                } else {
                    cells = cells + "\(cell) "
                }
            } else if index < 9 {
                if index == 8 {
                    cells = cells + "\(cell)\n"
                } else {
                    cells = cells + "\(cell) "
                }
            }
        }
        
        return cells
    }
    
    func check(mark: BoardPiece, at index: Int) -> Bool {
        if grids[index] == mark {
            return true
        }
        
        return false
    }
    
    
    mutating func play(mark: BoardPiece, at index: Int) {
        grids[index] = mark        
    }
}

var game = Game()
game.play(mark: X, at: 6)
game.play(mark: O, at: 0)
game.play(mark: X, at: 2)
game.play(mark: O, at: 4)
game.play(mark: X, at: 8)

print(game)
