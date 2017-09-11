import Foundation

// Age is either some value or none (optional)
enum Age {
    case some(value: Int)
    case none
}

let fooAge = Age.some(value: 36)

if case .some(let age) = fooAge, case 30...40 = age {
    print("such an old man")
} else {
    print("whatever...")
}
