//: Playground - noun: a place where people can play

import UIKit

class Dog {
    func bark() {
        print("wo wo")
    }
}

class StupidDog: Dog {
    override func bark() {
        print("hu hu")
    }
    
    func speak() {
        self.bark()
    }
}

func tellToHush(_ d: Dog) {
    let d = d as? StupidDog
    d?.speak()
}

let d = StupidDog()
tellToHush(d)

if d is StupidDog {
    print("d is stupid dog")
} else {
    print("d is not stupid")
}

(d as? StupidDog)?.speak()
(d as! StupidDog).speak()
