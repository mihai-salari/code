import Foundation

let jsonArray: [Any] = [15, "George", 2.0]

for element in jsonArray {
    switch element {
    case is String:
        print("Found a String")
    case is Int:
        print("Found an Int")
    case is Double:
        print("Found a Double")
    default:
        print("Found something")
    }
}
