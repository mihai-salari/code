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
    subscript(key: String) -> String? {
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

print(me["name"])
print(me["age"])
print(me["gender"])