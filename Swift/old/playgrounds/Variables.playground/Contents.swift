//: Playground - noun: a place where people can play

import UIKit

/* 
    Computed Initializer - anonymous function that will call immediately
 */

let value = 2

let isTrue: Bool = {
    if value == 1 {
        return true
    } else {
        return false
    }
}()

print(isTrue)
print(value)

func globalCalculateDoubleValue(_ number: Int) -> Int {
    return number * 2
}

class ExampleComputedInstanceProperty {
    
    // Define-and-call anonymous function
    let storedInstanceProperty: Int = {
        // We cannot call instance method here! There's no instance, unless
        // we use lazy initialization.
        
        return globalCalculateDoubleValue(188)
        //return self.calculateDoubleValue(188)
    }()
    
    // We can use define-and-call anonymous function here because of lazy initialization,
    // and remember to use self to refer to instance method
    lazy var doubleOfHundered: Int = {
        return self.calculateDoubleValue(100)
    }()
    
    lazy var doubleOfTen: Int = self.calculateDoubleValue(10)
    
    var computedInstanceProperty: Int { // Computed instance property
        return self.calculateDoubleValue(value)
    }
    
    func calculateDoubleValue(_ number: Int) -> Int {
        return number * 2
    }
}

let exampleComputedInstanceProperty = ExampleComputedInstanceProperty()
print(exampleComputedInstanceProperty.computedInstanceProperty)
print(exampleComputedInstanceProperty.storedInstanceProperty)
print(exampleComputedInstanceProperty.doubleOfTen)
print(exampleComputedInstanceProperty.doubleOfHundered)
