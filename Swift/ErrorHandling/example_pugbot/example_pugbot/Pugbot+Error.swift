import Foundation

enum PugBotError: Error {
    case invalidMove(found: Direction, expected: Direction)
    case endOfPath
}
