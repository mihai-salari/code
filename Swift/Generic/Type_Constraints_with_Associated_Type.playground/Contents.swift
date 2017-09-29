import Cocoa

class Cat {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let a = Cat(name: "alice")
let b = Cat(name: "mandy")
let c = Cat(name: "vendy")

let cats = [a, b, c]

// Element is the associated type of an Array
extension Array where Element: Cat {
    func meow() {
        self.forEach {
            print("\($0.name) says meow~")
        }
    }
}

cats.meow()
