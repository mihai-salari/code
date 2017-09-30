//
// SE-0172
// https://github.com/apple/swift-evolution/blob/master/proposals/0172-one-sided-ranges.md
//

import Foundation

// Collection
let cities = ["Tokyo", "Taipei", "London", "Singapore", "Kuala Lumpur", "Bangkok", "New York"]
print(cities[0...1])

print(cities[4...]) // Swift 4
print(cities[4..<cities.endIndex]) // Swift 3

print(cities[...4])
print(cities[..<4])

// Infinite sequences
let uppercaseChars = ["A", "B", "C", "D", "E"]
let asciiCodes = zip(65..., uppercaseChars)
print(Array(asciiCodes))

// Use in pattern matching
func gameRank(_ index: Int) -> String {
    switch index {
    case ...1:
        return "Oldie but goodie"
    case 3...:
        return "Meh"
    default:
        return "Awesome-sauce!"
    }
}

print(gameRank(-1))
print(gameRank(1))
print(gameRank(2))
print(gameRank(3))
print(gameRank(10))

func sentiment(_ rating: Double) -> String {
    switch rating {
    case ..<0.33:
        return "😩"
    case ..<0.66:
        return "😔"
    default:
        return "😙"
    }
}

print(sentiment(0.1))
print(sentiment(0.4))
print(sentiment(0.9))
