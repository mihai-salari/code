import Cocoa

class Person {
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

extension Person {
    subscript(property key: String) -> String? {
        switch key {
        case "name":
            return name
        case "age":
            return String(age)
        default:
            return nil
        }
    }
}

let me = Person(name: "Foo", age: 30)

print(me[property: "name"])
print(me[property: "age"])
print(me[property: "gender"])

