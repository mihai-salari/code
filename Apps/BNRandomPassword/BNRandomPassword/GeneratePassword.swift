import Foundation

private let specialCharacters = Array("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!$@#".characters)
private let normalCharacters = Array("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".characters)
private var characters = specialCharacters

// Returns a randomly chosen character from the characters array
func generateRandomCharacter() -> Character {
    let index = Int(arc4random_uniform(UInt32(characters.count)))
    let character = characters[index]
    
    return character
}

// Calls generateRandomCharacter multiple times and concatenates the results
// to create a string of the requested length
func generateRandomStringWithLength(_ length: Int32) -> String {
    var string = ""
    
    for _ in 0..<length {
        string.append(generateRandomCharacter())
    }
    
    return string
}

// To handle special character case
func generatePasswordWithLength(_ length: Int32, isSpecial special: Bool) -> String {
    if special {
        characters = specialCharacters
    } else {
        characters = normalCharacters
    }
    
    return generateRandomStringWithLength(length)
}
