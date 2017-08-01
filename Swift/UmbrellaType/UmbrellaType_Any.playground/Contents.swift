import UIKit

// Any object or function can be passed, without casting
func anyExpecter(_ a: Any) {
    print("Give me anything!")
}

// Test an Any object against any specific object type or function type
let anything: Any = "Hello, World"

if anything is String {
    let s = anything as! String
    print(s)
}

// Bridging between Objective-C and Swift
let ud = UserDefaults.standard
let s = "Foo Bar"
ud.set(s, forKey: "foo")


let test = ud.object(forKey: "foo") as? String // Coming back from Objective-C
