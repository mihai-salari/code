//: Playground - noun: a place where people can play

import UIKit

let character: Character = "!"
var message = "Hi"
message += String(character)

var str = "Hello, playground"

for c: Character in str.characters {
    print("'\(c)'")
}

// Unicode scalar
let coolDude = "\u{1F60E}"
print(coolDude)

for scalar in str.unicodeScalars {
    print("\(scalar): \(scalar.value)")
}

let name = "張國榮"
print(name)

for scalar in name.unicodeScalars {
    print("\(scalar): \(scalar.value)")
}

print(str.characters.count)
print(name.characters.count)

// Index
let start = name.startIndex
let end = name.index(start, offsetBy: 1)
let secondCharacter = name[end]
print(secondCharacter)

// Using range with character index
let range = start...end
let firstTwo = name[range]
print(firstTwo)

// Empty string
let emptyString = ""

if emptyString.isEmpty {
    print("The string is empty")
} else {
    print("Oh... I meant something else")
}

let emptyStringStart = emptyString.startIndex
let emptyStringEnd = emptyString.endIndex

if emptyStringStart == emptyStringEnd {
    print("The string is really empty")
    print(emptyStringStart)
    print(emptyStringEnd)
}

let hello = "\u{48}\u{45}\u{4c}\u{4c}\u{4f}"
print(hello)
print("\u{48}\u{45}\u{4c}\u{4c}\u{4f}")

var word = "abc"

for i in word.utf8 {
    print(i)
}

for i in word.utf16 {
    print(i)
}

for i in word.unicodeScalars {
    print(i.value)
}

func getCountryFlag(byCountryAbbreviation country: String) -> String {
    let base: UInt32 = 127397
    var s = ""
    
    for scalar in country.unicodeScalars {
        s.unicodeScalars.append(UnicodeScalar(base + scalar.value)!)
    }
    
    return String(s)
}

print(getCountryFlag(byCountryAbbreviation: "MY"))

print("hello".characters.count)

let cocoaWord = word as NSString
print(cocoaWord.length)

var words = "hello world"
let arrWords = words.characters.split(whereSeparator: {
    $0 == " "
})
print(arrWords.map { String($0) })
