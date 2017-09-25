import Foundation

let numberOfVowels = ["A": 1, "E": 1, "I": 4, "O": 3, "U": 5]
let allVowels = numberOfVowels.reduce(into: [], {
    (result, this: (key: String, value: Int)) in
    for _ in 0..<this.value {
        result.append(this.key)
    }
})

print(allVowels)

/*
 
 ["O", "O", "O", "A", "I", "I", "I", "I", "U", "U", "U", "U", "U", "E"]
 Program ended with exit code: 0
 
 */
