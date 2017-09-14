//: Playground - noun: a place where people can play

import UIKit

var name = "Foo"
var anotherName = name
anotherName += anotherName
name

class God {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let guanyin = God(name: "觀音娘娘")
print(guanyin.name)

let anotherguanyin = guanyin
print(anotherguanyin.name)

anotherguanyin.name = "unknown"
print(guanyin.name)

struct Pantheon {
    var chiefGod: God
}

let pantheon = Pantheon(chiefGod: guanyin)
guanyin.name = "GY"

let anotherPantheon = pantheon

guanyin.name = "Big GY"

print(anotherPantheon.chiefGod.name) // Becareful when using reference type in a value type, as this will confuse people when we expect value type to be copied
