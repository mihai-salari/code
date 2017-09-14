//: Playground - noun: a place where people can play

import UIKit

class Dog {
}

let dog1 = Dog()
print(dog1)

class Cat {
    let name: String
    let license: Int
    
    convenience init(withName name: String) {
        self.init(withName: name, andLicense: 1234)
    }
    
    convenience init(withLicense license: Int) {
        self.init(withName: "Moo", andLicense: license)
    }
    
    convenience init() {
        self.init(withName: "Moo", andLicense: 8888)
    }
    
    init(withName name: String, andLicense license: Int) {
        self.name = name
        self.license = license
    }
}

let cat1 = Cat(withName: "Boo")
print(cat1.name)
print(cat1.license)

struct Digit {
    var number: Int
    var meaningOfLife: Bool
    
    init(number: Int) {
        self.number = number
        self.meaningOfLife = false
    }
    
    init() {
        self.init(number: 42)
        self.meaningOfLife = true
    }
}
