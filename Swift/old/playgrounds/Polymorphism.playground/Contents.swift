//: Playground - noun: a place where people can play

import UIKit

class Dog {
    func bark() {
        print("oow")
    }
    
    func speak() {
        self.bark()
    }
}

class StupidDog: Dog {
    override func bark() {
        print("meow meow")
    }
}

func tellToBark(_ d: Dog) {
    d.bark()
}

var a = StupidDog()
tellToBark(a)
a.speak()
