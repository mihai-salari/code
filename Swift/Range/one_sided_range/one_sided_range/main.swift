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
