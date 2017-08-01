import UIKit

/*
 AnyClass is the type of AnyObject. It corresponds to the Objective-C Class type.
 It arises typically in declarations where a Cocoa API wants to say that a class is expected.
 */

// A reference to an AnyClass object behaves much like a reference to an AnyObject
// object. You can send it any Objective-C message that Swift knows about - any Objective-C class message.

class Cow {
    @objc static var whatACowSays: String = "woof" // class property
}

class Ant {
    
}

let anyclass: AnyClass = Cow.self
print(anyclass.whatACowSays)
