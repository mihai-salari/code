import Cocoa

// Generic Protocol with Associated Type

protocol Animal {
    associatedtype Other
}

struct Cow: Animal {
    typealias Other = String // explicit type assignment
}

// Generic Object Type

class Dog<T> {
    var name: T?
}

let d = Dog<String>() // explicit type declaration
