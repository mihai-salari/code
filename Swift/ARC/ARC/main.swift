import Foundation

class Person {
    let name: String // stored constant property
    
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?

// Strong references
reference1 = Person(name: "John Appleseed")
reference2 = reference1
reference3 = reference1

reference1 = nil
reference2 = nil
reference3 = nil // ARC will deallocate the Person instance now
