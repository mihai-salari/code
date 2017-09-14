//: Playground - noun: a place where people can play

import UIKit

class Dog {
    class var message: String {
        return "woof woof"
    }
    
    func bark() {
        print(type(of: self).message)
    }
}

class StupidDog: Dog {
    override class var message: String {
        return "meow meow meow"
    }
}

let d = StupidDog()
d.bark()

// Pass an object type as a value

class Something {
    var name: String
    
    required init(name: String) {
        self.name = name
    }
    
    class func make() -> Something {
        let a = self.init(name: "test")
        return a
    }
    
    class func makeSelf() -> Self { // Note the use of Self here
        let a = self.init(name: "test")
        return a
    }
    
    func haveSomething(name: String) -> Self {
        return type(of: self).init(name: name)
    }
}

class AnotherThing: Something {
    
}

func makeSomething(_ what: Something.Type) -> Something {
    let a = what.init(name: "test")
    
    return a
}

let s1 = makeSomething(Something.self)
print(type(of: s1))

let s2 = makeSomething(AnotherThing.self)
print(type(of: s2))

let s3 = Something.make()
print(type(of: s3))

let s4 = AnotherThing.make()
print(type(of: s4))

let f1 = AnotherThing.makeSelf()
print(type(of: f1))

let t1 = Something(name: "foo")
let t2 = t1.haveSomething(name: "foo baby")

print(type(of: t1))
print(type(of: t2))

let g1 = AnotherThing(name: "bar")
let g2 = g1.haveSomething(name: "bar baby")

print(type(of: g1))
print(type(of: g2))
