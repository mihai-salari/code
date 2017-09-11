import Foundation

let names: [String?] = [
    "Michelle",
    nil,
    "Brandon",
    "Christine",
    nil,
    "David",
    "James",
    "Keith",
    "Dora",
    "Alex",
    nil,
    "Dick"
]

// The optional pattern consists of an identifier pattern followed immediately by
// a question mark. You can use this pattern in the same places you would use
// enumeration case patterns.
// Optional patters are syntactic sugar for enumeration case patterns containing
// optional values.

for case let name? in names {
    print(name)
}
