//: Playground - noun: a place where people can play

import UIKit

// Default initializers

class Model {
    var name: String = "Type X"
}

// Empty initializer
var model1 = Model()
print(model1.name)

model1.name = "Type Z"
print(model1.name)

// Memberwise initializer !!! CLASS DON'T HAVE THIS !!!
//let model2 = Model(name: "Type Y")
//print(model2.name)

// Custom initializers

class ModelCustom {
    let name: String
    let type: String
    
    init(withName name: String, andType type: String) {
        self.name = name
        self.type = type
    }
    
    convenience init(withName name: String) {
        self.init(withName: name, andType: "unknown")
    }
}

let modelCustom1 = ModelCustom(withName: "Ferrari", andType: "F80")
print(modelCustom1.name, modelCustom1.type)

// Class whose subclass has no explicit initializers of its own

class A {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    convenience init(name: String) {
        self.init(name: name, age: 0)
    }
}

class B: A {
    // No initializer
}

// Note there's no init() inherited
let b1 = B(name: "foo")
let b2 = B(name: "foo", age: 10)

// Class whose subclass's only explicit initializer is a convenience initializer

class C {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    convenience init(name: String) {
        self.init(name: name, age: 0)
    }
}

class D: C {
    convenience init(age: Int) {
        self.init(name: "foo", age: age)
    }
}

let d1 = D(name: "foo")
let d2 = D(name: "foo", age: 18)
let d3 = D(age: 18)

// Class whose subclass declares a designated initializer

class E {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    convenience init(name: String) {
        self.init(name: name, age: 0)
    }
}

class F: E {
    init(age: Int) {
        super.init(name: "foo", age: age)
    }
}

// Now only one way to initialize F

let f1 = F(age: 21)


// Class whose subclass overrides its designated initializer

class G {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    convenience init(name: String) {
        self.init(name: name, age: 0)
    }
}

class H: G {
    override init(name: String, age: Int) {
        super.init(name: name, age: age)
    }
}

let h1 = H(name: "foo", age: 8)
let h2 = H(name: "foo") // superclass convenience initializer inherited as well