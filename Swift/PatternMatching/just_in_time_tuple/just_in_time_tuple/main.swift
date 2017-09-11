import Foundation

let name = "John"
let age = 38

// Create a custom tuple when we need it
if case ("John", 38) = (name, age) {
    print("Hi \(name), you are \(age)!")
}
