import Cocoa

struct Record {
    var wins: Int
    var losses: Int
}

let r1 = Record(wins: 0, losses: 20)
let r2 = Record(wins: 20, losses: 0)

extension Record: Equatable {
    static func ==(lhs: Record, rhs: Record) -> Bool {
        return lhs.wins == rhs.wins && lhs.losses == rhs.losses
    }
}

r1 == r2

extension Record: Comparable {
    static func <(lhs: Record, rhs: Record) -> Bool {
        if lhs.wins == rhs.wins {
            return lhs.losses > rhs.losses
        }
        
        return lhs.wins < rhs.wins
    }
}

r1 < r2
