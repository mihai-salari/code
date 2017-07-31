import Foundation

enum Suit: CustomStringConvertible {
    case spades
    case hearts
    case diamonds
    case clubs
    
    var description: String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}

enum Rank: Int, CustomStringConvertible {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    var description: String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }    
}

struct Card: CustomStringConvertible, Equatable {
    let rank: Rank
    let suit: Suit
    
    var description: String {
        return "\(rank.description)_of_\(suit.description)"
    }
    
    // To conform to Equatable protocol, we need to declare this as a
    // static method.
    static func ==(card1: Card, card2: Card) -> Bool {
        return (card1.rank == card2.rank) && (card1.suit == card2.suit)
    }
}
