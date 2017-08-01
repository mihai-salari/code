import UIKit

// AnyObject is an empty protocol (requiring no properties or methods) with the special feature that
// all class types conform to it automatically.

// Although Objective-C APIs present Objective-C id as Any in Swift, Swift AnyObject is Objective-C id.

// A class type can be assigned directly where an AnyObject is expected; to retrieve it
// as its original type, you'll need to cast down:
class Dog {
    
}

let d = Dog()
let eric: AnyObject = d
let d2 = eric as! Dog

// Assigning to an AnyObject requires crossing the bridge to Objective-C then and there.
// If you're not starting with a class type, you must cast (with as). If this type is automatically bridged to
// an Objective-C type, it becomes that type; other types are boxed up in a way that allows them to survive
// the journey into Objective-C's world, even though Objective-C can't deal with them directly.

let s = "hello" as AnyObject // String to NSString to AnyObject
let i = 1 as AnyObject // Int to NSNumber to AnyObject
let r = CGRect() as AnyObject // CGRect to boxed type to AnyObject

// Suppressing type checking

/*
 Because AnyObject is Objective-C id, it can be used, like Objective-C id, to suspend the compiler's judgement
 as to whether a certain message can be sent to an object.
 
 Thus, you can send a message to an AnyObject without bothering to cast down to its real type.
 
 The message send must correspond to a class member that meets one of the following criteria:
 - it is a member of an Objective-C class
 - it is a member of your own Swift subclass of an Objective-C class
 - it is a member of your own Swift extension of an Objective-C class
 - it is a member of a Swift class or protocol marked @objc
 
 */

class Chicken {
    // Both properties are visible as potential messages to be sent to an AnyObject
    @objc var noise: String = "woof"
    @objc func bark() -> String {
        return "woof"
    }
}

class Cat {
    
}

let c: AnyObject = Cat()
let a = c.noise // Surprise!

print(c.bark?()) // Return nil if the object typed as AnyObject doesn't implement this method

