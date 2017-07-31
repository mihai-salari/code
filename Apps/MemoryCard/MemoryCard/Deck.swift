import Foundation

struct Deck {
    fileprivate var cards = [Card]()
    
    static func full() -> Deck {
        var deck = Deck()
        
        for i in Rank.ace.rawValue...Rank.king.rawValue {
            for suit in [Suit.spades, Suit.hearts, Suit.clubs, Suit.diamonds] {
                // Initialize a card, and add it to deck
                let card = Card(rank: Rank(rawValue: i)!, suit: suit)
                deck.cards.append(card)
            }
        }
        
        return deck
    }
    
    // Return number of cards needed according to game's difficulty.
    func deckOfCards(withNumbers number: Int) -> Deck {
        return Deck(cards: Array(cards[0..<number]))
    }
    
    // Return deck of cards after shuffled.
    // Fisher-Yates (fast and uniform) shuffle.
    func shuffled() -> Deck {
        var list = cards
        for i in 0..<(list.count - 1) {
            let j = Int(arc4random_uniform(UInt32(list.count - i))) + i
            let temp = list[i]
            list[i] = list[j]
            list[j] = temp
        }
        
        return Deck(cards: list)
    }
}

extension Deck {
    var count: Int {
        return cards.count
    }

    mutating func append(card: Card) {
        cards.append(card)
    }
    
    subscript(index: Int) -> Card {
        return cards[index]
    }
    
    static func +(deck1: Deck, deck2: Deck) -> Deck {
        return Deck(cards: deck1.cards + deck2.cards)
    }
}
