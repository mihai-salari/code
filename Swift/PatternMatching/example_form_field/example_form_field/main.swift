import Foundation

enum FormField {
    case firstName(String)
    case lastName(String)
    case emailAddress(String)
    case age(Int)
}

let minAge = 21
let submittedAge = FormField.age(22)

if case .age(let age) = submittedAge, age <= 21 {
    print("Unacceptable age!")
} else {
    print("Access granted")
}
