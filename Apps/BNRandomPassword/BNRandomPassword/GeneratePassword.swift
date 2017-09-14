import Foundation

private let characters = Array("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!$@#".characters)

// Returns a randomly chosen character from the characters array
func generateRandomCharacter() -> Character {
    let index = Int(arc4random_uniform(UInt32(characters.count)))
    let character = characters[index]
    
    return character
}

// Calls generateRandomCharacter multiple times and concatenates the results
// to create a string of the requested length
func generateRandomStringWithLength(_ length: Int) -> String {
    var string = ""
    
    for _ in 0..<length {
        string.append(generateRandomCharacter())
    }
    
    return string
}
