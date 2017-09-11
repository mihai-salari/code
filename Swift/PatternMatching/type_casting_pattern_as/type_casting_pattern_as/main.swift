import Foundation

let jsonArray: [Any] = [15, "George", 2.0]

for element in jsonArray {
    switch element {
    case let text as String:
        print("Found a String: \(text)")
    case let number as Int:
        print("Found an Int: \(number)")
    case let number as Double:
        print("Found a Double: \(number)")
    default:
        print("Found something")
    }
}
