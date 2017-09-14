//: Playground - noun: a place where people can play

import UIKit

// Default initializers

struct Model {
    var name: String = "Type X"
}

// Empty initializer
var model1 = Model()
print(model1.name)

model1.name = "Type Z"
print(model1.name)

// Memberwise initializer
let model2 = Model(name: "Type Y")
print(model2.name)

// Custom initializers

struct ModelCustom {
    let name: String
    let type: String
    
    init(withName name: String, andType type: String) {
        self.name = name
        self.type = type
    }
}

let modelCustom1 = ModelCustom(withName: "Ferrari", andType: "F80")
print(modelCustom1.name, modelCustom1.type)
