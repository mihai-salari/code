//
// https://github.com/apple/swift-evolution/blob/master/proposals/0178-character-unicode-view.md
//

import Foundation

// In Swift 3, we have to convert it to String to print
// the code point value

let c: Character = "🍏"
let e: Character = "e\u{0301}"

for codePoint in c.unicodeScalars {
    print(codePoint.value)
}

for codePoint in e.unicodeScalars {
    print(codePoint.value)
}
