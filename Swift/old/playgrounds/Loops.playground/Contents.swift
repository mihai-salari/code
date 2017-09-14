//: Playground - noun: a place where people can play

import UIKit

var myFirstInt: Int = 0

for i in 1...5 {
    myFirstInt += 1
    myFirstInt
    print("Iteration \(i): \(myFirstInt)")
}

for _ in 1...5 {
    myFirstInt += 1
    myFirstInt
    print(myFirstInt)
}

for i in 1...100 where i % 3 == 0 {
    print(i)
}

myFirstInt = 0

var j = 1
while j < 6 {
    myFirstInt += 1
    print(myFirstInt)
    j += 1
}

// Using continue and break
var shields = 5
var blastersOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0

while shields > 0 {
    
    if spaceDemonsDestroyed == 500 {
        print("You beat the game!")
        break
    }
    
    if blastersOverheating {
        print("Blasters are overheated! Cooldown initiated.")
        sleep(5)
        
        print("Blasters ready to fire!")
        sleep(1)
        
        blastersOverheating = false
        blasterFireCount = 0
    }
    
    if blasterFireCount > 100 {
        blastersOverheating = true
        continue
    }
    
    print("Fire blasters!")
    
    blasterFireCount += 1
    spaceDemonsDestroyed += 1
}

